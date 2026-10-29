import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages874.Data
import InitECandidate.Proofs.ClashComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages874
theorem tree672_agree_conditional : tree672 = literal672 := by
  rw [tree672_def]
  rfl
theorem node672_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree672 live672 coloured672 = result672 := by
  rw [tree672_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree673_agree_conditional
    (child0 : tree671 = literal671)
    (child1 : tree672 = literal672) : tree673 = literal673 := by
  rw [tree673_def, child0, child1]
  rfl
theorem node673_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree671 live671 coloured671 = result671)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree672 live672 coloured672 = result672) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree673 live673 coloured673 = result673 := by
  rw [tree673_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live671 coloured671 at child
  try dsimp only [live673, coloured673]
  rw [child]
  dsimp only [result671]
  have child := child1
  unfold live672 coloured672 at child
  try dsimp only [live673, coloured673]
  rw [child]
  dsimp only [result672]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree674_agree_conditional : tree674 = literal674 := by
  rw [tree674_def]
  rfl
theorem node674_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree674 live674 coloured674 = result674 := by
  rw [tree674_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree675_agree_conditional : tree675 = literal675 := by
  rw [tree675_def]
  rfl
theorem node675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree675 live675 coloured675 = result675 := by
  rw [tree675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree676_agree_conditional
    (child0 : tree674 = literal674)
    (child1 : tree675 = literal675) : tree676 = literal676 := by
  rw [tree676_def, child0, child1]
  rfl
theorem node676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree674 live674 coloured674 = result674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree675 live675 coloured675 = result675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree676 live676 coloured676 = result676 := by
  rw [tree676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live674 coloured674 at child
  try dsimp only [live676, coloured676]
  rw [child]
  dsimp only [result674]
  have child := child1
  unfold live675 coloured675 at child
  try dsimp only [live676, coloured676]
  rw [child]
  dsimp only [result675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree677_agree_conditional
    (child0 : tree673 = literal673)
    (child1 : tree676 = literal676) : tree677 = literal677 := by
  rw [tree677_def, child0, child1]
  rfl
theorem node677_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree673 live673 coloured673 = result673)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree676 live676 coloured676 = result676) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree677 live677 coloured677 = result677 := by
  rw [tree677_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live673 coloured673 at child
  try dsimp only [live677, coloured677]
  rw [child]
  dsimp only [result673]
  have child := child1
  unfold live676 coloured676 at child
  try dsimp only [live677, coloured677]
  rw [child]
  dsimp only [result676]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree678_agree_conditional : tree678 = literal678 := by
  rw [tree678_def]
  rfl
theorem node678_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree678 live678 coloured678 = result678 := by
  rw [tree678_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree679_agree_conditional
    (child0 : tree677 = literal677)
    (child1 : tree678 = literal678) : tree679 = literal679 := by
  rw [tree679_def, child0, child1]
  rfl
theorem node679_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree677 live677 coloured677 = result677)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree678 live678 coloured678 = result678) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree679 live679 coloured679 = result679 := by
  rw [tree679_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live677 coloured677 at child
  try dsimp only [live679, coloured679]
  rw [child]
  dsimp only [result677]
  have child := child1
  unfold live678 coloured678 at child
  try dsimp only [live679, coloured679]
  rw [child]
  dsimp only [result678]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree680_agree_conditional
    (child0 : tree396 = literal396)
    (child1 : tree679 = literal679) : tree680 = literal680 := by
  rw [tree680_def, child0, child1]
  rfl
theorem node680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree396 live396 coloured396 = result396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree679 live679 coloured679 = result679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree680 live680 coloured680 = result680 := by
  rw [tree680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live396 coloured396 at child
  try dsimp only [live680, coloured680]
  rw [child]
  dsimp only [result396]
  have child := child1
  unfold live679 coloured679 at child
  try dsimp only [live680, coloured680]
  rw [child]
  dsimp only [result679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree681_agree_conditional : tree681 = literal681 := by
  rw [tree681_def]
  rfl
theorem node681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree681 live681 coloured681 = result681 := by
  rw [tree681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree682_agree_conditional
    (child0 : tree680 = literal680)
    (child1 : tree681 = literal681) : tree682 = literal682 := by
  rw [tree682_def, child0, child1]
  rfl
theorem node682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree680 live680 coloured680 = result680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree681 live681 coloured681 = result681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree682 live682 coloured682 = result682 := by
  rw [tree682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live680 coloured680 at child
  try dsimp only [live682, coloured682]
  rw [child]
  dsimp only [result680]
  have child := child1
  unfold live681 coloured681 at child
  try dsimp only [live682, coloured682]
  rw [child]
  dsimp only [result681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree683_agree_conditional : tree683 = literal683 := by
  rw [tree683_def]
  rfl
theorem node683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree683 live683 coloured683 = result683 := by
  rw [tree683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree684_agree_conditional
    (child0 : tree682 = literal682)
    (child1 : tree683 = literal683) : tree684 = literal684 := by
  rw [tree684_def, child0, child1]
  rfl
theorem node684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree682 live682 coloured682 = result682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree683 live683 coloured683 = result683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree684 live684 coloured684 = result684 := by
  rw [tree684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live682 coloured682 at child
  try dsimp only [live684, coloured684]
  rw [child]
  dsimp only [result682]
  have child := child1
  unfold live683 coloured683 at child
  try dsimp only [live684, coloured684]
  rw [child]
  dsimp only [result683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree685_agree_conditional : tree685 = literal685 := by
  rw [tree685_def]
  rfl
theorem node685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree685 live685 coloured685 = result685 := by
  rw [tree685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree686_agree_conditional
    (child0 : tree684 = literal684)
    (child1 : tree685 = literal685) : tree686 = literal686 := by
  rw [tree686_def, child0, child1]
  rfl
theorem node686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree684 live684 coloured684 = result684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree685 live685 coloured685 = result685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree686 live686 coloured686 = result686 := by
  rw [tree686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live684 coloured684 at child
  try dsimp only [live686, coloured686]
  rw [child]
  dsimp only [result684]
  have child := child1
  unfold live685 coloured685 at child
  try dsimp only [live686, coloured686]
  rw [child]
  dsimp only [result685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree687_agree_conditional : tree687 = literal687 := by
  rw [tree687_def]
  rfl
theorem node687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree687 live687 coloured687 = result687 := by
  rw [tree687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree688_agree_conditional : tree688 = literal688 := by
  rw [tree688_def]
  rfl
theorem node688_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree688 live688 coloured688 = result688 := by
  rw [tree688_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree689_agree_conditional
    (child0 : tree687 = literal687)
    (child1 : tree688 = literal688) : tree689 = literal689 := by
  rw [tree689_def, child0, child1]
  rfl
theorem node689_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree687 live687 coloured687 = result687)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree688 live688 coloured688 = result688) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree689 live689 coloured689 = result689 := by
  rw [tree689_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live687 coloured687 at child
  try dsimp only [live689, coloured689]
  rw [child]
  dsimp only [result687]
  have child := child1
  unfold live688 coloured688 at child
  try dsimp only [live689, coloured689]
  rw [child]
  dsimp only [result688]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree690_agree_conditional : tree690 = literal690 := by
  rw [tree690_def]
  rfl
theorem node690_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree690 live690 coloured690 = result690 := by
  rw [tree690_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree691_agree_conditional : tree691 = literal691 := by
  rw [tree691_def]
  rfl
theorem node691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree691 live691 coloured691 = result691 := by
  rw [tree691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree692_agree_conditional
    (child0 : tree690 = literal690)
    (child1 : tree691 = literal691) : tree692 = literal692 := by
  rw [tree692_def, child0, child1]
  rfl
theorem node692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree690 live690 coloured690 = result690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree691 live691 coloured691 = result691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree692 live692 coloured692 = result692 := by
  rw [tree692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live690 coloured690 at child
  try dsimp only [live692, coloured692]
  rw [child]
  dsimp only [result690]
  have child := child1
  unfold live691 coloured691 at child
  try dsimp only [live692, coloured692]
  rw [child]
  dsimp only [result691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree693_agree_conditional : tree693 = literal693 := by
  rw [tree693_def]
  rfl
theorem node693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree693 live693 coloured693 = result693 := by
  rw [tree693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree694_agree_conditional
    (child0 : tree692 = literal692)
    (child1 : tree693 = literal693) : tree694 = literal694 := by
  rw [tree694_def, child0, child1]
  rfl
theorem node694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree692 live692 coloured692 = result692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree693 live693 coloured693 = result693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree694 live694 coloured694 = result694 := by
  rw [tree694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live692 coloured692 at child
  try dsimp only [live694, coloured694]
  rw [child]
  dsimp only [result692]
  have child := child1
  unfold live693 coloured693 at child
  try dsimp only [live694, coloured694]
  rw [child]
  dsimp only [result693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree695_agree_conditional
    (child0 : tree689 = literal689)
    (child1 : tree694 = literal694) : tree695 = literal695 := by
  rw [tree695_def, child0, child1]
  rfl
theorem node695_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree689 live689 coloured689 = result689)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree694 live694 coloured694 = result694) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree695 live695 coloured695 = result695 := by
  rw [tree695_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live689 coloured689 at child
  try dsimp only [live695, coloured695]
  rw [child]
  dsimp only [result689]
  have child := child1
  unfold live694 coloured694 at child
  try dsimp only [live695, coloured695]
  rw [child]
  dsimp only [result694]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree696_agree_conditional
    (child0 : tree686 = literal686)
    (child1 : tree695 = literal695) : tree696 = literal696 := by
  rw [tree696_def, child0, child1]
  rfl
theorem node696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree686 live686 coloured686 = result686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree695 live695 coloured695 = result695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree696 live696 coloured696 = result696 := by
  rw [tree696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live686 coloured686 at child
  try dsimp only [live696, coloured696]
  rw [child]
  dsimp only [result686]
  have child := child1
  unfold live695 coloured695 at child
  try dsimp only [live696, coloured696]
  rw [child]
  dsimp only [result695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree697_agree_conditional : tree697 = literal697 := by
  rw [tree697_def]
  rfl
theorem node697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree697 live697 coloured697 = result697 := by
  rw [tree697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree698_agree_conditional
    (child0 : tree696 = literal696)
    (child1 : tree697 = literal697) : tree698 = literal698 := by
  rw [tree698_def, child0, child1]
  rfl
theorem node698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree696 live696 coloured696 = result696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree697 live697 coloured697 = result697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree698 live698 coloured698 = result698 := by
  rw [tree698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live696 coloured696 at child
  try dsimp only [live698, coloured698]
  rw [child]
  dsimp only [result696]
  have child := child1
  unfold live697 coloured697 at child
  try dsimp only [live698, coloured698]
  rw [child]
  dsimp only [result697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree699_agree_conditional : tree699 = literal699 := by
  rw [tree699_def]
  rfl
theorem node699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree699 live699 coloured699 = result699 := by
  rw [tree699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree700_agree_conditional
    (child0 : tree698 = literal698)
    (child1 : tree699 = literal699) : tree700 = literal700 := by
  rw [tree700_def, child0, child1]
  rfl
theorem node700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree698 live698 coloured698 = result698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree699 live699 coloured699 = result699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree700 live700 coloured700 = result700 := by
  rw [tree700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live698 coloured698 at child
  try dsimp only [live700, coloured700]
  rw [child]
  dsimp only [result698]
  have child := child1
  unfold live699 coloured699 at child
  try dsimp only [live700, coloured700]
  rw [child]
  dsimp only [result699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree701_agree_conditional : tree701 = literal701 := by
  rw [tree701_def]
  rfl
theorem node701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree701 live701 coloured701 = result701 := by
  rw [tree701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree702_agree_conditional : tree702 = literal702 := by
  rw [tree702_def]
  rfl
theorem node702_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree702 live702 coloured702 = result702 := by
  rw [tree702_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree703_agree_conditional
    (child0 : tree701 = literal701)
    (child1 : tree702 = literal702) : tree703 = literal703 := by
  rw [tree703_def, child0, child1]
  rfl
theorem node703_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree701 live701 coloured701 = result701)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree702 live702 coloured702 = result702) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree703 live703 coloured703 = result703 := by
  rw [tree703_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live701 coloured701 at child
  try dsimp only [live703, coloured703]
  rw [child]
  dsimp only [result701]
  have child := child1
  unfold live702 coloured702 at child
  try dsimp only [live703, coloured703]
  rw [child]
  dsimp only [result702]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree704_agree_conditional : tree704 = literal704 := by
  rw [tree704_def]
  rfl
theorem node704_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree704 live704 coloured704 = result704 := by
  rw [tree704_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree705_agree_conditional
    (child0 : tree703 = literal703)
    (child1 : tree704 = literal704) : tree705 = literal705 := by
  rw [tree705_def, child0, child1]
  rfl
theorem node705_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree703 live703 coloured703 = result703)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree704 live704 coloured704 = result704) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree705 live705 coloured705 = result705 := by
  rw [tree705_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live703 coloured703 at child
  try dsimp only [live705, coloured705]
  rw [child]
  dsimp only [result703]
  have child := child1
  unfold live704 coloured704 at child
  try dsimp only [live705, coloured705]
  rw [child]
  dsimp only [result704]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree706_agree_conditional : tree706 = literal706 := by
  rw [tree706_def]
  rfl
theorem node706_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree706 live706 coloured706 = result706 := by
  rw [tree706_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree707_agree_conditional : tree707 = literal707 := by
  rw [tree707_def]
  rfl
theorem node707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree707 live707 coloured707 = result707 := by
  rw [tree707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree708_agree_conditional
    (child0 : tree706 = literal706)
    (child1 : tree707 = literal707) : tree708 = literal708 := by
  rw [tree708_def, child0, child1]
  rfl
theorem node708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree706 live706 coloured706 = result706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree707 live707 coloured707 = result707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree708 live708 coloured708 = result708 := by
  rw [tree708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live706 coloured706 at child
  try dsimp only [live708, coloured708]
  rw [child]
  dsimp only [result706]
  have child := child1
  unfold live707 coloured707 at child
  try dsimp only [live708, coloured708]
  rw [child]
  dsimp only [result707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree709_agree_conditional : tree709 = literal709 := by
  rw [tree709_def]
  rfl
theorem node709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree709 live709 coloured709 = result709 := by
  rw [tree709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree710_agree_conditional
    (child0 : tree708 = literal708)
    (child1 : tree709 = literal709) : tree710 = literal710 := by
  rw [tree710_def, child0, child1]
  rfl
theorem node710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree708 live708 coloured708 = result708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree709 live709 coloured709 = result709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree710 live710 coloured710 = result710 := by
  rw [tree710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live708 coloured708 at child
  try dsimp only [live710, coloured710]
  rw [child]
  dsimp only [result708]
  have child := child1
  unfold live709 coloured709 at child
  try dsimp only [live710, coloured710]
  rw [child]
  dsimp only [result709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree711_agree_conditional : tree711 = literal711 := by
  rw [tree711_def]
  rfl
theorem node711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree711 live711 coloured711 = result711 := by
  rw [tree711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree712_agree_conditional
    (child0 : tree710 = literal710)
    (child1 : tree711 = literal711) : tree712 = literal712 := by
  rw [tree712_def, child0, child1]
  rfl
theorem node712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree710 live710 coloured710 = result710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree711 live711 coloured711 = result711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree712 live712 coloured712 = result712 := by
  rw [tree712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live710 coloured710 at child
  try dsimp only [live712, coloured712]
  rw [child]
  dsimp only [result710]
  have child := child1
  unfold live711 coloured711 at child
  try dsimp only [live712, coloured712]
  rw [child]
  dsimp only [result711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree713_agree_conditional : tree713 = literal713 := by
  rw [tree713_def]
  rfl
theorem node713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree713 live713 coloured713 = result713 := by
  rw [tree713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree714_agree_conditional
    (child0 : tree712 = literal712)
    (child1 : tree713 = literal713) : tree714 = literal714 := by
  rw [tree714_def, child0, child1]
  rfl
theorem node714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree712 live712 coloured712 = result712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree713 live713 coloured713 = result713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree714 live714 coloured714 = result714 := by
  rw [tree714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live712 coloured712 at child
  try dsimp only [live714, coloured714]
  rw [child]
  dsimp only [result712]
  have child := child1
  unfold live713 coloured713 at child
  try dsimp only [live714, coloured714]
  rw [child]
  dsimp only [result713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree715_agree_conditional : tree715 = literal715 := by
  rw [tree715_def]
  rfl
theorem node715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree715 live715 coloured715 = result715 := by
  rw [tree715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree716_agree_conditional
    (child0 : tree714 = literal714)
    (child1 : tree715 = literal715) : tree716 = literal716 := by
  rw [tree716_def, child0, child1]
  rfl
theorem node716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree714 live714 coloured714 = result714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree715 live715 coloured715 = result715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree716 live716 coloured716 = result716 := by
  rw [tree716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live714 coloured714 at child
  try dsimp only [live716, coloured716]
  rw [child]
  dsimp only [result714]
  have child := child1
  unfold live715 coloured715 at child
  try dsimp only [live716, coloured716]
  rw [child]
  dsimp only [result715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree717_agree_conditional : tree717 = literal717 := by
  rw [tree717_def]
  rfl
theorem node717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree717 live717 coloured717 = result717 := by
  rw [tree717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree718_agree_conditional
    (child0 : tree716 = literal716)
    (child1 : tree717 = literal717) : tree718 = literal718 := by
  rw [tree718_def, child0, child1]
  rfl
theorem node718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree716 live716 coloured716 = result716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree717 live717 coloured717 = result717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree718 live718 coloured718 = result718 := by
  rw [tree718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live716 coloured716 at child
  try dsimp only [live718, coloured718]
  rw [child]
  dsimp only [result716]
  have child := child1
  unfold live717 coloured717 at child
  try dsimp only [live718, coloured718]
  rw [child]
  dsimp only [result717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree719_agree_conditional : tree719 = literal719 := by
  rw [tree719_def]
  rfl
theorem node719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree719 live719 coloured719 = result719 := by
  rw [tree719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree720_agree_conditional
    (child0 : tree718 = literal718)
    (child1 : tree719 = literal719) : tree720 = literal720 := by
  rw [tree720_def, child0, child1]
  rfl
theorem node720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree718 live718 coloured718 = result718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree719 live719 coloured719 = result719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree720 live720 coloured720 = result720 := by
  rw [tree720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live718 coloured718 at child
  try dsimp only [live720, coloured720]
  rw [child]
  dsimp only [result718]
  have child := child1
  unfold live719 coloured719 at child
  try dsimp only [live720, coloured720]
  rw [child]
  dsimp only [result719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree721_agree_conditional : tree721 = literal721 := by
  rw [tree721_def]
  rfl
theorem node721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree721 live721 coloured721 = result721 := by
  rw [tree721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree722_agree_conditional
    (child0 : tree720 = literal720)
    (child1 : tree721 = literal721) : tree722 = literal722 := by
  rw [tree722_def, child0, child1]
  rfl
theorem node722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree720 live720 coloured720 = result720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree721 live721 coloured721 = result721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree722 live722 coloured722 = result722 := by
  rw [tree722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live720 coloured720 at child
  try dsimp only [live722, coloured722]
  rw [child]
  dsimp only [result720]
  have child := child1
  unfold live721 coloured721 at child
  try dsimp only [live722, coloured722]
  rw [child]
  dsimp only [result721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree723_agree_conditional
    (child0 : tree705 = literal705)
    (child1 : tree722 = literal722) : tree723 = literal723 := by
  rw [tree723_def, child0, child1]
  rfl
theorem node723_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree705 live705 coloured705 = result705)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree722 live722 coloured722 = result722) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree723 live723 coloured723 = result723 := by
  rw [tree723_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live705 coloured705 at child
  try dsimp only [live723, coloured723]
  rw [child]
  dsimp only [result705]
  have child := child1
  unfold live722 coloured722 at child
  try dsimp only [live723, coloured723]
  rw [child]
  dsimp only [result722]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree724_agree_conditional : tree724 = literal724 := by
  rw [tree724_def]
  rfl
theorem node724_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree724 live724 coloured724 = result724 := by
  rw [tree724_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree725_agree_conditional
    (child0 : tree723 = literal723)
    (child1 : tree724 = literal724) : tree725 = literal725 := by
  rw [tree725_def, child0, child1]
  rfl
theorem node725_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree723 live723 coloured723 = result723)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree724 live724 coloured724 = result724) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree725 live725 coloured725 = result725 := by
  rw [tree725_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live723 coloured723 at child
  try dsimp only [live725, coloured725]
  rw [child]
  dsimp only [result723]
  have child := child1
  unfold live724 coloured724 at child
  try dsimp only [live725, coloured725]
  rw [child]
  dsimp only [result724]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree726_agree_conditional : tree726 = literal726 := by
  rw [tree726_def]
  rfl
theorem node726_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree726 live726 coloured726 = result726 := by
  rw [tree726_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree727_agree_conditional
    (child0 : tree725 = literal725)
    (child1 : tree726 = literal726) : tree727 = literal727 := by
  rw [tree727_def, child0, child1]
  rfl
theorem node727_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree725 live725 coloured725 = result725)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree726 live726 coloured726 = result726) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree727 live727 coloured727 = result727 := by
  rw [tree727_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live725 coloured725 at child
  try dsimp only [live727, coloured727]
  rw [child]
  dsimp only [result725]
  have child := child1
  unfold live726 coloured726 at child
  try dsimp only [live727, coloured727]
  rw [child]
  dsimp only [result726]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree728_agree_conditional : tree728 = literal728 := by
  rw [tree728_def]
  rfl
theorem node728_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree728 live728 coloured728 = result728 := by
  rw [tree728_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree729_agree_conditional
    (child0 : tree727 = literal727)
    (child1 : tree728 = literal728) : tree729 = literal729 := by
  rw [tree729_def, child0, child1]
  rfl
theorem node729_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree727 live727 coloured727 = result727)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree728 live728 coloured728 = result728) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree729 live729 coloured729 = result729 := by
  rw [tree729_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live727 coloured727 at child
  try dsimp only [live729, coloured729]
  rw [child]
  dsimp only [result727]
  have child := child1
  unfold live728 coloured728 at child
  try dsimp only [live729, coloured729]
  rw [child]
  dsimp only [result728]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree730_agree_conditional : tree730 = literal730 := by
  rw [tree730_def]
  rfl
theorem node730_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree730 live730 coloured730 = result730 := by
  rw [tree730_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree731_agree_conditional : tree731 = literal731 := by
  rw [tree731_def]
  rfl
theorem node731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree731 live731 coloured731 = result731 := by
  rw [tree731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree732_agree_conditional
    (child0 : tree730 = literal730)
    (child1 : tree731 = literal731) : tree732 = literal732 := by
  rw [tree732_def, child0, child1]
  rfl
theorem node732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree730 live730 coloured730 = result730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree731 live731 coloured731 = result731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree732 live732 coloured732 = result732 := by
  rw [tree732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live730 coloured730 at child
  try dsimp only [live732, coloured732]
  rw [child]
  dsimp only [result730]
  have child := child1
  unfold live731 coloured731 at child
  try dsimp only [live732, coloured732]
  rw [child]
  dsimp only [result731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree733_agree_conditional : tree733 = literal733 := by
  rw [tree733_def]
  rfl
theorem node733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree733 live733 coloured733 = result733 := by
  rw [tree733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree734_agree_conditional : tree734 = literal734 := by
  rw [tree734_def]
  rfl
theorem node734_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree734 live734 coloured734 = result734 := by
  rw [tree734_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree735_agree_conditional
    (child0 : tree733 = literal733)
    (child1 : tree734 = literal734) : tree735 = literal735 := by
  rw [tree735_def, child0, child1]
  rfl
theorem node735_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree733 live733 coloured733 = result733)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree734 live734 coloured734 = result734) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree735 live735 coloured735 = result735 := by
  rw [tree735_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live733 coloured733 at child
  try dsimp only [live735, coloured735]
  rw [child]
  dsimp only [result733]
  have child := child1
  unfold live734 coloured734 at child
  try dsimp only [live735, coloured735]
  rw [child]
  dsimp only [result734]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree736_agree_conditional : tree736 = literal736 := by
  rw [tree736_def]
  rfl
theorem node736_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree736 live736 coloured736 = result736 := by
  rw [tree736_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree737_agree_conditional
    (child0 : tree735 = literal735)
    (child1 : tree736 = literal736) : tree737 = literal737 := by
  rw [tree737_def, child0, child1]
  rfl
theorem node737_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree735 live735 coloured735 = result735)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree736 live736 coloured736 = result736) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree737 live737 coloured737 = result737 := by
  rw [tree737_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live735 coloured735 at child
  try dsimp only [live737, coloured737]
  rw [child]
  dsimp only [result735]
  have child := child1
  unfold live736 coloured736 at child
  try dsimp only [live737, coloured737]
  rw [child]
  dsimp only [result736]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree738_agree_conditional
    (child0 : tree732 = literal732)
    (child1 : tree737 = literal737) : tree738 = literal738 := by
  rw [tree738_def, child0, child1]
  rfl
theorem node738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree732 live732 coloured732 = result732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree737 live737 coloured737 = result737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree738 live738 coloured738 = result738 := by
  rw [tree738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live732 coloured732 at child
  try dsimp only [live738, coloured738]
  rw [child]
  dsimp only [result732]
  have child := child1
  unfold live737 coloured737 at child
  try dsimp only [live738, coloured738]
  rw [child]
  dsimp only [result737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree739_agree_conditional
    (child0 : tree729 = literal729)
    (child1 : tree738 = literal738) : tree739 = literal739 := by
  rw [tree739_def, child0, child1]
  rfl
theorem node739_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree729 live729 coloured729 = result729)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree738 live738 coloured738 = result738) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree739 live739 coloured739 = result739 := by
  rw [tree739_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live729 coloured729 at child
  try dsimp only [live739, coloured739]
  rw [child]
  dsimp only [result729]
  have child := child1
  unfold live738 coloured738 at child
  try dsimp only [live739, coloured739]
  rw [child]
  dsimp only [result738]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree740_agree_conditional : tree740 = literal740 := by
  rw [tree740_def]
  rfl
theorem node740_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree740 live740 coloured740 = result740 := by
  rw [tree740_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree741_agree_conditional
    (child0 : tree739 = literal739)
    (child1 : tree740 = literal740) : tree741 = literal741 := by
  rw [tree741_def, child0, child1]
  rfl
theorem node741_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree739 live739 coloured739 = result739)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree740 live740 coloured740 = result740) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree741 live741 coloured741 = result741 := by
  rw [tree741_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live739 coloured739 at child
  try dsimp only [live741, coloured741]
  rw [child]
  dsimp only [result739]
  have child := child1
  unfold live740 coloured740 at child
  try dsimp only [live741, coloured741]
  rw [child]
  dsimp only [result740]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree742_agree_conditional : tree742 = literal742 := by
  rw [tree742_def]
  rfl
theorem node742_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree742 live742 coloured742 = result742 := by
  rw [tree742_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree743_agree_conditional
    (child0 : tree741 = literal741)
    (child1 : tree742 = literal742) : tree743 = literal743 := by
  rw [tree743_def, child0, child1]
  rfl
theorem node743_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree741 live741 coloured741 = result741)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree742 live742 coloured742 = result742) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree743 live743 coloured743 = result743 := by
  rw [tree743_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live741 coloured741 at child
  try dsimp only [live743, coloured743]
  rw [child]
  dsimp only [result741]
  have child := child1
  unfold live742 coloured742 at child
  try dsimp only [live743, coloured743]
  rw [child]
  dsimp only [result742]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree744_agree_conditional : tree744 = literal744 := by
  rw [tree744_def]
  rfl
theorem node744_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree744 live744 coloured744 = result744 := by
  rw [tree744_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree745_agree_conditional
    (child0 : tree743 = literal743)
    (child1 : tree744 = literal744) : tree745 = literal745 := by
  rw [tree745_def, child0, child1]
  rfl
theorem node745_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree743 live743 coloured743 = result743)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree744 live744 coloured744 = result744) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree745 live745 coloured745 = result745 := by
  rw [tree745_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live743 coloured743 at child
  try dsimp only [live745, coloured745]
  rw [child]
  dsimp only [result743]
  have child := child1
  unfold live744 coloured744 at child
  try dsimp only [live745, coloured745]
  rw [child]
  dsimp only [result744]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree746_agree_conditional : tree746 = literal746 := by
  rw [tree746_def]
  rfl
theorem node746_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree746 live746 coloured746 = result746 := by
  rw [tree746_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree747_agree_conditional
    (child0 : tree745 = literal745)
    (child1 : tree746 = literal746) : tree747 = literal747 := by
  rw [tree747_def, child0, child1]
  rfl
theorem node747_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree745 live745 coloured745 = result745)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree746 live746 coloured746 = result746) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree747 live747 coloured747 = result747 := by
  rw [tree747_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live745 coloured745 at child
  try dsimp only [live747, coloured747]
  rw [child]
  dsimp only [result745]
  have child := child1
  unfold live746 coloured746 at child
  try dsimp only [live747, coloured747]
  rw [child]
  dsimp only [result746]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree748_agree_conditional : tree748 = literal748 := by
  rw [tree748_def]
  rfl
theorem node748_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree748 live748 coloured748 = result748 := by
  rw [tree748_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree749_agree_conditional
    (child0 : tree747 = literal747)
    (child1 : tree748 = literal748) : tree749 = literal749 := by
  rw [tree749_def, child0, child1]
  rfl
theorem node749_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree747 live747 coloured747 = result747)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree748 live748 coloured748 = result748) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree749 live749 coloured749 = result749 := by
  rw [tree749_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live747 coloured747 at child
  try dsimp only [live749, coloured749]
  rw [child]
  dsimp only [result747]
  have child := child1
  unfold live748 coloured748 at child
  try dsimp only [live749, coloured749]
  rw [child]
  dsimp only [result748]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree750_agree_conditional : tree750 = literal750 := by
  rw [tree750_def]
  rfl
theorem node750_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree750 live750 coloured750 = result750 := by
  rw [tree750_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree751_agree_conditional
    (child0 : tree749 = literal749)
    (child1 : tree750 = literal750) : tree751 = literal751 := by
  rw [tree751_def, child0, child1]
  rfl
theorem node751_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree749 live749 coloured749 = result749)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree750 live750 coloured750 = result750) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree751 live751 coloured751 = result751 := by
  rw [tree751_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live749 coloured749 at child
  try dsimp only [live751, coloured751]
  rw [child]
  dsimp only [result749]
  have child := child1
  unfold live750 coloured750 at child
  try dsimp only [live751, coloured751]
  rw [child]
  dsimp only [result750]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree752_agree_conditional : tree752 = literal752 := by
  rw [tree752_def]
  rfl
theorem node752_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree752 live752 coloured752 = result752 := by
  rw [tree752_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree753_agree_conditional
    (child0 : tree751 = literal751)
    (child1 : tree752 = literal752) : tree753 = literal753 := by
  rw [tree753_def, child0, child1]
  rfl
theorem node753_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree751 live751 coloured751 = result751)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree752 live752 coloured752 = result752) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree753 live753 coloured753 = result753 := by
  rw [tree753_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live751 coloured751 at child
  try dsimp only [live753, coloured753]
  rw [child]
  dsimp only [result751]
  have child := child1
  unfold live752 coloured752 at child
  try dsimp only [live753, coloured753]
  rw [child]
  dsimp only [result752]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree754_agree_conditional : tree754 = literal754 := by
  rw [tree754_def]
  rfl
theorem node754_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree754 live754 coloured754 = result754 := by
  rw [tree754_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree755_agree_conditional
    (child0 : tree753 = literal753)
    (child1 : tree754 = literal754) : tree755 = literal755 := by
  rw [tree755_def, child0, child1]
  rfl
theorem node755_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree753 live753 coloured753 = result753)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree754 live754 coloured754 = result754) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree755 live755 coloured755 = result755 := by
  rw [tree755_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live753 coloured753 at child
  try dsimp only [live755, coloured755]
  rw [child]
  dsimp only [result753]
  have child := child1
  unfold live754 coloured754 at child
  try dsimp only [live755, coloured755]
  rw [child]
  dsimp only [result754]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree756_agree_conditional : tree756 = literal756 := by
  rw [tree756_def]
  rfl
theorem node756_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree756 live756 coloured756 = result756 := by
  rw [tree756_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree757_agree_conditional
    (child0 : tree755 = literal755)
    (child1 : tree756 = literal756) : tree757 = literal757 := by
  rw [tree757_def, child0, child1]
  rfl
theorem node757_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree755 live755 coloured755 = result755)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree756 live756 coloured756 = result756) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree757 live757 coloured757 = result757 := by
  rw [tree757_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live755 coloured755 at child
  try dsimp only [live757, coloured757]
  rw [child]
  dsimp only [result755]
  have child := child1
  unfold live756 coloured756 at child
  try dsimp only [live757, coloured757]
  rw [child]
  dsimp only [result756]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree758_agree_conditional : tree758 = literal758 := by
  rw [tree758_def]
  rfl
theorem node758_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree758 live758 coloured758 = result758 := by
  rw [tree758_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree759_agree_conditional
    (child0 : tree757 = literal757)
    (child1 : tree758 = literal758) : tree759 = literal759 := by
  rw [tree759_def, child0, child1]
  rfl
theorem node759_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree757 live757 coloured757 = result757)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree758 live758 coloured758 = result758) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree759 live759 coloured759 = result759 := by
  rw [tree759_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live757 coloured757 at child
  try dsimp only [live759, coloured759]
  rw [child]
  dsimp only [result757]
  have child := child1
  unfold live758 coloured758 at child
  try dsimp only [live759, coloured759]
  rw [child]
  dsimp only [result758]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree760_agree_conditional : tree760 = literal760 := by
  rw [tree760_def]
  rfl
theorem node760_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree760 live760 coloured760 = result760 := by
  rw [tree760_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree761_agree_conditional : tree761 = literal761 := by
  rw [tree761_def]
  rfl
theorem node761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree761 live761 coloured761 = result761 := by
  rw [tree761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree762_agree_conditional
    (child0 : tree760 = literal760)
    (child1 : tree761 = literal761) : tree762 = literal762 := by
  rw [tree762_def, child0, child1]
  rfl
theorem node762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree760 live760 coloured760 = result760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree761 live761 coloured761 = result761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree762 live762 coloured762 = result762 := by
  rw [tree762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live760 coloured760 at child
  try dsimp only [live762, coloured762]
  rw [child]
  dsimp only [result760]
  have child := child1
  unfold live761 coloured761 at child
  try dsimp only [live762, coloured762]
  rw [child]
  dsimp only [result761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree763_agree_conditional : tree763 = literal763 := by
  rw [tree763_def]
  rfl
theorem node763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree763 live763 coloured763 = result763 := by
  rw [tree763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree764_agree_conditional : tree764 = literal764 := by
  rw [tree764_def]
  rfl
theorem node764_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree764 live764 coloured764 = result764 := by
  rw [tree764_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree765_agree_conditional
    (child0 : tree763 = literal763)
    (child1 : tree764 = literal764) : tree765 = literal765 := by
  rw [tree765_def, child0, child1]
  rfl
theorem node765_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree763 live763 coloured763 = result763)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree764 live764 coloured764 = result764) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree765 live765 coloured765 = result765 := by
  rw [tree765_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live763 coloured763 at child
  try dsimp only [live765, coloured765]
  rw [child]
  dsimp only [result763]
  have child := child1
  unfold live764 coloured764 at child
  try dsimp only [live765, coloured765]
  rw [child]
  dsimp only [result764]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree766_agree_conditional : tree766 = literal766 := by
  rw [tree766_def]
  rfl
theorem node766_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree766 live766 coloured766 = result766 := by
  rw [tree766_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree767_agree_conditional : tree767 = literal767 := by
  rw [tree767_def]
  rfl
theorem node767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree767 live767 coloured767 = result767 := by
  rw [tree767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages874
