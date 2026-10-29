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
theorem tree5760_agree_conditional
    (child0 : tree5758 = literal5758)
    (child1 : tree5759 = literal5759) : tree5760 = literal5760 := by
  rw [tree5760_def, child0, child1]
  rfl
theorem node5760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5758 live5758 coloured5758 = result5758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5759 live5759 coloured5759 = result5759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5760 live5760 coloured5760 = result5760 := by
  rw [tree5760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5758 coloured5758 at child
  try dsimp only [live5760, coloured5760]
  rw [child]
  dsimp only [result5758]
  have child := child1
  unfold live5759 coloured5759 at child
  try dsimp only [live5760, coloured5760]
  rw [child]
  dsimp only [result5759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5761_agree_conditional : tree5761 = literal5761 := by
  rw [tree5761_def]
  rfl
theorem node5761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5761 live5761 coloured5761 = result5761 := by
  rw [tree5761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5762_agree_conditional
    (child0 : tree5760 = literal5760)
    (child1 : tree5761 = literal5761) : tree5762 = literal5762 := by
  rw [tree5762_def, child0, child1]
  rfl
theorem node5762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5760 live5760 coloured5760 = result5760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5761 live5761 coloured5761 = result5761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5762 live5762 coloured5762 = result5762 := by
  rw [tree5762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5760 coloured5760 at child
  try dsimp only [live5762, coloured5762]
  rw [child]
  dsimp only [result5760]
  have child := child1
  unfold live5761 coloured5761 at child
  try dsimp only [live5762, coloured5762]
  rw [child]
  dsimp only [result5761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5763_agree_conditional : tree5763 = literal5763 := by
  rw [tree5763_def]
  rfl
theorem node5763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5763 live5763 coloured5763 = result5763 := by
  rw [tree5763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5764_agree_conditional
    (child0 : tree5762 = literal5762)
    (child1 : tree5763 = literal5763) : tree5764 = literal5764 := by
  rw [tree5764_def, child0, child1]
  rfl
theorem node5764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5762 live5762 coloured5762 = result5762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5763 live5763 coloured5763 = result5763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5764 live5764 coloured5764 = result5764 := by
  rw [tree5764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5762 coloured5762 at child
  try dsimp only [live5764, coloured5764]
  rw [child]
  dsimp only [result5762]
  have child := child1
  unfold live5763 coloured5763 at child
  try dsimp only [live5764, coloured5764]
  rw [child]
  dsimp only [result5763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5765_agree_conditional : tree5765 = literal5765 := by
  rw [tree5765_def]
  rfl
theorem node5765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5765 live5765 coloured5765 = result5765 := by
  rw [tree5765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5766_agree_conditional
    (child0 : tree5764 = literal5764)
    (child1 : tree5765 = literal5765) : tree5766 = literal5766 := by
  rw [tree5766_def, child0, child1]
  rfl
theorem node5766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5764 live5764 coloured5764 = result5764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5765 live5765 coloured5765 = result5765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5766 live5766 coloured5766 = result5766 := by
  rw [tree5766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5764 coloured5764 at child
  try dsimp only [live5766, coloured5766]
  rw [child]
  dsimp only [result5764]
  have child := child1
  unfold live5765 coloured5765 at child
  try dsimp only [live5766, coloured5766]
  rw [child]
  dsimp only [result5765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5767_agree_conditional : tree5767 = literal5767 := by
  rw [tree5767_def]
  rfl
theorem node5767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5767 live5767 coloured5767 = result5767 := by
  rw [tree5767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5768_agree_conditional
    (child0 : tree5766 = literal5766)
    (child1 : tree5767 = literal5767) : tree5768 = literal5768 := by
  rw [tree5768_def, child0, child1]
  rfl
theorem node5768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5766 live5766 coloured5766 = result5766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5767 live5767 coloured5767 = result5767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5768 live5768 coloured5768 = result5768 := by
  rw [tree5768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5766 coloured5766 at child
  try dsimp only [live5768, coloured5768]
  rw [child]
  dsimp only [result5766]
  have child := child1
  unfold live5767 coloured5767 at child
  try dsimp only [live5768, coloured5768]
  rw [child]
  dsimp only [result5767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5769_agree_conditional : tree5769 = literal5769 := by
  rw [tree5769_def]
  rfl
theorem node5769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5769 live5769 coloured5769 = result5769 := by
  rw [tree5769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5770_agree_conditional
    (child0 : tree5768 = literal5768)
    (child1 : tree5769 = literal5769) : tree5770 = literal5770 := by
  rw [tree5770_def, child0, child1]
  rfl
theorem node5770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5768 live5768 coloured5768 = result5768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5769 live5769 coloured5769 = result5769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5770 live5770 coloured5770 = result5770 := by
  rw [tree5770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5768 coloured5768 at child
  try dsimp only [live5770, coloured5770]
  rw [child]
  dsimp only [result5768]
  have child := child1
  unfold live5769 coloured5769 at child
  try dsimp only [live5770, coloured5770]
  rw [child]
  dsimp only [result5769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5771_agree_conditional : tree5771 = literal5771 := by
  rw [tree5771_def]
  rfl
theorem node5771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5771 live5771 coloured5771 = result5771 := by
  rw [tree5771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5772_agree_conditional
    (child0 : tree5770 = literal5770)
    (child1 : tree5771 = literal5771) : tree5772 = literal5772 := by
  rw [tree5772_def, child0, child1]
  rfl
theorem node5772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5770 live5770 coloured5770 = result5770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5771 live5771 coloured5771 = result5771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5772 live5772 coloured5772 = result5772 := by
  rw [tree5772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5770 coloured5770 at child
  try dsimp only [live5772, coloured5772]
  rw [child]
  dsimp only [result5770]
  have child := child1
  unfold live5771 coloured5771 at child
  try dsimp only [live5772, coloured5772]
  rw [child]
  dsimp only [result5771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5773_agree_conditional : tree5773 = literal5773 := by
  rw [tree5773_def]
  rfl
theorem node5773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5773 live5773 coloured5773 = result5773 := by
  rw [tree5773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5774_agree_conditional
    (child0 : tree5772 = literal5772)
    (child1 : tree5773 = literal5773) : tree5774 = literal5774 := by
  rw [tree5774_def, child0, child1]
  rfl
theorem node5774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5772 live5772 coloured5772 = result5772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5773 live5773 coloured5773 = result5773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5774 live5774 coloured5774 = result5774 := by
  rw [tree5774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5772 coloured5772 at child
  try dsimp only [live5774, coloured5774]
  rw [child]
  dsimp only [result5772]
  have child := child1
  unfold live5773 coloured5773 at child
  try dsimp only [live5774, coloured5774]
  rw [child]
  dsimp only [result5773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5775_agree_conditional : tree5775 = literal5775 := by
  rw [tree5775_def]
  rfl
theorem node5775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5775 live5775 coloured5775 = result5775 := by
  rw [tree5775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5776_agree_conditional
    (child0 : tree5774 = literal5774)
    (child1 : tree5775 = literal5775) : tree5776 = literal5776 := by
  rw [tree5776_def, child0, child1]
  rfl
theorem node5776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5774 live5774 coloured5774 = result5774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5775 live5775 coloured5775 = result5775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5776 live5776 coloured5776 = result5776 := by
  rw [tree5776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5774 coloured5774 at child
  try dsimp only [live5776, coloured5776]
  rw [child]
  dsimp only [result5774]
  have child := child1
  unfold live5775 coloured5775 at child
  try dsimp only [live5776, coloured5776]
  rw [child]
  dsimp only [result5775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5777_agree_conditional : tree5777 = literal5777 := by
  rw [tree5777_def]
  rfl
theorem node5777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5777 live5777 coloured5777 = result5777 := by
  rw [tree5777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5778_agree_conditional
    (child0 : tree5776 = literal5776)
    (child1 : tree5777 = literal5777) : tree5778 = literal5778 := by
  rw [tree5778_def, child0, child1]
  rfl
theorem node5778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5776 live5776 coloured5776 = result5776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5777 live5777 coloured5777 = result5777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5778 live5778 coloured5778 = result5778 := by
  rw [tree5778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5776 coloured5776 at child
  try dsimp only [live5778, coloured5778]
  rw [child]
  dsimp only [result5776]
  have child := child1
  unfold live5777 coloured5777 at child
  try dsimp only [live5778, coloured5778]
  rw [child]
  dsimp only [result5777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5779_agree_conditional : tree5779 = literal5779 := by
  rw [tree5779_def]
  rfl
theorem node5779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5779 live5779 coloured5779 = result5779 := by
  rw [tree5779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5780_agree_conditional
    (child0 : tree5778 = literal5778)
    (child1 : tree5779 = literal5779) : tree5780 = literal5780 := by
  rw [tree5780_def, child0, child1]
  rfl
theorem node5780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5778 live5778 coloured5778 = result5778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5779 live5779 coloured5779 = result5779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5780 live5780 coloured5780 = result5780 := by
  rw [tree5780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5778 coloured5778 at child
  try dsimp only [live5780, coloured5780]
  rw [child]
  dsimp only [result5778]
  have child := child1
  unfold live5779 coloured5779 at child
  try dsimp only [live5780, coloured5780]
  rw [child]
  dsimp only [result5779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5781_agree_conditional : tree5781 = literal5781 := by
  rw [tree5781_def]
  rfl
theorem node5781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5781 live5781 coloured5781 = result5781 := by
  rw [tree5781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5782_agree_conditional
    (child0 : tree5780 = literal5780)
    (child1 : tree5781 = literal5781) : tree5782 = literal5782 := by
  rw [tree5782_def, child0, child1]
  rfl
theorem node5782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5780 live5780 coloured5780 = result5780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5781 live5781 coloured5781 = result5781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5782 live5782 coloured5782 = result5782 := by
  rw [tree5782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5780 coloured5780 at child
  try dsimp only [live5782, coloured5782]
  rw [child]
  dsimp only [result5780]
  have child := child1
  unfold live5781 coloured5781 at child
  try dsimp only [live5782, coloured5782]
  rw [child]
  dsimp only [result5781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5783_agree_conditional : tree5783 = literal5783 := by
  rw [tree5783_def]
  rfl
theorem node5783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5783 live5783 coloured5783 = result5783 := by
  rw [tree5783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5784_agree_conditional
    (child0 : tree5782 = literal5782)
    (child1 : tree5783 = literal5783) : tree5784 = literal5784 := by
  rw [tree5784_def, child0, child1]
  rfl
theorem node5784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5782 live5782 coloured5782 = result5782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5783 live5783 coloured5783 = result5783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5784 live5784 coloured5784 = result5784 := by
  rw [tree5784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5782 coloured5782 at child
  try dsimp only [live5784, coloured5784]
  rw [child]
  dsimp only [result5782]
  have child := child1
  unfold live5783 coloured5783 at child
  try dsimp only [live5784, coloured5784]
  rw [child]
  dsimp only [result5783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5785_agree_conditional : tree5785 = literal5785 := by
  rw [tree5785_def]
  rfl
theorem node5785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5785 live5785 coloured5785 = result5785 := by
  rw [tree5785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5786_agree_conditional
    (child0 : tree5784 = literal5784)
    (child1 : tree5785 = literal5785) : tree5786 = literal5786 := by
  rw [tree5786_def, child0, child1]
  rfl
theorem node5786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5784 live5784 coloured5784 = result5784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5785 live5785 coloured5785 = result5785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5786 live5786 coloured5786 = result5786 := by
  rw [tree5786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5784 coloured5784 at child
  try dsimp only [live5786, coloured5786]
  rw [child]
  dsimp only [result5784]
  have child := child1
  unfold live5785 coloured5785 at child
  try dsimp only [live5786, coloured5786]
  rw [child]
  dsimp only [result5785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5787_agree_conditional : tree5787 = literal5787 := by
  rw [tree5787_def]
  rfl
theorem node5787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5787 live5787 coloured5787 = result5787 := by
  rw [tree5787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5788_agree_conditional
    (child0 : tree5786 = literal5786)
    (child1 : tree5787 = literal5787) : tree5788 = literal5788 := by
  rw [tree5788_def, child0, child1]
  rfl
theorem node5788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5786 live5786 coloured5786 = result5786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5787 live5787 coloured5787 = result5787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5788 live5788 coloured5788 = result5788 := by
  rw [tree5788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5786 coloured5786 at child
  try dsimp only [live5788, coloured5788]
  rw [child]
  dsimp only [result5786]
  have child := child1
  unfold live5787 coloured5787 at child
  try dsimp only [live5788, coloured5788]
  rw [child]
  dsimp only [result5787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5789_agree_conditional : tree5789 = literal5789 := by
  rw [tree5789_def]
  rfl
theorem node5789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5789 live5789 coloured5789 = result5789 := by
  rw [tree5789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5790_agree_conditional
    (child0 : tree5788 = literal5788)
    (child1 : tree5789 = literal5789) : tree5790 = literal5790 := by
  rw [tree5790_def, child0, child1]
  rfl
theorem node5790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5788 live5788 coloured5788 = result5788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5789 live5789 coloured5789 = result5789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5790 live5790 coloured5790 = result5790 := by
  rw [tree5790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5788 coloured5788 at child
  try dsimp only [live5790, coloured5790]
  rw [child]
  dsimp only [result5788]
  have child := child1
  unfold live5789 coloured5789 at child
  try dsimp only [live5790, coloured5790]
  rw [child]
  dsimp only [result5789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5791_agree_conditional : tree5791 = literal5791 := by
  rw [tree5791_def]
  rfl
theorem node5791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5791 live5791 coloured5791 = result5791 := by
  rw [tree5791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5792_agree_conditional
    (child0 : tree5790 = literal5790)
    (child1 : tree5791 = literal5791) : tree5792 = literal5792 := by
  rw [tree5792_def, child0, child1]
  rfl
theorem node5792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5790 live5790 coloured5790 = result5790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5791 live5791 coloured5791 = result5791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5792 live5792 coloured5792 = result5792 := by
  rw [tree5792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5790 coloured5790 at child
  try dsimp only [live5792, coloured5792]
  rw [child]
  dsimp only [result5790]
  have child := child1
  unfold live5791 coloured5791 at child
  try dsimp only [live5792, coloured5792]
  rw [child]
  dsimp only [result5791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5793_agree_conditional : tree5793 = literal5793 := by
  rw [tree5793_def]
  rfl
theorem node5793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5793 live5793 coloured5793 = result5793 := by
  rw [tree5793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5794_agree_conditional
    (child0 : tree5792 = literal5792)
    (child1 : tree5793 = literal5793) : tree5794 = literal5794 := by
  rw [tree5794_def, child0, child1]
  rfl
theorem node5794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5792 live5792 coloured5792 = result5792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5793 live5793 coloured5793 = result5793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5794 live5794 coloured5794 = result5794 := by
  rw [tree5794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5792 coloured5792 at child
  try dsimp only [live5794, coloured5794]
  rw [child]
  dsimp only [result5792]
  have child := child1
  unfold live5793 coloured5793 at child
  try dsimp only [live5794, coloured5794]
  rw [child]
  dsimp only [result5793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5795_agree_conditional : tree5795 = literal5795 := by
  rw [tree5795_def]
  rfl
theorem node5795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5795 live5795 coloured5795 = result5795 := by
  rw [tree5795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5796_agree_conditional
    (child0 : tree5794 = literal5794)
    (child1 : tree5795 = literal5795) : tree5796 = literal5796 := by
  rw [tree5796_def, child0, child1]
  rfl
theorem node5796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5794 live5794 coloured5794 = result5794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5795 live5795 coloured5795 = result5795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5796 live5796 coloured5796 = result5796 := by
  rw [tree5796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5794 coloured5794 at child
  try dsimp only [live5796, coloured5796]
  rw [child]
  dsimp only [result5794]
  have child := child1
  unfold live5795 coloured5795 at child
  try dsimp only [live5796, coloured5796]
  rw [child]
  dsimp only [result5795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5797_agree_conditional : tree5797 = literal5797 := by
  rw [tree5797_def]
  rfl
theorem node5797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5797 live5797 coloured5797 = result5797 := by
  rw [tree5797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5798_agree_conditional
    (child0 : tree5796 = literal5796)
    (child1 : tree5797 = literal5797) : tree5798 = literal5798 := by
  rw [tree5798_def, child0, child1]
  rfl
theorem node5798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5796 live5796 coloured5796 = result5796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5797 live5797 coloured5797 = result5797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5798 live5798 coloured5798 = result5798 := by
  rw [tree5798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5796 coloured5796 at child
  try dsimp only [live5798, coloured5798]
  rw [child]
  dsimp only [result5796]
  have child := child1
  unfold live5797 coloured5797 at child
  try dsimp only [live5798, coloured5798]
  rw [child]
  dsimp only [result5797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5799_agree_conditional : tree5799 = literal5799 := by
  rw [tree5799_def]
  rfl
theorem node5799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5799 live5799 coloured5799 = result5799 := by
  rw [tree5799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5800_agree_conditional
    (child0 : tree5798 = literal5798)
    (child1 : tree5799 = literal5799) : tree5800 = literal5800 := by
  rw [tree5800_def, child0, child1]
  rfl
theorem node5800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5798 live5798 coloured5798 = result5798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5799 live5799 coloured5799 = result5799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5800 live5800 coloured5800 = result5800 := by
  rw [tree5800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5798 coloured5798 at child
  try dsimp only [live5800, coloured5800]
  rw [child]
  dsimp only [result5798]
  have child := child1
  unfold live5799 coloured5799 at child
  try dsimp only [live5800, coloured5800]
  rw [child]
  dsimp only [result5799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5801_agree_conditional : tree5801 = literal5801 := by
  rw [tree5801_def]
  rfl
theorem node5801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5801 live5801 coloured5801 = result5801 := by
  rw [tree5801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5802_agree_conditional
    (child0 : tree5800 = literal5800)
    (child1 : tree5801 = literal5801) : tree5802 = literal5802 := by
  rw [tree5802_def, child0, child1]
  rfl
theorem node5802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5800 live5800 coloured5800 = result5800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5801 live5801 coloured5801 = result5801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5802 live5802 coloured5802 = result5802 := by
  rw [tree5802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5800 coloured5800 at child
  try dsimp only [live5802, coloured5802]
  rw [child]
  dsimp only [result5800]
  have child := child1
  unfold live5801 coloured5801 at child
  try dsimp only [live5802, coloured5802]
  rw [child]
  dsimp only [result5801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5803_agree_conditional : tree5803 = literal5803 := by
  rw [tree5803_def]
  rfl
theorem node5803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5803 live5803 coloured5803 = result5803 := by
  rw [tree5803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5804_agree_conditional
    (child0 : tree5802 = literal5802)
    (child1 : tree5803 = literal5803) : tree5804 = literal5804 := by
  rw [tree5804_def, child0, child1]
  rfl
theorem node5804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5802 live5802 coloured5802 = result5802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5803 live5803 coloured5803 = result5803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5804 live5804 coloured5804 = result5804 := by
  rw [tree5804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5802 coloured5802 at child
  try dsimp only [live5804, coloured5804]
  rw [child]
  dsimp only [result5802]
  have child := child1
  unfold live5803 coloured5803 at child
  try dsimp only [live5804, coloured5804]
  rw [child]
  dsimp only [result5803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5805_agree_conditional : tree5805 = literal5805 := by
  rw [tree5805_def]
  rfl
theorem node5805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5805 live5805 coloured5805 = result5805 := by
  rw [tree5805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5806_agree_conditional
    (child0 : tree5804 = literal5804)
    (child1 : tree5805 = literal5805) : tree5806 = literal5806 := by
  rw [tree5806_def, child0, child1]
  rfl
theorem node5806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5804 live5804 coloured5804 = result5804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5805 live5805 coloured5805 = result5805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5806 live5806 coloured5806 = result5806 := by
  rw [tree5806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5804 coloured5804 at child
  try dsimp only [live5806, coloured5806]
  rw [child]
  dsimp only [result5804]
  have child := child1
  unfold live5805 coloured5805 at child
  try dsimp only [live5806, coloured5806]
  rw [child]
  dsimp only [result5805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5807_agree_conditional : tree5807 = literal5807 := by
  rw [tree5807_def]
  rfl
theorem node5807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5807 live5807 coloured5807 = result5807 := by
  rw [tree5807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5808_agree_conditional
    (child0 : tree5806 = literal5806)
    (child1 : tree5807 = literal5807) : tree5808 = literal5808 := by
  rw [tree5808_def, child0, child1]
  rfl
theorem node5808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5806 live5806 coloured5806 = result5806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5807 live5807 coloured5807 = result5807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5808 live5808 coloured5808 = result5808 := by
  rw [tree5808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5806 coloured5806 at child
  try dsimp only [live5808, coloured5808]
  rw [child]
  dsimp only [result5806]
  have child := child1
  unfold live5807 coloured5807 at child
  try dsimp only [live5808, coloured5808]
  rw [child]
  dsimp only [result5807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5809_agree_conditional : tree5809 = literal5809 := by
  rw [tree5809_def]
  rfl
theorem node5809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5809 live5809 coloured5809 = result5809 := by
  rw [tree5809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5810_agree_conditional
    (child0 : tree5808 = literal5808)
    (child1 : tree5809 = literal5809) : tree5810 = literal5810 := by
  rw [tree5810_def, child0, child1]
  rfl
theorem node5810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5808 live5808 coloured5808 = result5808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5809 live5809 coloured5809 = result5809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5810 live5810 coloured5810 = result5810 := by
  rw [tree5810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5808 coloured5808 at child
  try dsimp only [live5810, coloured5810]
  rw [child]
  dsimp only [result5808]
  have child := child1
  unfold live5809 coloured5809 at child
  try dsimp only [live5810, coloured5810]
  rw [child]
  dsimp only [result5809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5811_agree_conditional : tree5811 = literal5811 := by
  rw [tree5811_def]
  rfl
theorem node5811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5811 live5811 coloured5811 = result5811 := by
  rw [tree5811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5812_agree_conditional
    (child0 : tree5810 = literal5810)
    (child1 : tree5811 = literal5811) : tree5812 = literal5812 := by
  rw [tree5812_def, child0, child1]
  rfl
theorem node5812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5810 live5810 coloured5810 = result5810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5811 live5811 coloured5811 = result5811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5812 live5812 coloured5812 = result5812 := by
  rw [tree5812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5810 coloured5810 at child
  try dsimp only [live5812, coloured5812]
  rw [child]
  dsimp only [result5810]
  have child := child1
  unfold live5811 coloured5811 at child
  try dsimp only [live5812, coloured5812]
  rw [child]
  dsimp only [result5811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5813_agree_conditional : tree5813 = literal5813 := by
  rw [tree5813_def]
  rfl
theorem node5813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5813 live5813 coloured5813 = result5813 := by
  rw [tree5813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5814_agree_conditional
    (child0 : tree5812 = literal5812)
    (child1 : tree5813 = literal5813) : tree5814 = literal5814 := by
  rw [tree5814_def, child0, child1]
  rfl
theorem node5814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5812 live5812 coloured5812 = result5812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5813 live5813 coloured5813 = result5813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5814 live5814 coloured5814 = result5814 := by
  rw [tree5814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5812 coloured5812 at child
  try dsimp only [live5814, coloured5814]
  rw [child]
  dsimp only [result5812]
  have child := child1
  unfold live5813 coloured5813 at child
  try dsimp only [live5814, coloured5814]
  rw [child]
  dsimp only [result5813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5815_agree_conditional : tree5815 = literal5815 := by
  rw [tree5815_def]
  rfl
theorem node5815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5815 live5815 coloured5815 = result5815 := by
  rw [tree5815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5816_agree_conditional
    (child0 : tree5814 = literal5814)
    (child1 : tree5815 = literal5815) : tree5816 = literal5816 := by
  rw [tree5816_def, child0, child1]
  rfl
theorem node5816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5814 live5814 coloured5814 = result5814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5815 live5815 coloured5815 = result5815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5816 live5816 coloured5816 = result5816 := by
  rw [tree5816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5814 coloured5814 at child
  try dsimp only [live5816, coloured5816]
  rw [child]
  dsimp only [result5814]
  have child := child1
  unfold live5815 coloured5815 at child
  try dsimp only [live5816, coloured5816]
  rw [child]
  dsimp only [result5815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5817_agree_conditional : tree5817 = literal5817 := by
  rw [tree5817_def]
  rfl
theorem node5817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5817 live5817 coloured5817 = result5817 := by
  rw [tree5817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5818_agree_conditional
    (child0 : tree5816 = literal5816)
    (child1 : tree5817 = literal5817) : tree5818 = literal5818 := by
  rw [tree5818_def, child0, child1]
  rfl
theorem node5818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5816 live5816 coloured5816 = result5816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5817 live5817 coloured5817 = result5817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5818 live5818 coloured5818 = result5818 := by
  rw [tree5818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5816 coloured5816 at child
  try dsimp only [live5818, coloured5818]
  rw [child]
  dsimp only [result5816]
  have child := child1
  unfold live5817 coloured5817 at child
  try dsimp only [live5818, coloured5818]
  rw [child]
  dsimp only [result5817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5819_agree_conditional : tree5819 = literal5819 := by
  rw [tree5819_def]
  rfl
theorem node5819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5819 live5819 coloured5819 = result5819 := by
  rw [tree5819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5820_agree_conditional
    (child0 : tree5818 = literal5818)
    (child1 : tree5819 = literal5819) : tree5820 = literal5820 := by
  rw [tree5820_def, child0, child1]
  rfl
theorem node5820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5818 live5818 coloured5818 = result5818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5819 live5819 coloured5819 = result5819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5820 live5820 coloured5820 = result5820 := by
  rw [tree5820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5818 coloured5818 at child
  try dsimp only [live5820, coloured5820]
  rw [child]
  dsimp only [result5818]
  have child := child1
  unfold live5819 coloured5819 at child
  try dsimp only [live5820, coloured5820]
  rw [child]
  dsimp only [result5819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5821_agree_conditional : tree5821 = literal5821 := by
  rw [tree5821_def]
  rfl
theorem node5821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5821 live5821 coloured5821 = result5821 := by
  rw [tree5821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5822_agree_conditional
    (child0 : tree5820 = literal5820)
    (child1 : tree5821 = literal5821) : tree5822 = literal5822 := by
  rw [tree5822_def, child0, child1]
  rfl
theorem node5822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5820 live5820 coloured5820 = result5820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5821 live5821 coloured5821 = result5821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5822 live5822 coloured5822 = result5822 := by
  rw [tree5822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5820 coloured5820 at child
  try dsimp only [live5822, coloured5822]
  rw [child]
  dsimp only [result5820]
  have child := child1
  unfold live5821 coloured5821 at child
  try dsimp only [live5822, coloured5822]
  rw [child]
  dsimp only [result5821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5823_agree_conditional : tree5823 = literal5823 := by
  rw [tree5823_def]
  rfl
theorem node5823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5823 live5823 coloured5823 = result5823 := by
  rw [tree5823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5824_agree_conditional
    (child0 : tree5822 = literal5822)
    (child1 : tree5823 = literal5823) : tree5824 = literal5824 := by
  rw [tree5824_def, child0, child1]
  rfl
theorem node5824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5822 live5822 coloured5822 = result5822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5823 live5823 coloured5823 = result5823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5824 live5824 coloured5824 = result5824 := by
  rw [tree5824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5822 coloured5822 at child
  try dsimp only [live5824, coloured5824]
  rw [child]
  dsimp only [result5822]
  have child := child1
  unfold live5823 coloured5823 at child
  try dsimp only [live5824, coloured5824]
  rw [child]
  dsimp only [result5823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5825_agree_conditional : tree5825 = literal5825 := by
  rw [tree5825_def]
  rfl
theorem node5825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5825 live5825 coloured5825 = result5825 := by
  rw [tree5825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5826_agree_conditional
    (child0 : tree5824 = literal5824)
    (child1 : tree5825 = literal5825) : tree5826 = literal5826 := by
  rw [tree5826_def, child0, child1]
  rfl
theorem node5826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5824 live5824 coloured5824 = result5824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5825 live5825 coloured5825 = result5825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5826 live5826 coloured5826 = result5826 := by
  rw [tree5826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5824 coloured5824 at child
  try dsimp only [live5826, coloured5826]
  rw [child]
  dsimp only [result5824]
  have child := child1
  unfold live5825 coloured5825 at child
  try dsimp only [live5826, coloured5826]
  rw [child]
  dsimp only [result5825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5827_agree_conditional : tree5827 = literal5827 := by
  rw [tree5827_def]
  rfl
theorem node5827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5827 live5827 coloured5827 = result5827 := by
  rw [tree5827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5828_agree_conditional
    (child0 : tree5826 = literal5826)
    (child1 : tree5827 = literal5827) : tree5828 = literal5828 := by
  rw [tree5828_def, child0, child1]
  rfl
theorem node5828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5826 live5826 coloured5826 = result5826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5827 live5827 coloured5827 = result5827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5828 live5828 coloured5828 = result5828 := by
  rw [tree5828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5826 coloured5826 at child
  try dsimp only [live5828, coloured5828]
  rw [child]
  dsimp only [result5826]
  have child := child1
  unfold live5827 coloured5827 at child
  try dsimp only [live5828, coloured5828]
  rw [child]
  dsimp only [result5827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5829_agree_conditional : tree5829 = literal5829 := by
  rw [tree5829_def]
  rfl
theorem node5829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5829 live5829 coloured5829 = result5829 := by
  rw [tree5829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5830_agree_conditional
    (child0 : tree5828 = literal5828)
    (child1 : tree5829 = literal5829) : tree5830 = literal5830 := by
  rw [tree5830_def, child0, child1]
  rfl
theorem node5830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5828 live5828 coloured5828 = result5828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5829 live5829 coloured5829 = result5829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5830 live5830 coloured5830 = result5830 := by
  rw [tree5830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5828 coloured5828 at child
  try dsimp only [live5830, coloured5830]
  rw [child]
  dsimp only [result5828]
  have child := child1
  unfold live5829 coloured5829 at child
  try dsimp only [live5830, coloured5830]
  rw [child]
  dsimp only [result5829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5831_agree_conditional : tree5831 = literal5831 := by
  rw [tree5831_def]
  rfl
theorem node5831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5831 live5831 coloured5831 = result5831 := by
  rw [tree5831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5832_agree_conditional
    (child0 : tree5830 = literal5830)
    (child1 : tree5831 = literal5831) : tree5832 = literal5832 := by
  rw [tree5832_def, child0, child1]
  rfl
theorem node5832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5830 live5830 coloured5830 = result5830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5831 live5831 coloured5831 = result5831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5832 live5832 coloured5832 = result5832 := by
  rw [tree5832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5830 coloured5830 at child
  try dsimp only [live5832, coloured5832]
  rw [child]
  dsimp only [result5830]
  have child := child1
  unfold live5831 coloured5831 at child
  try dsimp only [live5832, coloured5832]
  rw [child]
  dsimp only [result5831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5833_agree_conditional : tree5833 = literal5833 := by
  rw [tree5833_def]
  rfl
theorem node5833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5833 live5833 coloured5833 = result5833 := by
  rw [tree5833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5834_agree_conditional
    (child0 : tree5832 = literal5832)
    (child1 : tree5833 = literal5833) : tree5834 = literal5834 := by
  rw [tree5834_def, child0, child1]
  rfl
theorem node5834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5832 live5832 coloured5832 = result5832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5833 live5833 coloured5833 = result5833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5834 live5834 coloured5834 = result5834 := by
  rw [tree5834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5832 coloured5832 at child
  try dsimp only [live5834, coloured5834]
  rw [child]
  dsimp only [result5832]
  have child := child1
  unfold live5833 coloured5833 at child
  try dsimp only [live5834, coloured5834]
  rw [child]
  dsimp only [result5833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5835_agree_conditional : tree5835 = literal5835 := by
  rw [tree5835_def]
  rfl
theorem node5835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5835 live5835 coloured5835 = result5835 := by
  rw [tree5835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5836_agree_conditional
    (child0 : tree5834 = literal5834)
    (child1 : tree5835 = literal5835) : tree5836 = literal5836 := by
  rw [tree5836_def, child0, child1]
  rfl
theorem node5836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5834 live5834 coloured5834 = result5834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5835 live5835 coloured5835 = result5835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5836 live5836 coloured5836 = result5836 := by
  rw [tree5836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5834 coloured5834 at child
  try dsimp only [live5836, coloured5836]
  rw [child]
  dsimp only [result5834]
  have child := child1
  unfold live5835 coloured5835 at child
  try dsimp only [live5836, coloured5836]
  rw [child]
  dsimp only [result5835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5837_agree_conditional : tree5837 = literal5837 := by
  rw [tree5837_def]
  rfl
theorem node5837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5837 live5837 coloured5837 = result5837 := by
  rw [tree5837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5838_agree_conditional
    (child0 : tree5836 = literal5836)
    (child1 : tree5837 = literal5837) : tree5838 = literal5838 := by
  rw [tree5838_def, child0, child1]
  rfl
theorem node5838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5836 live5836 coloured5836 = result5836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5837 live5837 coloured5837 = result5837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5838 live5838 coloured5838 = result5838 := by
  rw [tree5838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5836 coloured5836 at child
  try dsimp only [live5838, coloured5838]
  rw [child]
  dsimp only [result5836]
  have child := child1
  unfold live5837 coloured5837 at child
  try dsimp only [live5838, coloured5838]
  rw [child]
  dsimp only [result5837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5839_agree_conditional : tree5839 = literal5839 := by
  rw [tree5839_def]
  rfl
theorem node5839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5839 live5839 coloured5839 = result5839 := by
  rw [tree5839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5840_agree_conditional
    (child0 : tree5838 = literal5838)
    (child1 : tree5839 = literal5839) : tree5840 = literal5840 := by
  rw [tree5840_def, child0, child1]
  rfl
theorem node5840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5838 live5838 coloured5838 = result5838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5839 live5839 coloured5839 = result5839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5840 live5840 coloured5840 = result5840 := by
  rw [tree5840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5838 coloured5838 at child
  try dsimp only [live5840, coloured5840]
  rw [child]
  dsimp only [result5838]
  have child := child1
  unfold live5839 coloured5839 at child
  try dsimp only [live5840, coloured5840]
  rw [child]
  dsimp only [result5839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5841_agree_conditional : tree5841 = literal5841 := by
  rw [tree5841_def]
  rfl
theorem node5841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5841 live5841 coloured5841 = result5841 := by
  rw [tree5841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5842_agree_conditional
    (child0 : tree5840 = literal5840)
    (child1 : tree5841 = literal5841) : tree5842 = literal5842 := by
  rw [tree5842_def, child0, child1]
  rfl
theorem node5842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5840 live5840 coloured5840 = result5840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5841 live5841 coloured5841 = result5841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5842 live5842 coloured5842 = result5842 := by
  rw [tree5842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5840 coloured5840 at child
  try dsimp only [live5842, coloured5842]
  rw [child]
  dsimp only [result5840]
  have child := child1
  unfold live5841 coloured5841 at child
  try dsimp only [live5842, coloured5842]
  rw [child]
  dsimp only [result5841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5843_agree_conditional : tree5843 = literal5843 := by
  rw [tree5843_def]
  rfl
theorem node5843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5843 live5843 coloured5843 = result5843 := by
  rw [tree5843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5844_agree_conditional
    (child0 : tree5842 = literal5842)
    (child1 : tree5843 = literal5843) : tree5844 = literal5844 := by
  rw [tree5844_def, child0, child1]
  rfl
theorem node5844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5842 live5842 coloured5842 = result5842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5843 live5843 coloured5843 = result5843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5844 live5844 coloured5844 = result5844 := by
  rw [tree5844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5842 coloured5842 at child
  try dsimp only [live5844, coloured5844]
  rw [child]
  dsimp only [result5842]
  have child := child1
  unfold live5843 coloured5843 at child
  try dsimp only [live5844, coloured5844]
  rw [child]
  dsimp only [result5843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5845_agree_conditional : tree5845 = literal5845 := by
  rw [tree5845_def]
  rfl
theorem node5845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5845 live5845 coloured5845 = result5845 := by
  rw [tree5845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5846_agree_conditional
    (child0 : tree5844 = literal5844)
    (child1 : tree5845 = literal5845) : tree5846 = literal5846 := by
  rw [tree5846_def, child0, child1]
  rfl
theorem node5846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5844 live5844 coloured5844 = result5844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5845 live5845 coloured5845 = result5845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5846 live5846 coloured5846 = result5846 := by
  rw [tree5846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5844 coloured5844 at child
  try dsimp only [live5846, coloured5846]
  rw [child]
  dsimp only [result5844]
  have child := child1
  unfold live5845 coloured5845 at child
  try dsimp only [live5846, coloured5846]
  rw [child]
  dsimp only [result5845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5847_agree_conditional : tree5847 = literal5847 := by
  rw [tree5847_def]
  rfl
theorem node5847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5847 live5847 coloured5847 = result5847 := by
  rw [tree5847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5848_agree_conditional
    (child0 : tree5846 = literal5846)
    (child1 : tree5847 = literal5847) : tree5848 = literal5848 := by
  rw [tree5848_def, child0, child1]
  rfl
theorem node5848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5846 live5846 coloured5846 = result5846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5847 live5847 coloured5847 = result5847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5848 live5848 coloured5848 = result5848 := by
  rw [tree5848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5846 coloured5846 at child
  try dsimp only [live5848, coloured5848]
  rw [child]
  dsimp only [result5846]
  have child := child1
  unfold live5847 coloured5847 at child
  try dsimp only [live5848, coloured5848]
  rw [child]
  dsimp only [result5847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5849_agree_conditional : tree5849 = literal5849 := by
  rw [tree5849_def]
  rfl
theorem node5849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5849 live5849 coloured5849 = result5849 := by
  rw [tree5849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5850_agree_conditional
    (child0 : tree5848 = literal5848)
    (child1 : tree5849 = literal5849) : tree5850 = literal5850 := by
  rw [tree5850_def, child0, child1]
  rfl
theorem node5850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5848 live5848 coloured5848 = result5848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5849 live5849 coloured5849 = result5849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5850 live5850 coloured5850 = result5850 := by
  rw [tree5850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5848 coloured5848 at child
  try dsimp only [live5850, coloured5850]
  rw [child]
  dsimp only [result5848]
  have child := child1
  unfold live5849 coloured5849 at child
  try dsimp only [live5850, coloured5850]
  rw [child]
  dsimp only [result5849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5851_agree_conditional : tree5851 = literal5851 := by
  rw [tree5851_def]
  rfl
theorem node5851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5851 live5851 coloured5851 = result5851 := by
  rw [tree5851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5852_agree_conditional
    (child0 : tree5850 = literal5850)
    (child1 : tree5851 = literal5851) : tree5852 = literal5852 := by
  rw [tree5852_def, child0, child1]
  rfl
theorem node5852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5850 live5850 coloured5850 = result5850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5851 live5851 coloured5851 = result5851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5852 live5852 coloured5852 = result5852 := by
  rw [tree5852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5850 coloured5850 at child
  try dsimp only [live5852, coloured5852]
  rw [child]
  dsimp only [result5850]
  have child := child1
  unfold live5851 coloured5851 at child
  try dsimp only [live5852, coloured5852]
  rw [child]
  dsimp only [result5851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5853_agree_conditional : tree5853 = literal5853 := by
  rw [tree5853_def]
  rfl
theorem node5853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5853 live5853 coloured5853 = result5853 := by
  rw [tree5853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5854_agree_conditional
    (child0 : tree5852 = literal5852)
    (child1 : tree5853 = literal5853) : tree5854 = literal5854 := by
  rw [tree5854_def, child0, child1]
  rfl
theorem node5854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5852 live5852 coloured5852 = result5852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5853 live5853 coloured5853 = result5853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5854 live5854 coloured5854 = result5854 := by
  rw [tree5854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5852 coloured5852 at child
  try dsimp only [live5854, coloured5854]
  rw [child]
  dsimp only [result5852]
  have child := child1
  unfold live5853 coloured5853 at child
  try dsimp only [live5854, coloured5854]
  rw [child]
  dsimp only [result5853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5855_agree_conditional : tree5855 = literal5855 := by
  rw [tree5855_def]
  rfl
theorem node5855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5855 live5855 coloured5855 = result5855 := by
  rw [tree5855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
