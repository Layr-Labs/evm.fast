import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages233.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages233.Parallel
theorem node768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input768 value337 value1 value2 = (output768, value337, value1) := by
  rw [input768_def, output768_def]
  kernel_rfl

theorem node769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input769 value337 value1 value2 = (output769, value338, value1) := by
  rw [input769_def, output769_def]
  kernel_rfl

theorem node770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input770 value338 value1 value2 = (output770, value339, value1) := by
  rw [input770_def, output770_def]
  kernel_rfl

theorem node771_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value337 value1 value2 = (output769, value338, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value338 value1 value2 = (output770, value339, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value337 value1 value2 = (output771, value339, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input772 value339 value1 value2 = (output772, value340, value1) := by
  rw [input772_def, output772_def]
  kernel_rfl

theorem node773_cond_eq
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value337 value1 value2 = (output771, value339, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value339 value1 value2 = (output772, value340, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value337 value1 value2 = (output773, value340, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child771]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output771_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input774 value340 value1 value2 = (output774, value341, value1) := by
  rw [input774_def, output774_def]
  kernel_rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value341 value1 value2 = (output775, value342, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

theorem node776_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value340 value1 value2 = (output774, value341, value1))
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value341 value1 value2 = (output775, value342, value1)) : Flapjack.WordAlloc.removeDeadStructural input776 value340 value1 value2 = (output776, value342, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output775_skip]
  kernel_rfl

theorem node777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input777 value342 value1 value2 = (output777, value343, value1) := by
  rw [input777_def, output777_def]
  kernel_rfl

theorem node778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input778 value343 value1 value2 = (output778, value344, value1) := by
  rw [input778_def, output778_def]
  kernel_rfl

theorem node779_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value342 value1 value2 = (output777, value343, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value343 value1 value2 = (output778, value344, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value342 value1 value2 = (output779, value344, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child777]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input780 value344 value1 value2 = (output780, value345, value1) := by
  rw [input780_def, output780_def]
  kernel_rfl

theorem node781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input781 value345 value1 value2 = (output781, value346, value1) := by
  rw [input781_def, output781_def]
  kernel_rfl

theorem node782_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value344 value1 value2 = (output780, value345, value1))
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value345 value1 value2 = (output781, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input782 value344 value1 value2 = (output782, value346, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output781_skip]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value346 value1 value2 = (output783, value347, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input784 value347 value1 value2 = (output784, value348, value1) := by
  rw [input784_def, output784_def]
  kernel_rfl

theorem node785_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value346 value1 value2 = (output783, value347, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value347 value1 value2 = (output784, value348, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value346 value1 value2 = (output785, value348, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input786 value348 value1 value2 = (output786, value349, value1) := by
  rw [input786_def, output786_def]
  kernel_rfl

theorem node787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input787 value349 value1 value2 = (output787, value350, value1) := by
  rw [input787_def, output787_def]
  kernel_rfl

theorem node788_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value348 value1 value2 = (output786, value349, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value349 value1 value2 = (output787, value350, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value348 value1 value2 = (output788, value350, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output786_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value350 value1 value2 = (output789, value351, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value351 value1 value2 = (output790, value352, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

theorem node791_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value350 value1 value2 = (output789, value351, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value351 value1 value2 = (output790, value352, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value350 value1 value2 = (output791, value352, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input792 value352 value1 value2 = (output792, value353, value1) := by
  rw [input792_def, output792_def]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value353 value1 value2 = (output793, value354, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value352 value1 value2 = (output792, value353, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value353 value1 value2 = (output793, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value352 value1 value2 = (output794, value354, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input795 value354 value1 value2 = (output795, value355, value1) := by
  rw [input795_def, output795_def]
  kernel_rfl

theorem node796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input796 value355 value1 value2 = (output796, value356, value1) := by
  rw [input796_def, output796_def]
  kernel_rfl

theorem node797_cond_eq
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value354 value1 value2 = (output795, value355, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value355 value1 value2 = (output796, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value354 value1 value2 = (output797, value356, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child795]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output795_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value356 value1 value2 = (output798, value357, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value357 value1 value2 = (output799, value358, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

theorem node800_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value356 value1 value2 = (output798, value357, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value357 value1 value2 = (output799, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value356 value1 value2 = (output800, value358, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input801 value358 value1 value2 = (output801, value358, value1) := by
  rw [input801_def, output801_def]
  kernel_rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value358 value1 value2 = (output802, value359, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value359 value1 value2 = (output803, value360, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

theorem node804_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value358 value1 value2 = (output802, value359, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value359 value1 value2 = (output803, value360, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value358 value1 value2 = (output804, value360, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output803_skip]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value360 value1 value2 = (output805, value361, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value358 value1 value2 = (output804, value360, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value360 value1 value2 = (output805, value361, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value358 value1 value2 = (output806, value361, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input807 value361 value1 value2 = (output807, value362, value1) := by
  rw [input807_def, output807_def]
  kernel_rfl

theorem node808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input808 value362 value1 value2 = (output808, value363, value1) := by
  rw [input808_def, output808_def]
  kernel_rfl

theorem node809_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value361 value1 value2 = (output807, value362, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value362 value1 value2 = (output808, value363, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value361 value1 value2 = (output809, value363, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value363 value1 value2 = (output810, value364, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value364 value1 value2 = (output811, value365, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value363 value1 value2 = (output810, value364, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value364 value1 value2 = (output811, value365, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value363 value1 value2 = (output812, value365, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input813 value365 value1 value2 = (output813, value366, value1) := by
  rw [input813_def, output813_def]
  kernel_rfl

theorem node814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input814 value366 value1 value2 = (output814, value367, value1) := by
  rw [input814_def, output814_def]
  kernel_rfl

theorem node815_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value365 value1 value2 = (output813, value366, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value366 value1 value2 = (output814, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value365 value1 value2 = (output815, value367, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input816 value367 value1 value2 = (output816, value368, value1) := by
  rw [input816_def, output816_def]
  kernel_rfl

theorem node817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input817 value368 value1 value2 = (output817, value369, value1) := by
  rw [input817_def, output817_def]
  kernel_rfl

theorem node818_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value367 value1 value2 = (output816, value368, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value368 value1 value2 = (output817, value369, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value367 value1 value2 = (output818, value369, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input819 value369 value1 value2 = (output819, value370, value1) := by
  rw [input819_def, output819_def]
  kernel_rfl

theorem node820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input820 value370 value1 value2 = (output820, value371, value1) := by
  rw [input820_def, output820_def]
  kernel_rfl

theorem node821_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value369 value1 value2 = (output819, value370, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value370 value1 value2 = (output820, value371, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value369 value1 value2 = (output821, value371, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input822 value371 value1 value2 = (output822, value372, value1) := by
  rw [input822_def, output822_def]
  kernel_rfl

theorem node823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input823 value372 value1 value2 = (output823, value373, value1) := by
  rw [input823_def, output823_def]
  kernel_rfl

theorem node824_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value371 value1 value2 = (output822, value372, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value372 value1 value2 = (output823, value373, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value371 value1 value2 = (output824, value373, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value373 value1 value2 = (output825, value374, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input826 value374 value1 value2 = (output826, value375, value1) := by
  rw [input826_def, output826_def]
  kernel_rfl

theorem node827_cond_eq
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value373 value1 value2 = (output825, value374, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value374 value1 value2 = (output826, value375, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value373 value1 value2 = (output827, value375, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child825]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output825_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input828 value375 value1 value2 = (output828, value376, value1) := by
  rw [input828_def, output828_def]
  kernel_rfl

theorem node829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input829 value376 value1 value2 = (output829, value377, value1) := by
  rw [input829_def, output829_def]
  kernel_rfl

theorem node830_cond_eq
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value375 value1 value2 = (output828, value376, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value376 value1 value2 = (output829, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value375 value1 value2 = (output830, value377, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child828]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output828_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input831 value377 value1 value2 = (output831, value378, value1) := by
  rw [input831_def, output831_def]
  kernel_rfl

theorem node832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input832 value378 value1 value2 = (output832, value379, value1) := by
  rw [input832_def, output832_def]
  kernel_rfl

theorem node833_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value377 value1 value2 = (output831, value378, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value378 value1 value2 = (output832, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value377 value1 value2 = (output833, value379, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input834 value379 value1 value2 = (output834, value379, value1) := by
  rw [input834_def, output834_def]
  kernel_rfl

theorem node835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input835 value379 value1 value2 = (output835, value380, value1) := by
  rw [input835_def, output835_def]
  kernel_rfl

theorem node836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input836 value380 value1 value2 = (output836, value381, value1) := by
  rw [input836_def, output836_def]
  kernel_rfl

theorem node837_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value379 value1 value2 = (output835, value380, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value380 value1 value2 = (output836, value381, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value379 value1 value2 = (output837, value381, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input838 value381 value1 value2 = (output838, value382, value1) := by
  rw [input838_def, output838_def]
  kernel_rfl

theorem node839_cond_eq
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value379 value1 value2 = (output837, value381, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value381 value1 value2 = (output838, value382, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value379 value1 value2 = (output839, value382, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child837]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output837_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input840 value382 value1 value2 = (output840, value383, value1) := by
  rw [input840_def, output840_def]
  kernel_rfl

theorem node841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input841 value383 value1 value2 = (output841, value384, value1) := by
  rw [input841_def, output841_def]
  kernel_rfl

theorem node842_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value382 value1 value2 = (output840, value383, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value383 value1 value2 = (output841, value384, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value382 value1 value2 = (output842, value384, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input843 value384 value1 value2 = (output843, value385, value1) := by
  rw [input843_def, output843_def]
  kernel_rfl

theorem node844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input844 value385 value1 value2 = (output844, value386, value1) := by
  rw [input844_def, output844_def]
  kernel_rfl

theorem node845_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value384 value1 value2 = (output843, value385, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value385 value1 value2 = (output844, value386, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value384 value1 value2 = (output845, value386, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value386 value1 value2 = (output846, value387, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value387 value1 value2 = (output847, value388, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

theorem node848_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value386 value1 value2 = (output846, value387, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value387 value1 value2 = (output847, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value386 value1 value2 = (output848, value388, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input849 value388 value1 value2 = (output849, value389, value1) := by
  rw [input849_def, output849_def]
  kernel_rfl

theorem node850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input850 value389 value1 value2 = (output850, value390, value1) := by
  rw [input850_def, output850_def]
  kernel_rfl

theorem node851_cond_eq
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value388 value1 value2 = (output849, value389, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value389 value1 value2 = (output850, value390, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value388 value1 value2 = (output851, value390, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child849]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output849_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value390 value1 value2 = (output852, value391, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input853 value391 value1 value2 = (output853, value392, value1) := by
  rw [input853_def, output853_def]
  kernel_rfl

theorem node854_cond_eq
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value390 value1 value2 = (output852, value391, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value391 value1 value2 = (output853, value392, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value390 value1 value2 = (output854, value392, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child852]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output852_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input855 value392 value1 value2 = (output855, value393, value1) := by
  rw [input855_def, output855_def]
  kernel_rfl

theorem node856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input856 value393 value1 value2 = (output856, value394, value1) := by
  rw [input856_def, output856_def]
  kernel_rfl

theorem node857_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value392 value1 value2 = (output855, value393, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value393 value1 value2 = (output856, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value392 value1 value2 = (output857, value394, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output856_skip]
  kernel_rfl

theorem node858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input858 value394 value1 value2 = (output858, value395, value1) := by
  rw [input858_def, output858_def]
  kernel_rfl

theorem node859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input859 value395 value1 value2 = (output859, value396, value1) := by
  rw [input859_def, output859_def]
  kernel_rfl

theorem node860_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value394 value1 value2 = (output858, value395, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value395 value1 value2 = (output859, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value394 value1 value2 = (output860, value396, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input861 value396 value1 value2 = (output861, value397, value1) := by
  rw [input861_def, output861_def]
  kernel_rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value397 value1 value2 = (output862, value398, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

theorem node863_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value396 value1 value2 = (output861, value397, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value397 value1 value2 = (output862, value398, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value396 value1 value2 = (output863, value398, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input864 value398 value1 value2 = (output864, value399, value1) := by
  rw [input864_def, output864_def]
  kernel_rfl

theorem node865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input865 value399 value1 value2 = (output865, value400, value1) := by
  rw [input865_def, output865_def]
  kernel_rfl

theorem node866_cond_eq
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value398 value1 value2 = (output864, value399, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value399 value1 value2 = (output865, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value398 value1 value2 = (output866, value400, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child864]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output864_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value400 value1 value2 = (output867, value400, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input868 value400 value1 value2 = (output868, value401, value1) := by
  rw [input868_def, output868_def]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value401 value1 value2 = (output869, value402, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value400 value1 value2 = (output868, value401, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value401 value1 value2 = (output869, value402, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value400 value1 value2 = (output870, value402, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value402 value1 value2 = (output871, value403, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

theorem node872_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value400 value1 value2 = (output870, value402, value1))
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value402 value1 value2 = (output871, value403, value1)) : Flapjack.WordAlloc.removeDeadStructural input872 value400 value1 value2 = (output872, value403, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output871_skip]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value403 value1 value2 = (output873, value404, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value404 value1 value2 = (output874, value405, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value403 value1 value2 = (output873, value404, value1))
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value404 value1 value2 = (output874, value405, value1)) : Flapjack.WordAlloc.removeDeadStructural input875 value403 value1 value2 = (output875, value405, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output874_skip]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value405 value1 value2 = (output876, value406, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value406 value1 value2 = (output877, value407, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value405 value1 value2 = (output876, value406, value1))
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value406 value1 value2 = (output877, value407, value1)) : Flapjack.WordAlloc.removeDeadStructural input878 value405 value1 value2 = (output878, value407, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output877_skip]
  kernel_rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value407 value1 value2 = (output879, value408, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

theorem node880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input880 value408 value1 value2 = (output880, value409, value1) := by
  rw [input880_def, output880_def]
  kernel_rfl

theorem node881_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value407 value1 value2 = (output879, value408, value1))
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value408 value1 value2 = (output880, value409, value1)) : Flapjack.WordAlloc.removeDeadStructural input881 value407 value1 value2 = (output881, value409, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output880_skip]
  kernel_rfl

theorem node882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input882 value409 value1 value2 = (output882, value410, value1) := by
  rw [input882_def, output882_def]
  kernel_rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value410 value1 value2 = (output883, value411, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

theorem node884_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value409 value1 value2 = (output882, value410, value1))
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value410 value1 value2 = (output883, value411, value1)) : Flapjack.WordAlloc.removeDeadStructural input884 value409 value1 value2 = (output884, value411, value1) := by
  rw [input884_def, output884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output883_skip]
  kernel_rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value411 value1 value2 = (output885, value412, value1) := by
  rw [input885_def, output885_def]
  kernel_rfl

theorem node886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input886 value412 value1 value2 = (output886, value413, value1) := by
  rw [input886_def, output886_def]
  kernel_rfl

theorem node887_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value411 value1 value2 = (output885, value412, value1))
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value412 value1 value2 = (output886, value413, value1)) : Flapjack.WordAlloc.removeDeadStructural input887 value411 value1 value2 = (output887, value413, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output886_skip]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value413 value1 value2 = (output888, value414, value1) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value414 value1 value2 = (output889, value415, value1) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value413 value1 value2 = (output888, value414, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value414 value1 value2 = (output889, value415, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value413 value1 value2 = (output890, value415, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input891 value415 value1 value2 = (output891, value416, value1) := by
  rw [input891_def, output891_def]
  kernel_rfl

theorem node892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input892 value416 value1 value2 = (output892, value417, value1) := by
  rw [input892_def, output892_def]
  kernel_rfl

theorem node893_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value415 value1 value2 = (output891, value416, value1))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value416 value1 value2 = (output892, value417, value1)) : Flapjack.WordAlloc.removeDeadStructural input893 value415 value1 value2 = (output893, value417, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  try dsimp only
  rw [child892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output892_skip]
  kernel_rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value417 value1 value2 = (output894, value418, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

theorem node895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input895 value418 value1 value2 = (output895, value419, value1) := by
  rw [input895_def, output895_def]
  kernel_rfl

theorem node896_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value417 value1 value2 = (output894, value418, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value418 value1 value2 = (output895, value419, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value417 value1 value2 = (output896, value419, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value419 value1 value2 = (output897, value420, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value420 value1 value2 = (output898, value421, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value419 value1 value2 = (output897, value420, value1))
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value420 value1 value2 = (output898, value421, value1)) : Flapjack.WordAlloc.removeDeadStructural input899 value419 value1 value2 = (output899, value421, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output898_skip]
  kernel_rfl

theorem node900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input900 value421 value1 value2 = (output900, value421, value1) := by
  rw [input900_def, output900_def]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value421 value1 value2 = (output901, value422, value1) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input902 value422 value1 value2 = (output902, value423, value1) := by
  rw [input902_def, output902_def]
  kernel_rfl

theorem node903_cond_eq
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value421 value1 value2 = (output901, value422, value1))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value422 value1 value2 = (output902, value423, value1)) : Flapjack.WordAlloc.removeDeadStructural input903 value421 value1 value2 = (output903, value423, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child901]
  try dsimp only
  rw [child902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output901_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value423 value1 value2 = (output904, value424, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value421 value1 value2 = (output903, value423, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value423 value1 value2 = (output904, value424, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value421 value1 value2 = (output905, value424, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value424 value1 value2 = (output906, value425, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value425 value1 value2 = (output907, value426, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

theorem node908_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value424 value1 value2 = (output906, value425, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value425 value1 value2 = (output907, value426, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value424 value1 value2 = (output908, value426, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value426 value1 value2 = (output909, value427, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input910 value427 value1 value2 = (output910, value428, value1) := by
  rw [input910_def, output910_def]
  kernel_rfl

theorem node911_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value426 value1 value2 = (output909, value427, value1))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value427 value1 value2 = (output910, value428, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value426 value1 value2 = (output911, value428, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input912 value428 value1 value2 = (output912, value429, value1) := by
  rw [input912_def, output912_def]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value429 value1 value2 = (output913, value430, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value428 value1 value2 = (output912, value429, value1))
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value429 value1 value2 = (output913, value430, value1)) : Flapjack.WordAlloc.removeDeadStructural input914 value428 value1 value2 = (output914, value430, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output913_skip]
  kernel_rfl

theorem node915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input915 value430 value1 value2 = (output915, value431, value1) := by
  rw [input915_def, output915_def]
  kernel_rfl

theorem node916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input916 value431 value1 value2 = (output916, value432, value1) := by
  rw [input916_def, output916_def]
  kernel_rfl

theorem node917_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value430 value1 value2 = (output915, value431, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value431 value1 value2 = (output916, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value430 value1 value2 = (output917, value432, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input918 value432 value1 value2 = (output918, value433, value1) := by
  rw [input918_def, output918_def]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value433 value1 value2 = (output919, value434, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value432 value1 value2 = (output918, value433, value1))
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value433 value1 value2 = (output919, value434, value1)) : Flapjack.WordAlloc.removeDeadStructural input920 value432 value1 value2 = (output920, value434, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output919_skip]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value434 value1 value2 = (output921, value435, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input922 value435 value1 value2 = (output922, value436, value1) := by
  rw [input922_def, output922_def]
  kernel_rfl

theorem node923_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value434 value1 value2 = (output921, value435, value1))
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value435 value1 value2 = (output922, value436, value1)) : Flapjack.WordAlloc.removeDeadStructural input923 value434 value1 value2 = (output923, value436, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output922_skip]
  kernel_rfl

theorem node924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input924 value436 value1 value2 = (output924, value437, value1) := by
  rw [input924_def, output924_def]
  kernel_rfl

theorem node925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input925 value437 value1 value2 = (output925, value438, value1) := by
  rw [input925_def, output925_def]
  kernel_rfl

theorem node926_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value436 value1 value2 = (output924, value437, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value437 value1 value2 = (output925, value438, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value436 value1 value2 = (output926, value438, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output925_skip]
  kernel_rfl

theorem node927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input927 value438 value1 value2 = (output927, value439, value1) := by
  rw [input927_def, output927_def]
  kernel_rfl

theorem node928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input928 value439 value1 value2 = (output928, value440, value1) := by
  rw [input928_def, output928_def]
  kernel_rfl

theorem node929_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value438 value1 value2 = (output927, value439, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value439 value1 value2 = (output928, value440, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value438 value1 value2 = (output929, value440, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input930 value440 value1 value2 = (output930, value441, value1) := by
  rw [input930_def, output930_def]
  kernel_rfl

theorem node931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input931 value441 value1 value2 = (output931, value442, value1) := by
  rw [input931_def, output931_def]
  kernel_rfl

theorem node932_cond_eq
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value440 value1 value2 = (output930, value441, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value441 value1 value2 = (output931, value442, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value440 value1 value2 = (output932, value442, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child930]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output930_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value442 value1 value2 = (output933, value442, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input934 value442 value1 value2 = (output934, value443, value1) := by
  rw [input934_def, output934_def]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value443 value1 value2 = (output935, value444, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value442 value1 value2 = (output934, value443, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value443 value1 value2 = (output935, value444, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value442 value1 value2 = (output936, value444, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value444 value1 value2 = (output937, value445, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value442 value1 value2 = (output936, value444, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value444 value1 value2 = (output937, value445, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value442 value1 value2 = (output938, value445, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input939 value445 value1 value2 = (output939, value446, value1) := by
  rw [input939_def, output939_def]
  kernel_rfl

theorem node940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input940 value446 value1 value2 = (output940, value447, value1) := by
  rw [input940_def, output940_def]
  kernel_rfl

theorem node941_cond_eq
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value445 value1 value2 = (output939, value446, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value446 value1 value2 = (output940, value447, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value445 value1 value2 = (output941, value447, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child939]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output939_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input942 value447 value1 value2 = (output942, value448, value1) := by
  rw [input942_def, output942_def]
  kernel_rfl

theorem node943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input943 value448 value1 value2 = (output943, value449, value1) := by
  rw [input943_def, output943_def]
  kernel_rfl

theorem node944_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value447 value1 value2 = (output942, value448, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value448 value1 value2 = (output943, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value447 value1 value2 = (output944, value449, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output942_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input945 value449 value1 value2 = (output945, value450, value1) := by
  rw [input945_def, output945_def]
  kernel_rfl

theorem node946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input946 value450 value1 value2 = (output946, value451, value1) := by
  rw [input946_def, output946_def]
  kernel_rfl

theorem node947_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value449 value1 value2 = (output945, value450, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value450 value1 value2 = (output946, value451, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value449 value1 value2 = (output947, value451, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  try dsimp only
  rw [child946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input948 value451 value1 value2 = (output948, value452, value1) := by
  rw [input948_def, output948_def]
  kernel_rfl

theorem node949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input949 value452 value1 value2 = (output949, value453, value1) := by
  rw [input949_def, output949_def]
  kernel_rfl

theorem node950_cond_eq
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value451 value1 value2 = (output948, value452, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value452 value1 value2 = (output949, value453, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value451 value1 value2 = (output950, value453, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child948]
  try dsimp only
  rw [child949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output948_skip, output949_skip]
  kernel_rfl

theorem node951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input951 value453 value1 value2 = (output951, value454, value1) := by
  rw [input951_def, output951_def]
  kernel_rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value454 value1 value2 = (output952, value455, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

theorem node953_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value453 value1 value2 = (output951, value454, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value454 value1 value2 = (output952, value455, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value453 value1 value2 = (output953, value455, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input954 value455 value1 value2 = (output954, value456, value1) := by
  rw [input954_def, output954_def]
  kernel_rfl

theorem node955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input955 value456 value1 value2 = (output955, value457, value1) := by
  rw [input955_def, output955_def]
  kernel_rfl

theorem node956_cond_eq
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value455 value1 value2 = (output954, value456, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value456 value1 value2 = (output955, value457, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value455 value1 value2 = (output956, value457, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child954]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output954_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input957 value457 value1 value2 = (output957, value458, value1) := by
  rw [input957_def, output957_def]
  kernel_rfl

theorem node958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input958 value458 value1 value2 = (output958, value459, value1) := by
  rw [input958_def, output958_def]
  kernel_rfl

theorem node959_cond_eq
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value457 value1 value2 = (output957, value458, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value458 value1 value2 = (output958, value459, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value457 value1 value2 = (output959, value459, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child957]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output957_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input960 value459 value1 value2 = (output960, value460, value1) := by
  rw [input960_def, output960_def]
  kernel_rfl

theorem node961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input961 value460 value1 value2 = (output961, value461, value1) := by
  rw [input961_def, output961_def]
  kernel_rfl

theorem node962_cond_eq
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value459 value1 value2 = (output960, value460, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value460 value1 value2 = (output961, value461, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value459 value1 value2 = (output962, value461, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child960]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output960_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input963 value461 value1 value2 = (output963, value462, value1) := by
  rw [input963_def, output963_def]
  kernel_rfl

theorem node964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input964 value462 value1 value2 = (output964, value463, value1) := by
  rw [input964_def, output964_def]
  kernel_rfl

theorem node965_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value461 value1 value2 = (output963, value462, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value462 value1 value2 = (output964, value463, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value461 value1 value2 = (output965, value463, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input966 value463 value1 value2 = (output966, value463, value1) := by
  rw [input966_def, output966_def]
  kernel_rfl

theorem node967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input967 value463 value1 value2 = (output967, value464, value1) := by
  rw [input967_def, output967_def]
  kernel_rfl

theorem node968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input968 value464 value1 value2 = (output968, value465, value1) := by
  rw [input968_def, output968_def]
  kernel_rfl

theorem node969_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value463 value1 value2 = (output967, value464, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value464 value1 value2 = (output968, value465, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value463 value1 value2 = (output969, value465, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output967_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input970 value465 value1 value2 = (output970, value466, value1) := by
  rw [input970_def, output970_def]
  kernel_rfl

theorem node971_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value463 value1 value2 = (output969, value465, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value465 value1 value2 = (output970, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value463 value1 value2 = (output971, value466, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input972 value466 value1 value2 = (output972, value467, value1) := by
  rw [input972_def, output972_def]
  kernel_rfl

theorem node973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input973 value467 value1 value2 = (output973, value468, value1) := by
  rw [input973_def, output973_def]
  kernel_rfl

theorem node974_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value466 value1 value2 = (output972, value467, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value467 value1 value2 = (output973, value468, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value466 value1 value2 = (output974, value468, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input975 value468 value1 value2 = (output975, value469, value1) := by
  rw [input975_def, output975_def]
  kernel_rfl

theorem node976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input976 value469 value1 value2 = (output976, value470, value1) := by
  rw [input976_def, output976_def]
  kernel_rfl

theorem node977_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value468 value1 value2 = (output975, value469, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value469 value1 value2 = (output976, value470, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value468 value1 value2 = (output977, value470, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output976_skip]
  kernel_rfl

theorem node978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input978 value470 value1 value2 = (output978, value471, value1) := by
  rw [input978_def, output978_def]
  kernel_rfl

theorem node979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input979 value471 value1 value2 = (output979, value472, value1) := by
  rw [input979_def, output979_def]
  kernel_rfl

theorem node980_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value470 value1 value2 = (output978, value471, value1))
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value471 value1 value2 = (output979, value472, value1)) : Flapjack.WordAlloc.removeDeadStructural input980 value470 value1 value2 = (output980, value472, value1) := by
  rw [input980_def, output980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  try dsimp only
  rw [child979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output978_skip, output979_skip]
  kernel_rfl

theorem node981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input981 value472 value1 value2 = (output981, value473, value1) := by
  rw [input981_def, output981_def]
  kernel_rfl

theorem node982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input982 value473 value1 value2 = (output982, value474, value1) := by
  rw [input982_def, output982_def]
  kernel_rfl

theorem node983_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value472 value1 value2 = (output981, value473, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value473 value1 value2 = (output982, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value472 value1 value2 = (output983, value474, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input984 value474 value1 value2 = (output984, value475, value1) := by
  rw [input984_def, output984_def]
  kernel_rfl

theorem node985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input985 value475 value1 value2 = (output985, value476, value1) := by
  rw [input985_def, output985_def]
  kernel_rfl

theorem node986_cond_eq
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value474 value1 value2 = (output984, value475, value1))
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value475 value1 value2 = (output985, value476, value1)) : Flapjack.WordAlloc.removeDeadStructural input986 value474 value1 value2 = (output986, value476, value1) := by
  rw [input986_def, output986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child984]
  try dsimp only
  rw [child985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output984_skip, output985_skip]
  kernel_rfl

theorem node987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input987 value476 value1 value2 = (output987, value477, value1) := by
  rw [input987_def, output987_def]
  kernel_rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value477 value1 value2 = (output988, value478, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

theorem node989_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value476 value1 value2 = (output987, value477, value1))
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value477 value1 value2 = (output988, value478, value1)) : Flapjack.WordAlloc.removeDeadStructural input989 value476 value1 value2 = (output989, value478, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output988_skip]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value478 value1 value2 = (output990, value479, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value479 value1 value2 = (output991, value480, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value478 value1 value2 = (output990, value479, value1))
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value479 value1 value2 = (output991, value480, value1)) : Flapjack.WordAlloc.removeDeadStructural input992 value478 value1 value2 = (output992, value480, value1) := by
  rw [input992_def, output992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output991_skip]
  kernel_rfl

theorem node993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input993 value480 value1 value2 = (output993, value481, value1) := by
  rw [input993_def, output993_def]
  kernel_rfl

theorem node994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input994 value481 value1 value2 = (output994, value482, value1) := by
  rw [input994_def, output994_def]
  kernel_rfl

theorem node995_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value480 value1 value2 = (output993, value481, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value481 value1 value2 = (output994, value482, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value480 value1 value2 = (output995, value482, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input996 value482 value1 value2 = (output996, value483, value1) := by
  rw [input996_def, output996_def]
  kernel_rfl

theorem node997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input997 value483 value1 value2 = (output997, value484, value1) := by
  rw [input997_def, output997_def]
  kernel_rfl

theorem node998_cond_eq
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value482 value1 value2 = (output996, value483, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value483 value1 value2 = (output997, value484, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value482 value1 value2 = (output998, value484, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child996]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output996_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input999 value484 value1 value2 = (output999, value484, value1) := by
  rw [input999_def, output999_def]
  kernel_rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value484 value1 value2 = (output1000, value485, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

theorem node1001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1001 value485 value1 value2 = (output1001, value486, value1) := by
  rw [input1001_def, output1001_def]
  kernel_rfl

theorem node1002_cond_eq
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value484 value1 value2 = (output1000, value485, value1))
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value485 value1 value2 = (output1001, value486, value1)) : Flapjack.WordAlloc.removeDeadStructural input1002 value484 value1 value2 = (output1002, value486, value1) := by
  rw [input1002_def, output1002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1000]
  try dsimp only
  rw [child1001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1000_skip, output1001_skip]
  kernel_rfl

theorem node1003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value486 value1 value2 = (output1003, value487, value1) := by
  rw [input1003_def, output1003_def]
  kernel_rfl

theorem node1004_cond_eq
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value484 value1 value2 = (output1002, value486, value1))
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value486 value1 value2 = (output1003, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input1004 value484 value1 value2 = (output1004, value487, value1) := by
  rw [input1004_def, output1004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1002]
  try dsimp only
  rw [child1003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1002_skip, output1003_skip]
  kernel_rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value487 value1 value2 = (output1005, value488, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

theorem node1006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value488 value1 value2 = (output1006, value489, value1) := by
  rw [input1006_def, output1006_def]
  kernel_rfl

theorem node1007_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value487 value1 value2 = (output1005, value488, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value488 value1 value2 = (output1006, value489, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value487 value1 value2 = (output1007, value489, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1008 value489 value1 value2 = (output1008, value490, value1) := by
  rw [input1008_def, output1008_def]
  kernel_rfl

theorem node1009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value490 value1 value2 = (output1009, value491, value1) := by
  rw [input1009_def, output1009_def]
  kernel_rfl

theorem node1010_cond_eq
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value489 value1 value2 = (output1008, value490, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value490 value1 value2 = (output1009, value491, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value489 value1 value2 = (output1010, value491, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1008]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1008_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1011 value491 value1 value2 = (output1011, value492, value1) := by
  rw [input1011_def, output1011_def]
  kernel_rfl

theorem node1012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value492 value1 value2 = (output1012, value493, value1) := by
  rw [input1012_def, output1012_def]
  kernel_rfl

theorem node1013_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value491 value1 value2 = (output1011, value492, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value492 value1 value2 = (output1012, value493, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value491 value1 value2 = (output1013, value493, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  try dsimp only
  rw [child1012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output1012_skip]
  kernel_rfl

theorem node1014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1014 value493 value1 value2 = (output1014, value494, value1) := by
  rw [input1014_def, output1014_def]
  kernel_rfl

theorem node1015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value494 value1 value2 = (output1015, value495, value1) := by
  rw [input1015_def, output1015_def]
  kernel_rfl

theorem node1016_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value493 value1 value2 = (output1014, value494, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value494 value1 value2 = (output1015, value495, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value493 value1 value2 = (output1016, value495, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value495 value1 value2 = (output1017, value496, value1) := by
  rw [input1017_def, output1017_def]
  kernel_rfl

theorem node1018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value496 value1 value2 = (output1018, value497, value1) := by
  rw [input1018_def, output1018_def]
  kernel_rfl

theorem node1019_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value495 value1 value2 = (output1017, value496, value1))
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value496 value1 value2 = (output1018, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input1019 value495 value1 value2 = (output1019, value497, value1) := by
  rw [input1019_def, output1019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  try dsimp only
  rw [child1018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1018_skip]
  kernel_rfl

theorem node1020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1020 value497 value1 value2 = (output1020, value498, value1) := by
  rw [input1020_def, output1020_def]
  kernel_rfl

theorem node1021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1021 value498 value1 value2 = (output1021, value499, value1) := by
  rw [input1021_def, output1021_def]
  kernel_rfl

theorem node1022_cond_eq
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value497 value1 value2 = (output1020, value498, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value498 value1 value2 = (output1021, value499, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value497 value1 value2 = (output1022, value499, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1020]
  try dsimp only
  rw [child1021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1020_skip, output1021_skip]
  kernel_rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value499 value1 value2 = (output1023, value500, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages233.Parallel
