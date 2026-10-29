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
theorem tree2688_agree_conditional
    (child0 : tree2686 = literal2686)
    (child1 : tree2687 = literal2687) : tree2688 = literal2688 := by
  rw [tree2688_def, child0, child1]
  rfl
theorem node2688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2686 live2686 coloured2686 = result2686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2687 live2687 coloured2687 = result2687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2688 live2688 coloured2688 = result2688 := by
  rw [tree2688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2686 coloured2686 at child
  try dsimp only [live2688, coloured2688]
  rw [child]
  dsimp only [result2686]
  have child := child1
  unfold live2687 coloured2687 at child
  try dsimp only [live2688, coloured2688]
  rw [child]
  dsimp only [result2687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2689_agree_conditional : tree2689 = literal2689 := by
  rw [tree2689_def]
  rfl
theorem node2689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2689 live2689 coloured2689 = result2689 := by
  rw [tree2689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2690_agree_conditional
    (child0 : tree2688 = literal2688)
    (child1 : tree2689 = literal2689) : tree2690 = literal2690 := by
  rw [tree2690_def, child0, child1]
  rfl
theorem node2690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2688 live2688 coloured2688 = result2688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2689 live2689 coloured2689 = result2689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2690 live2690 coloured2690 = result2690 := by
  rw [tree2690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2688 coloured2688 at child
  try dsimp only [live2690, coloured2690]
  rw [child]
  dsimp only [result2688]
  have child := child1
  unfold live2689 coloured2689 at child
  try dsimp only [live2690, coloured2690]
  rw [child]
  dsimp only [result2689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2691_agree_conditional : tree2691 = literal2691 := by
  rw [tree2691_def]
  rfl
theorem node2691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2691 live2691 coloured2691 = result2691 := by
  rw [tree2691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2692_agree_conditional
    (child0 : tree2690 = literal2690)
    (child1 : tree2691 = literal2691) : tree2692 = literal2692 := by
  rw [tree2692_def, child0, child1]
  rfl
theorem node2692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2690 live2690 coloured2690 = result2690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2691 live2691 coloured2691 = result2691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2692 live2692 coloured2692 = result2692 := by
  rw [tree2692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2690 coloured2690 at child
  try dsimp only [live2692, coloured2692]
  rw [child]
  dsimp only [result2690]
  have child := child1
  unfold live2691 coloured2691 at child
  try dsimp only [live2692, coloured2692]
  rw [child]
  dsimp only [result2691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2693_agree_conditional : tree2693 = literal2693 := by
  rw [tree2693_def]
  rfl
theorem node2693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2693 live2693 coloured2693 = result2693 := by
  rw [tree2693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2694_agree_conditional
    (child0 : tree2692 = literal2692)
    (child1 : tree2693 = literal2693) : tree2694 = literal2694 := by
  rw [tree2694_def, child0, child1]
  rfl
theorem node2694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2692 live2692 coloured2692 = result2692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2693 live2693 coloured2693 = result2693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2694 live2694 coloured2694 = result2694 := by
  rw [tree2694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2692 coloured2692 at child
  try dsimp only [live2694, coloured2694]
  rw [child]
  dsimp only [result2692]
  have child := child1
  unfold live2693 coloured2693 at child
  try dsimp only [live2694, coloured2694]
  rw [child]
  dsimp only [result2693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2695_agree_conditional : tree2695 = literal2695 := by
  rw [tree2695_def]
  rfl
theorem node2695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2695 live2695 coloured2695 = result2695 := by
  rw [tree2695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2696_agree_conditional
    (child0 : tree2694 = literal2694)
    (child1 : tree2695 = literal2695) : tree2696 = literal2696 := by
  rw [tree2696_def, child0, child1]
  rfl
theorem node2696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2694 live2694 coloured2694 = result2694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2695 live2695 coloured2695 = result2695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2696 live2696 coloured2696 = result2696 := by
  rw [tree2696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2694 coloured2694 at child
  try dsimp only [live2696, coloured2696]
  rw [child]
  dsimp only [result2694]
  have child := child1
  unfold live2695 coloured2695 at child
  try dsimp only [live2696, coloured2696]
  rw [child]
  dsimp only [result2695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2697_agree_conditional : tree2697 = literal2697 := by
  rw [tree2697_def]
  rfl
theorem node2697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2697 live2697 coloured2697 = result2697 := by
  rw [tree2697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2698_agree_conditional
    (child0 : tree2696 = literal2696)
    (child1 : tree2697 = literal2697) : tree2698 = literal2698 := by
  rw [tree2698_def, child0, child1]
  rfl
theorem node2698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2696 live2696 coloured2696 = result2696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2697 live2697 coloured2697 = result2697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2698 live2698 coloured2698 = result2698 := by
  rw [tree2698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2696 coloured2696 at child
  try dsimp only [live2698, coloured2698]
  rw [child]
  dsimp only [result2696]
  have child := child1
  unfold live2697 coloured2697 at child
  try dsimp only [live2698, coloured2698]
  rw [child]
  dsimp only [result2697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2699_agree_conditional : tree2699 = literal2699 := by
  rw [tree2699_def]
  rfl
theorem node2699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2699 live2699 coloured2699 = result2699 := by
  rw [tree2699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2700_agree_conditional
    (child0 : tree2698 = literal2698)
    (child1 : tree2699 = literal2699) : tree2700 = literal2700 := by
  rw [tree2700_def, child0, child1]
  rfl
theorem node2700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2698 live2698 coloured2698 = result2698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2699 live2699 coloured2699 = result2699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2700 live2700 coloured2700 = result2700 := by
  rw [tree2700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2698 coloured2698 at child
  try dsimp only [live2700, coloured2700]
  rw [child]
  dsimp only [result2698]
  have child := child1
  unfold live2699 coloured2699 at child
  try dsimp only [live2700, coloured2700]
  rw [child]
  dsimp only [result2699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2701_agree_conditional : tree2701 = literal2701 := by
  rw [tree2701_def]
  rfl
theorem node2701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2701 live2701 coloured2701 = result2701 := by
  rw [tree2701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2702_agree_conditional
    (child0 : tree2700 = literal2700)
    (child1 : tree2701 = literal2701) : tree2702 = literal2702 := by
  rw [tree2702_def, child0, child1]
  rfl
theorem node2702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2700 live2700 coloured2700 = result2700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2701 live2701 coloured2701 = result2701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2702 live2702 coloured2702 = result2702 := by
  rw [tree2702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2700 coloured2700 at child
  try dsimp only [live2702, coloured2702]
  rw [child]
  dsimp only [result2700]
  have child := child1
  unfold live2701 coloured2701 at child
  try dsimp only [live2702, coloured2702]
  rw [child]
  dsimp only [result2701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2703_agree_conditional : tree2703 = literal2703 := by
  rw [tree2703_def]
  rfl
theorem node2703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2703 live2703 coloured2703 = result2703 := by
  rw [tree2703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2704_agree_conditional
    (child0 : tree2702 = literal2702)
    (child1 : tree2703 = literal2703) : tree2704 = literal2704 := by
  rw [tree2704_def, child0, child1]
  rfl
theorem node2704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2702 live2702 coloured2702 = result2702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2703 live2703 coloured2703 = result2703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2704 live2704 coloured2704 = result2704 := by
  rw [tree2704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2702 coloured2702 at child
  try dsimp only [live2704, coloured2704]
  rw [child]
  dsimp only [result2702]
  have child := child1
  unfold live2703 coloured2703 at child
  try dsimp only [live2704, coloured2704]
  rw [child]
  dsimp only [result2703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2705_agree_conditional : tree2705 = literal2705 := by
  rw [tree2705_def]
  rfl
theorem node2705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2705 live2705 coloured2705 = result2705 := by
  rw [tree2705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2706_agree_conditional
    (child0 : tree2704 = literal2704)
    (child1 : tree2705 = literal2705) : tree2706 = literal2706 := by
  rw [tree2706_def, child0, child1]
  rfl
theorem node2706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2704 live2704 coloured2704 = result2704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2705 live2705 coloured2705 = result2705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2706 live2706 coloured2706 = result2706 := by
  rw [tree2706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2704 coloured2704 at child
  try dsimp only [live2706, coloured2706]
  rw [child]
  dsimp only [result2704]
  have child := child1
  unfold live2705 coloured2705 at child
  try dsimp only [live2706, coloured2706]
  rw [child]
  dsimp only [result2705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2707_agree_conditional : tree2707 = literal2707 := by
  rw [tree2707_def]
  rfl
theorem node2707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2707 live2707 coloured2707 = result2707 := by
  rw [tree2707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2708_agree_conditional
    (child0 : tree2706 = literal2706)
    (child1 : tree2707 = literal2707) : tree2708 = literal2708 := by
  rw [tree2708_def, child0, child1]
  rfl
theorem node2708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2706 live2706 coloured2706 = result2706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2707 live2707 coloured2707 = result2707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2708 live2708 coloured2708 = result2708 := by
  rw [tree2708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2706 coloured2706 at child
  try dsimp only [live2708, coloured2708]
  rw [child]
  dsimp only [result2706]
  have child := child1
  unfold live2707 coloured2707 at child
  try dsimp only [live2708, coloured2708]
  rw [child]
  dsimp only [result2707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2709_agree_conditional : tree2709 = literal2709 := by
  rw [tree2709_def]
  rfl
theorem node2709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2709 live2709 coloured2709 = result2709 := by
  rw [tree2709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2710_agree_conditional
    (child0 : tree2708 = literal2708)
    (child1 : tree2709 = literal2709) : tree2710 = literal2710 := by
  rw [tree2710_def, child0, child1]
  rfl
theorem node2710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2708 live2708 coloured2708 = result2708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2709 live2709 coloured2709 = result2709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2710 live2710 coloured2710 = result2710 := by
  rw [tree2710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2708 coloured2708 at child
  try dsimp only [live2710, coloured2710]
  rw [child]
  dsimp only [result2708]
  have child := child1
  unfold live2709 coloured2709 at child
  try dsimp only [live2710, coloured2710]
  rw [child]
  dsimp only [result2709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2711_agree_conditional : tree2711 = literal2711 := by
  rw [tree2711_def]
  rfl
theorem node2711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2711 live2711 coloured2711 = result2711 := by
  rw [tree2711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2712_agree_conditional
    (child0 : tree2710 = literal2710)
    (child1 : tree2711 = literal2711) : tree2712 = literal2712 := by
  rw [tree2712_def, child0, child1]
  rfl
theorem node2712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2710 live2710 coloured2710 = result2710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2711 live2711 coloured2711 = result2711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2712 live2712 coloured2712 = result2712 := by
  rw [tree2712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2710 coloured2710 at child
  try dsimp only [live2712, coloured2712]
  rw [child]
  dsimp only [result2710]
  have child := child1
  unfold live2711 coloured2711 at child
  try dsimp only [live2712, coloured2712]
  rw [child]
  dsimp only [result2711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2713_agree_conditional : tree2713 = literal2713 := by
  rw [tree2713_def]
  rfl
theorem node2713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2713 live2713 coloured2713 = result2713 := by
  rw [tree2713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2714_agree_conditional
    (child0 : tree2712 = literal2712)
    (child1 : tree2713 = literal2713) : tree2714 = literal2714 := by
  rw [tree2714_def, child0, child1]
  rfl
theorem node2714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2712 live2712 coloured2712 = result2712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2713 live2713 coloured2713 = result2713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2714 live2714 coloured2714 = result2714 := by
  rw [tree2714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2712 coloured2712 at child
  try dsimp only [live2714, coloured2714]
  rw [child]
  dsimp only [result2712]
  have child := child1
  unfold live2713 coloured2713 at child
  try dsimp only [live2714, coloured2714]
  rw [child]
  dsimp only [result2713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2715_agree_conditional : tree2715 = literal2715 := by
  rw [tree2715_def]
  rfl
theorem node2715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2715 live2715 coloured2715 = result2715 := by
  rw [tree2715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2716_agree_conditional
    (child0 : tree2714 = literal2714)
    (child1 : tree2715 = literal2715) : tree2716 = literal2716 := by
  rw [tree2716_def, child0, child1]
  rfl
theorem node2716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2714 live2714 coloured2714 = result2714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2715 live2715 coloured2715 = result2715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2716 live2716 coloured2716 = result2716 := by
  rw [tree2716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2714 coloured2714 at child
  try dsimp only [live2716, coloured2716]
  rw [child]
  dsimp only [result2714]
  have child := child1
  unfold live2715 coloured2715 at child
  try dsimp only [live2716, coloured2716]
  rw [child]
  dsimp only [result2715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2717_agree_conditional : tree2717 = literal2717 := by
  rw [tree2717_def]
  rfl
theorem node2717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2717 live2717 coloured2717 = result2717 := by
  rw [tree2717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2718_agree_conditional
    (child0 : tree2716 = literal2716)
    (child1 : tree2717 = literal2717) : tree2718 = literal2718 := by
  rw [tree2718_def, child0, child1]
  rfl
theorem node2718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2716 live2716 coloured2716 = result2716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2717 live2717 coloured2717 = result2717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2718 live2718 coloured2718 = result2718 := by
  rw [tree2718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2716 coloured2716 at child
  try dsimp only [live2718, coloured2718]
  rw [child]
  dsimp only [result2716]
  have child := child1
  unfold live2717 coloured2717 at child
  try dsimp only [live2718, coloured2718]
  rw [child]
  dsimp only [result2717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2719_agree_conditional : tree2719 = literal2719 := by
  rw [tree2719_def]
  rfl
theorem node2719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2719 live2719 coloured2719 = result2719 := by
  rw [tree2719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2720_agree_conditional
    (child0 : tree2718 = literal2718)
    (child1 : tree2719 = literal2719) : tree2720 = literal2720 := by
  rw [tree2720_def, child0, child1]
  rfl
theorem node2720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2718 live2718 coloured2718 = result2718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2719 live2719 coloured2719 = result2719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2720 live2720 coloured2720 = result2720 := by
  rw [tree2720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2718 coloured2718 at child
  try dsimp only [live2720, coloured2720]
  rw [child]
  dsimp only [result2718]
  have child := child1
  unfold live2719 coloured2719 at child
  try dsimp only [live2720, coloured2720]
  rw [child]
  dsimp only [result2719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2721_agree_conditional : tree2721 = literal2721 := by
  rw [tree2721_def]
  rfl
theorem node2721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2721 live2721 coloured2721 = result2721 := by
  rw [tree2721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2722_agree_conditional
    (child0 : tree2720 = literal2720)
    (child1 : tree2721 = literal2721) : tree2722 = literal2722 := by
  rw [tree2722_def, child0, child1]
  rfl
theorem node2722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2720 live2720 coloured2720 = result2720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2721 live2721 coloured2721 = result2721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2722 live2722 coloured2722 = result2722 := by
  rw [tree2722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2720 coloured2720 at child
  try dsimp only [live2722, coloured2722]
  rw [child]
  dsimp only [result2720]
  have child := child1
  unfold live2721 coloured2721 at child
  try dsimp only [live2722, coloured2722]
  rw [child]
  dsimp only [result2721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2723_agree_conditional : tree2723 = literal2723 := by
  rw [tree2723_def]
  rfl
theorem node2723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2723 live2723 coloured2723 = result2723 := by
  rw [tree2723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2724_agree_conditional
    (child0 : tree2722 = literal2722)
    (child1 : tree2723 = literal2723) : tree2724 = literal2724 := by
  rw [tree2724_def, child0, child1]
  rfl
theorem node2724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2722 live2722 coloured2722 = result2722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2723 live2723 coloured2723 = result2723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2724 live2724 coloured2724 = result2724 := by
  rw [tree2724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2722 coloured2722 at child
  try dsimp only [live2724, coloured2724]
  rw [child]
  dsimp only [result2722]
  have child := child1
  unfold live2723 coloured2723 at child
  try dsimp only [live2724, coloured2724]
  rw [child]
  dsimp only [result2723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2725_agree_conditional : tree2725 = literal2725 := by
  rw [tree2725_def]
  rfl
theorem node2725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2725 live2725 coloured2725 = result2725 := by
  rw [tree2725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2726_agree_conditional
    (child0 : tree2724 = literal2724)
    (child1 : tree2725 = literal2725) : tree2726 = literal2726 := by
  rw [tree2726_def, child0, child1]
  rfl
theorem node2726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2724 live2724 coloured2724 = result2724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2725 live2725 coloured2725 = result2725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2726 live2726 coloured2726 = result2726 := by
  rw [tree2726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2724 coloured2724 at child
  try dsimp only [live2726, coloured2726]
  rw [child]
  dsimp only [result2724]
  have child := child1
  unfold live2725 coloured2725 at child
  try dsimp only [live2726, coloured2726]
  rw [child]
  dsimp only [result2725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2727_agree_conditional : tree2727 = literal2727 := by
  rw [tree2727_def]
  rfl
theorem node2727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2727 live2727 coloured2727 = result2727 := by
  rw [tree2727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2728_agree_conditional
    (child0 : tree2726 = literal2726)
    (child1 : tree2727 = literal2727) : tree2728 = literal2728 := by
  rw [tree2728_def, child0, child1]
  rfl
theorem node2728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2726 live2726 coloured2726 = result2726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2727 live2727 coloured2727 = result2727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2728 live2728 coloured2728 = result2728 := by
  rw [tree2728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2726 coloured2726 at child
  try dsimp only [live2728, coloured2728]
  rw [child]
  dsimp only [result2726]
  have child := child1
  unfold live2727 coloured2727 at child
  try dsimp only [live2728, coloured2728]
  rw [child]
  dsimp only [result2727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2729_agree_conditional : tree2729 = literal2729 := by
  rw [tree2729_def]
  rfl
theorem node2729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2729 live2729 coloured2729 = result2729 := by
  rw [tree2729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2730_agree_conditional
    (child0 : tree2728 = literal2728)
    (child1 : tree2729 = literal2729) : tree2730 = literal2730 := by
  rw [tree2730_def, child0, child1]
  rfl
theorem node2730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2728 live2728 coloured2728 = result2728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2729 live2729 coloured2729 = result2729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2730 live2730 coloured2730 = result2730 := by
  rw [tree2730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2728 coloured2728 at child
  try dsimp only [live2730, coloured2730]
  rw [child]
  dsimp only [result2728]
  have child := child1
  unfold live2729 coloured2729 at child
  try dsimp only [live2730, coloured2730]
  rw [child]
  dsimp only [result2729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2731_agree_conditional : tree2731 = literal2731 := by
  rw [tree2731_def]
  rfl
theorem node2731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2731 live2731 coloured2731 = result2731 := by
  rw [tree2731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2732_agree_conditional
    (child0 : tree2730 = literal2730)
    (child1 : tree2731 = literal2731) : tree2732 = literal2732 := by
  rw [tree2732_def, child0, child1]
  rfl
theorem node2732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2730 live2730 coloured2730 = result2730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2731 live2731 coloured2731 = result2731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2732 live2732 coloured2732 = result2732 := by
  rw [tree2732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2730 coloured2730 at child
  try dsimp only [live2732, coloured2732]
  rw [child]
  dsimp only [result2730]
  have child := child1
  unfold live2731 coloured2731 at child
  try dsimp only [live2732, coloured2732]
  rw [child]
  dsimp only [result2731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2733_agree_conditional : tree2733 = literal2733 := by
  rw [tree2733_def]
  rfl
theorem node2733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2733 live2733 coloured2733 = result2733 := by
  rw [tree2733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2734_agree_conditional
    (child0 : tree2732 = literal2732)
    (child1 : tree2733 = literal2733) : tree2734 = literal2734 := by
  rw [tree2734_def, child0, child1]
  rfl
theorem node2734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2732 live2732 coloured2732 = result2732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2733 live2733 coloured2733 = result2733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2734 live2734 coloured2734 = result2734 := by
  rw [tree2734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2732 coloured2732 at child
  try dsimp only [live2734, coloured2734]
  rw [child]
  dsimp only [result2732]
  have child := child1
  unfold live2733 coloured2733 at child
  try dsimp only [live2734, coloured2734]
  rw [child]
  dsimp only [result2733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2735_agree_conditional : tree2735 = literal2735 := by
  rw [tree2735_def]
  rfl
theorem node2735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2735 live2735 coloured2735 = result2735 := by
  rw [tree2735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2736_agree_conditional
    (child0 : tree2734 = literal2734)
    (child1 : tree2735 = literal2735) : tree2736 = literal2736 := by
  rw [tree2736_def, child0, child1]
  rfl
theorem node2736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2734 live2734 coloured2734 = result2734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2735 live2735 coloured2735 = result2735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2736 live2736 coloured2736 = result2736 := by
  rw [tree2736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2734 coloured2734 at child
  try dsimp only [live2736, coloured2736]
  rw [child]
  dsimp only [result2734]
  have child := child1
  unfold live2735 coloured2735 at child
  try dsimp only [live2736, coloured2736]
  rw [child]
  dsimp only [result2735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2737_agree_conditional : tree2737 = literal2737 := by
  rw [tree2737_def]
  rfl
theorem node2737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2737 live2737 coloured2737 = result2737 := by
  rw [tree2737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2738_agree_conditional
    (child0 : tree2736 = literal2736)
    (child1 : tree2737 = literal2737) : tree2738 = literal2738 := by
  rw [tree2738_def, child0, child1]
  rfl
theorem node2738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2736 live2736 coloured2736 = result2736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2737 live2737 coloured2737 = result2737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2738 live2738 coloured2738 = result2738 := by
  rw [tree2738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2736 coloured2736 at child
  try dsimp only [live2738, coloured2738]
  rw [child]
  dsimp only [result2736]
  have child := child1
  unfold live2737 coloured2737 at child
  try dsimp only [live2738, coloured2738]
  rw [child]
  dsimp only [result2737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2739_agree_conditional : tree2739 = literal2739 := by
  rw [tree2739_def]
  rfl
theorem node2739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2739 live2739 coloured2739 = result2739 := by
  rw [tree2739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2740_agree_conditional
    (child0 : tree2738 = literal2738)
    (child1 : tree2739 = literal2739) : tree2740 = literal2740 := by
  rw [tree2740_def, child0, child1]
  rfl
theorem node2740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2738 live2738 coloured2738 = result2738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2739 live2739 coloured2739 = result2739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2740 live2740 coloured2740 = result2740 := by
  rw [tree2740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2738 coloured2738 at child
  try dsimp only [live2740, coloured2740]
  rw [child]
  dsimp only [result2738]
  have child := child1
  unfold live2739 coloured2739 at child
  try dsimp only [live2740, coloured2740]
  rw [child]
  dsimp only [result2739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2741_agree_conditional : tree2741 = literal2741 := by
  rw [tree2741_def]
  rfl
theorem node2741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2741 live2741 coloured2741 = result2741 := by
  rw [tree2741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2742_agree_conditional
    (child0 : tree2740 = literal2740)
    (child1 : tree2741 = literal2741) : tree2742 = literal2742 := by
  rw [tree2742_def, child0, child1]
  rfl
theorem node2742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2740 live2740 coloured2740 = result2740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2741 live2741 coloured2741 = result2741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2742 live2742 coloured2742 = result2742 := by
  rw [tree2742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2740 coloured2740 at child
  try dsimp only [live2742, coloured2742]
  rw [child]
  dsimp only [result2740]
  have child := child1
  unfold live2741 coloured2741 at child
  try dsimp only [live2742, coloured2742]
  rw [child]
  dsimp only [result2741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2743_agree_conditional : tree2743 = literal2743 := by
  rw [tree2743_def]
  rfl
theorem node2743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2743 live2743 coloured2743 = result2743 := by
  rw [tree2743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2744_agree_conditional
    (child0 : tree2742 = literal2742)
    (child1 : tree2743 = literal2743) : tree2744 = literal2744 := by
  rw [tree2744_def, child0, child1]
  rfl
theorem node2744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2742 live2742 coloured2742 = result2742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2743 live2743 coloured2743 = result2743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2744 live2744 coloured2744 = result2744 := by
  rw [tree2744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2742 coloured2742 at child
  try dsimp only [live2744, coloured2744]
  rw [child]
  dsimp only [result2742]
  have child := child1
  unfold live2743 coloured2743 at child
  try dsimp only [live2744, coloured2744]
  rw [child]
  dsimp only [result2743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2745_agree_conditional : tree2745 = literal2745 := by
  rw [tree2745_def]
  rfl
theorem node2745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2745 live2745 coloured2745 = result2745 := by
  rw [tree2745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2746_agree_conditional
    (child0 : tree2744 = literal2744)
    (child1 : tree2745 = literal2745) : tree2746 = literal2746 := by
  rw [tree2746_def, child0, child1]
  rfl
theorem node2746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2744 live2744 coloured2744 = result2744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2745 live2745 coloured2745 = result2745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2746 live2746 coloured2746 = result2746 := by
  rw [tree2746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2744 coloured2744 at child
  try dsimp only [live2746, coloured2746]
  rw [child]
  dsimp only [result2744]
  have child := child1
  unfold live2745 coloured2745 at child
  try dsimp only [live2746, coloured2746]
  rw [child]
  dsimp only [result2745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2747_agree_conditional : tree2747 = literal2747 := by
  rw [tree2747_def]
  rfl
theorem node2747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2747 live2747 coloured2747 = result2747 := by
  rw [tree2747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2748_agree_conditional
    (child0 : tree2746 = literal2746)
    (child1 : tree2747 = literal2747) : tree2748 = literal2748 := by
  rw [tree2748_def, child0, child1]
  rfl
theorem node2748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2746 live2746 coloured2746 = result2746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2747 live2747 coloured2747 = result2747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2748 live2748 coloured2748 = result2748 := by
  rw [tree2748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2746 coloured2746 at child
  try dsimp only [live2748, coloured2748]
  rw [child]
  dsimp only [result2746]
  have child := child1
  unfold live2747 coloured2747 at child
  try dsimp only [live2748, coloured2748]
  rw [child]
  dsimp only [result2747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2749_agree_conditional : tree2749 = literal2749 := by
  rw [tree2749_def]
  rfl
theorem node2749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2749 live2749 coloured2749 = result2749 := by
  rw [tree2749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2750_agree_conditional
    (child0 : tree2748 = literal2748)
    (child1 : tree2749 = literal2749) : tree2750 = literal2750 := by
  rw [tree2750_def, child0, child1]
  rfl
theorem node2750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2748 live2748 coloured2748 = result2748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2749 live2749 coloured2749 = result2749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2750 live2750 coloured2750 = result2750 := by
  rw [tree2750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2748 coloured2748 at child
  try dsimp only [live2750, coloured2750]
  rw [child]
  dsimp only [result2748]
  have child := child1
  unfold live2749 coloured2749 at child
  try dsimp only [live2750, coloured2750]
  rw [child]
  dsimp only [result2749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2751_agree_conditional : tree2751 = literal2751 := by
  rw [tree2751_def]
  rfl
theorem node2751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2751 live2751 coloured2751 = result2751 := by
  rw [tree2751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2752_agree_conditional
    (child0 : tree2750 = literal2750)
    (child1 : tree2751 = literal2751) : tree2752 = literal2752 := by
  rw [tree2752_def, child0, child1]
  rfl
theorem node2752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2750 live2750 coloured2750 = result2750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2751 live2751 coloured2751 = result2751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2752 live2752 coloured2752 = result2752 := by
  rw [tree2752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2750 coloured2750 at child
  try dsimp only [live2752, coloured2752]
  rw [child]
  dsimp only [result2750]
  have child := child1
  unfold live2751 coloured2751 at child
  try dsimp only [live2752, coloured2752]
  rw [child]
  dsimp only [result2751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2753_agree_conditional : tree2753 = literal2753 := by
  rw [tree2753_def]
  rfl
theorem node2753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2753 live2753 coloured2753 = result2753 := by
  rw [tree2753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2754_agree_conditional
    (child0 : tree2752 = literal2752)
    (child1 : tree2753 = literal2753) : tree2754 = literal2754 := by
  rw [tree2754_def, child0, child1]
  rfl
theorem node2754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2752 live2752 coloured2752 = result2752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2753 live2753 coloured2753 = result2753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2754 live2754 coloured2754 = result2754 := by
  rw [tree2754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2752 coloured2752 at child
  try dsimp only [live2754, coloured2754]
  rw [child]
  dsimp only [result2752]
  have child := child1
  unfold live2753 coloured2753 at child
  try dsimp only [live2754, coloured2754]
  rw [child]
  dsimp only [result2753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2755_agree_conditional : tree2755 = literal2755 := by
  rw [tree2755_def]
  rfl
theorem node2755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2755 live2755 coloured2755 = result2755 := by
  rw [tree2755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2756_agree_conditional
    (child0 : tree2754 = literal2754)
    (child1 : tree2755 = literal2755) : tree2756 = literal2756 := by
  rw [tree2756_def, child0, child1]
  rfl
theorem node2756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2754 live2754 coloured2754 = result2754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2755 live2755 coloured2755 = result2755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2756 live2756 coloured2756 = result2756 := by
  rw [tree2756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2754 coloured2754 at child
  try dsimp only [live2756, coloured2756]
  rw [child]
  dsimp only [result2754]
  have child := child1
  unfold live2755 coloured2755 at child
  try dsimp only [live2756, coloured2756]
  rw [child]
  dsimp only [result2755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2757_agree_conditional : tree2757 = literal2757 := by
  rw [tree2757_def]
  rfl
theorem node2757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2757 live2757 coloured2757 = result2757 := by
  rw [tree2757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2758_agree_conditional
    (child0 : tree2756 = literal2756)
    (child1 : tree2757 = literal2757) : tree2758 = literal2758 := by
  rw [tree2758_def, child0, child1]
  rfl
theorem node2758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2756 live2756 coloured2756 = result2756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2757 live2757 coloured2757 = result2757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2758 live2758 coloured2758 = result2758 := by
  rw [tree2758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2756 coloured2756 at child
  try dsimp only [live2758, coloured2758]
  rw [child]
  dsimp only [result2756]
  have child := child1
  unfold live2757 coloured2757 at child
  try dsimp only [live2758, coloured2758]
  rw [child]
  dsimp only [result2757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2759_agree_conditional : tree2759 = literal2759 := by
  rw [tree2759_def]
  rfl
theorem node2759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2759 live2759 coloured2759 = result2759 := by
  rw [tree2759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2760_agree_conditional
    (child0 : tree2758 = literal2758)
    (child1 : tree2759 = literal2759) : tree2760 = literal2760 := by
  rw [tree2760_def, child0, child1]
  rfl
theorem node2760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2758 live2758 coloured2758 = result2758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2759 live2759 coloured2759 = result2759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2760 live2760 coloured2760 = result2760 := by
  rw [tree2760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2758 coloured2758 at child
  try dsimp only [live2760, coloured2760]
  rw [child]
  dsimp only [result2758]
  have child := child1
  unfold live2759 coloured2759 at child
  try dsimp only [live2760, coloured2760]
  rw [child]
  dsimp only [result2759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2761_agree_conditional : tree2761 = literal2761 := by
  rw [tree2761_def]
  rfl
theorem node2761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2761 live2761 coloured2761 = result2761 := by
  rw [tree2761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2762_agree_conditional
    (child0 : tree2760 = literal2760)
    (child1 : tree2761 = literal2761) : tree2762 = literal2762 := by
  rw [tree2762_def, child0, child1]
  rfl
theorem node2762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2760 live2760 coloured2760 = result2760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2761 live2761 coloured2761 = result2761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2762 live2762 coloured2762 = result2762 := by
  rw [tree2762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2760 coloured2760 at child
  try dsimp only [live2762, coloured2762]
  rw [child]
  dsimp only [result2760]
  have child := child1
  unfold live2761 coloured2761 at child
  try dsimp only [live2762, coloured2762]
  rw [child]
  dsimp only [result2761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2763_agree_conditional : tree2763 = literal2763 := by
  rw [tree2763_def]
  rfl
theorem node2763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2763 live2763 coloured2763 = result2763 := by
  rw [tree2763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2764_agree_conditional
    (child0 : tree2762 = literal2762)
    (child1 : tree2763 = literal2763) : tree2764 = literal2764 := by
  rw [tree2764_def, child0, child1]
  rfl
theorem node2764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2762 live2762 coloured2762 = result2762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2763 live2763 coloured2763 = result2763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2764 live2764 coloured2764 = result2764 := by
  rw [tree2764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2762 coloured2762 at child
  try dsimp only [live2764, coloured2764]
  rw [child]
  dsimp only [result2762]
  have child := child1
  unfold live2763 coloured2763 at child
  try dsimp only [live2764, coloured2764]
  rw [child]
  dsimp only [result2763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2765_agree_conditional : tree2765 = literal2765 := by
  rw [tree2765_def]
  rfl
theorem node2765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2765 live2765 coloured2765 = result2765 := by
  rw [tree2765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2766_agree_conditional
    (child0 : tree2764 = literal2764)
    (child1 : tree2765 = literal2765) : tree2766 = literal2766 := by
  rw [tree2766_def, child0, child1]
  rfl
theorem node2766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2764 live2764 coloured2764 = result2764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2765 live2765 coloured2765 = result2765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2766 live2766 coloured2766 = result2766 := by
  rw [tree2766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2764 coloured2764 at child
  try dsimp only [live2766, coloured2766]
  rw [child]
  dsimp only [result2764]
  have child := child1
  unfold live2765 coloured2765 at child
  try dsimp only [live2766, coloured2766]
  rw [child]
  dsimp only [result2765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2767_agree_conditional : tree2767 = literal2767 := by
  rw [tree2767_def]
  rfl
theorem node2767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2767 live2767 coloured2767 = result2767 := by
  rw [tree2767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2768_agree_conditional
    (child0 : tree2766 = literal2766)
    (child1 : tree2767 = literal2767) : tree2768 = literal2768 := by
  rw [tree2768_def, child0, child1]
  rfl
theorem node2768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2766 live2766 coloured2766 = result2766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2767 live2767 coloured2767 = result2767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2768 live2768 coloured2768 = result2768 := by
  rw [tree2768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2766 coloured2766 at child
  try dsimp only [live2768, coloured2768]
  rw [child]
  dsimp only [result2766]
  have child := child1
  unfold live2767 coloured2767 at child
  try dsimp only [live2768, coloured2768]
  rw [child]
  dsimp only [result2767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2769_agree_conditional : tree2769 = literal2769 := by
  rw [tree2769_def]
  rfl
theorem node2769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2769 live2769 coloured2769 = result2769 := by
  rw [tree2769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2770_agree_conditional
    (child0 : tree2768 = literal2768)
    (child1 : tree2769 = literal2769) : tree2770 = literal2770 := by
  rw [tree2770_def, child0, child1]
  rfl
theorem node2770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2768 live2768 coloured2768 = result2768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2769 live2769 coloured2769 = result2769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2770 live2770 coloured2770 = result2770 := by
  rw [tree2770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2768 coloured2768 at child
  try dsimp only [live2770, coloured2770]
  rw [child]
  dsimp only [result2768]
  have child := child1
  unfold live2769 coloured2769 at child
  try dsimp only [live2770, coloured2770]
  rw [child]
  dsimp only [result2769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2771_agree_conditional : tree2771 = literal2771 := by
  rw [tree2771_def]
  rfl
theorem node2771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2771 live2771 coloured2771 = result2771 := by
  rw [tree2771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2772_agree_conditional
    (child0 : tree2770 = literal2770)
    (child1 : tree2771 = literal2771) : tree2772 = literal2772 := by
  rw [tree2772_def, child0, child1]
  rfl
theorem node2772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2770 live2770 coloured2770 = result2770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2771 live2771 coloured2771 = result2771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2772 live2772 coloured2772 = result2772 := by
  rw [tree2772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2770 coloured2770 at child
  try dsimp only [live2772, coloured2772]
  rw [child]
  dsimp only [result2770]
  have child := child1
  unfold live2771 coloured2771 at child
  try dsimp only [live2772, coloured2772]
  rw [child]
  dsimp only [result2771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2773_agree_conditional : tree2773 = literal2773 := by
  rw [tree2773_def]
  rfl
theorem node2773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2773 live2773 coloured2773 = result2773 := by
  rw [tree2773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2774_agree_conditional
    (child0 : tree2772 = literal2772)
    (child1 : tree2773 = literal2773) : tree2774 = literal2774 := by
  rw [tree2774_def, child0, child1]
  rfl
theorem node2774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2772 live2772 coloured2772 = result2772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2773 live2773 coloured2773 = result2773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2774 live2774 coloured2774 = result2774 := by
  rw [tree2774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2772 coloured2772 at child
  try dsimp only [live2774, coloured2774]
  rw [child]
  dsimp only [result2772]
  have child := child1
  unfold live2773 coloured2773 at child
  try dsimp only [live2774, coloured2774]
  rw [child]
  dsimp only [result2773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2775_agree_conditional : tree2775 = literal2775 := by
  rw [tree2775_def]
  rfl
theorem node2775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2775 live2775 coloured2775 = result2775 := by
  rw [tree2775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2776_agree_conditional
    (child0 : tree2774 = literal2774)
    (child1 : tree2775 = literal2775) : tree2776 = literal2776 := by
  rw [tree2776_def, child0, child1]
  rfl
theorem node2776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2774 live2774 coloured2774 = result2774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2775 live2775 coloured2775 = result2775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2776 live2776 coloured2776 = result2776 := by
  rw [tree2776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2774 coloured2774 at child
  try dsimp only [live2776, coloured2776]
  rw [child]
  dsimp only [result2774]
  have child := child1
  unfold live2775 coloured2775 at child
  try dsimp only [live2776, coloured2776]
  rw [child]
  dsimp only [result2775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2777_agree_conditional : tree2777 = literal2777 := by
  rw [tree2777_def]
  rfl
theorem node2777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2777 live2777 coloured2777 = result2777 := by
  rw [tree2777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2778_agree_conditional
    (child0 : tree2776 = literal2776)
    (child1 : tree2777 = literal2777) : tree2778 = literal2778 := by
  rw [tree2778_def, child0, child1]
  rfl
theorem node2778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2776 live2776 coloured2776 = result2776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2777 live2777 coloured2777 = result2777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2778 live2778 coloured2778 = result2778 := by
  rw [tree2778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2776 coloured2776 at child
  try dsimp only [live2778, coloured2778]
  rw [child]
  dsimp only [result2776]
  have child := child1
  unfold live2777 coloured2777 at child
  try dsimp only [live2778, coloured2778]
  rw [child]
  dsimp only [result2777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2779_agree_conditional : tree2779 = literal2779 := by
  rw [tree2779_def]
  rfl
theorem node2779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2779 live2779 coloured2779 = result2779 := by
  rw [tree2779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2780_agree_conditional
    (child0 : tree2778 = literal2778)
    (child1 : tree2779 = literal2779) : tree2780 = literal2780 := by
  rw [tree2780_def, child0, child1]
  rfl
theorem node2780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2778 live2778 coloured2778 = result2778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2779 live2779 coloured2779 = result2779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2780 live2780 coloured2780 = result2780 := by
  rw [tree2780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2778 coloured2778 at child
  try dsimp only [live2780, coloured2780]
  rw [child]
  dsimp only [result2778]
  have child := child1
  unfold live2779 coloured2779 at child
  try dsimp only [live2780, coloured2780]
  rw [child]
  dsimp only [result2779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2781_agree_conditional : tree2781 = literal2781 := by
  rw [tree2781_def]
  rfl
theorem node2781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2781 live2781 coloured2781 = result2781 := by
  rw [tree2781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2782_agree_conditional
    (child0 : tree2780 = literal2780)
    (child1 : tree2781 = literal2781) : tree2782 = literal2782 := by
  rw [tree2782_def, child0, child1]
  rfl
theorem node2782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2780 live2780 coloured2780 = result2780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2781 live2781 coloured2781 = result2781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2782 live2782 coloured2782 = result2782 := by
  rw [tree2782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2780 coloured2780 at child
  try dsimp only [live2782, coloured2782]
  rw [child]
  dsimp only [result2780]
  have child := child1
  unfold live2781 coloured2781 at child
  try dsimp only [live2782, coloured2782]
  rw [child]
  dsimp only [result2781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2783_agree_conditional : tree2783 = literal2783 := by
  rw [tree2783_def]
  rfl
theorem node2783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2783 live2783 coloured2783 = result2783 := by
  rw [tree2783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
