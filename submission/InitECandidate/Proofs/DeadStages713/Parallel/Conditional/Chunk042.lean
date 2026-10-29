import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk042
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node10752_cond_eq
    (child10746 : Flapjack.WordAlloc.removeDeadStructural input10746 value5377 value1 value2 = (output10746, value5378, value1))
    (child10751 : Flapjack.WordAlloc.removeDeadStructural input10751 value5378 value1 value2 = (output10751, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10752 value5377 value1 value2 = (output10752, value5, value1) := by
  rw [input10752_def, output10752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10746]
  dsimp only
  rw [child10751]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10746_skip, output10751_skip]
  kernel_rfl

theorem node10753_cond_eq
    (child10745 : Flapjack.WordAlloc.removeDeadStructural input10745 value5376 value1 value2 = (output10745, value5377, value1))
    (child10752 : Flapjack.WordAlloc.removeDeadStructural input10752 value5377 value1 value2 = (output10752, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10753 value5376 value1 value2 = (output10753, value5, value1) := by
  rw [input10753_def, output10753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10745]
  dsimp only
  rw [child10752]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10745_skip, output10752_skip]
  kernel_rfl

theorem node10754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10754 value5 value1 value2 = (output10754, value5381, value1) := by
  rw [input10754_def, output10754_def]
  kernel_rfl

theorem node10755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10755 value5381 value1 value2 = (output10755, value5382, value1) := by
  rw [input10755_def, output10755_def]
  kernel_rfl

theorem node10756_cond_eq
    (child10754 : Flapjack.WordAlloc.removeDeadStructural input10754 value5 value1 value2 = (output10754, value5381, value1))
    (child10755 : Flapjack.WordAlloc.removeDeadStructural input10755 value5381 value1 value2 = (output10755, value5382, value1)) : Flapjack.WordAlloc.removeDeadStructural input10756 value5 value1 value2 = (output10756, value5382, value1) := by
  rw [input10756_def, output10756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10754]
  dsimp only
  rw [child10755]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10754_skip, output10755_skip]
  kernel_rfl

theorem node10757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10757 value5382 value1 value2 = (output10757, value5383, value1) := by
  rw [input10757_def, output10757_def]
  kernel_rfl

theorem node10758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10758 value5383 value1 value2 = (output10758, value5383, value1) := by
  rw [input10758_def, output10758_def]
  kernel_rfl

theorem node10759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10759 value5383 value1 value2 = (output10759, value5384, value1) := by
  rw [input10759_def, output10759_def]
  kernel_rfl

theorem node10760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10760 value5384 value1 value2 = (output10760, value5385, value1) := by
  rw [input10760_def, output10760_def]
  kernel_rfl

theorem node10761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10761 value5385 value1 value2 = (output10761, value5386, value1) := by
  rw [input10761_def, output10761_def]
  kernel_rfl

theorem node10762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10762 value5386 value1 value2 = (output10762, value5387, value1) := by
  rw [input10762_def, output10762_def]
  kernel_rfl

theorem node10763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10763 value5387 value1 value2 = (output10763, value5, value1) := by
  rw [input10763_def, output10763_def]
  kernel_rfl

theorem node10764_cond_eq
    (child10762 : Flapjack.WordAlloc.removeDeadStructural input10762 value5386 value1 value2 = (output10762, value5387, value1))
    (child10763 : Flapjack.WordAlloc.removeDeadStructural input10763 value5387 value1 value2 = (output10763, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10764 value5386 value1 value2 = (output10764, value5, value1) := by
  rw [input10764_def, output10764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10762]
  dsimp only
  rw [child10763]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10762_skip, output10763_skip]
  kernel_rfl

theorem node10765_cond_eq
    (child10761 : Flapjack.WordAlloc.removeDeadStructural input10761 value5385 value1 value2 = (output10761, value5386, value1))
    (child10764 : Flapjack.WordAlloc.removeDeadStructural input10764 value5386 value1 value2 = (output10764, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10765 value5385 value1 value2 = (output10765, value5, value1) := by
  rw [input10765_def, output10765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10761]
  dsimp only
  rw [child10764]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10761_skip, output10764_skip]
  kernel_rfl

theorem node10766_cond_eq
    (child10760 : Flapjack.WordAlloc.removeDeadStructural input10760 value5384 value1 value2 = (output10760, value5385, value1))
    (child10765 : Flapjack.WordAlloc.removeDeadStructural input10765 value5385 value1 value2 = (output10765, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10766 value5384 value1 value2 = (output10766, value5, value1) := by
  rw [input10766_def, output10766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10760]
  dsimp only
  rw [child10765]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10760_skip, output10765_skip]
  kernel_rfl

theorem node10767_cond_eq
    (child10759 : Flapjack.WordAlloc.removeDeadStructural input10759 value5383 value1 value2 = (output10759, value5384, value1))
    (child10766 : Flapjack.WordAlloc.removeDeadStructural input10766 value5384 value1 value2 = (output10766, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10767 value5383 value1 value2 = (output10767, value5, value1) := by
  rw [input10767_def, output10767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10759]
  dsimp only
  rw [child10766]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10759_skip, output10766_skip]
  kernel_rfl

theorem node10768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10768 value5 value1 value2 = (output10768, value5388, value1) := by
  rw [input10768_def, output10768_def]
  kernel_rfl

theorem node10769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10769 value5388 value1 value2 = (output10769, value5389, value1) := by
  rw [input10769_def, output10769_def]
  kernel_rfl

theorem node10770_cond_eq
    (child10768 : Flapjack.WordAlloc.removeDeadStructural input10768 value5 value1 value2 = (output10768, value5388, value1))
    (child10769 : Flapjack.WordAlloc.removeDeadStructural input10769 value5388 value1 value2 = (output10769, value5389, value1)) : Flapjack.WordAlloc.removeDeadStructural input10770 value5 value1 value2 = (output10770, value5389, value1) := by
  rw [input10770_def, output10770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10768]
  dsimp only
  rw [child10769]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10768_skip, output10769_skip]
  kernel_rfl

theorem node10771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10771 value5389 value1 value2 = (output10771, value5390, value1) := by
  rw [input10771_def, output10771_def]
  kernel_rfl

theorem node10772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10772 value5390 value1 value2 = (output10772, value5390, value1) := by
  rw [input10772_def, output10772_def]
  kernel_rfl

theorem node10773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10773 value5390 value1 value2 = (output10773, value5391, value1) := by
  rw [input10773_def, output10773_def]
  kernel_rfl

theorem node10774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10774 value5391 value1 value2 = (output10774, value5392, value1) := by
  rw [input10774_def, output10774_def]
  kernel_rfl

theorem node10775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10775 value5392 value1 value2 = (output10775, value5393, value1) := by
  rw [input10775_def, output10775_def]
  kernel_rfl

theorem node10776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10776 value5393 value1 value2 = (output10776, value5394, value1) := by
  rw [input10776_def, output10776_def]
  kernel_rfl

theorem node10777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10777 value5394 value1 value2 = (output10777, value5, value1) := by
  rw [input10777_def, output10777_def]
  kernel_rfl

theorem node10778_cond_eq
    (child10776 : Flapjack.WordAlloc.removeDeadStructural input10776 value5393 value1 value2 = (output10776, value5394, value1))
    (child10777 : Flapjack.WordAlloc.removeDeadStructural input10777 value5394 value1 value2 = (output10777, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10778 value5393 value1 value2 = (output10778, value5, value1) := by
  rw [input10778_def, output10778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10776]
  dsimp only
  rw [child10777]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10776_skip, output10777_skip]
  kernel_rfl

theorem node10779_cond_eq
    (child10775 : Flapjack.WordAlloc.removeDeadStructural input10775 value5392 value1 value2 = (output10775, value5393, value1))
    (child10778 : Flapjack.WordAlloc.removeDeadStructural input10778 value5393 value1 value2 = (output10778, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10779 value5392 value1 value2 = (output10779, value5, value1) := by
  rw [input10779_def, output10779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10775]
  dsimp only
  rw [child10778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10775_skip, output10778_skip]
  kernel_rfl

theorem node10780_cond_eq
    (child10774 : Flapjack.WordAlloc.removeDeadStructural input10774 value5391 value1 value2 = (output10774, value5392, value1))
    (child10779 : Flapjack.WordAlloc.removeDeadStructural input10779 value5392 value1 value2 = (output10779, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10780 value5391 value1 value2 = (output10780, value5, value1) := by
  rw [input10780_def, output10780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10774]
  dsimp only
  rw [child10779]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10774_skip, output10779_skip]
  kernel_rfl

theorem node10781_cond_eq
    (child10773 : Flapjack.WordAlloc.removeDeadStructural input10773 value5390 value1 value2 = (output10773, value5391, value1))
    (child10780 : Flapjack.WordAlloc.removeDeadStructural input10780 value5391 value1 value2 = (output10780, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10781 value5390 value1 value2 = (output10781, value5, value1) := by
  rw [input10781_def, output10781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10773]
  dsimp only
  rw [child10780]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10773_skip, output10780_skip]
  kernel_rfl

theorem node10782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10782 value5 value1 value2 = (output10782, value5395, value1) := by
  rw [input10782_def, output10782_def]
  kernel_rfl

theorem node10783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10783 value5395 value1 value2 = (output10783, value5396, value1) := by
  rw [input10783_def, output10783_def]
  kernel_rfl

theorem node10784_cond_eq
    (child10782 : Flapjack.WordAlloc.removeDeadStructural input10782 value5 value1 value2 = (output10782, value5395, value1))
    (child10783 : Flapjack.WordAlloc.removeDeadStructural input10783 value5395 value1 value2 = (output10783, value5396, value1)) : Flapjack.WordAlloc.removeDeadStructural input10784 value5 value1 value2 = (output10784, value5396, value1) := by
  rw [input10784_def, output10784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10782]
  dsimp only
  rw [child10783]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10782_skip, output10783_skip]
  kernel_rfl

theorem node10785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10785 value5396 value1 value2 = (output10785, value5397, value1) := by
  rw [input10785_def, output10785_def]
  kernel_rfl

theorem node10786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10786 value5397 value1 value2 = (output10786, value5397, value1) := by
  rw [input10786_def, output10786_def]
  kernel_rfl

theorem node10787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10787 value5397 value1 value2 = (output10787, value5398, value1) := by
  rw [input10787_def, output10787_def]
  kernel_rfl

theorem node10788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10788 value5398 value1 value2 = (output10788, value5399, value1) := by
  rw [input10788_def, output10788_def]
  kernel_rfl

theorem node10789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10789 value5399 value1 value2 = (output10789, value5400, value1) := by
  rw [input10789_def, output10789_def]
  kernel_rfl

theorem node10790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10790 value5400 value1 value2 = (output10790, value5401, value1) := by
  rw [input10790_def, output10790_def]
  kernel_rfl

theorem node10791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10791 value5401 value1 value2 = (output10791, value5, value1) := by
  rw [input10791_def, output10791_def]
  kernel_rfl

theorem node10792_cond_eq
    (child10790 : Flapjack.WordAlloc.removeDeadStructural input10790 value5400 value1 value2 = (output10790, value5401, value1))
    (child10791 : Flapjack.WordAlloc.removeDeadStructural input10791 value5401 value1 value2 = (output10791, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10792 value5400 value1 value2 = (output10792, value5, value1) := by
  rw [input10792_def, output10792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10790]
  dsimp only
  rw [child10791]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10790_skip, output10791_skip]
  kernel_rfl

theorem node10793_cond_eq
    (child10789 : Flapjack.WordAlloc.removeDeadStructural input10789 value5399 value1 value2 = (output10789, value5400, value1))
    (child10792 : Flapjack.WordAlloc.removeDeadStructural input10792 value5400 value1 value2 = (output10792, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10793 value5399 value1 value2 = (output10793, value5, value1) := by
  rw [input10793_def, output10793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10789]
  dsimp only
  rw [child10792]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10789_skip, output10792_skip]
  kernel_rfl

theorem node10794_cond_eq
    (child10788 : Flapjack.WordAlloc.removeDeadStructural input10788 value5398 value1 value2 = (output10788, value5399, value1))
    (child10793 : Flapjack.WordAlloc.removeDeadStructural input10793 value5399 value1 value2 = (output10793, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10794 value5398 value1 value2 = (output10794, value5, value1) := by
  rw [input10794_def, output10794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10788]
  dsimp only
  rw [child10793]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10788_skip, output10793_skip]
  kernel_rfl

theorem node10795_cond_eq
    (child10787 : Flapjack.WordAlloc.removeDeadStructural input10787 value5397 value1 value2 = (output10787, value5398, value1))
    (child10794 : Flapjack.WordAlloc.removeDeadStructural input10794 value5398 value1 value2 = (output10794, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10795 value5397 value1 value2 = (output10795, value5, value1) := by
  rw [input10795_def, output10795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10787]
  dsimp only
  rw [child10794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10787_skip, output10794_skip]
  kernel_rfl

theorem node10796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10796 value5 value1 value2 = (output10796, value5402, value1) := by
  rw [input10796_def, output10796_def]
  kernel_rfl

theorem node10797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10797 value5402 value1 value2 = (output10797, value5403, value1) := by
  rw [input10797_def, output10797_def]
  kernel_rfl

theorem node10798_cond_eq
    (child10796 : Flapjack.WordAlloc.removeDeadStructural input10796 value5 value1 value2 = (output10796, value5402, value1))
    (child10797 : Flapjack.WordAlloc.removeDeadStructural input10797 value5402 value1 value2 = (output10797, value5403, value1)) : Flapjack.WordAlloc.removeDeadStructural input10798 value5 value1 value2 = (output10798, value5403, value1) := by
  rw [input10798_def, output10798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10796]
  dsimp only
  rw [child10797]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10796_skip, output10797_skip]
  kernel_rfl

theorem node10799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10799 value5403 value1 value2 = (output10799, value5404, value1) := by
  rw [input10799_def, output10799_def]
  kernel_rfl

theorem node10800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10800 value5404 value1 value2 = (output10800, value5404, value1) := by
  rw [input10800_def, output10800_def]
  kernel_rfl

theorem node10801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10801 value5404 value1 value2 = (output10801, value5405, value1) := by
  rw [input10801_def, output10801_def]
  kernel_rfl

theorem node10802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10802 value5405 value1 value2 = (output10802, value5406, value1) := by
  rw [input10802_def, output10802_def]
  kernel_rfl

theorem node10803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10803 value5406 value1 value2 = (output10803, value5407, value1) := by
  rw [input10803_def, output10803_def]
  kernel_rfl

theorem node10804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10804 value5407 value1 value2 = (output10804, value5408, value1) := by
  rw [input10804_def, output10804_def]
  kernel_rfl

theorem node10805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10805 value5408 value1 value2 = (output10805, value5, value1) := by
  rw [input10805_def, output10805_def]
  kernel_rfl

theorem node10806_cond_eq
    (child10804 : Flapjack.WordAlloc.removeDeadStructural input10804 value5407 value1 value2 = (output10804, value5408, value1))
    (child10805 : Flapjack.WordAlloc.removeDeadStructural input10805 value5408 value1 value2 = (output10805, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10806 value5407 value1 value2 = (output10806, value5, value1) := by
  rw [input10806_def, output10806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10804]
  dsimp only
  rw [child10805]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10804_skip, output10805_skip]
  kernel_rfl

theorem node10807_cond_eq
    (child10803 : Flapjack.WordAlloc.removeDeadStructural input10803 value5406 value1 value2 = (output10803, value5407, value1))
    (child10806 : Flapjack.WordAlloc.removeDeadStructural input10806 value5407 value1 value2 = (output10806, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10807 value5406 value1 value2 = (output10807, value5, value1) := by
  rw [input10807_def, output10807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10803]
  dsimp only
  rw [child10806]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10803_skip, output10806_skip]
  kernel_rfl

theorem node10808_cond_eq
    (child10802 : Flapjack.WordAlloc.removeDeadStructural input10802 value5405 value1 value2 = (output10802, value5406, value1))
    (child10807 : Flapjack.WordAlloc.removeDeadStructural input10807 value5406 value1 value2 = (output10807, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10808 value5405 value1 value2 = (output10808, value5, value1) := by
  rw [input10808_def, output10808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10802]
  dsimp only
  rw [child10807]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10802_skip, output10807_skip]
  kernel_rfl

theorem node10809_cond_eq
    (child10801 : Flapjack.WordAlloc.removeDeadStructural input10801 value5404 value1 value2 = (output10801, value5405, value1))
    (child10808 : Flapjack.WordAlloc.removeDeadStructural input10808 value5405 value1 value2 = (output10808, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10809 value5404 value1 value2 = (output10809, value5, value1) := by
  rw [input10809_def, output10809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10801]
  dsimp only
  rw [child10808]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10801_skip, output10808_skip]
  kernel_rfl

theorem node10810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10810 value5 value1 value2 = (output10810, value5409, value1) := by
  rw [input10810_def, output10810_def]
  kernel_rfl

theorem node10811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10811 value5409 value1 value2 = (output10811, value5410, value1) := by
  rw [input10811_def, output10811_def]
  kernel_rfl

theorem node10812_cond_eq
    (child10810 : Flapjack.WordAlloc.removeDeadStructural input10810 value5 value1 value2 = (output10810, value5409, value1))
    (child10811 : Flapjack.WordAlloc.removeDeadStructural input10811 value5409 value1 value2 = (output10811, value5410, value1)) : Flapjack.WordAlloc.removeDeadStructural input10812 value5 value1 value2 = (output10812, value5410, value1) := by
  rw [input10812_def, output10812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10810]
  dsimp only
  rw [child10811]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10810_skip, output10811_skip]
  kernel_rfl

theorem node10813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10813 value5410 value1 value2 = (output10813, value5411, value1) := by
  rw [input10813_def, output10813_def]
  kernel_rfl

theorem node10814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10814 value5411 value1 value2 = (output10814, value5411, value1) := by
  rw [input10814_def, output10814_def]
  kernel_rfl

theorem node10815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10815 value5411 value1 value2 = (output10815, value5412, value1) := by
  rw [input10815_def, output10815_def]
  kernel_rfl

theorem node10816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10816 value5412 value1 value2 = (output10816, value5413, value1) := by
  rw [input10816_def, output10816_def]
  kernel_rfl

theorem node10817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10817 value5413 value1 value2 = (output10817, value5414, value1) := by
  rw [input10817_def, output10817_def]
  kernel_rfl

theorem node10818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10818 value5414 value1 value2 = (output10818, value5415, value1) := by
  rw [input10818_def, output10818_def]
  kernel_rfl

theorem node10819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10819 value5415 value1 value2 = (output10819, value5, value1) := by
  rw [input10819_def, output10819_def]
  kernel_rfl

theorem node10820_cond_eq
    (child10818 : Flapjack.WordAlloc.removeDeadStructural input10818 value5414 value1 value2 = (output10818, value5415, value1))
    (child10819 : Flapjack.WordAlloc.removeDeadStructural input10819 value5415 value1 value2 = (output10819, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10820 value5414 value1 value2 = (output10820, value5, value1) := by
  rw [input10820_def, output10820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10818]
  dsimp only
  rw [child10819]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10818_skip, output10819_skip]
  kernel_rfl

theorem node10821_cond_eq
    (child10817 : Flapjack.WordAlloc.removeDeadStructural input10817 value5413 value1 value2 = (output10817, value5414, value1))
    (child10820 : Flapjack.WordAlloc.removeDeadStructural input10820 value5414 value1 value2 = (output10820, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10821 value5413 value1 value2 = (output10821, value5, value1) := by
  rw [input10821_def, output10821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10817]
  dsimp only
  rw [child10820]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10817_skip, output10820_skip]
  kernel_rfl

theorem node10822_cond_eq
    (child10816 : Flapjack.WordAlloc.removeDeadStructural input10816 value5412 value1 value2 = (output10816, value5413, value1))
    (child10821 : Flapjack.WordAlloc.removeDeadStructural input10821 value5413 value1 value2 = (output10821, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10822 value5412 value1 value2 = (output10822, value5, value1) := by
  rw [input10822_def, output10822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10816]
  dsimp only
  rw [child10821]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10816_skip, output10821_skip]
  kernel_rfl

theorem node10823_cond_eq
    (child10815 : Flapjack.WordAlloc.removeDeadStructural input10815 value5411 value1 value2 = (output10815, value5412, value1))
    (child10822 : Flapjack.WordAlloc.removeDeadStructural input10822 value5412 value1 value2 = (output10822, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10823 value5411 value1 value2 = (output10823, value5, value1) := by
  rw [input10823_def, output10823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10815]
  dsimp only
  rw [child10822]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10815_skip, output10822_skip]
  kernel_rfl

theorem node10824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10824 value5 value1 value2 = (output10824, value5416, value1) := by
  rw [input10824_def, output10824_def]
  kernel_rfl

theorem node10825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10825 value5416 value1 value2 = (output10825, value5417, value1) := by
  rw [input10825_def, output10825_def]
  kernel_rfl

theorem node10826_cond_eq
    (child10824 : Flapjack.WordAlloc.removeDeadStructural input10824 value5 value1 value2 = (output10824, value5416, value1))
    (child10825 : Flapjack.WordAlloc.removeDeadStructural input10825 value5416 value1 value2 = (output10825, value5417, value1)) : Flapjack.WordAlloc.removeDeadStructural input10826 value5 value1 value2 = (output10826, value5417, value1) := by
  rw [input10826_def, output10826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10824]
  dsimp only
  rw [child10825]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10824_skip, output10825_skip]
  kernel_rfl

theorem node10827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10827 value5417 value1 value2 = (output10827, value5418, value1) := by
  rw [input10827_def, output10827_def]
  kernel_rfl

theorem node10828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10828 value5418 value1 value2 = (output10828, value5418, value1) := by
  rw [input10828_def, output10828_def]
  kernel_rfl

theorem node10829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10829 value5418 value1 value2 = (output10829, value5419, value1) := by
  rw [input10829_def, output10829_def]
  kernel_rfl

theorem node10830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10830 value5419 value1 value2 = (output10830, value5420, value1) := by
  rw [input10830_def, output10830_def]
  kernel_rfl

theorem node10831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10831 value5420 value1 value2 = (output10831, value5421, value1) := by
  rw [input10831_def, output10831_def]
  kernel_rfl

theorem node10832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10832 value5421 value1 value2 = (output10832, value5422, value1) := by
  rw [input10832_def, output10832_def]
  kernel_rfl

theorem node10833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10833 value5422 value1 value2 = (output10833, value5, value1) := by
  rw [input10833_def, output10833_def]
  kernel_rfl

theorem node10834_cond_eq
    (child10832 : Flapjack.WordAlloc.removeDeadStructural input10832 value5421 value1 value2 = (output10832, value5422, value1))
    (child10833 : Flapjack.WordAlloc.removeDeadStructural input10833 value5422 value1 value2 = (output10833, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10834 value5421 value1 value2 = (output10834, value5, value1) := by
  rw [input10834_def, output10834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10832]
  dsimp only
  rw [child10833]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10832_skip, output10833_skip]
  kernel_rfl

theorem node10835_cond_eq
    (child10831 : Flapjack.WordAlloc.removeDeadStructural input10831 value5420 value1 value2 = (output10831, value5421, value1))
    (child10834 : Flapjack.WordAlloc.removeDeadStructural input10834 value5421 value1 value2 = (output10834, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10835 value5420 value1 value2 = (output10835, value5, value1) := by
  rw [input10835_def, output10835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10831]
  dsimp only
  rw [child10834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10831_skip, output10834_skip]
  kernel_rfl

theorem node10836_cond_eq
    (child10830 : Flapjack.WordAlloc.removeDeadStructural input10830 value5419 value1 value2 = (output10830, value5420, value1))
    (child10835 : Flapjack.WordAlloc.removeDeadStructural input10835 value5420 value1 value2 = (output10835, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10836 value5419 value1 value2 = (output10836, value5, value1) := by
  rw [input10836_def, output10836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10830]
  dsimp only
  rw [child10835]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10830_skip, output10835_skip]
  kernel_rfl

theorem node10837_cond_eq
    (child10829 : Flapjack.WordAlloc.removeDeadStructural input10829 value5418 value1 value2 = (output10829, value5419, value1))
    (child10836 : Flapjack.WordAlloc.removeDeadStructural input10836 value5419 value1 value2 = (output10836, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10837 value5418 value1 value2 = (output10837, value5, value1) := by
  rw [input10837_def, output10837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10829]
  dsimp only
  rw [child10836]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10829_skip, output10836_skip]
  kernel_rfl

theorem node10838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10838 value5 value1 value2 = (output10838, value5423, value1) := by
  rw [input10838_def, output10838_def]
  kernel_rfl

theorem node10839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10839 value5423 value1 value2 = (output10839, value5424, value1) := by
  rw [input10839_def, output10839_def]
  kernel_rfl

theorem node10840_cond_eq
    (child10838 : Flapjack.WordAlloc.removeDeadStructural input10838 value5 value1 value2 = (output10838, value5423, value1))
    (child10839 : Flapjack.WordAlloc.removeDeadStructural input10839 value5423 value1 value2 = (output10839, value5424, value1)) : Flapjack.WordAlloc.removeDeadStructural input10840 value5 value1 value2 = (output10840, value5424, value1) := by
  rw [input10840_def, output10840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10838]
  dsimp only
  rw [child10839]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10838_skip, output10839_skip]
  kernel_rfl

theorem node10841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10841 value5424 value1 value2 = (output10841, value5425, value1) := by
  rw [input10841_def, output10841_def]
  kernel_rfl

theorem node10842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10842 value5425 value1 value2 = (output10842, value5425, value1) := by
  rw [input10842_def, output10842_def]
  kernel_rfl

theorem node10843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10843 value5425 value1 value2 = (output10843, value5426, value1) := by
  rw [input10843_def, output10843_def]
  kernel_rfl

theorem node10844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10844 value5426 value1 value2 = (output10844, value5427, value1) := by
  rw [input10844_def, output10844_def]
  kernel_rfl

theorem node10845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10845 value5427 value1 value2 = (output10845, value5428, value1) := by
  rw [input10845_def, output10845_def]
  kernel_rfl

theorem node10846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10846 value5428 value1 value2 = (output10846, value5429, value1) := by
  rw [input10846_def, output10846_def]
  kernel_rfl

theorem node10847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10847 value5429 value1 value2 = (output10847, value5, value1) := by
  rw [input10847_def, output10847_def]
  kernel_rfl

theorem node10848_cond_eq
    (child10846 : Flapjack.WordAlloc.removeDeadStructural input10846 value5428 value1 value2 = (output10846, value5429, value1))
    (child10847 : Flapjack.WordAlloc.removeDeadStructural input10847 value5429 value1 value2 = (output10847, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10848 value5428 value1 value2 = (output10848, value5, value1) := by
  rw [input10848_def, output10848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10846]
  dsimp only
  rw [child10847]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10846_skip, output10847_skip]
  kernel_rfl

theorem node10849_cond_eq
    (child10845 : Flapjack.WordAlloc.removeDeadStructural input10845 value5427 value1 value2 = (output10845, value5428, value1))
    (child10848 : Flapjack.WordAlloc.removeDeadStructural input10848 value5428 value1 value2 = (output10848, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10849 value5427 value1 value2 = (output10849, value5, value1) := by
  rw [input10849_def, output10849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10845]
  dsimp only
  rw [child10848]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10845_skip, output10848_skip]
  kernel_rfl

theorem node10850_cond_eq
    (child10844 : Flapjack.WordAlloc.removeDeadStructural input10844 value5426 value1 value2 = (output10844, value5427, value1))
    (child10849 : Flapjack.WordAlloc.removeDeadStructural input10849 value5427 value1 value2 = (output10849, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10850 value5426 value1 value2 = (output10850, value5, value1) := by
  rw [input10850_def, output10850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10844]
  dsimp only
  rw [child10849]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10844_skip, output10849_skip]
  kernel_rfl

theorem node10851_cond_eq
    (child10843 : Flapjack.WordAlloc.removeDeadStructural input10843 value5425 value1 value2 = (output10843, value5426, value1))
    (child10850 : Flapjack.WordAlloc.removeDeadStructural input10850 value5426 value1 value2 = (output10850, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10851 value5425 value1 value2 = (output10851, value5, value1) := by
  rw [input10851_def, output10851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10843]
  dsimp only
  rw [child10850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10843_skip, output10850_skip]
  kernel_rfl

theorem node10852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10852 value5 value1 value2 = (output10852, value5430, value1) := by
  rw [input10852_def, output10852_def]
  kernel_rfl

theorem node10853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10853 value5430 value1 value2 = (output10853, value5431, value1) := by
  rw [input10853_def, output10853_def]
  kernel_rfl

theorem node10854_cond_eq
    (child10852 : Flapjack.WordAlloc.removeDeadStructural input10852 value5 value1 value2 = (output10852, value5430, value1))
    (child10853 : Flapjack.WordAlloc.removeDeadStructural input10853 value5430 value1 value2 = (output10853, value5431, value1)) : Flapjack.WordAlloc.removeDeadStructural input10854 value5 value1 value2 = (output10854, value5431, value1) := by
  rw [input10854_def, output10854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10852]
  dsimp only
  rw [child10853]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10852_skip, output10853_skip]
  kernel_rfl

theorem node10855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10855 value5431 value1 value2 = (output10855, value5432, value1) := by
  rw [input10855_def, output10855_def]
  kernel_rfl

theorem node10856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10856 value5432 value1 value2 = (output10856, value5432, value1) := by
  rw [input10856_def, output10856_def]
  kernel_rfl

theorem node10857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10857 value5432 value1 value2 = (output10857, value5433, value1) := by
  rw [input10857_def, output10857_def]
  kernel_rfl

theorem node10858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10858 value5433 value1 value2 = (output10858, value5434, value1) := by
  rw [input10858_def, output10858_def]
  kernel_rfl

theorem node10859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10859 value5434 value1 value2 = (output10859, value5435, value1) := by
  rw [input10859_def, output10859_def]
  kernel_rfl

theorem node10860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10860 value5435 value1 value2 = (output10860, value5436, value1) := by
  rw [input10860_def, output10860_def]
  kernel_rfl

theorem node10861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10861 value5436 value1 value2 = (output10861, value5, value1) := by
  rw [input10861_def, output10861_def]
  kernel_rfl

theorem node10862_cond_eq
    (child10860 : Flapjack.WordAlloc.removeDeadStructural input10860 value5435 value1 value2 = (output10860, value5436, value1))
    (child10861 : Flapjack.WordAlloc.removeDeadStructural input10861 value5436 value1 value2 = (output10861, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10862 value5435 value1 value2 = (output10862, value5, value1) := by
  rw [input10862_def, output10862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10860]
  dsimp only
  rw [child10861]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10860_skip, output10861_skip]
  kernel_rfl

theorem node10863_cond_eq
    (child10859 : Flapjack.WordAlloc.removeDeadStructural input10859 value5434 value1 value2 = (output10859, value5435, value1))
    (child10862 : Flapjack.WordAlloc.removeDeadStructural input10862 value5435 value1 value2 = (output10862, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10863 value5434 value1 value2 = (output10863, value5, value1) := by
  rw [input10863_def, output10863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10859]
  dsimp only
  rw [child10862]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10859_skip, output10862_skip]
  kernel_rfl

theorem node10864_cond_eq
    (child10858 : Flapjack.WordAlloc.removeDeadStructural input10858 value5433 value1 value2 = (output10858, value5434, value1))
    (child10863 : Flapjack.WordAlloc.removeDeadStructural input10863 value5434 value1 value2 = (output10863, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10864 value5433 value1 value2 = (output10864, value5, value1) := by
  rw [input10864_def, output10864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10858]
  dsimp only
  rw [child10863]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10858_skip, output10863_skip]
  kernel_rfl

theorem node10865_cond_eq
    (child10857 : Flapjack.WordAlloc.removeDeadStructural input10857 value5432 value1 value2 = (output10857, value5433, value1))
    (child10864 : Flapjack.WordAlloc.removeDeadStructural input10864 value5433 value1 value2 = (output10864, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10865 value5432 value1 value2 = (output10865, value5, value1) := by
  rw [input10865_def, output10865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10857]
  dsimp only
  rw [child10864]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10857_skip, output10864_skip]
  kernel_rfl

theorem node10866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10866 value5 value1 value2 = (output10866, value5437, value1) := by
  rw [input10866_def, output10866_def]
  kernel_rfl

theorem node10867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10867 value5437 value1 value2 = (output10867, value5438, value1) := by
  rw [input10867_def, output10867_def]
  kernel_rfl

theorem node10868_cond_eq
    (child10866 : Flapjack.WordAlloc.removeDeadStructural input10866 value5 value1 value2 = (output10866, value5437, value1))
    (child10867 : Flapjack.WordAlloc.removeDeadStructural input10867 value5437 value1 value2 = (output10867, value5438, value1)) : Flapjack.WordAlloc.removeDeadStructural input10868 value5 value1 value2 = (output10868, value5438, value1) := by
  rw [input10868_def, output10868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10866]
  dsimp only
  rw [child10867]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10866_skip, output10867_skip]
  kernel_rfl

theorem node10869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10869 value5438 value1 value2 = (output10869, value5439, value1) := by
  rw [input10869_def, output10869_def]
  kernel_rfl

theorem node10870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10870 value5439 value1 value2 = (output10870, value5439, value1) := by
  rw [input10870_def, output10870_def]
  kernel_rfl

theorem node10871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10871 value5439 value1 value2 = (output10871, value5440, value1) := by
  rw [input10871_def, output10871_def]
  kernel_rfl

theorem node10872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10872 value5440 value1 value2 = (output10872, value5441, value1) := by
  rw [input10872_def, output10872_def]
  kernel_rfl

theorem node10873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10873 value5441 value1 value2 = (output10873, value5442, value1) := by
  rw [input10873_def, output10873_def]
  kernel_rfl

theorem node10874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10874 value5442 value1 value2 = (output10874, value5443, value1) := by
  rw [input10874_def, output10874_def]
  kernel_rfl

theorem node10875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10875 value5443 value1 value2 = (output10875, value5, value1) := by
  rw [input10875_def, output10875_def]
  kernel_rfl

theorem node10876_cond_eq
    (child10874 : Flapjack.WordAlloc.removeDeadStructural input10874 value5442 value1 value2 = (output10874, value5443, value1))
    (child10875 : Flapjack.WordAlloc.removeDeadStructural input10875 value5443 value1 value2 = (output10875, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10876 value5442 value1 value2 = (output10876, value5, value1) := by
  rw [input10876_def, output10876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10874]
  dsimp only
  rw [child10875]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10874_skip, output10875_skip]
  kernel_rfl

theorem node10877_cond_eq
    (child10873 : Flapjack.WordAlloc.removeDeadStructural input10873 value5441 value1 value2 = (output10873, value5442, value1))
    (child10876 : Flapjack.WordAlloc.removeDeadStructural input10876 value5442 value1 value2 = (output10876, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10877 value5441 value1 value2 = (output10877, value5, value1) := by
  rw [input10877_def, output10877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10873]
  dsimp only
  rw [child10876]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10873_skip, output10876_skip]
  kernel_rfl

theorem node10878_cond_eq
    (child10872 : Flapjack.WordAlloc.removeDeadStructural input10872 value5440 value1 value2 = (output10872, value5441, value1))
    (child10877 : Flapjack.WordAlloc.removeDeadStructural input10877 value5441 value1 value2 = (output10877, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10878 value5440 value1 value2 = (output10878, value5, value1) := by
  rw [input10878_def, output10878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10872]
  dsimp only
  rw [child10877]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10872_skip, output10877_skip]
  kernel_rfl

theorem node10879_cond_eq
    (child10871 : Flapjack.WordAlloc.removeDeadStructural input10871 value5439 value1 value2 = (output10871, value5440, value1))
    (child10878 : Flapjack.WordAlloc.removeDeadStructural input10878 value5440 value1 value2 = (output10878, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10879 value5439 value1 value2 = (output10879, value5, value1) := by
  rw [input10879_def, output10879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10871]
  dsimp only
  rw [child10878]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10871_skip, output10878_skip]
  kernel_rfl

theorem node10880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10880 value5 value1 value2 = (output10880, value5444, value1) := by
  rw [input10880_def, output10880_def]
  kernel_rfl

theorem node10881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10881 value5444 value1 value2 = (output10881, value5445, value1) := by
  rw [input10881_def, output10881_def]
  kernel_rfl

theorem node10882_cond_eq
    (child10880 : Flapjack.WordAlloc.removeDeadStructural input10880 value5 value1 value2 = (output10880, value5444, value1))
    (child10881 : Flapjack.WordAlloc.removeDeadStructural input10881 value5444 value1 value2 = (output10881, value5445, value1)) : Flapjack.WordAlloc.removeDeadStructural input10882 value5 value1 value2 = (output10882, value5445, value1) := by
  rw [input10882_def, output10882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10880]
  dsimp only
  rw [child10881]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10880_skip, output10881_skip]
  kernel_rfl

theorem node10883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10883 value5445 value1 value2 = (output10883, value5446, value1) := by
  rw [input10883_def, output10883_def]
  kernel_rfl

theorem node10884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10884 value5446 value1 value2 = (output10884, value5446, value1) := by
  rw [input10884_def, output10884_def]
  kernel_rfl

theorem node10885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10885 value5446 value1 value2 = (output10885, value5447, value1) := by
  rw [input10885_def, output10885_def]
  kernel_rfl

theorem node10886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10886 value5447 value1 value2 = (output10886, value5448, value1) := by
  rw [input10886_def, output10886_def]
  kernel_rfl

theorem node10887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10887 value5448 value1 value2 = (output10887, value5449, value1) := by
  rw [input10887_def, output10887_def]
  kernel_rfl

theorem node10888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10888 value5449 value1 value2 = (output10888, value5450, value1) := by
  rw [input10888_def, output10888_def]
  kernel_rfl

theorem node10889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10889 value5450 value1 value2 = (output10889, value5, value1) := by
  rw [input10889_def, output10889_def]
  kernel_rfl

theorem node10890_cond_eq
    (child10888 : Flapjack.WordAlloc.removeDeadStructural input10888 value5449 value1 value2 = (output10888, value5450, value1))
    (child10889 : Flapjack.WordAlloc.removeDeadStructural input10889 value5450 value1 value2 = (output10889, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10890 value5449 value1 value2 = (output10890, value5, value1) := by
  rw [input10890_def, output10890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10888]
  dsimp only
  rw [child10889]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10888_skip, output10889_skip]
  kernel_rfl

theorem node10891_cond_eq
    (child10887 : Flapjack.WordAlloc.removeDeadStructural input10887 value5448 value1 value2 = (output10887, value5449, value1))
    (child10890 : Flapjack.WordAlloc.removeDeadStructural input10890 value5449 value1 value2 = (output10890, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10891 value5448 value1 value2 = (output10891, value5, value1) := by
  rw [input10891_def, output10891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10887]
  dsimp only
  rw [child10890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10887_skip, output10890_skip]
  kernel_rfl

theorem node10892_cond_eq
    (child10886 : Flapjack.WordAlloc.removeDeadStructural input10886 value5447 value1 value2 = (output10886, value5448, value1))
    (child10891 : Flapjack.WordAlloc.removeDeadStructural input10891 value5448 value1 value2 = (output10891, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10892 value5447 value1 value2 = (output10892, value5, value1) := by
  rw [input10892_def, output10892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10886]
  dsimp only
  rw [child10891]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10886_skip, output10891_skip]
  kernel_rfl

theorem node10893_cond_eq
    (child10885 : Flapjack.WordAlloc.removeDeadStructural input10885 value5446 value1 value2 = (output10885, value5447, value1))
    (child10892 : Flapjack.WordAlloc.removeDeadStructural input10892 value5447 value1 value2 = (output10892, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10893 value5446 value1 value2 = (output10893, value5, value1) := by
  rw [input10893_def, output10893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10885]
  dsimp only
  rw [child10892]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10885_skip, output10892_skip]
  kernel_rfl

theorem node10894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10894 value5 value1 value2 = (output10894, value5451, value1) := by
  rw [input10894_def, output10894_def]
  kernel_rfl

theorem node10895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10895 value5451 value1 value2 = (output10895, value5452, value1) := by
  rw [input10895_def, output10895_def]
  kernel_rfl

theorem node10896_cond_eq
    (child10894 : Flapjack.WordAlloc.removeDeadStructural input10894 value5 value1 value2 = (output10894, value5451, value1))
    (child10895 : Flapjack.WordAlloc.removeDeadStructural input10895 value5451 value1 value2 = (output10895, value5452, value1)) : Flapjack.WordAlloc.removeDeadStructural input10896 value5 value1 value2 = (output10896, value5452, value1) := by
  rw [input10896_def, output10896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10894]
  dsimp only
  rw [child10895]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10894_skip, output10895_skip]
  kernel_rfl

theorem node10897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10897 value5452 value1 value2 = (output10897, value5453, value1) := by
  rw [input10897_def, output10897_def]
  kernel_rfl

theorem node10898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10898 value5453 value1 value2 = (output10898, value5453, value1) := by
  rw [input10898_def, output10898_def]
  kernel_rfl

theorem node10899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10899 value5453 value1 value2 = (output10899, value5454, value1) := by
  rw [input10899_def, output10899_def]
  kernel_rfl

theorem node10900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10900 value5454 value1 value2 = (output10900, value5455, value1) := by
  rw [input10900_def, output10900_def]
  kernel_rfl

theorem node10901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10901 value5455 value1 value2 = (output10901, value5456, value1) := by
  rw [input10901_def, output10901_def]
  kernel_rfl

theorem node10902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10902 value5456 value1 value2 = (output10902, value5457, value1) := by
  rw [input10902_def, output10902_def]
  kernel_rfl

theorem node10903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10903 value5457 value1 value2 = (output10903, value5, value1) := by
  rw [input10903_def, output10903_def]
  kernel_rfl

theorem node10904_cond_eq
    (child10902 : Flapjack.WordAlloc.removeDeadStructural input10902 value5456 value1 value2 = (output10902, value5457, value1))
    (child10903 : Flapjack.WordAlloc.removeDeadStructural input10903 value5457 value1 value2 = (output10903, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10904 value5456 value1 value2 = (output10904, value5, value1) := by
  rw [input10904_def, output10904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10902]
  dsimp only
  rw [child10903]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10902_skip, output10903_skip]
  kernel_rfl

theorem node10905_cond_eq
    (child10901 : Flapjack.WordAlloc.removeDeadStructural input10901 value5455 value1 value2 = (output10901, value5456, value1))
    (child10904 : Flapjack.WordAlloc.removeDeadStructural input10904 value5456 value1 value2 = (output10904, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10905 value5455 value1 value2 = (output10905, value5, value1) := by
  rw [input10905_def, output10905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10901]
  dsimp only
  rw [child10904]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10901_skip, output10904_skip]
  kernel_rfl

theorem node10906_cond_eq
    (child10900 : Flapjack.WordAlloc.removeDeadStructural input10900 value5454 value1 value2 = (output10900, value5455, value1))
    (child10905 : Flapjack.WordAlloc.removeDeadStructural input10905 value5455 value1 value2 = (output10905, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10906 value5454 value1 value2 = (output10906, value5, value1) := by
  rw [input10906_def, output10906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10900]
  dsimp only
  rw [child10905]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10900_skip, output10905_skip]
  kernel_rfl

theorem node10907_cond_eq
    (child10899 : Flapjack.WordAlloc.removeDeadStructural input10899 value5453 value1 value2 = (output10899, value5454, value1))
    (child10906 : Flapjack.WordAlloc.removeDeadStructural input10906 value5454 value1 value2 = (output10906, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10907 value5453 value1 value2 = (output10907, value5, value1) := by
  rw [input10907_def, output10907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10899]
  dsimp only
  rw [child10906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10899_skip, output10906_skip]
  kernel_rfl

theorem node10908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10908 value5 value1 value2 = (output10908, value5458, value1) := by
  rw [input10908_def, output10908_def]
  kernel_rfl

theorem node10909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10909 value5458 value1 value2 = (output10909, value5459, value1) := by
  rw [input10909_def, output10909_def]
  kernel_rfl

theorem node10910_cond_eq
    (child10908 : Flapjack.WordAlloc.removeDeadStructural input10908 value5 value1 value2 = (output10908, value5458, value1))
    (child10909 : Flapjack.WordAlloc.removeDeadStructural input10909 value5458 value1 value2 = (output10909, value5459, value1)) : Flapjack.WordAlloc.removeDeadStructural input10910 value5 value1 value2 = (output10910, value5459, value1) := by
  rw [input10910_def, output10910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10908]
  dsimp only
  rw [child10909]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10908_skip, output10909_skip]
  kernel_rfl

theorem node10911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10911 value5459 value1 value2 = (output10911, value5460, value1) := by
  rw [input10911_def, output10911_def]
  kernel_rfl

theorem node10912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10912 value5460 value1 value2 = (output10912, value5460, value1) := by
  rw [input10912_def, output10912_def]
  kernel_rfl

theorem node10913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10913 value5460 value1 value2 = (output10913, value5461, value1) := by
  rw [input10913_def, output10913_def]
  kernel_rfl

theorem node10914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10914 value5461 value1 value2 = (output10914, value5462, value1) := by
  rw [input10914_def, output10914_def]
  kernel_rfl

theorem node10915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10915 value5462 value1 value2 = (output10915, value5463, value1) := by
  rw [input10915_def, output10915_def]
  kernel_rfl

theorem node10916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10916 value5463 value1 value2 = (output10916, value5464, value1) := by
  rw [input10916_def, output10916_def]
  kernel_rfl

theorem node10917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10917 value5464 value1 value2 = (output10917, value5, value1) := by
  rw [input10917_def, output10917_def]
  kernel_rfl

theorem node10918_cond_eq
    (child10916 : Flapjack.WordAlloc.removeDeadStructural input10916 value5463 value1 value2 = (output10916, value5464, value1))
    (child10917 : Flapjack.WordAlloc.removeDeadStructural input10917 value5464 value1 value2 = (output10917, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10918 value5463 value1 value2 = (output10918, value5, value1) := by
  rw [input10918_def, output10918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10916]
  dsimp only
  rw [child10917]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10916_skip, output10917_skip]
  kernel_rfl

theorem node10919_cond_eq
    (child10915 : Flapjack.WordAlloc.removeDeadStructural input10915 value5462 value1 value2 = (output10915, value5463, value1))
    (child10918 : Flapjack.WordAlloc.removeDeadStructural input10918 value5463 value1 value2 = (output10918, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10919 value5462 value1 value2 = (output10919, value5, value1) := by
  rw [input10919_def, output10919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10915]
  dsimp only
  rw [child10918]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10915_skip, output10918_skip]
  kernel_rfl

theorem node10920_cond_eq
    (child10914 : Flapjack.WordAlloc.removeDeadStructural input10914 value5461 value1 value2 = (output10914, value5462, value1))
    (child10919 : Flapjack.WordAlloc.removeDeadStructural input10919 value5462 value1 value2 = (output10919, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10920 value5461 value1 value2 = (output10920, value5, value1) := by
  rw [input10920_def, output10920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10914]
  dsimp only
  rw [child10919]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10914_skip, output10919_skip]
  kernel_rfl

theorem node10921_cond_eq
    (child10913 : Flapjack.WordAlloc.removeDeadStructural input10913 value5460 value1 value2 = (output10913, value5461, value1))
    (child10920 : Flapjack.WordAlloc.removeDeadStructural input10920 value5461 value1 value2 = (output10920, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10921 value5460 value1 value2 = (output10921, value5, value1) := by
  rw [input10921_def, output10921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10913]
  dsimp only
  rw [child10920]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10913_skip, output10920_skip]
  kernel_rfl

theorem node10922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10922 value5 value1 value2 = (output10922, value5465, value1) := by
  rw [input10922_def, output10922_def]
  kernel_rfl

theorem node10923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10923 value5465 value1 value2 = (output10923, value5466, value1) := by
  rw [input10923_def, output10923_def]
  kernel_rfl

theorem node10924_cond_eq
    (child10922 : Flapjack.WordAlloc.removeDeadStructural input10922 value5 value1 value2 = (output10922, value5465, value1))
    (child10923 : Flapjack.WordAlloc.removeDeadStructural input10923 value5465 value1 value2 = (output10923, value5466, value1)) : Flapjack.WordAlloc.removeDeadStructural input10924 value5 value1 value2 = (output10924, value5466, value1) := by
  rw [input10924_def, output10924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10922]
  dsimp only
  rw [child10923]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10922_skip, output10923_skip]
  kernel_rfl

theorem node10925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10925 value5466 value1 value2 = (output10925, value5467, value1) := by
  rw [input10925_def, output10925_def]
  kernel_rfl

theorem node10926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10926 value5467 value1 value2 = (output10926, value5467, value1) := by
  rw [input10926_def, output10926_def]
  kernel_rfl

theorem node10927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10927 value5467 value1 value2 = (output10927, value5468, value1) := by
  rw [input10927_def, output10927_def]
  kernel_rfl

theorem node10928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10928 value5468 value1 value2 = (output10928, value5469, value1) := by
  rw [input10928_def, output10928_def]
  kernel_rfl

theorem node10929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10929 value5469 value1 value2 = (output10929, value5470, value1) := by
  rw [input10929_def, output10929_def]
  kernel_rfl

theorem node10930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10930 value5470 value1 value2 = (output10930, value5471, value1) := by
  rw [input10930_def, output10930_def]
  kernel_rfl

theorem node10931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10931 value5471 value1 value2 = (output10931, value5, value1) := by
  rw [input10931_def, output10931_def]
  kernel_rfl

theorem node10932_cond_eq
    (child10930 : Flapjack.WordAlloc.removeDeadStructural input10930 value5470 value1 value2 = (output10930, value5471, value1))
    (child10931 : Flapjack.WordAlloc.removeDeadStructural input10931 value5471 value1 value2 = (output10931, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10932 value5470 value1 value2 = (output10932, value5, value1) := by
  rw [input10932_def, output10932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10930]
  dsimp only
  rw [child10931]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10930_skip, output10931_skip]
  kernel_rfl

theorem node10933_cond_eq
    (child10929 : Flapjack.WordAlloc.removeDeadStructural input10929 value5469 value1 value2 = (output10929, value5470, value1))
    (child10932 : Flapjack.WordAlloc.removeDeadStructural input10932 value5470 value1 value2 = (output10932, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10933 value5469 value1 value2 = (output10933, value5, value1) := by
  rw [input10933_def, output10933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10929]
  dsimp only
  rw [child10932]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10929_skip, output10932_skip]
  kernel_rfl

theorem node10934_cond_eq
    (child10928 : Flapjack.WordAlloc.removeDeadStructural input10928 value5468 value1 value2 = (output10928, value5469, value1))
    (child10933 : Flapjack.WordAlloc.removeDeadStructural input10933 value5469 value1 value2 = (output10933, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10934 value5468 value1 value2 = (output10934, value5, value1) := by
  rw [input10934_def, output10934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10928]
  dsimp only
  rw [child10933]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10928_skip, output10933_skip]
  kernel_rfl

theorem node10935_cond_eq
    (child10927 : Flapjack.WordAlloc.removeDeadStructural input10927 value5467 value1 value2 = (output10927, value5468, value1))
    (child10934 : Flapjack.WordAlloc.removeDeadStructural input10934 value5468 value1 value2 = (output10934, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10935 value5467 value1 value2 = (output10935, value5, value1) := by
  rw [input10935_def, output10935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10927]
  dsimp only
  rw [child10934]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10927_skip, output10934_skip]
  kernel_rfl

theorem node10936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10936 value5 value1 value2 = (output10936, value5472, value1) := by
  rw [input10936_def, output10936_def]
  kernel_rfl

theorem node10937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10937 value5472 value1 value2 = (output10937, value5473, value1) := by
  rw [input10937_def, output10937_def]
  kernel_rfl

theorem node10938_cond_eq
    (child10936 : Flapjack.WordAlloc.removeDeadStructural input10936 value5 value1 value2 = (output10936, value5472, value1))
    (child10937 : Flapjack.WordAlloc.removeDeadStructural input10937 value5472 value1 value2 = (output10937, value5473, value1)) : Flapjack.WordAlloc.removeDeadStructural input10938 value5 value1 value2 = (output10938, value5473, value1) := by
  rw [input10938_def, output10938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10936]
  dsimp only
  rw [child10937]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10936_skip, output10937_skip]
  kernel_rfl

theorem node10939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10939 value5473 value1 value2 = (output10939, value5474, value1) := by
  rw [input10939_def, output10939_def]
  kernel_rfl

theorem node10940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10940 value5474 value1 value2 = (output10940, value5474, value1) := by
  rw [input10940_def, output10940_def]
  kernel_rfl

theorem node10941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10941 value5474 value1 value2 = (output10941, value5475, value1) := by
  rw [input10941_def, output10941_def]
  kernel_rfl

theorem node10942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10942 value5475 value1 value2 = (output10942, value5476, value1) := by
  rw [input10942_def, output10942_def]
  kernel_rfl

theorem node10943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10943 value5476 value1 value2 = (output10943, value5477, value1) := by
  rw [input10943_def, output10943_def]
  kernel_rfl

theorem node10944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10944 value5477 value1 value2 = (output10944, value5478, value1) := by
  rw [input10944_def, output10944_def]
  kernel_rfl

theorem node10945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10945 value5478 value1 value2 = (output10945, value5, value1) := by
  rw [input10945_def, output10945_def]
  kernel_rfl

theorem node10946_cond_eq
    (child10944 : Flapjack.WordAlloc.removeDeadStructural input10944 value5477 value1 value2 = (output10944, value5478, value1))
    (child10945 : Flapjack.WordAlloc.removeDeadStructural input10945 value5478 value1 value2 = (output10945, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10946 value5477 value1 value2 = (output10946, value5, value1) := by
  rw [input10946_def, output10946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10944]
  dsimp only
  rw [child10945]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10944_skip, output10945_skip]
  kernel_rfl

theorem node10947_cond_eq
    (child10943 : Flapjack.WordAlloc.removeDeadStructural input10943 value5476 value1 value2 = (output10943, value5477, value1))
    (child10946 : Flapjack.WordAlloc.removeDeadStructural input10946 value5477 value1 value2 = (output10946, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10947 value5476 value1 value2 = (output10947, value5, value1) := by
  rw [input10947_def, output10947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10943]
  dsimp only
  rw [child10946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10943_skip, output10946_skip]
  kernel_rfl

theorem node10948_cond_eq
    (child10942 : Flapjack.WordAlloc.removeDeadStructural input10942 value5475 value1 value2 = (output10942, value5476, value1))
    (child10947 : Flapjack.WordAlloc.removeDeadStructural input10947 value5476 value1 value2 = (output10947, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10948 value5475 value1 value2 = (output10948, value5, value1) := by
  rw [input10948_def, output10948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10942]
  dsimp only
  rw [child10947]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10942_skip, output10947_skip]
  kernel_rfl

theorem node10949_cond_eq
    (child10941 : Flapjack.WordAlloc.removeDeadStructural input10941 value5474 value1 value2 = (output10941, value5475, value1))
    (child10948 : Flapjack.WordAlloc.removeDeadStructural input10948 value5475 value1 value2 = (output10948, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10949 value5474 value1 value2 = (output10949, value5, value1) := by
  rw [input10949_def, output10949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10941]
  dsimp only
  rw [child10948]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10941_skip, output10948_skip]
  kernel_rfl

theorem node10950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10950 value5 value1 value2 = (output10950, value5479, value1) := by
  rw [input10950_def, output10950_def]
  kernel_rfl

theorem node10951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10951 value5479 value1 value2 = (output10951, value5480, value1) := by
  rw [input10951_def, output10951_def]
  kernel_rfl

theorem node10952_cond_eq
    (child10950 : Flapjack.WordAlloc.removeDeadStructural input10950 value5 value1 value2 = (output10950, value5479, value1))
    (child10951 : Flapjack.WordAlloc.removeDeadStructural input10951 value5479 value1 value2 = (output10951, value5480, value1)) : Flapjack.WordAlloc.removeDeadStructural input10952 value5 value1 value2 = (output10952, value5480, value1) := by
  rw [input10952_def, output10952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10950]
  dsimp only
  rw [child10951]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10950_skip, output10951_skip]
  kernel_rfl

theorem node10953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10953 value5480 value1 value2 = (output10953, value5481, value1) := by
  rw [input10953_def, output10953_def]
  kernel_rfl

theorem node10954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10954 value5481 value1 value2 = (output10954, value5481, value1) := by
  rw [input10954_def, output10954_def]
  kernel_rfl

theorem node10955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10955 value5481 value1 value2 = (output10955, value5482, value1) := by
  rw [input10955_def, output10955_def]
  kernel_rfl

theorem node10956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10956 value5482 value1 value2 = (output10956, value5483, value1) := by
  rw [input10956_def, output10956_def]
  kernel_rfl

theorem node10957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10957 value5483 value1 value2 = (output10957, value5484, value1) := by
  rw [input10957_def, output10957_def]
  kernel_rfl

theorem node10958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10958 value5484 value1 value2 = (output10958, value5485, value1) := by
  rw [input10958_def, output10958_def]
  kernel_rfl

theorem node10959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10959 value5485 value1 value2 = (output10959, value5, value1) := by
  rw [input10959_def, output10959_def]
  kernel_rfl

theorem node10960_cond_eq
    (child10958 : Flapjack.WordAlloc.removeDeadStructural input10958 value5484 value1 value2 = (output10958, value5485, value1))
    (child10959 : Flapjack.WordAlloc.removeDeadStructural input10959 value5485 value1 value2 = (output10959, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10960 value5484 value1 value2 = (output10960, value5, value1) := by
  rw [input10960_def, output10960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10958]
  dsimp only
  rw [child10959]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10958_skip, output10959_skip]
  kernel_rfl

theorem node10961_cond_eq
    (child10957 : Flapjack.WordAlloc.removeDeadStructural input10957 value5483 value1 value2 = (output10957, value5484, value1))
    (child10960 : Flapjack.WordAlloc.removeDeadStructural input10960 value5484 value1 value2 = (output10960, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10961 value5483 value1 value2 = (output10961, value5, value1) := by
  rw [input10961_def, output10961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10957]
  dsimp only
  rw [child10960]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10957_skip, output10960_skip]
  kernel_rfl

theorem node10962_cond_eq
    (child10956 : Flapjack.WordAlloc.removeDeadStructural input10956 value5482 value1 value2 = (output10956, value5483, value1))
    (child10961 : Flapjack.WordAlloc.removeDeadStructural input10961 value5483 value1 value2 = (output10961, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10962 value5482 value1 value2 = (output10962, value5, value1) := by
  rw [input10962_def, output10962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10956]
  dsimp only
  rw [child10961]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10956_skip, output10961_skip]
  kernel_rfl

theorem node10963_cond_eq
    (child10955 : Flapjack.WordAlloc.removeDeadStructural input10955 value5481 value1 value2 = (output10955, value5482, value1))
    (child10962 : Flapjack.WordAlloc.removeDeadStructural input10962 value5482 value1 value2 = (output10962, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10963 value5481 value1 value2 = (output10963, value5, value1) := by
  rw [input10963_def, output10963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10955]
  dsimp only
  rw [child10962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10955_skip, output10962_skip]
  kernel_rfl

theorem node10964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10964 value5 value1 value2 = (output10964, value5486, value1) := by
  rw [input10964_def, output10964_def]
  kernel_rfl

theorem node10965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10965 value5486 value1 value2 = (output10965, value5487, value1) := by
  rw [input10965_def, output10965_def]
  kernel_rfl

theorem node10966_cond_eq
    (child10964 : Flapjack.WordAlloc.removeDeadStructural input10964 value5 value1 value2 = (output10964, value5486, value1))
    (child10965 : Flapjack.WordAlloc.removeDeadStructural input10965 value5486 value1 value2 = (output10965, value5487, value1)) : Flapjack.WordAlloc.removeDeadStructural input10966 value5 value1 value2 = (output10966, value5487, value1) := by
  rw [input10966_def, output10966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10964]
  dsimp only
  rw [child10965]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10964_skip, output10965_skip]
  kernel_rfl

theorem node10967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10967 value5487 value1 value2 = (output10967, value5488, value1) := by
  rw [input10967_def, output10967_def]
  kernel_rfl

theorem node10968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10968 value5488 value1 value2 = (output10968, value5488, value1) := by
  rw [input10968_def, output10968_def]
  kernel_rfl

theorem node10969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10969 value5488 value1 value2 = (output10969, value5489, value1) := by
  rw [input10969_def, output10969_def]
  kernel_rfl

theorem node10970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10970 value5489 value1 value2 = (output10970, value5490, value1) := by
  rw [input10970_def, output10970_def]
  kernel_rfl

theorem node10971_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10971 value5490 value1 value2 = (output10971, value5491, value1) := by
  rw [input10971_def, output10971_def]
  kernel_rfl

theorem node10972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10972 value5491 value1 value2 = (output10972, value5492, value1) := by
  rw [input10972_def, output10972_def]
  kernel_rfl

theorem node10973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10973 value5492 value1 value2 = (output10973, value5, value1) := by
  rw [input10973_def, output10973_def]
  kernel_rfl

theorem node10974_cond_eq
    (child10972 : Flapjack.WordAlloc.removeDeadStructural input10972 value5491 value1 value2 = (output10972, value5492, value1))
    (child10973 : Flapjack.WordAlloc.removeDeadStructural input10973 value5492 value1 value2 = (output10973, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10974 value5491 value1 value2 = (output10974, value5, value1) := by
  rw [input10974_def, output10974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10972]
  dsimp only
  rw [child10973]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10972_skip, output10973_skip]
  kernel_rfl

theorem node10975_cond_eq
    (child10971 : Flapjack.WordAlloc.removeDeadStructural input10971 value5490 value1 value2 = (output10971, value5491, value1))
    (child10974 : Flapjack.WordAlloc.removeDeadStructural input10974 value5491 value1 value2 = (output10974, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10975 value5490 value1 value2 = (output10975, value5, value1) := by
  rw [input10975_def, output10975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10971]
  dsimp only
  rw [child10974]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10971_skip, output10974_skip]
  kernel_rfl

theorem node10976_cond_eq
    (child10970 : Flapjack.WordAlloc.removeDeadStructural input10970 value5489 value1 value2 = (output10970, value5490, value1))
    (child10975 : Flapjack.WordAlloc.removeDeadStructural input10975 value5490 value1 value2 = (output10975, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10976 value5489 value1 value2 = (output10976, value5, value1) := by
  rw [input10976_def, output10976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10970]
  dsimp only
  rw [child10975]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10970_skip, output10975_skip]
  kernel_rfl

theorem node10977_cond_eq
    (child10969 : Flapjack.WordAlloc.removeDeadStructural input10969 value5488 value1 value2 = (output10969, value5489, value1))
    (child10976 : Flapjack.WordAlloc.removeDeadStructural input10976 value5489 value1 value2 = (output10976, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10977 value5488 value1 value2 = (output10977, value5, value1) := by
  rw [input10977_def, output10977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10969]
  dsimp only
  rw [child10976]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10969_skip, output10976_skip]
  kernel_rfl

theorem node10978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10978 value5 value1 value2 = (output10978, value5493, value1) := by
  rw [input10978_def, output10978_def]
  kernel_rfl

theorem node10979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10979 value5493 value1 value2 = (output10979, value5494, value1) := by
  rw [input10979_def, output10979_def]
  kernel_rfl

theorem node10980_cond_eq
    (child10978 : Flapjack.WordAlloc.removeDeadStructural input10978 value5 value1 value2 = (output10978, value5493, value1))
    (child10979 : Flapjack.WordAlloc.removeDeadStructural input10979 value5493 value1 value2 = (output10979, value5494, value1)) : Flapjack.WordAlloc.removeDeadStructural input10980 value5 value1 value2 = (output10980, value5494, value1) := by
  rw [input10980_def, output10980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10978]
  dsimp only
  rw [child10979]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10978_skip, output10979_skip]
  kernel_rfl

theorem node10981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10981 value5494 value1 value2 = (output10981, value5495, value1) := by
  rw [input10981_def, output10981_def]
  kernel_rfl

theorem node10982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10982 value5495 value1 value2 = (output10982, value5495, value1) := by
  rw [input10982_def, output10982_def]
  kernel_rfl

theorem node10983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10983 value5495 value1 value2 = (output10983, value5496, value1) := by
  rw [input10983_def, output10983_def]
  kernel_rfl

theorem node10984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10984 value5496 value1 value2 = (output10984, value5497, value1) := by
  rw [input10984_def, output10984_def]
  kernel_rfl

theorem node10985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10985 value5497 value1 value2 = (output10985, value5498, value1) := by
  rw [input10985_def, output10985_def]
  kernel_rfl

theorem node10986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10986 value5498 value1 value2 = (output10986, value5499, value1) := by
  rw [input10986_def, output10986_def]
  kernel_rfl

theorem node10987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10987 value5499 value1 value2 = (output10987, value5, value1) := by
  rw [input10987_def, output10987_def]
  kernel_rfl

theorem node10988_cond_eq
    (child10986 : Flapjack.WordAlloc.removeDeadStructural input10986 value5498 value1 value2 = (output10986, value5499, value1))
    (child10987 : Flapjack.WordAlloc.removeDeadStructural input10987 value5499 value1 value2 = (output10987, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10988 value5498 value1 value2 = (output10988, value5, value1) := by
  rw [input10988_def, output10988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10986]
  dsimp only
  rw [child10987]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10986_skip, output10987_skip]
  kernel_rfl

theorem node10989_cond_eq
    (child10985 : Flapjack.WordAlloc.removeDeadStructural input10985 value5497 value1 value2 = (output10985, value5498, value1))
    (child10988 : Flapjack.WordAlloc.removeDeadStructural input10988 value5498 value1 value2 = (output10988, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10989 value5497 value1 value2 = (output10989, value5, value1) := by
  rw [input10989_def, output10989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10985]
  dsimp only
  rw [child10988]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10985_skip, output10988_skip]
  kernel_rfl

theorem node10990_cond_eq
    (child10984 : Flapjack.WordAlloc.removeDeadStructural input10984 value5496 value1 value2 = (output10984, value5497, value1))
    (child10989 : Flapjack.WordAlloc.removeDeadStructural input10989 value5497 value1 value2 = (output10989, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10990 value5496 value1 value2 = (output10990, value5, value1) := by
  rw [input10990_def, output10990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10984]
  dsimp only
  rw [child10989]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10984_skip, output10989_skip]
  kernel_rfl

theorem node10991_cond_eq
    (child10983 : Flapjack.WordAlloc.removeDeadStructural input10983 value5495 value1 value2 = (output10983, value5496, value1))
    (child10990 : Flapjack.WordAlloc.removeDeadStructural input10990 value5496 value1 value2 = (output10990, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10991 value5495 value1 value2 = (output10991, value5, value1) := by
  rw [input10991_def, output10991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10983]
  dsimp only
  rw [child10990]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10983_skip, output10990_skip]
  kernel_rfl

theorem node10992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10992 value5 value1 value2 = (output10992, value5500, value1) := by
  rw [input10992_def, output10992_def]
  kernel_rfl

theorem node10993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10993 value5500 value1 value2 = (output10993, value5501, value1) := by
  rw [input10993_def, output10993_def]
  kernel_rfl

theorem node10994_cond_eq
    (child10992 : Flapjack.WordAlloc.removeDeadStructural input10992 value5 value1 value2 = (output10992, value5500, value1))
    (child10993 : Flapjack.WordAlloc.removeDeadStructural input10993 value5500 value1 value2 = (output10993, value5501, value1)) : Flapjack.WordAlloc.removeDeadStructural input10994 value5 value1 value2 = (output10994, value5501, value1) := by
  rw [input10994_def, output10994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10992]
  dsimp only
  rw [child10993]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10992_skip, output10993_skip]
  kernel_rfl

theorem node10995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10995 value5501 value1 value2 = (output10995, value5502, value1) := by
  rw [input10995_def, output10995_def]
  kernel_rfl

theorem node10996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10996 value5502 value1 value2 = (output10996, value5502, value1) := by
  rw [input10996_def, output10996_def]
  kernel_rfl

theorem node10997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10997 value5502 value1 value2 = (output10997, value5503, value1) := by
  rw [input10997_def, output10997_def]
  kernel_rfl

theorem node10998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10998 value5503 value1 value2 = (output10998, value5504, value1) := by
  rw [input10998_def, output10998_def]
  kernel_rfl

theorem node10999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10999 value5504 value1 value2 = (output10999, value5505, value1) := by
  rw [input10999_def, output10999_def]
  kernel_rfl

theorem node11000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11000 value5505 value1 value2 = (output11000, value5506, value1) := by
  rw [input11000_def, output11000_def]
  kernel_rfl

theorem node11001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11001 value5506 value1 value2 = (output11001, value5, value1) := by
  rw [input11001_def, output11001_def]
  kernel_rfl

theorem node11002_cond_eq
    (child11000 : Flapjack.WordAlloc.removeDeadStructural input11000 value5505 value1 value2 = (output11000, value5506, value1))
    (child11001 : Flapjack.WordAlloc.removeDeadStructural input11001 value5506 value1 value2 = (output11001, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11002 value5505 value1 value2 = (output11002, value5, value1) := by
  rw [input11002_def, output11002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11000]
  dsimp only
  rw [child11001]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11000_skip, output11001_skip]
  kernel_rfl

theorem node11003_cond_eq
    (child10999 : Flapjack.WordAlloc.removeDeadStructural input10999 value5504 value1 value2 = (output10999, value5505, value1))
    (child11002 : Flapjack.WordAlloc.removeDeadStructural input11002 value5505 value1 value2 = (output11002, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11003 value5504 value1 value2 = (output11003, value5, value1) := by
  rw [input11003_def, output11003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10999]
  dsimp only
  rw [child11002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10999_skip, output11002_skip]
  kernel_rfl

theorem node11004_cond_eq
    (child10998 : Flapjack.WordAlloc.removeDeadStructural input10998 value5503 value1 value2 = (output10998, value5504, value1))
    (child11003 : Flapjack.WordAlloc.removeDeadStructural input11003 value5504 value1 value2 = (output11003, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11004 value5503 value1 value2 = (output11004, value5, value1) := by
  rw [input11004_def, output11004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10998]
  dsimp only
  rw [child11003]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10998_skip, output11003_skip]
  kernel_rfl

theorem node11005_cond_eq
    (child10997 : Flapjack.WordAlloc.removeDeadStructural input10997 value5502 value1 value2 = (output10997, value5503, value1))
    (child11004 : Flapjack.WordAlloc.removeDeadStructural input11004 value5503 value1 value2 = (output11004, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11005 value5502 value1 value2 = (output11005, value5, value1) := by
  rw [input11005_def, output11005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10997]
  dsimp only
  rw [child11004]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10997_skip, output11004_skip]
  kernel_rfl

theorem node11006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11006 value5 value1 value2 = (output11006, value5507, value1) := by
  rw [input11006_def, output11006_def]
  kernel_rfl

theorem node11007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11007 value5507 value1 value2 = (output11007, value5508, value1) := by
  rw [input11007_def, output11007_def]
  kernel_rfl

#print axioms node11007_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
