import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages646.Parallel
theorem node768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input768 value352 value1 value2 = (output768, value353, value1) := by
  rw [input768_def, output768_def]
  kernel_rfl

theorem node769_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value351 value1 value2 = (output767, value352, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value352 value1 value2 = (output768, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value351 value1 value2 = (output769, value353, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input770 value353 value1 value2 = (output770, value354, value1) := by
  rw [input770_def, output770_def]
  kernel_rfl

theorem node771_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value351 value1 value2 = (output769, value353, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value353 value1 value2 = (output770, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value351 value1 value2 = (output771, value354, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input772 value354 value1 value2 = (output772, value355, value1) := by
  rw [input772_def, output772_def]
  kernel_rfl

theorem node773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input773 value355 value1 value2 = (output773, value356, value1) := by
  rw [input773_def, output773_def]
  kernel_rfl

theorem node774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input774 value356 value1 value2 = (output774, value357, value1) := by
  rw [input774_def, output774_def]
  kernel_rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value357 value1 value2 = (output775, value358, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value358 value1 value2 = (output776, value359, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value357 value1 value2 = (output775, value358, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value358 value1 value2 = (output776, value359, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value357 value1 value2 = (output777, value359, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input778 value359 value1 value2 = (output778, value360, value1) := by
  rw [input778_def, output778_def]
  kernel_rfl

theorem node779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input779 value360 value1 value2 = (output779, value361, value1) := by
  rw [input779_def, output779_def]
  kernel_rfl

theorem node780_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value359 value1 value2 = (output778, value360, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value360 value1 value2 = (output779, value361, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value359 value1 value2 = (output780, value361, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value357 value1 value2 = (output777, value359, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value359 value1 value2 = (output780, value361, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value357 value1 value2 = (output781, value361, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child777]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value361 value1 value2 = (output782, value362, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value362 value1 value2 = (output783, value363, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input784 value363 value1 value2 = (output784, value364, value1) := by
  rw [input784_def, output784_def]
  kernel_rfl

theorem node785_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value362 value1 value2 = (output783, value363, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value363 value1 value2 = (output784, value364, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value362 value1 value2 = (output785, value364, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input786 value364 value1 value2 = (output786, value365, value1) := by
  rw [input786_def, output786_def]
  kernel_rfl

theorem node787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input787 value365 value1 value2 = (output787, value366, value1) := by
  rw [input787_def, output787_def]
  kernel_rfl

theorem node788_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value364 value1 value2 = (output786, value365, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value365 value1 value2 = (output787, value366, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value364 value1 value2 = (output788, value366, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output786_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value366 value1 value2 = (output789, value367, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value364 value1 value2 = (output788, value366, value1))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value366 value1 value2 = (output789, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input790 value364 value1 value2 = (output790, value367, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value362 value1 value2 = (output785, value364, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value364 value1 value2 = (output790, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value362 value1 value2 = (output791, value367, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input792 value367 value1 value2 = (output792, value368, value1) := by
  rw [input792_def, output792_def]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value368 value1 value2 = (output793, value369, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input794 value369 value1 value2 = (output794, value370, value1) := by
  rw [input794_def, output794_def]
  kernel_rfl

theorem node795_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value368 value1 value2 = (output793, value369, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value369 value1 value2 = (output794, value370, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value368 value1 value2 = (output795, value370, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input796 value370 value1 value2 = (output796, value371, value1) := by
  rw [input796_def, output796_def]
  kernel_rfl

theorem node797_cond_eq
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value368 value1 value2 = (output795, value370, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value370 value1 value2 = (output796, value371, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value368 value1 value2 = (output797, value371, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child795]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output795_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value371 value1 value2 = (output798, value372, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value372 value1 value2 = (output799, value373, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

theorem node800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input800 value373 value1 value2 = (output800, value374, value1) := by
  rw [input800_def, output800_def]
  kernel_rfl

theorem node801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input801 value374 value1 value2 = (output801, value375, value1) := by
  rw [input801_def, output801_def]
  kernel_rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value375 value1 value2 = (output802, value376, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

theorem node803_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value374 value1 value2 = (output801, value375, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value375 value1 value2 = (output802, value376, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value374 value1 value2 = (output803, value376, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value376 value1 value2 = (output804, value377, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value377 value1 value2 = (output805, value378, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input806 value378 value1 value2 = (output806, value379, value1) := by
  rw [input806_def, output806_def]
  kernel_rfl

theorem node807_cond_eq
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value377 value1 value2 = (output805, value378, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value378 value1 value2 = (output806, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value377 value1 value2 = (output807, value379, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child805]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output805_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input808 value379 value1 value2 = (output808, value380, value1) := by
  rw [input808_def, output808_def]
  kernel_rfl

theorem node809_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value377 value1 value2 = (output807, value379, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value379 value1 value2 = (output808, value380, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value377 value1 value2 = (output809, value380, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value380 value1 value2 = (output810, value381, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value381 value1 value2 = (output811, value382, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value382 value1 value2 = (output812, value383, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

theorem node813_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value381 value1 value2 = (output811, value382, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value382 value1 value2 = (output812, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value381 value1 value2 = (output813, value383, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input814 value383 value1 value2 = (output814, value384, value1) := by
  rw [input814_def, output814_def]
  kernel_rfl

theorem node815_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value381 value1 value2 = (output813, value383, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value383 value1 value2 = (output814, value384, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value381 value1 value2 = (output815, value384, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input816 value384 value1 value2 = (output816, value385, value1) := by
  rw [input816_def, output816_def]
  kernel_rfl

theorem node817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input817 value385 value1 value2 = (output817, value386, value1) := by
  rw [input817_def, output817_def]
  kernel_rfl

theorem node818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input818 value386 value1 value2 = (output818, value386, value1) := by
  rw [input818_def, output818_def]
  kernel_rfl

theorem node819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input819 value386 value1 value2 = (output819, value386, value1) := by
  rw [input819_def, output819_def]
  kernel_rfl

theorem node820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input820 value386 value1 value2 = (output820, value387, value1) := by
  rw [input820_def, output820_def]
  kernel_rfl

theorem node821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input821 value387 value1 value2 = (output821, value388, value1) := by
  rw [input821_def, output821_def]
  kernel_rfl

theorem node822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input822 value388 value1 value2 = (output822, value389, value1) := by
  rw [input822_def, output822_def]
  kernel_rfl

theorem node823_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value387 value1 value2 = (output821, value388, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value388 value1 value2 = (output822, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value387 value1 value2 = (output823, value389, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value386 value1 value2 = (output820, value387, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value387 value1 value2 = (output823, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value386 value1 value2 = (output824, value389, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value389 value1 value2 = (output825, value390, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value386 value1 value2 = (output824, value389, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value389 value1 value2 = (output825, value390, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value386 value1 value2 = (output826, value390, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input827 value390 value1 value2 = (output827, value391, value1) := by
  rw [input827_def, output827_def]
  kernel_rfl

theorem node828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input828 value391 value1 value2 = (output828, value392, value1) := by
  rw [input828_def, output828_def]
  kernel_rfl

theorem node829_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value390 value1 value2 = (output827, value391, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value391 value1 value2 = (output828, value392, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value390 value1 value2 = (output829, value392, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input830 value392 value1 value2 = (output830, value393, value1) := by
  rw [input830_def, output830_def]
  kernel_rfl

theorem node831_cond_eq
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value390 value1 value2 = (output829, value392, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value392 value1 value2 = (output830, value393, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value390 value1 value2 = (output831, value393, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child829]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output829_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input832 value393 value1 value2 = (output832, value394, value1) := by
  rw [input832_def, output832_def]
  kernel_rfl

theorem node833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input833 value394 value1 value2 = (output833, value395, value1) := by
  rw [input833_def, output833_def]
  kernel_rfl

theorem node834_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value393 value1 value2 = (output832, value394, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value394 value1 value2 = (output833, value395, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value393 value1 value2 = (output834, value395, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input835 value395 value1 value2 = (output835, value396, value1) := by
  rw [input835_def, output835_def]
  kernel_rfl

theorem node836_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value393 value1 value2 = (output834, value395, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value395 value1 value2 = (output835, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value393 value1 value2 = (output836, value396, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input837 value396 value1 value2 = (output837, value397, value1) := by
  rw [input837_def, output837_def]
  kernel_rfl

theorem node838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input838 value397 value1 value2 = (output838, value398, value1) := by
  rw [input838_def, output838_def]
  kernel_rfl

theorem node839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input839 value398 value1 value2 = (output839, value399, value1) := by
  rw [input839_def, output839_def]
  kernel_rfl

theorem node840_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value397 value1 value2 = (output838, value398, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value398 value1 value2 = (output839, value399, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value397 value1 value2 = (output840, value399, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input841 value399 value1 value2 = (output841, value400, value1) := by
  rw [input841_def, output841_def]
  kernel_rfl

theorem node842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input842 value400 value1 value2 = (output842, value401, value1) := by
  rw [input842_def, output842_def]
  kernel_rfl

theorem node843_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value399 value1 value2 = (output841, value400, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value400 value1 value2 = (output842, value401, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value399 value1 value2 = (output843, value401, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value397 value1 value2 = (output840, value399, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value399 value1 value2 = (output843, value401, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value397 value1 value2 = (output844, value401, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input845 value401 value1 value2 = (output845, value402, value1) := by
  rw [input845_def, output845_def]
  kernel_rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value402 value1 value2 = (output846, value403, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value403 value1 value2 = (output847, value404, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

theorem node848_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value402 value1 value2 = (output846, value403, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value403 value1 value2 = (output847, value404, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value402 value1 value2 = (output848, value404, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input849 value404 value1 value2 = (output849, value405, value1) := by
  rw [input849_def, output849_def]
  kernel_rfl

theorem node850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input850 value405 value1 value2 = (output850, value406, value1) := by
  rw [input850_def, output850_def]
  kernel_rfl

theorem node851_cond_eq
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value404 value1 value2 = (output849, value405, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value405 value1 value2 = (output850, value406, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value404 value1 value2 = (output851, value406, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child849]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output849_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value406 value1 value2 = (output852, value407, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value404 value1 value2 = (output851, value406, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value406 value1 value2 = (output852, value407, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value404 value1 value2 = (output853, value407, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value402 value1 value2 = (output848, value404, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value404 value1 value2 = (output853, value407, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value402 value1 value2 = (output854, value407, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input855 value407 value1 value2 = (output855, value408, value1) := by
  rw [input855_def, output855_def]
  kernel_rfl

theorem node856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input856 value408 value1 value2 = (output856, value409, value1) := by
  rw [input856_def, output856_def]
  kernel_rfl

theorem node857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input857 value409 value1 value2 = (output857, value410, value1) := by
  rw [input857_def, output857_def]
  kernel_rfl

theorem node858_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value408 value1 value2 = (output856, value409, value1))
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value409 value1 value2 = (output857, value410, value1)) : Flapjack.WordAlloc.removeDeadStructural input858 value408 value1 value2 = (output858, value410, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output857_skip]
  kernel_rfl

theorem node859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input859 value410 value1 value2 = (output859, value411, value1) := by
  rw [input859_def, output859_def]
  kernel_rfl

theorem node860_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value408 value1 value2 = (output858, value410, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value410 value1 value2 = (output859, value411, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value408 value1 value2 = (output860, value411, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input861 value411 value1 value2 = (output861, value412, value1) := by
  rw [input861_def, output861_def]
  kernel_rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value412 value1 value2 = (output862, value413, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

theorem node863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input863 value413 value1 value2 = (output863, value414, value1) := by
  rw [input863_def, output863_def]
  kernel_rfl

theorem node864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input864 value414 value1 value2 = (output864, value415, value1) := by
  rw [input864_def, output864_def]
  kernel_rfl

theorem node865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input865 value415 value1 value2 = (output865, value416, value1) := by
  rw [input865_def, output865_def]
  kernel_rfl

theorem node866_cond_eq
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value414 value1 value2 = (output864, value415, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value415 value1 value2 = (output865, value416, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value414 value1 value2 = (output866, value416, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child864]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output864_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value416 value1 value2 = (output867, value417, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input868 value417 value1 value2 = (output868, value418, value1) := by
  rw [input868_def, output868_def]
  kernel_rfl

theorem node869_cond_eq
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value416 value1 value2 = (output867, value417, value1))
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value417 value1 value2 = (output868, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input869 value416 value1 value2 = (output869, value418, value1) := by
  rw [input869_def, output869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child867]
  try dsimp only
  rw [child868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output867_skip, output868_skip]
  kernel_rfl

theorem node870_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value414 value1 value2 = (output866, value416, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value416 value1 value2 = (output869, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value414 value1 value2 = (output870, value418, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value418 value1 value2 = (output871, value419, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

theorem node872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input872 value419 value1 value2 = (output872, value420, value1) := by
  rw [input872_def, output872_def]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value420 value1 value2 = (output873, value421, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value419 value1 value2 = (output872, value420, value1))
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value420 value1 value2 = (output873, value421, value1)) : Flapjack.WordAlloc.removeDeadStructural input874 value419 value1 value2 = (output874, value421, value1) := by
  rw [input874_def, output874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output873_skip]
  kernel_rfl

theorem node875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input875 value421 value1 value2 = (output875, value422, value1) := by
  rw [input875_def, output875_def]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value422 value1 value2 = (output876, value423, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value421 value1 value2 = (output875, value422, value1))
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value422 value1 value2 = (output876, value423, value1)) : Flapjack.WordAlloc.removeDeadStructural input877 value421 value1 value2 = (output877, value423, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output876_skip]
  kernel_rfl

theorem node878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input878 value423 value1 value2 = (output878, value424, value1) := by
  rw [input878_def, output878_def]
  kernel_rfl

theorem node879_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value421 value1 value2 = (output877, value423, value1))
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value423 value1 value2 = (output878, value424, value1)) : Flapjack.WordAlloc.removeDeadStructural input879 value421 value1 value2 = (output879, value424, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output878_skip]
  kernel_rfl

theorem node880_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value419 value1 value2 = (output874, value421, value1))
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value421 value1 value2 = (output879, value424, value1)) : Flapjack.WordAlloc.removeDeadStructural input880 value419 value1 value2 = (output880, value424, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output879_skip]
  kernel_rfl

theorem node881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input881 value424 value1 value2 = (output881, value425, value1) := by
  rw [input881_def, output881_def]
  kernel_rfl

theorem node882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input882 value425 value1 value2 = (output882, value426, value1) := by
  rw [input882_def, output882_def]
  kernel_rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value426 value1 value2 = (output883, value427, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

theorem node884_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value425 value1 value2 = (output882, value426, value1))
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value426 value1 value2 = (output883, value427, value1)) : Flapjack.WordAlloc.removeDeadStructural input884 value425 value1 value2 = (output884, value427, value1) := by
  rw [input884_def, output884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output883_skip]
  kernel_rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value427 value1 value2 = (output885, value428, value1) := by
  rw [input885_def, output885_def]
  kernel_rfl

theorem node886_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value425 value1 value2 = (output884, value427, value1))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value427 value1 value2 = (output885, value428, value1)) : Flapjack.WordAlloc.removeDeadStructural input886 value425 value1 value2 = (output886, value428, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  try dsimp only
  rw [child885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input887 value428 value1 value2 = (output887, value429, value1) := by
  rw [input887_def, output887_def]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value429 value1 value2 = (output888, value430, value1) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value430 value1 value2 = (output889, value431, value1) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input890 value431 value1 value2 = (output890, value432, value1) := by
  rw [input890_def, output890_def]
  kernel_rfl

theorem node891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input891 value432 value1 value2 = (output891, value433, value1) := by
  rw [input891_def, output891_def]
  kernel_rfl

theorem node892_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value431 value1 value2 = (output890, value432, value1))
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value432 value1 value2 = (output891, value433, value1)) : Flapjack.WordAlloc.removeDeadStructural input892 value431 value1 value2 = (output892, value433, value1) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output891_skip]
  kernel_rfl

theorem node893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input893 value433 value1 value2 = (output893, value434, value1) := by
  rw [input893_def, output893_def]
  kernel_rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value434 value1 value2 = (output894, value435, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

theorem node895_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value433 value1 value2 = (output893, value434, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value434 value1 value2 = (output894, value435, value1)) : Flapjack.WordAlloc.removeDeadStructural input895 value433 value1 value2 = (output895, value435, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value431 value1 value2 = (output892, value433, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value433 value1 value2 = (output895, value435, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value431 value1 value2 = (output896, value435, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child892]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output892_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value435 value1 value2 = (output897, value436, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value436 value1 value2 = (output898, value437, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input899 value437 value1 value2 = (output899, value438, value1) := by
  rw [input899_def, output899_def]
  kernel_rfl

theorem node900_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value436 value1 value2 = (output898, value437, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value437 value1 value2 = (output899, value438, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value436 value1 value2 = (output900, value438, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value438 value1 value2 = (output901, value439, value1) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input902 value439 value1 value2 = (output902, value440, value1) := by
  rw [input902_def, output902_def]
  kernel_rfl

theorem node903_cond_eq
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value438 value1 value2 = (output901, value439, value1))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value439 value1 value2 = (output902, value440, value1)) : Flapjack.WordAlloc.removeDeadStructural input903 value438 value1 value2 = (output903, value440, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child901]
  try dsimp only
  rw [child902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output901_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value440 value1 value2 = (output904, value441, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value438 value1 value2 = (output903, value440, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value440 value1 value2 = (output904, value441, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value438 value1 value2 = (output905, value441, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value436 value1 value2 = (output900, value438, value1))
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value438 value1 value2 = (output905, value441, value1)) : Flapjack.WordAlloc.removeDeadStructural input906 value436 value1 value2 = (output906, value441, value1) := by
  rw [input906_def, output906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output905_skip]
  kernel_rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value441 value1 value2 = (output907, value442, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

theorem node908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input908 value442 value1 value2 = (output908, value443, value1) := by
  rw [input908_def, output908_def]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value443 value1 value2 = (output909, value444, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value442 value1 value2 = (output908, value443, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value443 value1 value2 = (output909, value444, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value442 value1 value2 = (output910, value444, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input911 value444 value1 value2 = (output911, value445, value1) := by
  rw [input911_def, output911_def]
  kernel_rfl

theorem node912_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value442 value1 value2 = (output910, value444, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value444 value1 value2 = (output911, value445, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value442 value1 value2 = (output912, value445, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value445 value1 value2 = (output913, value446, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input914 value446 value1 value2 = (output914, value447, value1) := by
  rw [input914_def, output914_def]
  kernel_rfl

theorem node915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input915 value447 value1 value2 = (output915, value448, value1) := by
  rw [input915_def, output915_def]
  kernel_rfl

theorem node916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input916 value448 value1 value2 = (output916, value449, value1) := by
  rw [input916_def, output916_def]
  kernel_rfl

theorem node917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input917 value449 value1 value2 = (output917, value450, value1) := by
  rw [input917_def, output917_def]
  kernel_rfl

theorem node918_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value448 value1 value2 = (output916, value449, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value449 value1 value2 = (output917, value450, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value448 value1 value2 = (output918, value450, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value450 value1 value2 = (output919, value451, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input920 value451 value1 value2 = (output920, value452, value1) := by
  rw [input920_def, output920_def]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value452 value1 value2 = (output921, value453, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value451 value1 value2 = (output920, value452, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value452 value1 value2 = (output921, value453, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value451 value1 value2 = (output922, value453, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value453 value1 value2 = (output923, value454, value1) := by
  rw [input923_def, output923_def]
  kernel_rfl

theorem node924_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value451 value1 value2 = (output922, value453, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value453 value1 value2 = (output923, value454, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value451 value1 value2 = (output924, value454, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input925 value454 value1 value2 = (output925, value455, value1) := by
  rw [input925_def, output925_def]
  kernel_rfl

theorem node926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input926 value455 value1 value2 = (output926, value456, value1) := by
  rw [input926_def, output926_def]
  kernel_rfl

theorem node927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input927 value456 value1 value2 = (output927, value457, value1) := by
  rw [input927_def, output927_def]
  kernel_rfl

theorem node928_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value455 value1 value2 = (output926, value456, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value456 value1 value2 = (output927, value457, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value455 value1 value2 = (output928, value457, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  try dsimp only
  rw [child927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output926_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input929 value457 value1 value2 = (output929, value458, value1) := by
  rw [input929_def, output929_def]
  kernel_rfl

theorem node930_cond_eq
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value455 value1 value2 = (output928, value457, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value457 value1 value2 = (output929, value458, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value455 value1 value2 = (output930, value458, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child928]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output928_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input931 value458 value1 value2 = (output931, value459, value1) := by
  rw [input931_def, output931_def]
  kernel_rfl

theorem node932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input932 value459 value1 value2 = (output932, value460, value1) := by
  rw [input932_def, output932_def]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value460 value1 value2 = (output933, value460, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input934 value460 value1 value2 = (output934, value460, value1) := by
  rw [input934_def, output934_def]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value460 value1 value2 = (output935, value461, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input936 value461 value1 value2 = (output936, value462, value1) := by
  rw [input936_def, output936_def]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value462 value1 value2 = (output937, value463, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value461 value1 value2 = (output936, value462, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value462 value1 value2 = (output937, value463, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value461 value1 value2 = (output938, value463, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value460 value1 value2 = (output935, value461, value1))
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value461 value1 value2 = (output938, value463, value1)) : Flapjack.WordAlloc.removeDeadStructural input939 value460 value1 value2 = (output939, value463, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child935]
  try dsimp only
  rw [child938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output935_skip, output938_skip]
  kernel_rfl

theorem node940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input940 value463 value1 value2 = (output940, value464, value1) := by
  rw [input940_def, output940_def]
  kernel_rfl

theorem node941_cond_eq
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value460 value1 value2 = (output939, value463, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value463 value1 value2 = (output940, value464, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value460 value1 value2 = (output941, value464, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child939]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output939_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input942 value464 value1 value2 = (output942, value465, value1) := by
  rw [input942_def, output942_def]
  kernel_rfl

theorem node943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input943 value465 value1 value2 = (output943, value466, value1) := by
  rw [input943_def, output943_def]
  kernel_rfl

theorem node944_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value464 value1 value2 = (output942, value465, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value465 value1 value2 = (output943, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value464 value1 value2 = (output944, value466, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output942_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input945 value466 value1 value2 = (output945, value467, value1) := by
  rw [input945_def, output945_def]
  kernel_rfl

theorem node946_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value464 value1 value2 = (output944, value466, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value466 value1 value2 = (output945, value467, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value464 value1 value2 = (output946, value467, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input947 value467 value1 value2 = (output947, value468, value1) := by
  rw [input947_def, output947_def]
  kernel_rfl

theorem node948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input948 value468 value1 value2 = (output948, value469, value1) := by
  rw [input948_def, output948_def]
  kernel_rfl

theorem node949_cond_eq
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value467 value1 value2 = (output947, value468, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value468 value1 value2 = (output948, value469, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value467 value1 value2 = (output949, value469, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child947]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output947_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input950 value469 value1 value2 = (output950, value470, value1) := by
  rw [input950_def, output950_def]
  kernel_rfl

theorem node951_cond_eq
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value467 value1 value2 = (output949, value469, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value469 value1 value2 = (output950, value470, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value467 value1 value2 = (output951, value470, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child949]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output949_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value470 value1 value2 = (output952, value471, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

theorem node953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input953 value471 value1 value2 = (output953, value472, value1) := by
  rw [input953_def, output953_def]
  kernel_rfl

theorem node954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input954 value472 value1 value2 = (output954, value473, value1) := by
  rw [input954_def, output954_def]
  kernel_rfl

theorem node955_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value471 value1 value2 = (output953, value472, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value472 value1 value2 = (output954, value473, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value471 value1 value2 = (output955, value473, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output953_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input956 value473 value1 value2 = (output956, value474, value1) := by
  rw [input956_def, output956_def]
  kernel_rfl

theorem node957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input957 value474 value1 value2 = (output957, value475, value1) := by
  rw [input957_def, output957_def]
  kernel_rfl

theorem node958_cond_eq
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value473 value1 value2 = (output956, value474, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value474 value1 value2 = (output957, value475, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value473 value1 value2 = (output958, value475, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child956]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output956_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value471 value1 value2 = (output955, value473, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value473 value1 value2 = (output958, value475, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value471 value1 value2 = (output959, value475, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child955]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output955_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input960 value475 value1 value2 = (output960, value476, value1) := by
  rw [input960_def, output960_def]
  kernel_rfl

theorem node961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input961 value476 value1 value2 = (output961, value477, value1) := by
  rw [input961_def, output961_def]
  kernel_rfl

theorem node962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input962 value477 value1 value2 = (output962, value478, value1) := by
  rw [input962_def, output962_def]
  kernel_rfl

theorem node963_cond_eq
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value476 value1 value2 = (output961, value477, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value477 value1 value2 = (output962, value478, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value476 value1 value2 = (output963, value478, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child961]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output961_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input964 value478 value1 value2 = (output964, value479, value1) := by
  rw [input964_def, output964_def]
  kernel_rfl

theorem node965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input965 value479 value1 value2 = (output965, value480, value1) := by
  rw [input965_def, output965_def]
  kernel_rfl

theorem node966_cond_eq
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value478 value1 value2 = (output964, value479, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value479 value1 value2 = (output965, value480, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value478 value1 value2 = (output966, value480, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child964]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output964_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input967 value480 value1 value2 = (output967, value481, value1) := by
  rw [input967_def, output967_def]
  kernel_rfl

theorem node968_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value478 value1 value2 = (output966, value480, value1))
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value480 value1 value2 = (output967, value481, value1)) : Flapjack.WordAlloc.removeDeadStructural input968 value478 value1 value2 = (output968, value481, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  try dsimp only
  rw [child967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output966_skip, output967_skip]
  kernel_rfl

theorem node969_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value476 value1 value2 = (output963, value478, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value478 value1 value2 = (output968, value481, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value476 value1 value2 = (output969, value481, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input970 value481 value1 value2 = (output970, value482, value1) := by
  rw [input970_def, output970_def]
  kernel_rfl

theorem node971_cond_eq : Flapjack.WordAlloc.removeDeadStructural input971 value482 value1 value2 = (output971, value483, value1) := by
  rw [input971_def, output971_def]
  kernel_rfl

theorem node972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input972 value483 value1 value2 = (output972, value484, value1) := by
  rw [input972_def, output972_def]
  kernel_rfl

theorem node973_cond_eq
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value482 value1 value2 = (output971, value483, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value483 value1 value2 = (output972, value484, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value482 value1 value2 = (output973, value484, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child971]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output971_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input974 value484 value1 value2 = (output974, value485, value1) := by
  rw [input974_def, output974_def]
  kernel_rfl

theorem node975_cond_eq
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value482 value1 value2 = (output973, value484, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value484 value1 value2 = (output974, value485, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value482 value1 value2 = (output975, value485, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child973]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output973_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input976 value485 value1 value2 = (output976, value486, value1) := by
  rw [input976_def, output976_def]
  kernel_rfl

theorem node977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input977 value486 value1 value2 = (output977, value487, value1) := by
  rw [input977_def, output977_def]
  kernel_rfl

theorem node978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input978 value487 value1 value2 = (output978, value488, value1) := by
  rw [input978_def, output978_def]
  kernel_rfl

theorem node979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input979 value488 value1 value2 = (output979, value489, value1) := by
  rw [input979_def, output979_def]
  kernel_rfl

theorem node980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input980 value489 value1 value2 = (output980, value490, value1) := by
  rw [input980_def, output980_def]
  kernel_rfl

theorem node981_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value488 value1 value2 = (output979, value489, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value489 value1 value2 = (output980, value490, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value488 value1 value2 = (output981, value490, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output979_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input982 value490 value1 value2 = (output982, value491, value1) := by
  rw [input982_def, output982_def]
  kernel_rfl

theorem node983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input983 value491 value1 value2 = (output983, value492, value1) := by
  rw [input983_def, output983_def]
  kernel_rfl

theorem node984_cond_eq
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value490 value1 value2 = (output982, value491, value1))
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value491 value1 value2 = (output983, value492, value1)) : Flapjack.WordAlloc.removeDeadStructural input984 value490 value1 value2 = (output984, value492, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child982]
  try dsimp only
  rw [child983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output982_skip, output983_skip]
  kernel_rfl

theorem node985_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value488 value1 value2 = (output981, value490, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value490 value1 value2 = (output984, value492, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value488 value1 value2 = (output985, value492, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output984_skip]
  kernel_rfl

theorem node986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input986 value492 value1 value2 = (output986, value493, value1) := by
  rw [input986_def, output986_def]
  kernel_rfl

theorem node987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input987 value493 value1 value2 = (output987, value494, value1) := by
  rw [input987_def, output987_def]
  kernel_rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value494 value1 value2 = (output988, value495, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

theorem node989_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value493 value1 value2 = (output987, value494, value1))
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value494 value1 value2 = (output988, value495, value1)) : Flapjack.WordAlloc.removeDeadStructural input989 value493 value1 value2 = (output989, value495, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output988_skip]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value495 value1 value2 = (output990, value496, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value496 value1 value2 = (output991, value497, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value495 value1 value2 = (output990, value496, value1))
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value496 value1 value2 = (output991, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input992 value495 value1 value2 = (output992, value497, value1) := by
  rw [input992_def, output992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output991_skip]
  kernel_rfl

theorem node993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input993 value497 value1 value2 = (output993, value498, value1) := by
  rw [input993_def, output993_def]
  kernel_rfl

theorem node994_cond_eq
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value495 value1 value2 = (output992, value497, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value497 value1 value2 = (output993, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value495 value1 value2 = (output994, value498, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child992]
  try dsimp only
  rw [child993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output992_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value493 value1 value2 = (output989, value495, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value495 value1 value2 = (output994, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value493 value1 value2 = (output995, value498, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input996 value498 value1 value2 = (output996, value499, value1) := by
  rw [input996_def, output996_def]
  kernel_rfl

theorem node997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input997 value499 value1 value2 = (output997, value500, value1) := by
  rw [input997_def, output997_def]
  kernel_rfl

theorem node998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input998 value500 value1 value2 = (output998, value501, value1) := by
  rw [input998_def, output998_def]
  kernel_rfl

theorem node999_cond_eq
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value499 value1 value2 = (output997, value500, value1))
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value500 value1 value2 = (output998, value501, value1)) : Flapjack.WordAlloc.removeDeadStructural input999 value499 value1 value2 = (output999, value501, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child997]
  try dsimp only
  rw [child998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output997_skip, output998_skip]
  kernel_rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value501 value1 value2 = (output1000, value502, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

theorem node1001_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value499 value1 value2 = (output999, value501, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value501 value1 value2 = (output1000, value502, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value499 value1 value2 = (output1001, value502, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  try dsimp only
  rw [child1000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output1000_skip]
  kernel_rfl

theorem node1002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value502 value1 value2 = (output1002, value503, value1) := by
  rw [input1002_def, output1002_def]
  kernel_rfl

theorem node1003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value503 value1 value2 = (output1003, value504, value1) := by
  rw [input1003_def, output1003_def]
  kernel_rfl

theorem node1004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value504 value1 value2 = (output1004, value505, value1) := by
  rw [input1004_def, output1004_def]
  kernel_rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value505 value1 value2 = (output1005, value506, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

theorem node1006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value506 value1 value2 = (output1006, value507, value1) := by
  rw [input1006_def, output1006_def]
  kernel_rfl

theorem node1007_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value505 value1 value2 = (output1005, value506, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value506 value1 value2 = (output1006, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value505 value1 value2 = (output1007, value507, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1008 value507 value1 value2 = (output1008, value508, value1) := by
  rw [input1008_def, output1008_def]
  kernel_rfl

theorem node1009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value508 value1 value2 = (output1009, value509, value1) := by
  rw [input1009_def, output1009_def]
  kernel_rfl

theorem node1010_cond_eq
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value507 value1 value2 = (output1008, value508, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value508 value1 value2 = (output1009, value509, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value507 value1 value2 = (output1010, value509, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1008]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1008_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value505 value1 value2 = (output1007, value507, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value507 value1 value2 = (output1010, value509, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value505 value1 value2 = (output1011, value509, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1007]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1007_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value509 value1 value2 = (output1012, value510, value1) := by
  rw [input1012_def, output1012_def]
  kernel_rfl

theorem node1013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1013 value510 value1 value2 = (output1013, value511, value1) := by
  rw [input1013_def, output1013_def]
  kernel_rfl

theorem node1014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1014 value511 value1 value2 = (output1014, value512, value1) := by
  rw [input1014_def, output1014_def]
  kernel_rfl

theorem node1015_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value510 value1 value2 = (output1013, value511, value1))
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value511 value1 value2 = (output1014, value512, value1)) : Flapjack.WordAlloc.removeDeadStructural input1015 value510 value1 value2 = (output1015, value512, value1) := by
  rw [input1015_def, output1015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  try dsimp only
  rw [child1014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1013_skip, output1014_skip]
  kernel_rfl

theorem node1016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1016 value512 value1 value2 = (output1016, value513, value1) := by
  rw [input1016_def, output1016_def]
  kernel_rfl

theorem node1017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value513 value1 value2 = (output1017, value514, value1) := by
  rw [input1017_def, output1017_def]
  kernel_rfl

theorem node1018_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value512 value1 value2 = (output1016, value513, value1))
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value513 value1 value2 = (output1017, value514, value1)) : Flapjack.WordAlloc.removeDeadStructural input1018 value512 value1 value2 = (output1018, value514, value1) := by
  rw [input1018_def, output1018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child1017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output1017_skip]
  kernel_rfl

theorem node1019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value514 value1 value2 = (output1019, value515, value1) := by
  rw [input1019_def, output1019_def]
  kernel_rfl

theorem node1020_cond_eq
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value512 value1 value2 = (output1018, value514, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value514 value1 value2 = (output1019, value515, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value512 value1 value2 = (output1020, value515, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1018]
  try dsimp only
  rw [child1019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1018_skip, output1019_skip]
  kernel_rfl

theorem node1021_cond_eq
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value510 value1 value2 = (output1015, value512, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value512 value1 value2 = (output1020, value515, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value510 value1 value2 = (output1021, value515, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1015]
  try dsimp only
  rw [child1020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1015_skip, output1020_skip]
  kernel_rfl

theorem node1022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1022 value515 value1 value2 = (output1022, value516, value1) := by
  rw [input1022_def, output1022_def]
  kernel_rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value516 value1 value2 = (output1023, value517, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages646.Parallel
