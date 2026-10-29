import InitECandidate.Proofs.ClashStages713.Proof111
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10752_agree : tree10752 = literal10752 := by
  rw [tree10752_def, tree10750_agree, tree10751_agree]
  rfl
theorem node10752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10752 live10752 coloured10752 = result10752 := by
  rw [tree10752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10750_eq
  unfold live10750 coloured10750 at child
  try dsimp only [live10752, coloured10752]
  rw [child]
  dsimp only [result10750]
  have child := node10751_eq
  unfold live10751 coloured10751 at child
  try dsimp only [live10752, coloured10752]
  rw [child]
  dsimp only [result10751]
  try dsimp only [colour, result10752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10753_agree : tree10753 = literal10753 := by
  rw [tree10753_def]
  rfl
theorem node10753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10753 live10753 coloured10753 = result10753 := by
  rw [tree10753_def]
  try dsimp only [colour, result10753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10754_agree : tree10754 = literal10754 := by
  rw [tree10754_def, tree10752_agree, tree10753_agree]
  rfl
theorem node10754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10754 live10754 coloured10754 = result10754 := by
  rw [tree10754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10752_eq
  unfold live10752 coloured10752 at child
  try dsimp only [live10754, coloured10754]
  rw [child]
  dsimp only [result10752]
  have child := node10753_eq
  unfold live10753 coloured10753 at child
  try dsimp only [live10754, coloured10754]
  rw [child]
  dsimp only [result10753]
  try dsimp only [colour, result10754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10755_agree : tree10755 = literal10755 := by
  rw [tree10755_def]
  rfl
theorem node10755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10755 live10755 coloured10755 = result10755 := by
  rw [tree10755_def]
  try dsimp only [colour, result10755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10756_agree : tree10756 = literal10756 := by
  rw [tree10756_def, tree10754_agree, tree10755_agree]
  rfl
theorem node10756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10756 live10756 coloured10756 = result10756 := by
  rw [tree10756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10754_eq
  unfold live10754 coloured10754 at child
  try dsimp only [live10756, coloured10756]
  rw [child]
  dsimp only [result10754]
  have child := node10755_eq
  unfold live10755 coloured10755 at child
  try dsimp only [live10756, coloured10756]
  rw [child]
  dsimp only [result10755]
  try dsimp only [colour, result10756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10757_agree : tree10757 = literal10757 := by
  rw [tree10757_def]
  rfl
theorem node10757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10757 live10757 coloured10757 = result10757 := by
  rw [tree10757_def]
  try dsimp only [colour, result10757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10758_agree : tree10758 = literal10758 := by
  rw [tree10758_def, tree10756_agree, tree10757_agree]
  rfl
theorem node10758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10758 live10758 coloured10758 = result10758 := by
  rw [tree10758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10756_eq
  unfold live10756 coloured10756 at child
  try dsimp only [live10758, coloured10758]
  rw [child]
  dsimp only [result10756]
  have child := node10757_eq
  unfold live10757 coloured10757 at child
  try dsimp only [live10758, coloured10758]
  rw [child]
  dsimp only [result10757]
  try dsimp only [colour, result10758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10759_agree : tree10759 = literal10759 := by
  rw [tree10759_def]
  rfl
theorem node10759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10759 live10759 coloured10759 = result10759 := by
  rw [tree10759_def]
  try dsimp only [colour, result10759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10760_agree : tree10760 = literal10760 := by
  rw [tree10760_def, tree10758_agree, tree10759_agree]
  rfl
theorem node10760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10760 live10760 coloured10760 = result10760 := by
  rw [tree10760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10758_eq
  unfold live10758 coloured10758 at child
  try dsimp only [live10760, coloured10760]
  rw [child]
  dsimp only [result10758]
  have child := node10759_eq
  unfold live10759 coloured10759 at child
  try dsimp only [live10760, coloured10760]
  rw [child]
  dsimp only [result10759]
  try dsimp only [colour, result10760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10761_agree : tree10761 = literal10761 := by
  rw [tree10761_def]
  rfl
theorem node10761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10761 live10761 coloured10761 = result10761 := by
  rw [tree10761_def]
  try dsimp only [colour, result10761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10762_agree : tree10762 = literal10762 := by
  rw [tree10762_def, tree10760_agree, tree10761_agree]
  rfl
theorem node10762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10762 live10762 coloured10762 = result10762 := by
  rw [tree10762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10760_eq
  unfold live10760 coloured10760 at child
  try dsimp only [live10762, coloured10762]
  rw [child]
  dsimp only [result10760]
  have child := node10761_eq
  unfold live10761 coloured10761 at child
  try dsimp only [live10762, coloured10762]
  rw [child]
  dsimp only [result10761]
  try dsimp only [colour, result10762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10763_agree : tree10763 = literal10763 := by
  rw [tree10763_def]
  rfl
theorem node10763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10763 live10763 coloured10763 = result10763 := by
  rw [tree10763_def]
  try dsimp only [colour, result10763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10764_agree : tree10764 = literal10764 := by
  rw [tree10764_def, tree10762_agree, tree10763_agree]
  rfl
theorem node10764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10764 live10764 coloured10764 = result10764 := by
  rw [tree10764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10762_eq
  unfold live10762 coloured10762 at child
  try dsimp only [live10764, coloured10764]
  rw [child]
  dsimp only [result10762]
  have child := node10763_eq
  unfold live10763 coloured10763 at child
  try dsimp only [live10764, coloured10764]
  rw [child]
  dsimp only [result10763]
  try dsimp only [colour, result10764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10765_agree : tree10765 = literal10765 := by
  rw [tree10765_def]
  rfl
theorem node10765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10765 live10765 coloured10765 = result10765 := by
  rw [tree10765_def]
  try dsimp only [colour, result10765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10766_agree : tree10766 = literal10766 := by
  rw [tree10766_def, tree10764_agree, tree10765_agree]
  rfl
theorem node10766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10766 live10766 coloured10766 = result10766 := by
  rw [tree10766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10764_eq
  unfold live10764 coloured10764 at child
  try dsimp only [live10766, coloured10766]
  rw [child]
  dsimp only [result10764]
  have child := node10765_eq
  unfold live10765 coloured10765 at child
  try dsimp only [live10766, coloured10766]
  rw [child]
  dsimp only [result10765]
  try dsimp only [colour, result10766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10767_agree : tree10767 = literal10767 := by
  rw [tree10767_def]
  rfl
theorem node10767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10767 live10767 coloured10767 = result10767 := by
  rw [tree10767_def]
  try dsimp only [colour, result10767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10768_agree : tree10768 = literal10768 := by
  rw [tree10768_def, tree10766_agree, tree10767_agree]
  rfl
theorem node10768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10768 live10768 coloured10768 = result10768 := by
  rw [tree10768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10766_eq
  unfold live10766 coloured10766 at child
  try dsimp only [live10768, coloured10768]
  rw [child]
  dsimp only [result10766]
  have child := node10767_eq
  unfold live10767 coloured10767 at child
  try dsimp only [live10768, coloured10768]
  rw [child]
  dsimp only [result10767]
  try dsimp only [colour, result10768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10769_agree : tree10769 = literal10769 := by
  rw [tree10769_def]
  rfl
theorem node10769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10769 live10769 coloured10769 = result10769 := by
  rw [tree10769_def]
  try dsimp only [colour, result10769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10770_agree : tree10770 = literal10770 := by
  rw [tree10770_def, tree10768_agree, tree10769_agree]
  rfl
theorem node10770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10770 live10770 coloured10770 = result10770 := by
  rw [tree10770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10768_eq
  unfold live10768 coloured10768 at child
  try dsimp only [live10770, coloured10770]
  rw [child]
  dsimp only [result10768]
  have child := node10769_eq
  unfold live10769 coloured10769 at child
  try dsimp only [live10770, coloured10770]
  rw [child]
  dsimp only [result10769]
  try dsimp only [colour, result10770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10771_agree : tree10771 = literal10771 := by
  rw [tree10771_def]
  rfl
theorem node10771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10771 live10771 coloured10771 = result10771 := by
  rw [tree10771_def]
  try dsimp only [colour, result10771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10772_agree : tree10772 = literal10772 := by
  rw [tree10772_def, tree10770_agree, tree10771_agree]
  rfl
theorem node10772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10772 live10772 coloured10772 = result10772 := by
  rw [tree10772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10770_eq
  unfold live10770 coloured10770 at child
  try dsimp only [live10772, coloured10772]
  rw [child]
  dsimp only [result10770]
  have child := node10771_eq
  unfold live10771 coloured10771 at child
  try dsimp only [live10772, coloured10772]
  rw [child]
  dsimp only [result10771]
  try dsimp only [colour, result10772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10773_agree : tree10773 = literal10773 := by
  rw [tree10773_def]
  rfl
theorem node10773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10773 live10773 coloured10773 = result10773 := by
  rw [tree10773_def]
  try dsimp only [colour, result10773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10774_agree : tree10774 = literal10774 := by
  rw [tree10774_def, tree10772_agree, tree10773_agree]
  rfl
theorem node10774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10774 live10774 coloured10774 = result10774 := by
  rw [tree10774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10772_eq
  unfold live10772 coloured10772 at child
  try dsimp only [live10774, coloured10774]
  rw [child]
  dsimp only [result10772]
  have child := node10773_eq
  unfold live10773 coloured10773 at child
  try dsimp only [live10774, coloured10774]
  rw [child]
  dsimp only [result10773]
  try dsimp only [colour, result10774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10775_agree : tree10775 = literal10775 := by
  rw [tree10775_def]
  rfl
theorem node10775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10775 live10775 coloured10775 = result10775 := by
  rw [tree10775_def]
  try dsimp only [colour, result10775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10776_agree : tree10776 = literal10776 := by
  rw [tree10776_def, tree10774_agree, tree10775_agree]
  rfl
theorem node10776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10776 live10776 coloured10776 = result10776 := by
  rw [tree10776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10774_eq
  unfold live10774 coloured10774 at child
  try dsimp only [live10776, coloured10776]
  rw [child]
  dsimp only [result10774]
  have child := node10775_eq
  unfold live10775 coloured10775 at child
  try dsimp only [live10776, coloured10776]
  rw [child]
  dsimp only [result10775]
  try dsimp only [colour, result10776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10777_agree : tree10777 = literal10777 := by
  rw [tree10777_def]
  rfl
theorem node10777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10777 live10777 coloured10777 = result10777 := by
  rw [tree10777_def]
  try dsimp only [colour, result10777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10778_agree : tree10778 = literal10778 := by
  rw [tree10778_def, tree10776_agree, tree10777_agree]
  rfl
theorem node10778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10778 live10778 coloured10778 = result10778 := by
  rw [tree10778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10776_eq
  unfold live10776 coloured10776 at child
  try dsimp only [live10778, coloured10778]
  rw [child]
  dsimp only [result10776]
  have child := node10777_eq
  unfold live10777 coloured10777 at child
  try dsimp only [live10778, coloured10778]
  rw [child]
  dsimp only [result10777]
  try dsimp only [colour, result10778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10779_agree : tree10779 = literal10779 := by
  rw [tree10779_def]
  rfl
theorem node10779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10779 live10779 coloured10779 = result10779 := by
  rw [tree10779_def]
  try dsimp only [colour, result10779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10780_agree : tree10780 = literal10780 := by
  rw [tree10780_def, tree10778_agree, tree10779_agree]
  rfl
theorem node10780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10780 live10780 coloured10780 = result10780 := by
  rw [tree10780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10778_eq
  unfold live10778 coloured10778 at child
  try dsimp only [live10780, coloured10780]
  rw [child]
  dsimp only [result10778]
  have child := node10779_eq
  unfold live10779 coloured10779 at child
  try dsimp only [live10780, coloured10780]
  rw [child]
  dsimp only [result10779]
  try dsimp only [colour, result10780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10781_agree : tree10781 = literal10781 := by
  rw [tree10781_def]
  rfl
theorem node10781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10781 live10781 coloured10781 = result10781 := by
  rw [tree10781_def]
  try dsimp only [colour, result10781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10782_agree : tree10782 = literal10782 := by
  rw [tree10782_def, tree10780_agree, tree10781_agree]
  rfl
theorem node10782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10782 live10782 coloured10782 = result10782 := by
  rw [tree10782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10780_eq
  unfold live10780 coloured10780 at child
  try dsimp only [live10782, coloured10782]
  rw [child]
  dsimp only [result10780]
  have child := node10781_eq
  unfold live10781 coloured10781 at child
  try dsimp only [live10782, coloured10782]
  rw [child]
  dsimp only [result10781]
  try dsimp only [colour, result10782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10783_agree : tree10783 = literal10783 := by
  rw [tree10783_def]
  rfl
theorem node10783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10783 live10783 coloured10783 = result10783 := by
  rw [tree10783_def]
  try dsimp only [colour, result10783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10784_agree : tree10784 = literal10784 := by
  rw [tree10784_def, tree10782_agree, tree10783_agree]
  rfl
theorem node10784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10784 live10784 coloured10784 = result10784 := by
  rw [tree10784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10782_eq
  unfold live10782 coloured10782 at child
  try dsimp only [live10784, coloured10784]
  rw [child]
  dsimp only [result10782]
  have child := node10783_eq
  unfold live10783 coloured10783 at child
  try dsimp only [live10784, coloured10784]
  rw [child]
  dsimp only [result10783]
  try dsimp only [colour, result10784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10785_agree : tree10785 = literal10785 := by
  rw [tree10785_def]
  rfl
theorem node10785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10785 live10785 coloured10785 = result10785 := by
  rw [tree10785_def]
  try dsimp only [colour, result10785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10786_agree : tree10786 = literal10786 := by
  rw [tree10786_def, tree10784_agree, tree10785_agree]
  rfl
theorem node10786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10786 live10786 coloured10786 = result10786 := by
  rw [tree10786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10784_eq
  unfold live10784 coloured10784 at child
  try dsimp only [live10786, coloured10786]
  rw [child]
  dsimp only [result10784]
  have child := node10785_eq
  unfold live10785 coloured10785 at child
  try dsimp only [live10786, coloured10786]
  rw [child]
  dsimp only [result10785]
  try dsimp only [colour, result10786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10787_agree : tree10787 = literal10787 := by
  rw [tree10787_def]
  rfl
theorem node10787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10787 live10787 coloured10787 = result10787 := by
  rw [tree10787_def]
  try dsimp only [colour, result10787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10788_agree : tree10788 = literal10788 := by
  rw [tree10788_def, tree10786_agree, tree10787_agree]
  rfl
theorem node10788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10788 live10788 coloured10788 = result10788 := by
  rw [tree10788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10786_eq
  unfold live10786 coloured10786 at child
  try dsimp only [live10788, coloured10788]
  rw [child]
  dsimp only [result10786]
  have child := node10787_eq
  unfold live10787 coloured10787 at child
  try dsimp only [live10788, coloured10788]
  rw [child]
  dsimp only [result10787]
  try dsimp only [colour, result10788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10789_agree : tree10789 = literal10789 := by
  rw [tree10789_def]
  rfl
theorem node10789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10789 live10789 coloured10789 = result10789 := by
  rw [tree10789_def]
  try dsimp only [colour, result10789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10790_agree : tree10790 = literal10790 := by
  rw [tree10790_def, tree10788_agree, tree10789_agree]
  rfl
theorem node10790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10790 live10790 coloured10790 = result10790 := by
  rw [tree10790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10788_eq
  unfold live10788 coloured10788 at child
  try dsimp only [live10790, coloured10790]
  rw [child]
  dsimp only [result10788]
  have child := node10789_eq
  unfold live10789 coloured10789 at child
  try dsimp only [live10790, coloured10790]
  rw [child]
  dsimp only [result10789]
  try dsimp only [colour, result10790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10791_agree : tree10791 = literal10791 := by
  rw [tree10791_def]
  rfl
theorem node10791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10791 live10791 coloured10791 = result10791 := by
  rw [tree10791_def]
  try dsimp only [colour, result10791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10792_agree : tree10792 = literal10792 := by
  rw [tree10792_def, tree10790_agree, tree10791_agree]
  rfl
theorem node10792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10792 live10792 coloured10792 = result10792 := by
  rw [tree10792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10790_eq
  unfold live10790 coloured10790 at child
  try dsimp only [live10792, coloured10792]
  rw [child]
  dsimp only [result10790]
  have child := node10791_eq
  unfold live10791 coloured10791 at child
  try dsimp only [live10792, coloured10792]
  rw [child]
  dsimp only [result10791]
  try dsimp only [colour, result10792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10793_agree : tree10793 = literal10793 := by
  rw [tree10793_def]
  rfl
theorem node10793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10793 live10793 coloured10793 = result10793 := by
  rw [tree10793_def]
  try dsimp only [colour, result10793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10794_agree : tree10794 = literal10794 := by
  rw [tree10794_def, tree10792_agree, tree10793_agree]
  rfl
theorem node10794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10794 live10794 coloured10794 = result10794 := by
  rw [tree10794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10792_eq
  unfold live10792 coloured10792 at child
  try dsimp only [live10794, coloured10794]
  rw [child]
  dsimp only [result10792]
  have child := node10793_eq
  unfold live10793 coloured10793 at child
  try dsimp only [live10794, coloured10794]
  rw [child]
  dsimp only [result10793]
  try dsimp only [colour, result10794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10795_agree : tree10795 = literal10795 := by
  rw [tree10795_def]
  rfl
theorem node10795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10795 live10795 coloured10795 = result10795 := by
  rw [tree10795_def]
  try dsimp only [colour, result10795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10796_agree : tree10796 = literal10796 := by
  rw [tree10796_def, tree10794_agree, tree10795_agree]
  rfl
theorem node10796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10796 live10796 coloured10796 = result10796 := by
  rw [tree10796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10794_eq
  unfold live10794 coloured10794 at child
  try dsimp only [live10796, coloured10796]
  rw [child]
  dsimp only [result10794]
  have child := node10795_eq
  unfold live10795 coloured10795 at child
  try dsimp only [live10796, coloured10796]
  rw [child]
  dsimp only [result10795]
  try dsimp only [colour, result10796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10797_agree : tree10797 = literal10797 := by
  rw [tree10797_def]
  rfl
theorem node10797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10797 live10797 coloured10797 = result10797 := by
  rw [tree10797_def]
  try dsimp only [colour, result10797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10798_agree : tree10798 = literal10798 := by
  rw [tree10798_def, tree10796_agree, tree10797_agree]
  rfl
theorem node10798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10798 live10798 coloured10798 = result10798 := by
  rw [tree10798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10796_eq
  unfold live10796 coloured10796 at child
  try dsimp only [live10798, coloured10798]
  rw [child]
  dsimp only [result10796]
  have child := node10797_eq
  unfold live10797 coloured10797 at child
  try dsimp only [live10798, coloured10798]
  rw [child]
  dsimp only [result10797]
  try dsimp only [colour, result10798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10799_agree : tree10799 = literal10799 := by
  rw [tree10799_def]
  rfl
theorem node10799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10799 live10799 coloured10799 = result10799 := by
  rw [tree10799_def]
  try dsimp only [colour, result10799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10800_agree : tree10800 = literal10800 := by
  rw [tree10800_def, tree10798_agree, tree10799_agree]
  rfl
theorem node10800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10800 live10800 coloured10800 = result10800 := by
  rw [tree10800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10798_eq
  unfold live10798 coloured10798 at child
  try dsimp only [live10800, coloured10800]
  rw [child]
  dsimp only [result10798]
  have child := node10799_eq
  unfold live10799 coloured10799 at child
  try dsimp only [live10800, coloured10800]
  rw [child]
  dsimp only [result10799]
  try dsimp only [colour, result10800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10801_agree : tree10801 = literal10801 := by
  rw [tree10801_def]
  rfl
theorem node10801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10801 live10801 coloured10801 = result10801 := by
  rw [tree10801_def]
  try dsimp only [colour, result10801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10802_agree : tree10802 = literal10802 := by
  rw [tree10802_def, tree10800_agree, tree10801_agree]
  rfl
theorem node10802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10802 live10802 coloured10802 = result10802 := by
  rw [tree10802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10800_eq
  unfold live10800 coloured10800 at child
  try dsimp only [live10802, coloured10802]
  rw [child]
  dsimp only [result10800]
  have child := node10801_eq
  unfold live10801 coloured10801 at child
  try dsimp only [live10802, coloured10802]
  rw [child]
  dsimp only [result10801]
  try dsimp only [colour, result10802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10803_agree : tree10803 = literal10803 := by
  rw [tree10803_def]
  rfl
theorem node10803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10803 live10803 coloured10803 = result10803 := by
  rw [tree10803_def]
  try dsimp only [colour, result10803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10804_agree : tree10804 = literal10804 := by
  rw [tree10804_def, tree10802_agree, tree10803_agree]
  rfl
theorem node10804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10804 live10804 coloured10804 = result10804 := by
  rw [tree10804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10802_eq
  unfold live10802 coloured10802 at child
  try dsimp only [live10804, coloured10804]
  rw [child]
  dsimp only [result10802]
  have child := node10803_eq
  unfold live10803 coloured10803 at child
  try dsimp only [live10804, coloured10804]
  rw [child]
  dsimp only [result10803]
  try dsimp only [colour, result10804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10805_agree : tree10805 = literal10805 := by
  rw [tree10805_def]
  rfl
theorem node10805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10805 live10805 coloured10805 = result10805 := by
  rw [tree10805_def]
  try dsimp only [colour, result10805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10806_agree : tree10806 = literal10806 := by
  rw [tree10806_def, tree10804_agree, tree10805_agree]
  rfl
theorem node10806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10806 live10806 coloured10806 = result10806 := by
  rw [tree10806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10804_eq
  unfold live10804 coloured10804 at child
  try dsimp only [live10806, coloured10806]
  rw [child]
  dsimp only [result10804]
  have child := node10805_eq
  unfold live10805 coloured10805 at child
  try dsimp only [live10806, coloured10806]
  rw [child]
  dsimp only [result10805]
  try dsimp only [colour, result10806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10807_agree : tree10807 = literal10807 := by
  rw [tree10807_def]
  rfl
theorem node10807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10807 live10807 coloured10807 = result10807 := by
  rw [tree10807_def]
  try dsimp only [colour, result10807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10808_agree : tree10808 = literal10808 := by
  rw [tree10808_def, tree10806_agree, tree10807_agree]
  rfl
theorem node10808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10808 live10808 coloured10808 = result10808 := by
  rw [tree10808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10806_eq
  unfold live10806 coloured10806 at child
  try dsimp only [live10808, coloured10808]
  rw [child]
  dsimp only [result10806]
  have child := node10807_eq
  unfold live10807 coloured10807 at child
  try dsimp only [live10808, coloured10808]
  rw [child]
  dsimp only [result10807]
  try dsimp only [colour, result10808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10809_agree : tree10809 = literal10809 := by
  rw [tree10809_def]
  rfl
theorem node10809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10809 live10809 coloured10809 = result10809 := by
  rw [tree10809_def]
  try dsimp only [colour, result10809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10810_agree : tree10810 = literal10810 := by
  rw [tree10810_def, tree10808_agree, tree10809_agree]
  rfl
theorem node10810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10810 live10810 coloured10810 = result10810 := by
  rw [tree10810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10808_eq
  unfold live10808 coloured10808 at child
  try dsimp only [live10810, coloured10810]
  rw [child]
  dsimp only [result10808]
  have child := node10809_eq
  unfold live10809 coloured10809 at child
  try dsimp only [live10810, coloured10810]
  rw [child]
  dsimp only [result10809]
  try dsimp only [colour, result10810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10811_agree : tree10811 = literal10811 := by
  rw [tree10811_def]
  rfl
theorem node10811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10811 live10811 coloured10811 = result10811 := by
  rw [tree10811_def]
  try dsimp only [colour, result10811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10812_agree : tree10812 = literal10812 := by
  rw [tree10812_def, tree10810_agree, tree10811_agree]
  rfl
theorem node10812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10812 live10812 coloured10812 = result10812 := by
  rw [tree10812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10810_eq
  unfold live10810 coloured10810 at child
  try dsimp only [live10812, coloured10812]
  rw [child]
  dsimp only [result10810]
  have child := node10811_eq
  unfold live10811 coloured10811 at child
  try dsimp only [live10812, coloured10812]
  rw [child]
  dsimp only [result10811]
  try dsimp only [colour, result10812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10813_agree : tree10813 = literal10813 := by
  rw [tree10813_def]
  rfl
theorem node10813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10813 live10813 coloured10813 = result10813 := by
  rw [tree10813_def]
  try dsimp only [colour, result10813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10814_agree : tree10814 = literal10814 := by
  rw [tree10814_def, tree10812_agree, tree10813_agree]
  rfl
theorem node10814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10814 live10814 coloured10814 = result10814 := by
  rw [tree10814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10812_eq
  unfold live10812 coloured10812 at child
  try dsimp only [live10814, coloured10814]
  rw [child]
  dsimp only [result10812]
  have child := node10813_eq
  unfold live10813 coloured10813 at child
  try dsimp only [live10814, coloured10814]
  rw [child]
  dsimp only [result10813]
  try dsimp only [colour, result10814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10815_agree : tree10815 = literal10815 := by
  rw [tree10815_def]
  rfl
theorem node10815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10815 live10815 coloured10815 = result10815 := by
  rw [tree10815_def]
  try dsimp only [colour, result10815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10816_agree : tree10816 = literal10816 := by
  rw [tree10816_def, tree10814_agree, tree10815_agree]
  rfl
theorem node10816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10816 live10816 coloured10816 = result10816 := by
  rw [tree10816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10814_eq
  unfold live10814 coloured10814 at child
  try dsimp only [live10816, coloured10816]
  rw [child]
  dsimp only [result10814]
  have child := node10815_eq
  unfold live10815 coloured10815 at child
  try dsimp only [live10816, coloured10816]
  rw [child]
  dsimp only [result10815]
  try dsimp only [colour, result10816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10817_agree : tree10817 = literal10817 := by
  rw [tree10817_def]
  rfl
theorem node10817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10817 live10817 coloured10817 = result10817 := by
  rw [tree10817_def]
  try dsimp only [colour, result10817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10818_agree : tree10818 = literal10818 := by
  rw [tree10818_def, tree10816_agree, tree10817_agree]
  rfl
theorem node10818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10818 live10818 coloured10818 = result10818 := by
  rw [tree10818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10816_eq
  unfold live10816 coloured10816 at child
  try dsimp only [live10818, coloured10818]
  rw [child]
  dsimp only [result10816]
  have child := node10817_eq
  unfold live10817 coloured10817 at child
  try dsimp only [live10818, coloured10818]
  rw [child]
  dsimp only [result10817]
  try dsimp only [colour, result10818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10819_agree : tree10819 = literal10819 := by
  rw [tree10819_def]
  rfl
theorem node10819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10819 live10819 coloured10819 = result10819 := by
  rw [tree10819_def]
  try dsimp only [colour, result10819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10820_agree : tree10820 = literal10820 := by
  rw [tree10820_def, tree10818_agree, tree10819_agree]
  rfl
theorem node10820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10820 live10820 coloured10820 = result10820 := by
  rw [tree10820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10818_eq
  unfold live10818 coloured10818 at child
  try dsimp only [live10820, coloured10820]
  rw [child]
  dsimp only [result10818]
  have child := node10819_eq
  unfold live10819 coloured10819 at child
  try dsimp only [live10820, coloured10820]
  rw [child]
  dsimp only [result10819]
  try dsimp only [colour, result10820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10821_agree : tree10821 = literal10821 := by
  rw [tree10821_def]
  rfl
theorem node10821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10821 live10821 coloured10821 = result10821 := by
  rw [tree10821_def]
  try dsimp only [colour, result10821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10822_agree : tree10822 = literal10822 := by
  rw [tree10822_def, tree10820_agree, tree10821_agree]
  rfl
theorem node10822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10822 live10822 coloured10822 = result10822 := by
  rw [tree10822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10820_eq
  unfold live10820 coloured10820 at child
  try dsimp only [live10822, coloured10822]
  rw [child]
  dsimp only [result10820]
  have child := node10821_eq
  unfold live10821 coloured10821 at child
  try dsimp only [live10822, coloured10822]
  rw [child]
  dsimp only [result10821]
  try dsimp only [colour, result10822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10823_agree : tree10823 = literal10823 := by
  rw [tree10823_def]
  rfl
theorem node10823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10823 live10823 coloured10823 = result10823 := by
  rw [tree10823_def]
  try dsimp only [colour, result10823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10824_agree : tree10824 = literal10824 := by
  rw [tree10824_def, tree10822_agree, tree10823_agree]
  rfl
theorem node10824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10824 live10824 coloured10824 = result10824 := by
  rw [tree10824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10822_eq
  unfold live10822 coloured10822 at child
  try dsimp only [live10824, coloured10824]
  rw [child]
  dsimp only [result10822]
  have child := node10823_eq
  unfold live10823 coloured10823 at child
  try dsimp only [live10824, coloured10824]
  rw [child]
  dsimp only [result10823]
  try dsimp only [colour, result10824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10825_agree : tree10825 = literal10825 := by
  rw [tree10825_def]
  rfl
theorem node10825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10825 live10825 coloured10825 = result10825 := by
  rw [tree10825_def]
  try dsimp only [colour, result10825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10826_agree : tree10826 = literal10826 := by
  rw [tree10826_def, tree10824_agree, tree10825_agree]
  rfl
theorem node10826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10826 live10826 coloured10826 = result10826 := by
  rw [tree10826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10824_eq
  unfold live10824 coloured10824 at child
  try dsimp only [live10826, coloured10826]
  rw [child]
  dsimp only [result10824]
  have child := node10825_eq
  unfold live10825 coloured10825 at child
  try dsimp only [live10826, coloured10826]
  rw [child]
  dsimp only [result10825]
  try dsimp only [colour, result10826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10827_agree : tree10827 = literal10827 := by
  rw [tree10827_def]
  rfl
theorem node10827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10827 live10827 coloured10827 = result10827 := by
  rw [tree10827_def]
  try dsimp only [colour, result10827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10828_agree : tree10828 = literal10828 := by
  rw [tree10828_def, tree10826_agree, tree10827_agree]
  rfl
theorem node10828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10828 live10828 coloured10828 = result10828 := by
  rw [tree10828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10826_eq
  unfold live10826 coloured10826 at child
  try dsimp only [live10828, coloured10828]
  rw [child]
  dsimp only [result10826]
  have child := node10827_eq
  unfold live10827 coloured10827 at child
  try dsimp only [live10828, coloured10828]
  rw [child]
  dsimp only [result10827]
  try dsimp only [colour, result10828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10829_agree : tree10829 = literal10829 := by
  rw [tree10829_def]
  rfl
theorem node10829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10829 live10829 coloured10829 = result10829 := by
  rw [tree10829_def]
  try dsimp only [colour, result10829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10830_agree : tree10830 = literal10830 := by
  rw [tree10830_def, tree10828_agree, tree10829_agree]
  rfl
theorem node10830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10830 live10830 coloured10830 = result10830 := by
  rw [tree10830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10828_eq
  unfold live10828 coloured10828 at child
  try dsimp only [live10830, coloured10830]
  rw [child]
  dsimp only [result10828]
  have child := node10829_eq
  unfold live10829 coloured10829 at child
  try dsimp only [live10830, coloured10830]
  rw [child]
  dsimp only [result10829]
  try dsimp only [colour, result10830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10831_agree : tree10831 = literal10831 := by
  rw [tree10831_def]
  rfl
theorem node10831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10831 live10831 coloured10831 = result10831 := by
  rw [tree10831_def]
  try dsimp only [colour, result10831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10832_agree : tree10832 = literal10832 := by
  rw [tree10832_def, tree10830_agree, tree10831_agree]
  rfl
theorem node10832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10832 live10832 coloured10832 = result10832 := by
  rw [tree10832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10830_eq
  unfold live10830 coloured10830 at child
  try dsimp only [live10832, coloured10832]
  rw [child]
  dsimp only [result10830]
  have child := node10831_eq
  unfold live10831 coloured10831 at child
  try dsimp only [live10832, coloured10832]
  rw [child]
  dsimp only [result10831]
  try dsimp only [colour, result10832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10833_agree : tree10833 = literal10833 := by
  rw [tree10833_def]
  rfl
theorem node10833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10833 live10833 coloured10833 = result10833 := by
  rw [tree10833_def]
  try dsimp only [colour, result10833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10834_agree : tree10834 = literal10834 := by
  rw [tree10834_def, tree10832_agree, tree10833_agree]
  rfl
theorem node10834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10834 live10834 coloured10834 = result10834 := by
  rw [tree10834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10832_eq
  unfold live10832 coloured10832 at child
  try dsimp only [live10834, coloured10834]
  rw [child]
  dsimp only [result10832]
  have child := node10833_eq
  unfold live10833 coloured10833 at child
  try dsimp only [live10834, coloured10834]
  rw [child]
  dsimp only [result10833]
  try dsimp only [colour, result10834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10835_agree : tree10835 = literal10835 := by
  rw [tree10835_def]
  rfl
theorem node10835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10835 live10835 coloured10835 = result10835 := by
  rw [tree10835_def]
  try dsimp only [colour, result10835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10836_agree : tree10836 = literal10836 := by
  rw [tree10836_def, tree10834_agree, tree10835_agree]
  rfl
theorem node10836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10836 live10836 coloured10836 = result10836 := by
  rw [tree10836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10834_eq
  unfold live10834 coloured10834 at child
  try dsimp only [live10836, coloured10836]
  rw [child]
  dsimp only [result10834]
  have child := node10835_eq
  unfold live10835 coloured10835 at child
  try dsimp only [live10836, coloured10836]
  rw [child]
  dsimp only [result10835]
  try dsimp only [colour, result10836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10837_agree : tree10837 = literal10837 := by
  rw [tree10837_def]
  rfl
theorem node10837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10837 live10837 coloured10837 = result10837 := by
  rw [tree10837_def]
  try dsimp only [colour, result10837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10838_agree : tree10838 = literal10838 := by
  rw [tree10838_def, tree10836_agree, tree10837_agree]
  rfl
theorem node10838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10838 live10838 coloured10838 = result10838 := by
  rw [tree10838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10836_eq
  unfold live10836 coloured10836 at child
  try dsimp only [live10838, coloured10838]
  rw [child]
  dsimp only [result10836]
  have child := node10837_eq
  unfold live10837 coloured10837 at child
  try dsimp only [live10838, coloured10838]
  rw [child]
  dsimp only [result10837]
  try dsimp only [colour, result10838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10839_agree : tree10839 = literal10839 := by
  rw [tree10839_def]
  rfl
theorem node10839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10839 live10839 coloured10839 = result10839 := by
  rw [tree10839_def]
  try dsimp only [colour, result10839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10840_agree : tree10840 = literal10840 := by
  rw [tree10840_def, tree10838_agree, tree10839_agree]
  rfl
theorem node10840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10840 live10840 coloured10840 = result10840 := by
  rw [tree10840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10838_eq
  unfold live10838 coloured10838 at child
  try dsimp only [live10840, coloured10840]
  rw [child]
  dsimp only [result10838]
  have child := node10839_eq
  unfold live10839 coloured10839 at child
  try dsimp only [live10840, coloured10840]
  rw [child]
  dsimp only [result10839]
  try dsimp only [colour, result10840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10841_agree : tree10841 = literal10841 := by
  rw [tree10841_def]
  rfl
theorem node10841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10841 live10841 coloured10841 = result10841 := by
  rw [tree10841_def]
  try dsimp only [colour, result10841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10842_agree : tree10842 = literal10842 := by
  rw [tree10842_def, tree10840_agree, tree10841_agree]
  rfl
theorem node10842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10842 live10842 coloured10842 = result10842 := by
  rw [tree10842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10840_eq
  unfold live10840 coloured10840 at child
  try dsimp only [live10842, coloured10842]
  rw [child]
  dsimp only [result10840]
  have child := node10841_eq
  unfold live10841 coloured10841 at child
  try dsimp only [live10842, coloured10842]
  rw [child]
  dsimp only [result10841]
  try dsimp only [colour, result10842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10843_agree : tree10843 = literal10843 := by
  rw [tree10843_def]
  rfl
theorem node10843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10843 live10843 coloured10843 = result10843 := by
  rw [tree10843_def]
  try dsimp only [colour, result10843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10844_agree : tree10844 = literal10844 := by
  rw [tree10844_def, tree10842_agree, tree10843_agree]
  rfl
theorem node10844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10844 live10844 coloured10844 = result10844 := by
  rw [tree10844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10842_eq
  unfold live10842 coloured10842 at child
  try dsimp only [live10844, coloured10844]
  rw [child]
  dsimp only [result10842]
  have child := node10843_eq
  unfold live10843 coloured10843 at child
  try dsimp only [live10844, coloured10844]
  rw [child]
  dsimp only [result10843]
  try dsimp only [colour, result10844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10845_agree : tree10845 = literal10845 := by
  rw [tree10845_def]
  rfl
theorem node10845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10845 live10845 coloured10845 = result10845 := by
  rw [tree10845_def]
  try dsimp only [colour, result10845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10846_agree : tree10846 = literal10846 := by
  rw [tree10846_def, tree10844_agree, tree10845_agree]
  rfl
theorem node10846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10846 live10846 coloured10846 = result10846 := by
  rw [tree10846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10844_eq
  unfold live10844 coloured10844 at child
  try dsimp only [live10846, coloured10846]
  rw [child]
  dsimp only [result10844]
  have child := node10845_eq
  unfold live10845 coloured10845 at child
  try dsimp only [live10846, coloured10846]
  rw [child]
  dsimp only [result10845]
  try dsimp only [colour, result10846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10847_agree : tree10847 = literal10847 := by
  rw [tree10847_def]
  rfl
theorem node10847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10847 live10847 coloured10847 = result10847 := by
  rw [tree10847_def]
  try dsimp only [colour, result10847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
