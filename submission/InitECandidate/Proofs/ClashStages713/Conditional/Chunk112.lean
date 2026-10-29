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
theorem tree10752_agree_conditional
    (child0 : tree10750 = literal10750)
    (child1 : tree10751 = literal10751) : tree10752 = literal10752 := by
  rw [tree10752_def, child0, child1]
  rfl
theorem node10752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10750 live10750 coloured10750 = result10750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10751 live10751 coloured10751 = result10751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10752 live10752 coloured10752 = result10752 := by
  rw [tree10752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10750 coloured10750 at child
  try dsimp only [live10752, coloured10752]
  rw [child]
  dsimp only [result10750]
  have child := child1
  unfold live10751 coloured10751 at child
  try dsimp only [live10752, coloured10752]
  rw [child]
  dsimp only [result10751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10753_agree_conditional : tree10753 = literal10753 := by
  rw [tree10753_def]
  rfl
theorem node10753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10753 live10753 coloured10753 = result10753 := by
  rw [tree10753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10754_agree_conditional
    (child0 : tree10752 = literal10752)
    (child1 : tree10753 = literal10753) : tree10754 = literal10754 := by
  rw [tree10754_def, child0, child1]
  rfl
theorem node10754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10752 live10752 coloured10752 = result10752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10753 live10753 coloured10753 = result10753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10754 live10754 coloured10754 = result10754 := by
  rw [tree10754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10752 coloured10752 at child
  try dsimp only [live10754, coloured10754]
  rw [child]
  dsimp only [result10752]
  have child := child1
  unfold live10753 coloured10753 at child
  try dsimp only [live10754, coloured10754]
  rw [child]
  dsimp only [result10753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10755_agree_conditional : tree10755 = literal10755 := by
  rw [tree10755_def]
  rfl
theorem node10755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10755 live10755 coloured10755 = result10755 := by
  rw [tree10755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10756_agree_conditional
    (child0 : tree10754 = literal10754)
    (child1 : tree10755 = literal10755) : tree10756 = literal10756 := by
  rw [tree10756_def, child0, child1]
  rfl
theorem node10756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10754 live10754 coloured10754 = result10754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10755 live10755 coloured10755 = result10755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10756 live10756 coloured10756 = result10756 := by
  rw [tree10756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10754 coloured10754 at child
  try dsimp only [live10756, coloured10756]
  rw [child]
  dsimp only [result10754]
  have child := child1
  unfold live10755 coloured10755 at child
  try dsimp only [live10756, coloured10756]
  rw [child]
  dsimp only [result10755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10757_agree_conditional : tree10757 = literal10757 := by
  rw [tree10757_def]
  rfl
theorem node10757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10757 live10757 coloured10757 = result10757 := by
  rw [tree10757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10758_agree_conditional
    (child0 : tree10756 = literal10756)
    (child1 : tree10757 = literal10757) : tree10758 = literal10758 := by
  rw [tree10758_def, child0, child1]
  rfl
theorem node10758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10756 live10756 coloured10756 = result10756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10757 live10757 coloured10757 = result10757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10758 live10758 coloured10758 = result10758 := by
  rw [tree10758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10756 coloured10756 at child
  try dsimp only [live10758, coloured10758]
  rw [child]
  dsimp only [result10756]
  have child := child1
  unfold live10757 coloured10757 at child
  try dsimp only [live10758, coloured10758]
  rw [child]
  dsimp only [result10757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10759_agree_conditional : tree10759 = literal10759 := by
  rw [tree10759_def]
  rfl
theorem node10759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10759 live10759 coloured10759 = result10759 := by
  rw [tree10759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10760_agree_conditional
    (child0 : tree10758 = literal10758)
    (child1 : tree10759 = literal10759) : tree10760 = literal10760 := by
  rw [tree10760_def, child0, child1]
  rfl
theorem node10760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10758 live10758 coloured10758 = result10758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10759 live10759 coloured10759 = result10759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10760 live10760 coloured10760 = result10760 := by
  rw [tree10760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10758 coloured10758 at child
  try dsimp only [live10760, coloured10760]
  rw [child]
  dsimp only [result10758]
  have child := child1
  unfold live10759 coloured10759 at child
  try dsimp only [live10760, coloured10760]
  rw [child]
  dsimp only [result10759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10761_agree_conditional : tree10761 = literal10761 := by
  rw [tree10761_def]
  rfl
theorem node10761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10761 live10761 coloured10761 = result10761 := by
  rw [tree10761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10762_agree_conditional
    (child0 : tree10760 = literal10760)
    (child1 : tree10761 = literal10761) : tree10762 = literal10762 := by
  rw [tree10762_def, child0, child1]
  rfl
theorem node10762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10760 live10760 coloured10760 = result10760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10761 live10761 coloured10761 = result10761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10762 live10762 coloured10762 = result10762 := by
  rw [tree10762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10760 coloured10760 at child
  try dsimp only [live10762, coloured10762]
  rw [child]
  dsimp only [result10760]
  have child := child1
  unfold live10761 coloured10761 at child
  try dsimp only [live10762, coloured10762]
  rw [child]
  dsimp only [result10761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10763_agree_conditional : tree10763 = literal10763 := by
  rw [tree10763_def]
  rfl
theorem node10763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10763 live10763 coloured10763 = result10763 := by
  rw [tree10763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10764_agree_conditional
    (child0 : tree10762 = literal10762)
    (child1 : tree10763 = literal10763) : tree10764 = literal10764 := by
  rw [tree10764_def, child0, child1]
  rfl
theorem node10764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10762 live10762 coloured10762 = result10762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10763 live10763 coloured10763 = result10763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10764 live10764 coloured10764 = result10764 := by
  rw [tree10764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10762 coloured10762 at child
  try dsimp only [live10764, coloured10764]
  rw [child]
  dsimp only [result10762]
  have child := child1
  unfold live10763 coloured10763 at child
  try dsimp only [live10764, coloured10764]
  rw [child]
  dsimp only [result10763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10765_agree_conditional : tree10765 = literal10765 := by
  rw [tree10765_def]
  rfl
theorem node10765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10765 live10765 coloured10765 = result10765 := by
  rw [tree10765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10766_agree_conditional
    (child0 : tree10764 = literal10764)
    (child1 : tree10765 = literal10765) : tree10766 = literal10766 := by
  rw [tree10766_def, child0, child1]
  rfl
theorem node10766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10764 live10764 coloured10764 = result10764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10765 live10765 coloured10765 = result10765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10766 live10766 coloured10766 = result10766 := by
  rw [tree10766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10764 coloured10764 at child
  try dsimp only [live10766, coloured10766]
  rw [child]
  dsimp only [result10764]
  have child := child1
  unfold live10765 coloured10765 at child
  try dsimp only [live10766, coloured10766]
  rw [child]
  dsimp only [result10765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10767_agree_conditional : tree10767 = literal10767 := by
  rw [tree10767_def]
  rfl
theorem node10767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10767 live10767 coloured10767 = result10767 := by
  rw [tree10767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10768_agree_conditional
    (child0 : tree10766 = literal10766)
    (child1 : tree10767 = literal10767) : tree10768 = literal10768 := by
  rw [tree10768_def, child0, child1]
  rfl
theorem node10768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10766 live10766 coloured10766 = result10766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10767 live10767 coloured10767 = result10767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10768 live10768 coloured10768 = result10768 := by
  rw [tree10768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10766 coloured10766 at child
  try dsimp only [live10768, coloured10768]
  rw [child]
  dsimp only [result10766]
  have child := child1
  unfold live10767 coloured10767 at child
  try dsimp only [live10768, coloured10768]
  rw [child]
  dsimp only [result10767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10769_agree_conditional : tree10769 = literal10769 := by
  rw [tree10769_def]
  rfl
theorem node10769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10769 live10769 coloured10769 = result10769 := by
  rw [tree10769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10770_agree_conditional
    (child0 : tree10768 = literal10768)
    (child1 : tree10769 = literal10769) : tree10770 = literal10770 := by
  rw [tree10770_def, child0, child1]
  rfl
theorem node10770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10768 live10768 coloured10768 = result10768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10769 live10769 coloured10769 = result10769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10770 live10770 coloured10770 = result10770 := by
  rw [tree10770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10768 coloured10768 at child
  try dsimp only [live10770, coloured10770]
  rw [child]
  dsimp only [result10768]
  have child := child1
  unfold live10769 coloured10769 at child
  try dsimp only [live10770, coloured10770]
  rw [child]
  dsimp only [result10769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10771_agree_conditional : tree10771 = literal10771 := by
  rw [tree10771_def]
  rfl
theorem node10771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10771 live10771 coloured10771 = result10771 := by
  rw [tree10771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10772_agree_conditional
    (child0 : tree10770 = literal10770)
    (child1 : tree10771 = literal10771) : tree10772 = literal10772 := by
  rw [tree10772_def, child0, child1]
  rfl
theorem node10772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10770 live10770 coloured10770 = result10770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10771 live10771 coloured10771 = result10771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10772 live10772 coloured10772 = result10772 := by
  rw [tree10772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10770 coloured10770 at child
  try dsimp only [live10772, coloured10772]
  rw [child]
  dsimp only [result10770]
  have child := child1
  unfold live10771 coloured10771 at child
  try dsimp only [live10772, coloured10772]
  rw [child]
  dsimp only [result10771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10773_agree_conditional : tree10773 = literal10773 := by
  rw [tree10773_def]
  rfl
theorem node10773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10773 live10773 coloured10773 = result10773 := by
  rw [tree10773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10774_agree_conditional
    (child0 : tree10772 = literal10772)
    (child1 : tree10773 = literal10773) : tree10774 = literal10774 := by
  rw [tree10774_def, child0, child1]
  rfl
theorem node10774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10772 live10772 coloured10772 = result10772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10773 live10773 coloured10773 = result10773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10774 live10774 coloured10774 = result10774 := by
  rw [tree10774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10772 coloured10772 at child
  try dsimp only [live10774, coloured10774]
  rw [child]
  dsimp only [result10772]
  have child := child1
  unfold live10773 coloured10773 at child
  try dsimp only [live10774, coloured10774]
  rw [child]
  dsimp only [result10773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10775_agree_conditional : tree10775 = literal10775 := by
  rw [tree10775_def]
  rfl
theorem node10775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10775 live10775 coloured10775 = result10775 := by
  rw [tree10775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10776_agree_conditional
    (child0 : tree10774 = literal10774)
    (child1 : tree10775 = literal10775) : tree10776 = literal10776 := by
  rw [tree10776_def, child0, child1]
  rfl
theorem node10776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10774 live10774 coloured10774 = result10774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10775 live10775 coloured10775 = result10775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10776 live10776 coloured10776 = result10776 := by
  rw [tree10776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10774 coloured10774 at child
  try dsimp only [live10776, coloured10776]
  rw [child]
  dsimp only [result10774]
  have child := child1
  unfold live10775 coloured10775 at child
  try dsimp only [live10776, coloured10776]
  rw [child]
  dsimp only [result10775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10777_agree_conditional : tree10777 = literal10777 := by
  rw [tree10777_def]
  rfl
theorem node10777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10777 live10777 coloured10777 = result10777 := by
  rw [tree10777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10778_agree_conditional
    (child0 : tree10776 = literal10776)
    (child1 : tree10777 = literal10777) : tree10778 = literal10778 := by
  rw [tree10778_def, child0, child1]
  rfl
theorem node10778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10776 live10776 coloured10776 = result10776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10777 live10777 coloured10777 = result10777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10778 live10778 coloured10778 = result10778 := by
  rw [tree10778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10776 coloured10776 at child
  try dsimp only [live10778, coloured10778]
  rw [child]
  dsimp only [result10776]
  have child := child1
  unfold live10777 coloured10777 at child
  try dsimp only [live10778, coloured10778]
  rw [child]
  dsimp only [result10777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10779_agree_conditional : tree10779 = literal10779 := by
  rw [tree10779_def]
  rfl
theorem node10779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10779 live10779 coloured10779 = result10779 := by
  rw [tree10779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10780_agree_conditional
    (child0 : tree10778 = literal10778)
    (child1 : tree10779 = literal10779) : tree10780 = literal10780 := by
  rw [tree10780_def, child0, child1]
  rfl
theorem node10780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10778 live10778 coloured10778 = result10778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10779 live10779 coloured10779 = result10779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10780 live10780 coloured10780 = result10780 := by
  rw [tree10780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10778 coloured10778 at child
  try dsimp only [live10780, coloured10780]
  rw [child]
  dsimp only [result10778]
  have child := child1
  unfold live10779 coloured10779 at child
  try dsimp only [live10780, coloured10780]
  rw [child]
  dsimp only [result10779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10781_agree_conditional : tree10781 = literal10781 := by
  rw [tree10781_def]
  rfl
theorem node10781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10781 live10781 coloured10781 = result10781 := by
  rw [tree10781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10782_agree_conditional
    (child0 : tree10780 = literal10780)
    (child1 : tree10781 = literal10781) : tree10782 = literal10782 := by
  rw [tree10782_def, child0, child1]
  rfl
theorem node10782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10780 live10780 coloured10780 = result10780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10781 live10781 coloured10781 = result10781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10782 live10782 coloured10782 = result10782 := by
  rw [tree10782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10780 coloured10780 at child
  try dsimp only [live10782, coloured10782]
  rw [child]
  dsimp only [result10780]
  have child := child1
  unfold live10781 coloured10781 at child
  try dsimp only [live10782, coloured10782]
  rw [child]
  dsimp only [result10781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10783_agree_conditional : tree10783 = literal10783 := by
  rw [tree10783_def]
  rfl
theorem node10783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10783 live10783 coloured10783 = result10783 := by
  rw [tree10783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10784_agree_conditional
    (child0 : tree10782 = literal10782)
    (child1 : tree10783 = literal10783) : tree10784 = literal10784 := by
  rw [tree10784_def, child0, child1]
  rfl
theorem node10784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10782 live10782 coloured10782 = result10782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10783 live10783 coloured10783 = result10783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10784 live10784 coloured10784 = result10784 := by
  rw [tree10784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10782 coloured10782 at child
  try dsimp only [live10784, coloured10784]
  rw [child]
  dsimp only [result10782]
  have child := child1
  unfold live10783 coloured10783 at child
  try dsimp only [live10784, coloured10784]
  rw [child]
  dsimp only [result10783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10785_agree_conditional : tree10785 = literal10785 := by
  rw [tree10785_def]
  rfl
theorem node10785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10785 live10785 coloured10785 = result10785 := by
  rw [tree10785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10786_agree_conditional
    (child0 : tree10784 = literal10784)
    (child1 : tree10785 = literal10785) : tree10786 = literal10786 := by
  rw [tree10786_def, child0, child1]
  rfl
theorem node10786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10784 live10784 coloured10784 = result10784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10785 live10785 coloured10785 = result10785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10786 live10786 coloured10786 = result10786 := by
  rw [tree10786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10784 coloured10784 at child
  try dsimp only [live10786, coloured10786]
  rw [child]
  dsimp only [result10784]
  have child := child1
  unfold live10785 coloured10785 at child
  try dsimp only [live10786, coloured10786]
  rw [child]
  dsimp only [result10785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10787_agree_conditional : tree10787 = literal10787 := by
  rw [tree10787_def]
  rfl
theorem node10787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10787 live10787 coloured10787 = result10787 := by
  rw [tree10787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10788_agree_conditional
    (child0 : tree10786 = literal10786)
    (child1 : tree10787 = literal10787) : tree10788 = literal10788 := by
  rw [tree10788_def, child0, child1]
  rfl
theorem node10788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10786 live10786 coloured10786 = result10786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10787 live10787 coloured10787 = result10787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10788 live10788 coloured10788 = result10788 := by
  rw [tree10788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10786 coloured10786 at child
  try dsimp only [live10788, coloured10788]
  rw [child]
  dsimp only [result10786]
  have child := child1
  unfold live10787 coloured10787 at child
  try dsimp only [live10788, coloured10788]
  rw [child]
  dsimp only [result10787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10789_agree_conditional : tree10789 = literal10789 := by
  rw [tree10789_def]
  rfl
theorem node10789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10789 live10789 coloured10789 = result10789 := by
  rw [tree10789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10790_agree_conditional
    (child0 : tree10788 = literal10788)
    (child1 : tree10789 = literal10789) : tree10790 = literal10790 := by
  rw [tree10790_def, child0, child1]
  rfl
theorem node10790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10788 live10788 coloured10788 = result10788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10789 live10789 coloured10789 = result10789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10790 live10790 coloured10790 = result10790 := by
  rw [tree10790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10788 coloured10788 at child
  try dsimp only [live10790, coloured10790]
  rw [child]
  dsimp only [result10788]
  have child := child1
  unfold live10789 coloured10789 at child
  try dsimp only [live10790, coloured10790]
  rw [child]
  dsimp only [result10789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10791_agree_conditional : tree10791 = literal10791 := by
  rw [tree10791_def]
  rfl
theorem node10791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10791 live10791 coloured10791 = result10791 := by
  rw [tree10791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10792_agree_conditional
    (child0 : tree10790 = literal10790)
    (child1 : tree10791 = literal10791) : tree10792 = literal10792 := by
  rw [tree10792_def, child0, child1]
  rfl
theorem node10792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10790 live10790 coloured10790 = result10790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10791 live10791 coloured10791 = result10791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10792 live10792 coloured10792 = result10792 := by
  rw [tree10792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10790 coloured10790 at child
  try dsimp only [live10792, coloured10792]
  rw [child]
  dsimp only [result10790]
  have child := child1
  unfold live10791 coloured10791 at child
  try dsimp only [live10792, coloured10792]
  rw [child]
  dsimp only [result10791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10793_agree_conditional : tree10793 = literal10793 := by
  rw [tree10793_def]
  rfl
theorem node10793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10793 live10793 coloured10793 = result10793 := by
  rw [tree10793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10794_agree_conditional
    (child0 : tree10792 = literal10792)
    (child1 : tree10793 = literal10793) : tree10794 = literal10794 := by
  rw [tree10794_def, child0, child1]
  rfl
theorem node10794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10792 live10792 coloured10792 = result10792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10793 live10793 coloured10793 = result10793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10794 live10794 coloured10794 = result10794 := by
  rw [tree10794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10792 coloured10792 at child
  try dsimp only [live10794, coloured10794]
  rw [child]
  dsimp only [result10792]
  have child := child1
  unfold live10793 coloured10793 at child
  try dsimp only [live10794, coloured10794]
  rw [child]
  dsimp only [result10793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10795_agree_conditional : tree10795 = literal10795 := by
  rw [tree10795_def]
  rfl
theorem node10795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10795 live10795 coloured10795 = result10795 := by
  rw [tree10795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10796_agree_conditional
    (child0 : tree10794 = literal10794)
    (child1 : tree10795 = literal10795) : tree10796 = literal10796 := by
  rw [tree10796_def, child0, child1]
  rfl
theorem node10796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10794 live10794 coloured10794 = result10794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10795 live10795 coloured10795 = result10795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10796 live10796 coloured10796 = result10796 := by
  rw [tree10796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10794 coloured10794 at child
  try dsimp only [live10796, coloured10796]
  rw [child]
  dsimp only [result10794]
  have child := child1
  unfold live10795 coloured10795 at child
  try dsimp only [live10796, coloured10796]
  rw [child]
  dsimp only [result10795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10797_agree_conditional : tree10797 = literal10797 := by
  rw [tree10797_def]
  rfl
theorem node10797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10797 live10797 coloured10797 = result10797 := by
  rw [tree10797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10798_agree_conditional
    (child0 : tree10796 = literal10796)
    (child1 : tree10797 = literal10797) : tree10798 = literal10798 := by
  rw [tree10798_def, child0, child1]
  rfl
theorem node10798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10796 live10796 coloured10796 = result10796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10797 live10797 coloured10797 = result10797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10798 live10798 coloured10798 = result10798 := by
  rw [tree10798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10796 coloured10796 at child
  try dsimp only [live10798, coloured10798]
  rw [child]
  dsimp only [result10796]
  have child := child1
  unfold live10797 coloured10797 at child
  try dsimp only [live10798, coloured10798]
  rw [child]
  dsimp only [result10797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10799_agree_conditional : tree10799 = literal10799 := by
  rw [tree10799_def]
  rfl
theorem node10799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10799 live10799 coloured10799 = result10799 := by
  rw [tree10799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10800_agree_conditional
    (child0 : tree10798 = literal10798)
    (child1 : tree10799 = literal10799) : tree10800 = literal10800 := by
  rw [tree10800_def, child0, child1]
  rfl
theorem node10800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10798 live10798 coloured10798 = result10798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10799 live10799 coloured10799 = result10799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10800 live10800 coloured10800 = result10800 := by
  rw [tree10800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10798 coloured10798 at child
  try dsimp only [live10800, coloured10800]
  rw [child]
  dsimp only [result10798]
  have child := child1
  unfold live10799 coloured10799 at child
  try dsimp only [live10800, coloured10800]
  rw [child]
  dsimp only [result10799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10801_agree_conditional : tree10801 = literal10801 := by
  rw [tree10801_def]
  rfl
theorem node10801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10801 live10801 coloured10801 = result10801 := by
  rw [tree10801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10802_agree_conditional
    (child0 : tree10800 = literal10800)
    (child1 : tree10801 = literal10801) : tree10802 = literal10802 := by
  rw [tree10802_def, child0, child1]
  rfl
theorem node10802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10800 live10800 coloured10800 = result10800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10801 live10801 coloured10801 = result10801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10802 live10802 coloured10802 = result10802 := by
  rw [tree10802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10800 coloured10800 at child
  try dsimp only [live10802, coloured10802]
  rw [child]
  dsimp only [result10800]
  have child := child1
  unfold live10801 coloured10801 at child
  try dsimp only [live10802, coloured10802]
  rw [child]
  dsimp only [result10801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10803_agree_conditional : tree10803 = literal10803 := by
  rw [tree10803_def]
  rfl
theorem node10803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10803 live10803 coloured10803 = result10803 := by
  rw [tree10803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10804_agree_conditional
    (child0 : tree10802 = literal10802)
    (child1 : tree10803 = literal10803) : tree10804 = literal10804 := by
  rw [tree10804_def, child0, child1]
  rfl
theorem node10804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10802 live10802 coloured10802 = result10802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10803 live10803 coloured10803 = result10803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10804 live10804 coloured10804 = result10804 := by
  rw [tree10804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10802 coloured10802 at child
  try dsimp only [live10804, coloured10804]
  rw [child]
  dsimp only [result10802]
  have child := child1
  unfold live10803 coloured10803 at child
  try dsimp only [live10804, coloured10804]
  rw [child]
  dsimp only [result10803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10805_agree_conditional : tree10805 = literal10805 := by
  rw [tree10805_def]
  rfl
theorem node10805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10805 live10805 coloured10805 = result10805 := by
  rw [tree10805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10806_agree_conditional
    (child0 : tree10804 = literal10804)
    (child1 : tree10805 = literal10805) : tree10806 = literal10806 := by
  rw [tree10806_def, child0, child1]
  rfl
theorem node10806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10804 live10804 coloured10804 = result10804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10805 live10805 coloured10805 = result10805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10806 live10806 coloured10806 = result10806 := by
  rw [tree10806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10804 coloured10804 at child
  try dsimp only [live10806, coloured10806]
  rw [child]
  dsimp only [result10804]
  have child := child1
  unfold live10805 coloured10805 at child
  try dsimp only [live10806, coloured10806]
  rw [child]
  dsimp only [result10805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10807_agree_conditional : tree10807 = literal10807 := by
  rw [tree10807_def]
  rfl
theorem node10807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10807 live10807 coloured10807 = result10807 := by
  rw [tree10807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10808_agree_conditional
    (child0 : tree10806 = literal10806)
    (child1 : tree10807 = literal10807) : tree10808 = literal10808 := by
  rw [tree10808_def, child0, child1]
  rfl
theorem node10808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10806 live10806 coloured10806 = result10806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10807 live10807 coloured10807 = result10807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10808 live10808 coloured10808 = result10808 := by
  rw [tree10808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10806 coloured10806 at child
  try dsimp only [live10808, coloured10808]
  rw [child]
  dsimp only [result10806]
  have child := child1
  unfold live10807 coloured10807 at child
  try dsimp only [live10808, coloured10808]
  rw [child]
  dsimp only [result10807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10809_agree_conditional : tree10809 = literal10809 := by
  rw [tree10809_def]
  rfl
theorem node10809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10809 live10809 coloured10809 = result10809 := by
  rw [tree10809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10810_agree_conditional
    (child0 : tree10808 = literal10808)
    (child1 : tree10809 = literal10809) : tree10810 = literal10810 := by
  rw [tree10810_def, child0, child1]
  rfl
theorem node10810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10808 live10808 coloured10808 = result10808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10809 live10809 coloured10809 = result10809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10810 live10810 coloured10810 = result10810 := by
  rw [tree10810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10808 coloured10808 at child
  try dsimp only [live10810, coloured10810]
  rw [child]
  dsimp only [result10808]
  have child := child1
  unfold live10809 coloured10809 at child
  try dsimp only [live10810, coloured10810]
  rw [child]
  dsimp only [result10809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10811_agree_conditional : tree10811 = literal10811 := by
  rw [tree10811_def]
  rfl
theorem node10811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10811 live10811 coloured10811 = result10811 := by
  rw [tree10811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10812_agree_conditional
    (child0 : tree10810 = literal10810)
    (child1 : tree10811 = literal10811) : tree10812 = literal10812 := by
  rw [tree10812_def, child0, child1]
  rfl
theorem node10812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10810 live10810 coloured10810 = result10810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10811 live10811 coloured10811 = result10811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10812 live10812 coloured10812 = result10812 := by
  rw [tree10812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10810 coloured10810 at child
  try dsimp only [live10812, coloured10812]
  rw [child]
  dsimp only [result10810]
  have child := child1
  unfold live10811 coloured10811 at child
  try dsimp only [live10812, coloured10812]
  rw [child]
  dsimp only [result10811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10813_agree_conditional : tree10813 = literal10813 := by
  rw [tree10813_def]
  rfl
theorem node10813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10813 live10813 coloured10813 = result10813 := by
  rw [tree10813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10814_agree_conditional
    (child0 : tree10812 = literal10812)
    (child1 : tree10813 = literal10813) : tree10814 = literal10814 := by
  rw [tree10814_def, child0, child1]
  rfl
theorem node10814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10812 live10812 coloured10812 = result10812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10813 live10813 coloured10813 = result10813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10814 live10814 coloured10814 = result10814 := by
  rw [tree10814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10812 coloured10812 at child
  try dsimp only [live10814, coloured10814]
  rw [child]
  dsimp only [result10812]
  have child := child1
  unfold live10813 coloured10813 at child
  try dsimp only [live10814, coloured10814]
  rw [child]
  dsimp only [result10813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10815_agree_conditional : tree10815 = literal10815 := by
  rw [tree10815_def]
  rfl
theorem node10815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10815 live10815 coloured10815 = result10815 := by
  rw [tree10815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10816_agree_conditional
    (child0 : tree10814 = literal10814)
    (child1 : tree10815 = literal10815) : tree10816 = literal10816 := by
  rw [tree10816_def, child0, child1]
  rfl
theorem node10816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10814 live10814 coloured10814 = result10814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10815 live10815 coloured10815 = result10815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10816 live10816 coloured10816 = result10816 := by
  rw [tree10816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10814 coloured10814 at child
  try dsimp only [live10816, coloured10816]
  rw [child]
  dsimp only [result10814]
  have child := child1
  unfold live10815 coloured10815 at child
  try dsimp only [live10816, coloured10816]
  rw [child]
  dsimp only [result10815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10817_agree_conditional : tree10817 = literal10817 := by
  rw [tree10817_def]
  rfl
theorem node10817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10817 live10817 coloured10817 = result10817 := by
  rw [tree10817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10818_agree_conditional
    (child0 : tree10816 = literal10816)
    (child1 : tree10817 = literal10817) : tree10818 = literal10818 := by
  rw [tree10818_def, child0, child1]
  rfl
theorem node10818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10816 live10816 coloured10816 = result10816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10817 live10817 coloured10817 = result10817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10818 live10818 coloured10818 = result10818 := by
  rw [tree10818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10816 coloured10816 at child
  try dsimp only [live10818, coloured10818]
  rw [child]
  dsimp only [result10816]
  have child := child1
  unfold live10817 coloured10817 at child
  try dsimp only [live10818, coloured10818]
  rw [child]
  dsimp only [result10817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10819_agree_conditional : tree10819 = literal10819 := by
  rw [tree10819_def]
  rfl
theorem node10819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10819 live10819 coloured10819 = result10819 := by
  rw [tree10819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10820_agree_conditional
    (child0 : tree10818 = literal10818)
    (child1 : tree10819 = literal10819) : tree10820 = literal10820 := by
  rw [tree10820_def, child0, child1]
  rfl
theorem node10820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10818 live10818 coloured10818 = result10818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10819 live10819 coloured10819 = result10819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10820 live10820 coloured10820 = result10820 := by
  rw [tree10820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10818 coloured10818 at child
  try dsimp only [live10820, coloured10820]
  rw [child]
  dsimp only [result10818]
  have child := child1
  unfold live10819 coloured10819 at child
  try dsimp only [live10820, coloured10820]
  rw [child]
  dsimp only [result10819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10821_agree_conditional : tree10821 = literal10821 := by
  rw [tree10821_def]
  rfl
theorem node10821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10821 live10821 coloured10821 = result10821 := by
  rw [tree10821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10822_agree_conditional
    (child0 : tree10820 = literal10820)
    (child1 : tree10821 = literal10821) : tree10822 = literal10822 := by
  rw [tree10822_def, child0, child1]
  rfl
theorem node10822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10820 live10820 coloured10820 = result10820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10821 live10821 coloured10821 = result10821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10822 live10822 coloured10822 = result10822 := by
  rw [tree10822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10820 coloured10820 at child
  try dsimp only [live10822, coloured10822]
  rw [child]
  dsimp only [result10820]
  have child := child1
  unfold live10821 coloured10821 at child
  try dsimp only [live10822, coloured10822]
  rw [child]
  dsimp only [result10821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10823_agree_conditional : tree10823 = literal10823 := by
  rw [tree10823_def]
  rfl
theorem node10823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10823 live10823 coloured10823 = result10823 := by
  rw [tree10823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10824_agree_conditional
    (child0 : tree10822 = literal10822)
    (child1 : tree10823 = literal10823) : tree10824 = literal10824 := by
  rw [tree10824_def, child0, child1]
  rfl
theorem node10824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10822 live10822 coloured10822 = result10822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10823 live10823 coloured10823 = result10823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10824 live10824 coloured10824 = result10824 := by
  rw [tree10824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10822 coloured10822 at child
  try dsimp only [live10824, coloured10824]
  rw [child]
  dsimp only [result10822]
  have child := child1
  unfold live10823 coloured10823 at child
  try dsimp only [live10824, coloured10824]
  rw [child]
  dsimp only [result10823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10825_agree_conditional : tree10825 = literal10825 := by
  rw [tree10825_def]
  rfl
theorem node10825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10825 live10825 coloured10825 = result10825 := by
  rw [tree10825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10826_agree_conditional
    (child0 : tree10824 = literal10824)
    (child1 : tree10825 = literal10825) : tree10826 = literal10826 := by
  rw [tree10826_def, child0, child1]
  rfl
theorem node10826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10824 live10824 coloured10824 = result10824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10825 live10825 coloured10825 = result10825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10826 live10826 coloured10826 = result10826 := by
  rw [tree10826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10824 coloured10824 at child
  try dsimp only [live10826, coloured10826]
  rw [child]
  dsimp only [result10824]
  have child := child1
  unfold live10825 coloured10825 at child
  try dsimp only [live10826, coloured10826]
  rw [child]
  dsimp only [result10825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10827_agree_conditional : tree10827 = literal10827 := by
  rw [tree10827_def]
  rfl
theorem node10827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10827 live10827 coloured10827 = result10827 := by
  rw [tree10827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10828_agree_conditional
    (child0 : tree10826 = literal10826)
    (child1 : tree10827 = literal10827) : tree10828 = literal10828 := by
  rw [tree10828_def, child0, child1]
  rfl
theorem node10828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10826 live10826 coloured10826 = result10826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10827 live10827 coloured10827 = result10827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10828 live10828 coloured10828 = result10828 := by
  rw [tree10828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10826 coloured10826 at child
  try dsimp only [live10828, coloured10828]
  rw [child]
  dsimp only [result10826]
  have child := child1
  unfold live10827 coloured10827 at child
  try dsimp only [live10828, coloured10828]
  rw [child]
  dsimp only [result10827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10829_agree_conditional : tree10829 = literal10829 := by
  rw [tree10829_def]
  rfl
theorem node10829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10829 live10829 coloured10829 = result10829 := by
  rw [tree10829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10830_agree_conditional
    (child0 : tree10828 = literal10828)
    (child1 : tree10829 = literal10829) : tree10830 = literal10830 := by
  rw [tree10830_def, child0, child1]
  rfl
theorem node10830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10828 live10828 coloured10828 = result10828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10829 live10829 coloured10829 = result10829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10830 live10830 coloured10830 = result10830 := by
  rw [tree10830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10828 coloured10828 at child
  try dsimp only [live10830, coloured10830]
  rw [child]
  dsimp only [result10828]
  have child := child1
  unfold live10829 coloured10829 at child
  try dsimp only [live10830, coloured10830]
  rw [child]
  dsimp only [result10829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10831_agree_conditional : tree10831 = literal10831 := by
  rw [tree10831_def]
  rfl
theorem node10831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10831 live10831 coloured10831 = result10831 := by
  rw [tree10831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10832_agree_conditional
    (child0 : tree10830 = literal10830)
    (child1 : tree10831 = literal10831) : tree10832 = literal10832 := by
  rw [tree10832_def, child0, child1]
  rfl
theorem node10832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10830 live10830 coloured10830 = result10830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10831 live10831 coloured10831 = result10831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10832 live10832 coloured10832 = result10832 := by
  rw [tree10832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10830 coloured10830 at child
  try dsimp only [live10832, coloured10832]
  rw [child]
  dsimp only [result10830]
  have child := child1
  unfold live10831 coloured10831 at child
  try dsimp only [live10832, coloured10832]
  rw [child]
  dsimp only [result10831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10833_agree_conditional : tree10833 = literal10833 := by
  rw [tree10833_def]
  rfl
theorem node10833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10833 live10833 coloured10833 = result10833 := by
  rw [tree10833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10834_agree_conditional
    (child0 : tree10832 = literal10832)
    (child1 : tree10833 = literal10833) : tree10834 = literal10834 := by
  rw [tree10834_def, child0, child1]
  rfl
theorem node10834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10832 live10832 coloured10832 = result10832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10833 live10833 coloured10833 = result10833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10834 live10834 coloured10834 = result10834 := by
  rw [tree10834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10832 coloured10832 at child
  try dsimp only [live10834, coloured10834]
  rw [child]
  dsimp only [result10832]
  have child := child1
  unfold live10833 coloured10833 at child
  try dsimp only [live10834, coloured10834]
  rw [child]
  dsimp only [result10833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10835_agree_conditional : tree10835 = literal10835 := by
  rw [tree10835_def]
  rfl
theorem node10835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10835 live10835 coloured10835 = result10835 := by
  rw [tree10835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10836_agree_conditional
    (child0 : tree10834 = literal10834)
    (child1 : tree10835 = literal10835) : tree10836 = literal10836 := by
  rw [tree10836_def, child0, child1]
  rfl
theorem node10836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10834 live10834 coloured10834 = result10834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10835 live10835 coloured10835 = result10835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10836 live10836 coloured10836 = result10836 := by
  rw [tree10836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10834 coloured10834 at child
  try dsimp only [live10836, coloured10836]
  rw [child]
  dsimp only [result10834]
  have child := child1
  unfold live10835 coloured10835 at child
  try dsimp only [live10836, coloured10836]
  rw [child]
  dsimp only [result10835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10837_agree_conditional : tree10837 = literal10837 := by
  rw [tree10837_def]
  rfl
theorem node10837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10837 live10837 coloured10837 = result10837 := by
  rw [tree10837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10838_agree_conditional
    (child0 : tree10836 = literal10836)
    (child1 : tree10837 = literal10837) : tree10838 = literal10838 := by
  rw [tree10838_def, child0, child1]
  rfl
theorem node10838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10836 live10836 coloured10836 = result10836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10837 live10837 coloured10837 = result10837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10838 live10838 coloured10838 = result10838 := by
  rw [tree10838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10836 coloured10836 at child
  try dsimp only [live10838, coloured10838]
  rw [child]
  dsimp only [result10836]
  have child := child1
  unfold live10837 coloured10837 at child
  try dsimp only [live10838, coloured10838]
  rw [child]
  dsimp only [result10837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10839_agree_conditional : tree10839 = literal10839 := by
  rw [tree10839_def]
  rfl
theorem node10839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10839 live10839 coloured10839 = result10839 := by
  rw [tree10839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10840_agree_conditional
    (child0 : tree10838 = literal10838)
    (child1 : tree10839 = literal10839) : tree10840 = literal10840 := by
  rw [tree10840_def, child0, child1]
  rfl
theorem node10840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10838 live10838 coloured10838 = result10838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10839 live10839 coloured10839 = result10839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10840 live10840 coloured10840 = result10840 := by
  rw [tree10840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10838 coloured10838 at child
  try dsimp only [live10840, coloured10840]
  rw [child]
  dsimp only [result10838]
  have child := child1
  unfold live10839 coloured10839 at child
  try dsimp only [live10840, coloured10840]
  rw [child]
  dsimp only [result10839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10841_agree_conditional : tree10841 = literal10841 := by
  rw [tree10841_def]
  rfl
theorem node10841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10841 live10841 coloured10841 = result10841 := by
  rw [tree10841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10842_agree_conditional
    (child0 : tree10840 = literal10840)
    (child1 : tree10841 = literal10841) : tree10842 = literal10842 := by
  rw [tree10842_def, child0, child1]
  rfl
theorem node10842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10840 live10840 coloured10840 = result10840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10841 live10841 coloured10841 = result10841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10842 live10842 coloured10842 = result10842 := by
  rw [tree10842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10840 coloured10840 at child
  try dsimp only [live10842, coloured10842]
  rw [child]
  dsimp only [result10840]
  have child := child1
  unfold live10841 coloured10841 at child
  try dsimp only [live10842, coloured10842]
  rw [child]
  dsimp only [result10841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10843_agree_conditional : tree10843 = literal10843 := by
  rw [tree10843_def]
  rfl
theorem node10843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10843 live10843 coloured10843 = result10843 := by
  rw [tree10843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10844_agree_conditional
    (child0 : tree10842 = literal10842)
    (child1 : tree10843 = literal10843) : tree10844 = literal10844 := by
  rw [tree10844_def, child0, child1]
  rfl
theorem node10844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10842 live10842 coloured10842 = result10842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10843 live10843 coloured10843 = result10843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10844 live10844 coloured10844 = result10844 := by
  rw [tree10844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10842 coloured10842 at child
  try dsimp only [live10844, coloured10844]
  rw [child]
  dsimp only [result10842]
  have child := child1
  unfold live10843 coloured10843 at child
  try dsimp only [live10844, coloured10844]
  rw [child]
  dsimp only [result10843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10845_agree_conditional : tree10845 = literal10845 := by
  rw [tree10845_def]
  rfl
theorem node10845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10845 live10845 coloured10845 = result10845 := by
  rw [tree10845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10846_agree_conditional
    (child0 : tree10844 = literal10844)
    (child1 : tree10845 = literal10845) : tree10846 = literal10846 := by
  rw [tree10846_def, child0, child1]
  rfl
theorem node10846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10844 live10844 coloured10844 = result10844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10845 live10845 coloured10845 = result10845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10846 live10846 coloured10846 = result10846 := by
  rw [tree10846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10844 coloured10844 at child
  try dsimp only [live10846, coloured10846]
  rw [child]
  dsimp only [result10844]
  have child := child1
  unfold live10845 coloured10845 at child
  try dsimp only [live10846, coloured10846]
  rw [child]
  dsimp only [result10845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10847_agree_conditional : tree10847 = literal10847 := by
  rw [tree10847_def]
  rfl
theorem node10847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10847 live10847 coloured10847 = result10847 := by
  rw [tree10847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
