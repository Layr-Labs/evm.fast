import InitECandidate.Proofs.ClashStages713.Proof6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree672_agree : tree672 = literal672 := by
  rw [tree672_def, tree670_agree, tree671_agree]
  rfl
theorem node672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree672 live672 coloured672 = result672 := by
  rw [tree672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node670_eq
  unfold live670 coloured670 at child
  try dsimp only [live672, coloured672]
  rw [child]
  dsimp only [result670]
  have child := node671_eq
  unfold live671 coloured671 at child
  try dsimp only [live672, coloured672]
  rw [child]
  dsimp only [result671]
  try dsimp only [colour, result672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree673_agree : tree673 = literal673 := by
  rw [tree673_def]
  rfl
theorem node673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree673 live673 coloured673 = result673 := by
  rw [tree673_def]
  try dsimp only [colour, result673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree674_agree : tree674 = literal674 := by
  rw [tree674_def, tree672_agree, tree673_agree]
  rfl
theorem node674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree674 live674 coloured674 = result674 := by
  rw [tree674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node672_eq
  unfold live672 coloured672 at child
  try dsimp only [live674, coloured674]
  rw [child]
  dsimp only [result672]
  have child := node673_eq
  unfold live673 coloured673 at child
  try dsimp only [live674, coloured674]
  rw [child]
  dsimp only [result673]
  try dsimp only [colour, result674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree675_agree : tree675 = literal675 := by
  rw [tree675_def]
  rfl
theorem node675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree675 live675 coloured675 = result675 := by
  rw [tree675_def]
  try dsimp only [colour, result675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree676_agree : tree676 = literal676 := by
  rw [tree676_def, tree674_agree, tree675_agree]
  rfl
theorem node676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree676 live676 coloured676 = result676 := by
  rw [tree676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node674_eq
  unfold live674 coloured674 at child
  try dsimp only [live676, coloured676]
  rw [child]
  dsimp only [result674]
  have child := node675_eq
  unfold live675 coloured675 at child
  try dsimp only [live676, coloured676]
  rw [child]
  dsimp only [result675]
  try dsimp only [colour, result676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree677_agree : tree677 = literal677 := by
  rw [tree677_def]
  rfl
theorem node677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree677 live677 coloured677 = result677 := by
  rw [tree677_def]
  try dsimp only [colour, result677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree678_agree : tree678 = literal678 := by
  rw [tree678_def, tree676_agree, tree677_agree]
  rfl
theorem node678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree678 live678 coloured678 = result678 := by
  rw [tree678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node676_eq
  unfold live676 coloured676 at child
  try dsimp only [live678, coloured678]
  rw [child]
  dsimp only [result676]
  have child := node677_eq
  unfold live677 coloured677 at child
  try dsimp only [live678, coloured678]
  rw [child]
  dsimp only [result677]
  try dsimp only [colour, result678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree679_agree : tree679 = literal679 := by
  rw [tree679_def]
  rfl
theorem node679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree679 live679 coloured679 = result679 := by
  rw [tree679_def]
  try dsimp only [colour, result679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree680_agree : tree680 = literal680 := by
  rw [tree680_def, tree678_agree, tree679_agree]
  rfl
theorem node680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree680 live680 coloured680 = result680 := by
  rw [tree680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node678_eq
  unfold live678 coloured678 at child
  try dsimp only [live680, coloured680]
  rw [child]
  dsimp only [result678]
  have child := node679_eq
  unfold live679 coloured679 at child
  try dsimp only [live680, coloured680]
  rw [child]
  dsimp only [result679]
  try dsimp only [colour, result680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree681_agree : tree681 = literal681 := by
  rw [tree681_def]
  rfl
theorem node681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree681 live681 coloured681 = result681 := by
  rw [tree681_def]
  try dsimp only [colour, result681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree682_agree : tree682 = literal682 := by
  rw [tree682_def, tree680_agree, tree681_agree]
  rfl
theorem node682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree682 live682 coloured682 = result682 := by
  rw [tree682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node680_eq
  unfold live680 coloured680 at child
  try dsimp only [live682, coloured682]
  rw [child]
  dsimp only [result680]
  have child := node681_eq
  unfold live681 coloured681 at child
  try dsimp only [live682, coloured682]
  rw [child]
  dsimp only [result681]
  try dsimp only [colour, result682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree683_agree : tree683 = literal683 := by
  rw [tree683_def]
  rfl
theorem node683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree683 live683 coloured683 = result683 := by
  rw [tree683_def]
  try dsimp only [colour, result683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree684_agree : tree684 = literal684 := by
  rw [tree684_def, tree682_agree, tree683_agree]
  rfl
theorem node684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree684 live684 coloured684 = result684 := by
  rw [tree684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node682_eq
  unfold live682 coloured682 at child
  try dsimp only [live684, coloured684]
  rw [child]
  dsimp only [result682]
  have child := node683_eq
  unfold live683 coloured683 at child
  try dsimp only [live684, coloured684]
  rw [child]
  dsimp only [result683]
  try dsimp only [colour, result684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree685_agree : tree685 = literal685 := by
  rw [tree685_def]
  rfl
theorem node685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree685 live685 coloured685 = result685 := by
  rw [tree685_def]
  try dsimp only [colour, result685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree686_agree : tree686 = literal686 := by
  rw [tree686_def, tree684_agree, tree685_agree]
  rfl
theorem node686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree686 live686 coloured686 = result686 := by
  rw [tree686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node684_eq
  unfold live684 coloured684 at child
  try dsimp only [live686, coloured686]
  rw [child]
  dsimp only [result684]
  have child := node685_eq
  unfold live685 coloured685 at child
  try dsimp only [live686, coloured686]
  rw [child]
  dsimp only [result685]
  try dsimp only [colour, result686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree687_agree : tree687 = literal687 := by
  rw [tree687_def]
  rfl
theorem node687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree687 live687 coloured687 = result687 := by
  rw [tree687_def]
  try dsimp only [colour, result687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree688_agree : tree688 = literal688 := by
  rw [tree688_def, tree686_agree, tree687_agree]
  rfl
theorem node688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree688 live688 coloured688 = result688 := by
  rw [tree688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node686_eq
  unfold live686 coloured686 at child
  try dsimp only [live688, coloured688]
  rw [child]
  dsimp only [result686]
  have child := node687_eq
  unfold live687 coloured687 at child
  try dsimp only [live688, coloured688]
  rw [child]
  dsimp only [result687]
  try dsimp only [colour, result688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree689_agree : tree689 = literal689 := by
  rw [tree689_def]
  rfl
theorem node689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree689 live689 coloured689 = result689 := by
  rw [tree689_def]
  try dsimp only [colour, result689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree690_agree : tree690 = literal690 := by
  rw [tree690_def, tree688_agree, tree689_agree]
  rfl
theorem node690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree690 live690 coloured690 = result690 := by
  rw [tree690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node688_eq
  unfold live688 coloured688 at child
  try dsimp only [live690, coloured690]
  rw [child]
  dsimp only [result688]
  have child := node689_eq
  unfold live689 coloured689 at child
  try dsimp only [live690, coloured690]
  rw [child]
  dsimp only [result689]
  try dsimp only [colour, result690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree691_agree : tree691 = literal691 := by
  rw [tree691_def]
  rfl
theorem node691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree691 live691 coloured691 = result691 := by
  rw [tree691_def]
  try dsimp only [colour, result691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree692_agree : tree692 = literal692 := by
  rw [tree692_def, tree690_agree, tree691_agree]
  rfl
theorem node692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree692 live692 coloured692 = result692 := by
  rw [tree692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node690_eq
  unfold live690 coloured690 at child
  try dsimp only [live692, coloured692]
  rw [child]
  dsimp only [result690]
  have child := node691_eq
  unfold live691 coloured691 at child
  try dsimp only [live692, coloured692]
  rw [child]
  dsimp only [result691]
  try dsimp only [colour, result692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree693_agree : tree693 = literal693 := by
  rw [tree693_def]
  rfl
theorem node693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree693 live693 coloured693 = result693 := by
  rw [tree693_def]
  try dsimp only [colour, result693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree694_agree : tree694 = literal694 := by
  rw [tree694_def, tree692_agree, tree693_agree]
  rfl
theorem node694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree694 live694 coloured694 = result694 := by
  rw [tree694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node692_eq
  unfold live692 coloured692 at child
  try dsimp only [live694, coloured694]
  rw [child]
  dsimp only [result692]
  have child := node693_eq
  unfold live693 coloured693 at child
  try dsimp only [live694, coloured694]
  rw [child]
  dsimp only [result693]
  try dsimp only [colour, result694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree695_agree : tree695 = literal695 := by
  rw [tree695_def]
  rfl
theorem node695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree695 live695 coloured695 = result695 := by
  rw [tree695_def]
  try dsimp only [colour, result695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree696_agree : tree696 = literal696 := by
  rw [tree696_def, tree694_agree, tree695_agree]
  rfl
theorem node696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree696 live696 coloured696 = result696 := by
  rw [tree696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node694_eq
  unfold live694 coloured694 at child
  try dsimp only [live696, coloured696]
  rw [child]
  dsimp only [result694]
  have child := node695_eq
  unfold live695 coloured695 at child
  try dsimp only [live696, coloured696]
  rw [child]
  dsimp only [result695]
  try dsimp only [colour, result696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree697_agree : tree697 = literal697 := by
  rw [tree697_def]
  rfl
theorem node697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree697 live697 coloured697 = result697 := by
  rw [tree697_def]
  try dsimp only [colour, result697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree698_agree : tree698 = literal698 := by
  rw [tree698_def, tree696_agree, tree697_agree]
  rfl
theorem node698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree698 live698 coloured698 = result698 := by
  rw [tree698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node696_eq
  unfold live696 coloured696 at child
  try dsimp only [live698, coloured698]
  rw [child]
  dsimp only [result696]
  have child := node697_eq
  unfold live697 coloured697 at child
  try dsimp only [live698, coloured698]
  rw [child]
  dsimp only [result697]
  try dsimp only [colour, result698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree699_agree : tree699 = literal699 := by
  rw [tree699_def]
  rfl
theorem node699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree699 live699 coloured699 = result699 := by
  rw [tree699_def]
  try dsimp only [colour, result699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree700_agree : tree700 = literal700 := by
  rw [tree700_def, tree698_agree, tree699_agree]
  rfl
theorem node700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree700 live700 coloured700 = result700 := by
  rw [tree700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node698_eq
  unfold live698 coloured698 at child
  try dsimp only [live700, coloured700]
  rw [child]
  dsimp only [result698]
  have child := node699_eq
  unfold live699 coloured699 at child
  try dsimp only [live700, coloured700]
  rw [child]
  dsimp only [result699]
  try dsimp only [colour, result700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree701_agree : tree701 = literal701 := by
  rw [tree701_def]
  rfl
theorem node701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree701 live701 coloured701 = result701 := by
  rw [tree701_def]
  try dsimp only [colour, result701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree702_agree : tree702 = literal702 := by
  rw [tree702_def, tree700_agree, tree701_agree]
  rfl
theorem node702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree702 live702 coloured702 = result702 := by
  rw [tree702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node700_eq
  unfold live700 coloured700 at child
  try dsimp only [live702, coloured702]
  rw [child]
  dsimp only [result700]
  have child := node701_eq
  unfold live701 coloured701 at child
  try dsimp only [live702, coloured702]
  rw [child]
  dsimp only [result701]
  try dsimp only [colour, result702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree703_agree : tree703 = literal703 := by
  rw [tree703_def]
  rfl
theorem node703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree703 live703 coloured703 = result703 := by
  rw [tree703_def]
  try dsimp only [colour, result703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree704_agree : tree704 = literal704 := by
  rw [tree704_def, tree702_agree, tree703_agree]
  rfl
theorem node704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree704 live704 coloured704 = result704 := by
  rw [tree704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node702_eq
  unfold live702 coloured702 at child
  try dsimp only [live704, coloured704]
  rw [child]
  dsimp only [result702]
  have child := node703_eq
  unfold live703 coloured703 at child
  try dsimp only [live704, coloured704]
  rw [child]
  dsimp only [result703]
  try dsimp only [colour, result704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree705_agree : tree705 = literal705 := by
  rw [tree705_def]
  rfl
theorem node705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree705 live705 coloured705 = result705 := by
  rw [tree705_def]
  try dsimp only [colour, result705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree706_agree : tree706 = literal706 := by
  rw [tree706_def, tree704_agree, tree705_agree]
  rfl
theorem node706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree706 live706 coloured706 = result706 := by
  rw [tree706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node704_eq
  unfold live704 coloured704 at child
  try dsimp only [live706, coloured706]
  rw [child]
  dsimp only [result704]
  have child := node705_eq
  unfold live705 coloured705 at child
  try dsimp only [live706, coloured706]
  rw [child]
  dsimp only [result705]
  try dsimp only [colour, result706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree707_agree : tree707 = literal707 := by
  rw [tree707_def]
  rfl
theorem node707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree707 live707 coloured707 = result707 := by
  rw [tree707_def]
  try dsimp only [colour, result707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree708_agree : tree708 = literal708 := by
  rw [tree708_def, tree706_agree, tree707_agree]
  rfl
theorem node708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree708 live708 coloured708 = result708 := by
  rw [tree708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node706_eq
  unfold live706 coloured706 at child
  try dsimp only [live708, coloured708]
  rw [child]
  dsimp only [result706]
  have child := node707_eq
  unfold live707 coloured707 at child
  try dsimp only [live708, coloured708]
  rw [child]
  dsimp only [result707]
  try dsimp only [colour, result708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree709_agree : tree709 = literal709 := by
  rw [tree709_def]
  rfl
theorem node709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree709 live709 coloured709 = result709 := by
  rw [tree709_def]
  try dsimp only [colour, result709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree710_agree : tree710 = literal710 := by
  rw [tree710_def, tree708_agree, tree709_agree]
  rfl
theorem node710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree710 live710 coloured710 = result710 := by
  rw [tree710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node708_eq
  unfold live708 coloured708 at child
  try dsimp only [live710, coloured710]
  rw [child]
  dsimp only [result708]
  have child := node709_eq
  unfold live709 coloured709 at child
  try dsimp only [live710, coloured710]
  rw [child]
  dsimp only [result709]
  try dsimp only [colour, result710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree711_agree : tree711 = literal711 := by
  rw [tree711_def]
  rfl
theorem node711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree711 live711 coloured711 = result711 := by
  rw [tree711_def]
  try dsimp only [colour, result711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree712_agree : tree712 = literal712 := by
  rw [tree712_def, tree710_agree, tree711_agree]
  rfl
theorem node712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree712 live712 coloured712 = result712 := by
  rw [tree712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node710_eq
  unfold live710 coloured710 at child
  try dsimp only [live712, coloured712]
  rw [child]
  dsimp only [result710]
  have child := node711_eq
  unfold live711 coloured711 at child
  try dsimp only [live712, coloured712]
  rw [child]
  dsimp only [result711]
  try dsimp only [colour, result712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree713_agree : tree713 = literal713 := by
  rw [tree713_def]
  rfl
theorem node713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree713 live713 coloured713 = result713 := by
  rw [tree713_def]
  try dsimp only [colour, result713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree714_agree : tree714 = literal714 := by
  rw [tree714_def, tree712_agree, tree713_agree]
  rfl
theorem node714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree714 live714 coloured714 = result714 := by
  rw [tree714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node712_eq
  unfold live712 coloured712 at child
  try dsimp only [live714, coloured714]
  rw [child]
  dsimp only [result712]
  have child := node713_eq
  unfold live713 coloured713 at child
  try dsimp only [live714, coloured714]
  rw [child]
  dsimp only [result713]
  try dsimp only [colour, result714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree715_agree : tree715 = literal715 := by
  rw [tree715_def]
  rfl
theorem node715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree715 live715 coloured715 = result715 := by
  rw [tree715_def]
  try dsimp only [colour, result715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree716_agree : tree716 = literal716 := by
  rw [tree716_def, tree714_agree, tree715_agree]
  rfl
theorem node716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree716 live716 coloured716 = result716 := by
  rw [tree716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node714_eq
  unfold live714 coloured714 at child
  try dsimp only [live716, coloured716]
  rw [child]
  dsimp only [result714]
  have child := node715_eq
  unfold live715 coloured715 at child
  try dsimp only [live716, coloured716]
  rw [child]
  dsimp only [result715]
  try dsimp only [colour, result716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree717_agree : tree717 = literal717 := by
  rw [tree717_def]
  rfl
theorem node717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree717 live717 coloured717 = result717 := by
  rw [tree717_def]
  try dsimp only [colour, result717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree718_agree : tree718 = literal718 := by
  rw [tree718_def, tree716_agree, tree717_agree]
  rfl
theorem node718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree718 live718 coloured718 = result718 := by
  rw [tree718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node716_eq
  unfold live716 coloured716 at child
  try dsimp only [live718, coloured718]
  rw [child]
  dsimp only [result716]
  have child := node717_eq
  unfold live717 coloured717 at child
  try dsimp only [live718, coloured718]
  rw [child]
  dsimp only [result717]
  try dsimp only [colour, result718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree719_agree : tree719 = literal719 := by
  rw [tree719_def]
  rfl
theorem node719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree719 live719 coloured719 = result719 := by
  rw [tree719_def]
  try dsimp only [colour, result719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree720_agree : tree720 = literal720 := by
  rw [tree720_def, tree718_agree, tree719_agree]
  rfl
theorem node720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree720 live720 coloured720 = result720 := by
  rw [tree720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node718_eq
  unfold live718 coloured718 at child
  try dsimp only [live720, coloured720]
  rw [child]
  dsimp only [result718]
  have child := node719_eq
  unfold live719 coloured719 at child
  try dsimp only [live720, coloured720]
  rw [child]
  dsimp only [result719]
  try dsimp only [colour, result720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree721_agree : tree721 = literal721 := by
  rw [tree721_def]
  rfl
theorem node721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree721 live721 coloured721 = result721 := by
  rw [tree721_def]
  try dsimp only [colour, result721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree722_agree : tree722 = literal722 := by
  rw [tree722_def, tree720_agree, tree721_agree]
  rfl
theorem node722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree722 live722 coloured722 = result722 := by
  rw [tree722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node720_eq
  unfold live720 coloured720 at child
  try dsimp only [live722, coloured722]
  rw [child]
  dsimp only [result720]
  have child := node721_eq
  unfold live721 coloured721 at child
  try dsimp only [live722, coloured722]
  rw [child]
  dsimp only [result721]
  try dsimp only [colour, result722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree723_agree : tree723 = literal723 := by
  rw [tree723_def]
  rfl
theorem node723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree723 live723 coloured723 = result723 := by
  rw [tree723_def]
  try dsimp only [colour, result723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree724_agree : tree724 = literal724 := by
  rw [tree724_def, tree722_agree, tree723_agree]
  rfl
theorem node724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree724 live724 coloured724 = result724 := by
  rw [tree724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node722_eq
  unfold live722 coloured722 at child
  try dsimp only [live724, coloured724]
  rw [child]
  dsimp only [result722]
  have child := node723_eq
  unfold live723 coloured723 at child
  try dsimp only [live724, coloured724]
  rw [child]
  dsimp only [result723]
  try dsimp only [colour, result724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree725_agree : tree725 = literal725 := by
  rw [tree725_def]
  rfl
theorem node725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree725 live725 coloured725 = result725 := by
  rw [tree725_def]
  try dsimp only [colour, result725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree726_agree : tree726 = literal726 := by
  rw [tree726_def, tree724_agree, tree725_agree]
  rfl
theorem node726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree726 live726 coloured726 = result726 := by
  rw [tree726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node724_eq
  unfold live724 coloured724 at child
  try dsimp only [live726, coloured726]
  rw [child]
  dsimp only [result724]
  have child := node725_eq
  unfold live725 coloured725 at child
  try dsimp only [live726, coloured726]
  rw [child]
  dsimp only [result725]
  try dsimp only [colour, result726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree727_agree : tree727 = literal727 := by
  rw [tree727_def]
  rfl
theorem node727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree727 live727 coloured727 = result727 := by
  rw [tree727_def]
  try dsimp only [colour, result727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree728_agree : tree728 = literal728 := by
  rw [tree728_def, tree726_agree, tree727_agree]
  rfl
theorem node728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree728 live728 coloured728 = result728 := by
  rw [tree728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node726_eq
  unfold live726 coloured726 at child
  try dsimp only [live728, coloured728]
  rw [child]
  dsimp only [result726]
  have child := node727_eq
  unfold live727 coloured727 at child
  try dsimp only [live728, coloured728]
  rw [child]
  dsimp only [result727]
  try dsimp only [colour, result728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree729_agree : tree729 = literal729 := by
  rw [tree729_def]
  rfl
theorem node729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree729 live729 coloured729 = result729 := by
  rw [tree729_def]
  try dsimp only [colour, result729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree730_agree : tree730 = literal730 := by
  rw [tree730_def, tree728_agree, tree729_agree]
  rfl
theorem node730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree730 live730 coloured730 = result730 := by
  rw [tree730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node728_eq
  unfold live728 coloured728 at child
  try dsimp only [live730, coloured730]
  rw [child]
  dsimp only [result728]
  have child := node729_eq
  unfold live729 coloured729 at child
  try dsimp only [live730, coloured730]
  rw [child]
  dsimp only [result729]
  try dsimp only [colour, result730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree731_agree : tree731 = literal731 := by
  rw [tree731_def]
  rfl
theorem node731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree731 live731 coloured731 = result731 := by
  rw [tree731_def]
  try dsimp only [colour, result731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree732_agree : tree732 = literal732 := by
  rw [tree732_def, tree730_agree, tree731_agree]
  rfl
theorem node732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree732 live732 coloured732 = result732 := by
  rw [tree732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node730_eq
  unfold live730 coloured730 at child
  try dsimp only [live732, coloured732]
  rw [child]
  dsimp only [result730]
  have child := node731_eq
  unfold live731 coloured731 at child
  try dsimp only [live732, coloured732]
  rw [child]
  dsimp only [result731]
  try dsimp only [colour, result732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree733_agree : tree733 = literal733 := by
  rw [tree733_def]
  rfl
theorem node733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree733 live733 coloured733 = result733 := by
  rw [tree733_def]
  try dsimp only [colour, result733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree734_agree : tree734 = literal734 := by
  rw [tree734_def, tree732_agree, tree733_agree]
  rfl
theorem node734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree734 live734 coloured734 = result734 := by
  rw [tree734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node732_eq
  unfold live732 coloured732 at child
  try dsimp only [live734, coloured734]
  rw [child]
  dsimp only [result732]
  have child := node733_eq
  unfold live733 coloured733 at child
  try dsimp only [live734, coloured734]
  rw [child]
  dsimp only [result733]
  try dsimp only [colour, result734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree735_agree : tree735 = literal735 := by
  rw [tree735_def]
  rfl
theorem node735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree735 live735 coloured735 = result735 := by
  rw [tree735_def]
  try dsimp only [colour, result735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree736_agree : tree736 = literal736 := by
  rw [tree736_def, tree734_agree, tree735_agree]
  rfl
theorem node736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree736 live736 coloured736 = result736 := by
  rw [tree736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node734_eq
  unfold live734 coloured734 at child
  try dsimp only [live736, coloured736]
  rw [child]
  dsimp only [result734]
  have child := node735_eq
  unfold live735 coloured735 at child
  try dsimp only [live736, coloured736]
  rw [child]
  dsimp only [result735]
  try dsimp only [colour, result736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree737_agree : tree737 = literal737 := by
  rw [tree737_def]
  rfl
theorem node737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree737 live737 coloured737 = result737 := by
  rw [tree737_def]
  try dsimp only [colour, result737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree738_agree : tree738 = literal738 := by
  rw [tree738_def, tree736_agree, tree737_agree]
  rfl
theorem node738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree738 live738 coloured738 = result738 := by
  rw [tree738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node736_eq
  unfold live736 coloured736 at child
  try dsimp only [live738, coloured738]
  rw [child]
  dsimp only [result736]
  have child := node737_eq
  unfold live737 coloured737 at child
  try dsimp only [live738, coloured738]
  rw [child]
  dsimp only [result737]
  try dsimp only [colour, result738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree739_agree : tree739 = literal739 := by
  rw [tree739_def]
  rfl
theorem node739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree739 live739 coloured739 = result739 := by
  rw [tree739_def]
  try dsimp only [colour, result739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree740_agree : tree740 = literal740 := by
  rw [tree740_def, tree738_agree, tree739_agree]
  rfl
theorem node740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree740 live740 coloured740 = result740 := by
  rw [tree740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node738_eq
  unfold live738 coloured738 at child
  try dsimp only [live740, coloured740]
  rw [child]
  dsimp only [result738]
  have child := node739_eq
  unfold live739 coloured739 at child
  try dsimp only [live740, coloured740]
  rw [child]
  dsimp only [result739]
  try dsimp only [colour, result740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree741_agree : tree741 = literal741 := by
  rw [tree741_def]
  rfl
theorem node741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree741 live741 coloured741 = result741 := by
  rw [tree741_def]
  try dsimp only [colour, result741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree742_agree : tree742 = literal742 := by
  rw [tree742_def, tree740_agree, tree741_agree]
  rfl
theorem node742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree742 live742 coloured742 = result742 := by
  rw [tree742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node740_eq
  unfold live740 coloured740 at child
  try dsimp only [live742, coloured742]
  rw [child]
  dsimp only [result740]
  have child := node741_eq
  unfold live741 coloured741 at child
  try dsimp only [live742, coloured742]
  rw [child]
  dsimp only [result741]
  try dsimp only [colour, result742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree743_agree : tree743 = literal743 := by
  rw [tree743_def]
  rfl
theorem node743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree743 live743 coloured743 = result743 := by
  rw [tree743_def]
  try dsimp only [colour, result743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree744_agree : tree744 = literal744 := by
  rw [tree744_def, tree742_agree, tree743_agree]
  rfl
theorem node744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree744 live744 coloured744 = result744 := by
  rw [tree744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node742_eq
  unfold live742 coloured742 at child
  try dsimp only [live744, coloured744]
  rw [child]
  dsimp only [result742]
  have child := node743_eq
  unfold live743 coloured743 at child
  try dsimp only [live744, coloured744]
  rw [child]
  dsimp only [result743]
  try dsimp only [colour, result744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree745_agree : tree745 = literal745 := by
  rw [tree745_def]
  rfl
theorem node745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree745 live745 coloured745 = result745 := by
  rw [tree745_def]
  try dsimp only [colour, result745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree746_agree : tree746 = literal746 := by
  rw [tree746_def, tree744_agree, tree745_agree]
  rfl
theorem node746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree746 live746 coloured746 = result746 := by
  rw [tree746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node744_eq
  unfold live744 coloured744 at child
  try dsimp only [live746, coloured746]
  rw [child]
  dsimp only [result744]
  have child := node745_eq
  unfold live745 coloured745 at child
  try dsimp only [live746, coloured746]
  rw [child]
  dsimp only [result745]
  try dsimp only [colour, result746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree747_agree : tree747 = literal747 := by
  rw [tree747_def]
  rfl
theorem node747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree747 live747 coloured747 = result747 := by
  rw [tree747_def]
  try dsimp only [colour, result747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree748_agree : tree748 = literal748 := by
  rw [tree748_def, tree746_agree, tree747_agree]
  rfl
theorem node748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree748 live748 coloured748 = result748 := by
  rw [tree748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node746_eq
  unfold live746 coloured746 at child
  try dsimp only [live748, coloured748]
  rw [child]
  dsimp only [result746]
  have child := node747_eq
  unfold live747 coloured747 at child
  try dsimp only [live748, coloured748]
  rw [child]
  dsimp only [result747]
  try dsimp only [colour, result748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree749_agree : tree749 = literal749 := by
  rw [tree749_def]
  rfl
theorem node749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree749 live749 coloured749 = result749 := by
  rw [tree749_def]
  try dsimp only [colour, result749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree750_agree : tree750 = literal750 := by
  rw [tree750_def, tree748_agree, tree749_agree]
  rfl
theorem node750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree750 live750 coloured750 = result750 := by
  rw [tree750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node748_eq
  unfold live748 coloured748 at child
  try dsimp only [live750, coloured750]
  rw [child]
  dsimp only [result748]
  have child := node749_eq
  unfold live749 coloured749 at child
  try dsimp only [live750, coloured750]
  rw [child]
  dsimp only [result749]
  try dsimp only [colour, result750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree751_agree : tree751 = literal751 := by
  rw [tree751_def]
  rfl
theorem node751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree751 live751 coloured751 = result751 := by
  rw [tree751_def]
  try dsimp only [colour, result751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree752_agree : tree752 = literal752 := by
  rw [tree752_def, tree750_agree, tree751_agree]
  rfl
theorem node752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree752 live752 coloured752 = result752 := by
  rw [tree752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node750_eq
  unfold live750 coloured750 at child
  try dsimp only [live752, coloured752]
  rw [child]
  dsimp only [result750]
  have child := node751_eq
  unfold live751 coloured751 at child
  try dsimp only [live752, coloured752]
  rw [child]
  dsimp only [result751]
  try dsimp only [colour, result752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree753_agree : tree753 = literal753 := by
  rw [tree753_def]
  rfl
theorem node753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree753 live753 coloured753 = result753 := by
  rw [tree753_def]
  try dsimp only [colour, result753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree754_agree : tree754 = literal754 := by
  rw [tree754_def, tree752_agree, tree753_agree]
  rfl
theorem node754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree754 live754 coloured754 = result754 := by
  rw [tree754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node752_eq
  unfold live752 coloured752 at child
  try dsimp only [live754, coloured754]
  rw [child]
  dsimp only [result752]
  have child := node753_eq
  unfold live753 coloured753 at child
  try dsimp only [live754, coloured754]
  rw [child]
  dsimp only [result753]
  try dsimp only [colour, result754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree755_agree : tree755 = literal755 := by
  rw [tree755_def]
  rfl
theorem node755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree755 live755 coloured755 = result755 := by
  rw [tree755_def]
  try dsimp only [colour, result755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree756_agree : tree756 = literal756 := by
  rw [tree756_def, tree754_agree, tree755_agree]
  rfl
theorem node756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree756 live756 coloured756 = result756 := by
  rw [tree756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node754_eq
  unfold live754 coloured754 at child
  try dsimp only [live756, coloured756]
  rw [child]
  dsimp only [result754]
  have child := node755_eq
  unfold live755 coloured755 at child
  try dsimp only [live756, coloured756]
  rw [child]
  dsimp only [result755]
  try dsimp only [colour, result756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree757_agree : tree757 = literal757 := by
  rw [tree757_def]
  rfl
theorem node757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree757 live757 coloured757 = result757 := by
  rw [tree757_def]
  try dsimp only [colour, result757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree758_agree : tree758 = literal758 := by
  rw [tree758_def, tree756_agree, tree757_agree]
  rfl
theorem node758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree758 live758 coloured758 = result758 := by
  rw [tree758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node756_eq
  unfold live756 coloured756 at child
  try dsimp only [live758, coloured758]
  rw [child]
  dsimp only [result756]
  have child := node757_eq
  unfold live757 coloured757 at child
  try dsimp only [live758, coloured758]
  rw [child]
  dsimp only [result757]
  try dsimp only [colour, result758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree759_agree : tree759 = literal759 := by
  rw [tree759_def]
  rfl
theorem node759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree759 live759 coloured759 = result759 := by
  rw [tree759_def]
  try dsimp only [colour, result759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree760_agree : tree760 = literal760 := by
  rw [tree760_def, tree758_agree, tree759_agree]
  rfl
theorem node760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree760 live760 coloured760 = result760 := by
  rw [tree760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node758_eq
  unfold live758 coloured758 at child
  try dsimp only [live760, coloured760]
  rw [child]
  dsimp only [result758]
  have child := node759_eq
  unfold live759 coloured759 at child
  try dsimp only [live760, coloured760]
  rw [child]
  dsimp only [result759]
  try dsimp only [colour, result760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree761_agree : tree761 = literal761 := by
  rw [tree761_def]
  rfl
theorem node761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree761 live761 coloured761 = result761 := by
  rw [tree761_def]
  try dsimp only [colour, result761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree762_agree : tree762 = literal762 := by
  rw [tree762_def, tree760_agree, tree761_agree]
  rfl
theorem node762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree762 live762 coloured762 = result762 := by
  rw [tree762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node760_eq
  unfold live760 coloured760 at child
  try dsimp only [live762, coloured762]
  rw [child]
  dsimp only [result760]
  have child := node761_eq
  unfold live761 coloured761 at child
  try dsimp only [live762, coloured762]
  rw [child]
  dsimp only [result761]
  try dsimp only [colour, result762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree763_agree : tree763 = literal763 := by
  rw [tree763_def]
  rfl
theorem node763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree763 live763 coloured763 = result763 := by
  rw [tree763_def]
  try dsimp only [colour, result763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree764_agree : tree764 = literal764 := by
  rw [tree764_def, tree762_agree, tree763_agree]
  rfl
theorem node764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree764 live764 coloured764 = result764 := by
  rw [tree764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node762_eq
  unfold live762 coloured762 at child
  try dsimp only [live764, coloured764]
  rw [child]
  dsimp only [result762]
  have child := node763_eq
  unfold live763 coloured763 at child
  try dsimp only [live764, coloured764]
  rw [child]
  dsimp only [result763]
  try dsimp only [colour, result764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree765_agree : tree765 = literal765 := by
  rw [tree765_def]
  rfl
theorem node765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree765 live765 coloured765 = result765 := by
  rw [tree765_def]
  try dsimp only [colour, result765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree766_agree : tree766 = literal766 := by
  rw [tree766_def, tree764_agree, tree765_agree]
  rfl
theorem node766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree766 live766 coloured766 = result766 := by
  rw [tree766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node764_eq
  unfold live764 coloured764 at child
  try dsimp only [live766, coloured766]
  rw [child]
  dsimp only [result764]
  have child := node765_eq
  unfold live765 coloured765 at child
  try dsimp only [live766, coloured766]
  rw [child]
  dsimp only [result765]
  try dsimp only [colour, result766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree767_agree : tree767 = literal767 := by
  rw [tree767_def]
  rfl
theorem node767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree767 live767 coloured767 = result767 := by
  rw [tree767_def]
  try dsimp only [colour, result767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
