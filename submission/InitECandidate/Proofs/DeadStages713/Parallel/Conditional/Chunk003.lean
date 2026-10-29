import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node768_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value388 value1 value2 = (output766, value389, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value389 value1 value2 = (output767, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value388 value1 value2 = (output768, value5, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  dsimp only
  rw [child767]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value387 value1 value2 = (output765, value388, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value388 value1 value2 = (output768, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value387 value1 value2 = (output769, value5, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  dsimp only
  rw [child768]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value386 value1 value2 = (output764, value387, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value387 value1 value2 = (output769, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value386 value1 value2 = (output770, value5, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  dsimp only
  rw [child769]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value384 value1 value2 = (output763, value386, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value386 value1 value2 = (output770, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value384 value1 value2 = (output771, value5, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  dsimp only
  rw [child770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input772 value5 value1 value2 = (output772, value390, value1) := by
  rw [input772_def, output772_def]
  kernel_rfl

theorem node773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input773 value390 value1 value2 = (output773, value391, value1) := by
  rw [input773_def, output773_def]
  kernel_rfl

theorem node774_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value5 value1 value2 = (output772, value390, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value390 value1 value2 = (output773, value391, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value5 value1 value2 = (output774, value391, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  dsimp only
  rw [child773]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value391 value1 value2 = (output775, value392, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value392 value1 value2 = (output776, value392, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input777 value392 value1 value2 = (output777, value393, value1) := by
  rw [input777_def, output777_def]
  kernel_rfl

theorem node778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input778 value393 value1 value2 = (output778, value394, value1) := by
  rw [input778_def, output778_def]
  kernel_rfl

theorem node779_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value392 value1 value2 = (output777, value393, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value393 value1 value2 = (output778, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value392 value1 value2 = (output779, value394, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child777]
  dsimp only
  rw [child778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input780 value394 value1 value2 = (output780, value395, value1) := by
  rw [input780_def, output780_def]
  kernel_rfl

theorem node781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input781 value395 value1 value2 = (output781, value396, value1) := by
  rw [input781_def, output781_def]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value396 value1 value2 = (output782, value397, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value397 value1 value2 = (output783, value5, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value396 value1 value2 = (output782, value397, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value397 value1 value2 = (output783, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value396 value1 value2 = (output784, value5, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  dsimp only
  rw [child783]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value395 value1 value2 = (output781, value396, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value396 value1 value2 = (output784, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value395 value1 value2 = (output785, value5, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  dsimp only
  rw [child784]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value394 value1 value2 = (output780, value395, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value395 value1 value2 = (output785, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value394 value1 value2 = (output786, value5, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  dsimp only
  rw [child785]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value392 value1 value2 = (output779, value394, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value394 value1 value2 = (output786, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value392 value1 value2 = (output787, value5, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  dsimp only
  rw [child786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input788 value5 value1 value2 = (output788, value398, value1) := by
  rw [input788_def, output788_def]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value398 value1 value2 = (output789, value399, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value5 value1 value2 = (output788, value398, value1))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value398 value1 value2 = (output789, value399, value1)) : Flapjack.WordAlloc.removeDeadStructural input790 value5 value1 value2 = (output790, value399, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  dsimp only
  rw [child789]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value399 value1 value2 = (output791, value400, value1) := by
  rw [input791_def, output791_def]
  kernel_rfl

theorem node792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input792 value400 value1 value2 = (output792, value400, value1) := by
  rw [input792_def, output792_def]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value400 value1 value2 = (output793, value401, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input794 value401 value1 value2 = (output794, value402, value1) := by
  rw [input794_def, output794_def]
  kernel_rfl

theorem node795_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value400 value1 value2 = (output793, value401, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value401 value1 value2 = (output794, value402, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value400 value1 value2 = (output795, value402, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  dsimp only
  rw [child794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input796 value402 value1 value2 = (output796, value403, value1) := by
  rw [input796_def, output796_def]
  kernel_rfl

theorem node797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input797 value403 value1 value2 = (output797, value404, value1) := by
  rw [input797_def, output797_def]
  kernel_rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value404 value1 value2 = (output798, value405, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value405 value1 value2 = (output799, value5, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

theorem node800_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value404 value1 value2 = (output798, value405, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value405 value1 value2 = (output799, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value404 value1 value2 = (output800, value5, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  dsimp only
  rw [child799]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value403 value1 value2 = (output797, value404, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value404 value1 value2 = (output800, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value403 value1 value2 = (output801, value5, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  dsimp only
  rw [child800]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value402 value1 value2 = (output796, value403, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value403 value1 value2 = (output801, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value402 value1 value2 = (output802, value5, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  dsimp only
  rw [child801]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value400 value1 value2 = (output795, value402, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value402 value1 value2 = (output802, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value400 value1 value2 = (output803, value5, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child795]
  dsimp only
  rw [child802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output795_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value5 value1 value2 = (output804, value406, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value406 value1 value2 = (output805, value407, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value5 value1 value2 = (output804, value406, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value406 value1 value2 = (output805, value407, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value5 value1 value2 = (output806, value407, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  dsimp only
  rw [child805]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input807 value407 value1 value2 = (output807, value408, value1) := by
  rw [input807_def, output807_def]
  kernel_rfl

theorem node808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input808 value408 value1 value2 = (output808, value408, value1) := by
  rw [input808_def, output808_def]
  kernel_rfl

theorem node809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input809 value408 value1 value2 = (output809, value409, value1) := by
  rw [input809_def, output809_def]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value409 value1 value2 = (output810, value410, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value408 value1 value2 = (output809, value409, value1))
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value409 value1 value2 = (output810, value410, value1)) : Flapjack.WordAlloc.removeDeadStructural input811 value408 value1 value2 = (output811, value410, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  dsimp only
  rw [child810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output810_skip]
  kernel_rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value410 value1 value2 = (output812, value411, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

theorem node813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input813 value411 value1 value2 = (output813, value412, value1) := by
  rw [input813_def, output813_def]
  kernel_rfl

theorem node814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input814 value412 value1 value2 = (output814, value413, value1) := by
  rw [input814_def, output814_def]
  kernel_rfl

theorem node815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input815 value413 value1 value2 = (output815, value5, value1) := by
  rw [input815_def, output815_def]
  kernel_rfl

theorem node816_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value412 value1 value2 = (output814, value413, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value413 value1 value2 = (output815, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value412 value1 value2 = (output816, value5, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  dsimp only
  rw [child815]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value411 value1 value2 = (output813, value412, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value412 value1 value2 = (output816, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value411 value1 value2 = (output817, value5, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  dsimp only
  rw [child816]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value410 value1 value2 = (output812, value411, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value411 value1 value2 = (output817, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value410 value1 value2 = (output818, value5, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  dsimp only
  rw [child817]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value408 value1 value2 = (output811, value410, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value410 value1 value2 = (output818, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value408 value1 value2 = (output819, value5, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  dsimp only
  rw [child818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input820 value5 value1 value2 = (output820, value414, value1) := by
  rw [input820_def, output820_def]
  kernel_rfl

theorem node821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input821 value414 value1 value2 = (output821, value415, value1) := by
  rw [input821_def, output821_def]
  kernel_rfl

theorem node822_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value5 value1 value2 = (output820, value414, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value414 value1 value2 = (output821, value415, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value5 value1 value2 = (output822, value415, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  dsimp only
  rw [child821]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input823 value415 value1 value2 = (output823, value416, value1) := by
  rw [input823_def, output823_def]
  kernel_rfl

theorem node824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input824 value416 value1 value2 = (output824, value416, value1) := by
  rw [input824_def, output824_def]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value416 value1 value2 = (output825, value417, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input826 value417 value1 value2 = (output826, value418, value1) := by
  rw [input826_def, output826_def]
  kernel_rfl

theorem node827_cond_eq
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value416 value1 value2 = (output825, value417, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value417 value1 value2 = (output826, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value416 value1 value2 = (output827, value418, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child825]
  dsimp only
  rw [child826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output825_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input828 value418 value1 value2 = (output828, value419, value1) := by
  rw [input828_def, output828_def]
  kernel_rfl

theorem node829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input829 value419 value1 value2 = (output829, value420, value1) := by
  rw [input829_def, output829_def]
  kernel_rfl

theorem node830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input830 value420 value1 value2 = (output830, value421, value1) := by
  rw [input830_def, output830_def]
  kernel_rfl

theorem node831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input831 value421 value1 value2 = (output831, value5, value1) := by
  rw [input831_def, output831_def]
  kernel_rfl

theorem node832_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value420 value1 value2 = (output830, value421, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value421 value1 value2 = (output831, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value420 value1 value2 = (output832, value5, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  dsimp only
  rw [child831]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value419 value1 value2 = (output829, value420, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value420 value1 value2 = (output832, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value419 value1 value2 = (output833, value5, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child829]
  dsimp only
  rw [child832]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output829_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value418 value1 value2 = (output828, value419, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value419 value1 value2 = (output833, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value418 value1 value2 = (output834, value5, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child828]
  dsimp only
  rw [child833]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output828_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value416 value1 value2 = (output827, value418, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value418 value1 value2 = (output834, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value416 value1 value2 = (output835, value5, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  dsimp only
  rw [child834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input836 value5 value1 value2 = (output836, value422, value1) := by
  rw [input836_def, output836_def]
  kernel_rfl

theorem node837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input837 value422 value1 value2 = (output837, value423, value1) := by
  rw [input837_def, output837_def]
  kernel_rfl

theorem node838_cond_eq
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value5 value1 value2 = (output836, value422, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value422 value1 value2 = (output837, value423, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value5 value1 value2 = (output838, value423, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child836]
  dsimp only
  rw [child837]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output836_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input839 value423 value1 value2 = (output839, value424, value1) := by
  rw [input839_def, output839_def]
  kernel_rfl

theorem node840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input840 value424 value1 value2 = (output840, value424, value1) := by
  rw [input840_def, output840_def]
  kernel_rfl

theorem node841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input841 value424 value1 value2 = (output841, value425, value1) := by
  rw [input841_def, output841_def]
  kernel_rfl

theorem node842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input842 value425 value1 value2 = (output842, value426, value1) := by
  rw [input842_def, output842_def]
  kernel_rfl

theorem node843_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value424 value1 value2 = (output841, value425, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value425 value1 value2 = (output842, value426, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value424 value1 value2 = (output843, value426, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  dsimp only
  rw [child842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input844 value426 value1 value2 = (output844, value427, value1) := by
  rw [input844_def, output844_def]
  kernel_rfl

theorem node845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input845 value427 value1 value2 = (output845, value428, value1) := by
  rw [input845_def, output845_def]
  kernel_rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value428 value1 value2 = (output846, value429, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value429 value1 value2 = (output847, value5, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

theorem node848_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value428 value1 value2 = (output846, value429, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value429 value1 value2 = (output847, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value428 value1 value2 = (output848, value5, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  dsimp only
  rw [child847]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value427 value1 value2 = (output845, value428, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value428 value1 value2 = (output848, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value427 value1 value2 = (output849, value5, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  dsimp only
  rw [child848]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value426 value1 value2 = (output844, value427, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value427 value1 value2 = (output849, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value426 value1 value2 = (output850, value5, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  dsimp only
  rw [child849]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value424 value1 value2 = (output843, value426, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value426 value1 value2 = (output850, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value424 value1 value2 = (output851, value5, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  dsimp only
  rw [child850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value5 value1 value2 = (output852, value430, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input853 value430 value1 value2 = (output853, value431, value1) := by
  rw [input853_def, output853_def]
  kernel_rfl

theorem node854_cond_eq
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value5 value1 value2 = (output852, value430, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value430 value1 value2 = (output853, value431, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value5 value1 value2 = (output854, value431, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child852]
  dsimp only
  rw [child853]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output852_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input855 value431 value1 value2 = (output855, value432, value1) := by
  rw [input855_def, output855_def]
  kernel_rfl

theorem node856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input856 value432 value1 value2 = (output856, value432, value1) := by
  rw [input856_def, output856_def]
  kernel_rfl

theorem node857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input857 value432 value1 value2 = (output857, value433, value1) := by
  rw [input857_def, output857_def]
  kernel_rfl

theorem node858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input858 value433 value1 value2 = (output858, value434, value1) := by
  rw [input858_def, output858_def]
  kernel_rfl

theorem node859_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value432 value1 value2 = (output857, value433, value1))
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value433 value1 value2 = (output858, value434, value1)) : Flapjack.WordAlloc.removeDeadStructural input859 value432 value1 value2 = (output859, value434, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  dsimp only
  rw [child858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output858_skip]
  kernel_rfl

theorem node860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input860 value434 value1 value2 = (output860, value435, value1) := by
  rw [input860_def, output860_def]
  kernel_rfl

theorem node861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input861 value435 value1 value2 = (output861, value436, value1) := by
  rw [input861_def, output861_def]
  kernel_rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value436 value1 value2 = (output862, value437, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

theorem node863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input863 value437 value1 value2 = (output863, value5, value1) := by
  rw [input863_def, output863_def]
  kernel_rfl

theorem node864_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value436 value1 value2 = (output862, value437, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value437 value1 value2 = (output863, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value436 value1 value2 = (output864, value5, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  dsimp only
  rw [child863]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value435 value1 value2 = (output861, value436, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value436 value1 value2 = (output864, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value435 value1 value2 = (output865, value5, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  dsimp only
  rw [child864]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value434 value1 value2 = (output860, value435, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value435 value1 value2 = (output865, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value434 value1 value2 = (output866, value5, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  dsimp only
  rw [child865]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value432 value1 value2 = (output859, value434, value1))
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value434 value1 value2 = (output866, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input867 value432 value1 value2 = (output867, value5, value1) := by
  rw [input867_def, output867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  dsimp only
  rw [child866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output866_skip]
  kernel_rfl

theorem node868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input868 value5 value1 value2 = (output868, value438, value1) := by
  rw [input868_def, output868_def]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value438 value1 value2 = (output869, value439, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value5 value1 value2 = (output868, value438, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value438 value1 value2 = (output869, value439, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value5 value1 value2 = (output870, value439, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  dsimp only
  rw [child869]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value439 value1 value2 = (output871, value440, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

theorem node872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input872 value440 value1 value2 = (output872, value440, value1) := by
  rw [input872_def, output872_def]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value440 value1 value2 = (output873, value441, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value441 value1 value2 = (output874, value442, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value440 value1 value2 = (output873, value441, value1))
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value441 value1 value2 = (output874, value442, value1)) : Flapjack.WordAlloc.removeDeadStructural input875 value440 value1 value2 = (output875, value442, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  dsimp only
  rw [child874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output874_skip]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value442 value1 value2 = (output876, value443, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value443 value1 value2 = (output877, value444, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input878 value444 value1 value2 = (output878, value445, value1) := by
  rw [input878_def, output878_def]
  kernel_rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value445 value1 value2 = (output879, value5, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

theorem node880_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value444 value1 value2 = (output878, value445, value1))
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value445 value1 value2 = (output879, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input880 value444 value1 value2 = (output880, value5, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  dsimp only
  rw [child879]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output879_skip]
  kernel_rfl

theorem node881_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value443 value1 value2 = (output877, value444, value1))
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value444 value1 value2 = (output880, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input881 value443 value1 value2 = (output881, value5, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  dsimp only
  rw [child880]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output880_skip]
  kernel_rfl

theorem node882_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value442 value1 value2 = (output876, value443, value1))
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value443 value1 value2 = (output881, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input882 value442 value1 value2 = (output882, value5, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  dsimp only
  rw [child881]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output881_skip]
  kernel_rfl

theorem node883_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value440 value1 value2 = (output875, value442, value1))
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value442 value1 value2 = (output882, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input883 value440 value1 value2 = (output883, value5, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  dsimp only
  rw [child882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output882_skip]
  kernel_rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value5 value1 value2 = (output884, value446, value1) := by
  rw [input884_def, output884_def]
  kernel_rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value446 value1 value2 = (output885, value447, value1) := by
  rw [input885_def, output885_def]
  kernel_rfl

theorem node886_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value5 value1 value2 = (output884, value446, value1))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value446 value1 value2 = (output885, value447, value1)) : Flapjack.WordAlloc.removeDeadStructural input886 value5 value1 value2 = (output886, value447, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  dsimp only
  rw [child885]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input887 value447 value1 value2 = (output887, value448, value1) := by
  rw [input887_def, output887_def]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value448 value1 value2 = (output888, value448, value1) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value448 value1 value2 = (output889, value449, value1) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input890 value449 value1 value2 = (output890, value450, value1) := by
  rw [input890_def, output890_def]
  kernel_rfl

theorem node891_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value448 value1 value2 = (output889, value449, value1))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value449 value1 value2 = (output890, value450, value1)) : Flapjack.WordAlloc.removeDeadStructural input891 value448 value1 value2 = (output891, value450, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  dsimp only
  rw [child890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input892 value450 value1 value2 = (output892, value451, value1) := by
  rw [input892_def, output892_def]
  kernel_rfl

theorem node893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input893 value451 value1 value2 = (output893, value452, value1) := by
  rw [input893_def, output893_def]
  kernel_rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value452 value1 value2 = (output894, value453, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

theorem node895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input895 value453 value1 value2 = (output895, value5, value1) := by
  rw [input895_def, output895_def]
  kernel_rfl

theorem node896_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value452 value1 value2 = (output894, value453, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value453 value1 value2 = (output895, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value452 value1 value2 = (output896, value5, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  dsimp only
  rw [child895]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value451 value1 value2 = (output893, value452, value1))
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value452 value1 value2 = (output896, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input897 value451 value1 value2 = (output897, value5, value1) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  dsimp only
  rw [child896]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output896_skip]
  kernel_rfl

theorem node898_cond_eq
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value450 value1 value2 = (output892, value451, value1))
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value451 value1 value2 = (output897, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input898 value450 value1 value2 = (output898, value5, value1) := by
  rw [input898_def, output898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child892]
  dsimp only
  rw [child897]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output892_skip, output897_skip]
  kernel_rfl

theorem node899_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value448 value1 value2 = (output891, value450, value1))
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value450 value1 value2 = (output898, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input899 value448 value1 value2 = (output899, value5, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  dsimp only
  rw [child898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output898_skip]
  kernel_rfl

theorem node900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input900 value5 value1 value2 = (output900, value454, value1) := by
  rw [input900_def, output900_def]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value454 value1 value2 = (output901, value455, value1) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value5 value1 value2 = (output900, value454, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value454 value1 value2 = (output901, value455, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value5 value1 value2 = (output902, value455, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  dsimp only
  rw [child901]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input903 value455 value1 value2 = (output903, value456, value1) := by
  rw [input903_def, output903_def]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value456 value1 value2 = (output904, value456, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input905 value456 value1 value2 = (output905, value457, value1) := by
  rw [input905_def, output905_def]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value457 value1 value2 = (output906, value458, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value456 value1 value2 = (output905, value457, value1))
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value457 value1 value2 = (output906, value458, value1)) : Flapjack.WordAlloc.removeDeadStructural input907 value456 value1 value2 = (output907, value458, value1) := by
  rw [input907_def, output907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  dsimp only
  rw [child906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output906_skip]
  kernel_rfl

theorem node908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input908 value458 value1 value2 = (output908, value459, value1) := by
  rw [input908_def, output908_def]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value459 value1 value2 = (output909, value460, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input910 value460 value1 value2 = (output910, value461, value1) := by
  rw [input910_def, output910_def]
  kernel_rfl

theorem node911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input911 value461 value1 value2 = (output911, value5, value1) := by
  rw [input911_def, output911_def]
  kernel_rfl

theorem node912_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value460 value1 value2 = (output910, value461, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value461 value1 value2 = (output911, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value460 value1 value2 = (output912, value5, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  dsimp only
  rw [child911]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value459 value1 value2 = (output909, value460, value1))
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value460 value1 value2 = (output912, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input913 value459 value1 value2 = (output913, value5, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  dsimp only
  rw [child912]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output912_skip]
  kernel_rfl

theorem node914_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value458 value1 value2 = (output908, value459, value1))
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value459 value1 value2 = (output913, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input914 value458 value1 value2 = (output914, value5, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  dsimp only
  rw [child913]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output913_skip]
  kernel_rfl

theorem node915_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value456 value1 value2 = (output907, value458, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value458 value1 value2 = (output914, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value456 value1 value2 = (output915, value5, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  dsimp only
  rw [child914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input916 value5 value1 value2 = (output916, value462, value1) := by
  rw [input916_def, output916_def]
  kernel_rfl

theorem node917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input917 value462 value1 value2 = (output917, value463, value1) := by
  rw [input917_def, output917_def]
  kernel_rfl

theorem node918_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value5 value1 value2 = (output916, value462, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value462 value1 value2 = (output917, value463, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value5 value1 value2 = (output918, value463, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  dsimp only
  rw [child917]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value463 value1 value2 = (output919, value464, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input920 value464 value1 value2 = (output920, value464, value1) := by
  rw [input920_def, output920_def]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value464 value1 value2 = (output921, value465, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input922 value465 value1 value2 = (output922, value466, value1) := by
  rw [input922_def, output922_def]
  kernel_rfl

theorem node923_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value464 value1 value2 = (output921, value465, value1))
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value465 value1 value2 = (output922, value466, value1)) : Flapjack.WordAlloc.removeDeadStructural input923 value464 value1 value2 = (output923, value466, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  dsimp only
  rw [child922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output922_skip]
  kernel_rfl

theorem node924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input924 value466 value1 value2 = (output924, value467, value1) := by
  rw [input924_def, output924_def]
  kernel_rfl

theorem node925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input925 value467 value1 value2 = (output925, value468, value1) := by
  rw [input925_def, output925_def]
  kernel_rfl

theorem node926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input926 value468 value1 value2 = (output926, value469, value1) := by
  rw [input926_def, output926_def]
  kernel_rfl

theorem node927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input927 value469 value1 value2 = (output927, value5, value1) := by
  rw [input927_def, output927_def]
  kernel_rfl

theorem node928_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value468 value1 value2 = (output926, value469, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value469 value1 value2 = (output927, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value468 value1 value2 = (output928, value5, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  dsimp only
  rw [child927]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output926_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value467 value1 value2 = (output925, value468, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value468 value1 value2 = (output928, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value467 value1 value2 = (output929, value5, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child925]
  dsimp only
  rw [child928]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output925_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value466 value1 value2 = (output924, value467, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value467 value1 value2 = (output929, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value466 value1 value2 = (output930, value5, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  dsimp only
  rw [child929]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value464 value1 value2 = (output923, value466, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value466 value1 value2 = (output930, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value464 value1 value2 = (output931, value5, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child923]
  dsimp only
  rw [child930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output923_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input932 value5 value1 value2 = (output932, value470, value1) := by
  rw [input932_def, output932_def]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value470 value1 value2 = (output933, value471, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value5 value1 value2 = (output932, value470, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value470 value1 value2 = (output933, value471, value1)) : Flapjack.WordAlloc.removeDeadStructural input934 value5 value1 value2 = (output934, value471, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  dsimp only
  rw [child933]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value471 value1 value2 = (output935, value472, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input936 value472 value1 value2 = (output936, value472, value1) := by
  rw [input936_def, output936_def]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value472 value1 value2 = (output937, value473, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input938 value473 value1 value2 = (output938, value474, value1) := by
  rw [input938_def, output938_def]
  kernel_rfl

theorem node939_cond_eq
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value472 value1 value2 = (output937, value473, value1))
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value473 value1 value2 = (output938, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input939 value472 value1 value2 = (output939, value474, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child937]
  dsimp only
  rw [child938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output937_skip, output938_skip]
  kernel_rfl

theorem node940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input940 value474 value1 value2 = (output940, value475, value1) := by
  rw [input940_def, output940_def]
  kernel_rfl

theorem node941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input941 value475 value1 value2 = (output941, value476, value1) := by
  rw [input941_def, output941_def]
  kernel_rfl

theorem node942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input942 value476 value1 value2 = (output942, value477, value1) := by
  rw [input942_def, output942_def]
  kernel_rfl

theorem node943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input943 value477 value1 value2 = (output943, value5, value1) := by
  rw [input943_def, output943_def]
  kernel_rfl

theorem node944_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value476 value1 value2 = (output942, value477, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value477 value1 value2 = (output943, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value476 value1 value2 = (output944, value5, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  dsimp only
  rw [child943]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output942_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value475 value1 value2 = (output941, value476, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value476 value1 value2 = (output944, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value475 value1 value2 = (output945, value5, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  dsimp only
  rw [child944]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value474 value1 value2 = (output940, value475, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value475 value1 value2 = (output945, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value474 value1 value2 = (output946, value5, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child940]
  dsimp only
  rw [child945]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output940_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value472 value1 value2 = (output939, value474, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value474 value1 value2 = (output946, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value472 value1 value2 = (output947, value5, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child939]
  dsimp only
  rw [child946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output939_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input948 value5 value1 value2 = (output948, value478, value1) := by
  rw [input948_def, output948_def]
  kernel_rfl

theorem node949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input949 value478 value1 value2 = (output949, value479, value1) := by
  rw [input949_def, output949_def]
  kernel_rfl

theorem node950_cond_eq
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value5 value1 value2 = (output948, value478, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value478 value1 value2 = (output949, value479, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value5 value1 value2 = (output950, value479, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child948]
  dsimp only
  rw [child949]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output948_skip, output949_skip]
  kernel_rfl

theorem node951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input951 value479 value1 value2 = (output951, value480, value1) := by
  rw [input951_def, output951_def]
  kernel_rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value480 value1 value2 = (output952, value480, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

theorem node953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input953 value480 value1 value2 = (output953, value481, value1) := by
  rw [input953_def, output953_def]
  kernel_rfl

theorem node954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input954 value481 value1 value2 = (output954, value482, value1) := by
  rw [input954_def, output954_def]
  kernel_rfl

theorem node955_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value480 value1 value2 = (output953, value481, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value481 value1 value2 = (output954, value482, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value480 value1 value2 = (output955, value482, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  dsimp only
  rw [child954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output953_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input956 value482 value1 value2 = (output956, value483, value1) := by
  rw [input956_def, output956_def]
  kernel_rfl

theorem node957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input957 value483 value1 value2 = (output957, value484, value1) := by
  rw [input957_def, output957_def]
  kernel_rfl

theorem node958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input958 value484 value1 value2 = (output958, value485, value1) := by
  rw [input958_def, output958_def]
  kernel_rfl

theorem node959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input959 value485 value1 value2 = (output959, value5, value1) := by
  rw [input959_def, output959_def]
  kernel_rfl

theorem node960_cond_eq
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value484 value1 value2 = (output958, value485, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value485 value1 value2 = (output959, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value484 value1 value2 = (output960, value5, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child958]
  dsimp only
  rw [child959]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output958_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value483 value1 value2 = (output957, value484, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value484 value1 value2 = (output960, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value483 value1 value2 = (output961, value5, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child957]
  dsimp only
  rw [child960]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output957_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value482 value1 value2 = (output956, value483, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value483 value1 value2 = (output961, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value482 value1 value2 = (output962, value5, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child956]
  dsimp only
  rw [child961]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output956_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value480 value1 value2 = (output955, value482, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value482 value1 value2 = (output962, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value480 value1 value2 = (output963, value5, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child955]
  dsimp only
  rw [child962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output955_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input964 value5 value1 value2 = (output964, value486, value1) := by
  rw [input964_def, output964_def]
  kernel_rfl

theorem node965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input965 value486 value1 value2 = (output965, value487, value1) := by
  rw [input965_def, output965_def]
  kernel_rfl

theorem node966_cond_eq
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value5 value1 value2 = (output964, value486, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value486 value1 value2 = (output965, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value5 value1 value2 = (output966, value487, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child964]
  dsimp only
  rw [child965]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output964_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input967 value487 value1 value2 = (output967, value488, value1) := by
  rw [input967_def, output967_def]
  kernel_rfl

theorem node968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input968 value488 value1 value2 = (output968, value488, value1) := by
  rw [input968_def, output968_def]
  kernel_rfl

theorem node969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input969 value488 value1 value2 = (output969, value489, value1) := by
  rw [input969_def, output969_def]
  kernel_rfl

theorem node970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input970 value489 value1 value2 = (output970, value490, value1) := by
  rw [input970_def, output970_def]
  kernel_rfl

theorem node971_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value488 value1 value2 = (output969, value489, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value489 value1 value2 = (output970, value490, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value488 value1 value2 = (output971, value490, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  dsimp only
  rw [child970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input972 value490 value1 value2 = (output972, value491, value1) := by
  rw [input972_def, output972_def]
  kernel_rfl

theorem node973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input973 value491 value1 value2 = (output973, value492, value1) := by
  rw [input973_def, output973_def]
  kernel_rfl

theorem node974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input974 value492 value1 value2 = (output974, value493, value1) := by
  rw [input974_def, output974_def]
  kernel_rfl

theorem node975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input975 value493 value1 value2 = (output975, value5, value1) := by
  rw [input975_def, output975_def]
  kernel_rfl

theorem node976_cond_eq
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value492 value1 value2 = (output974, value493, value1))
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value493 value1 value2 = (output975, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input976 value492 value1 value2 = (output976, value5, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child974]
  dsimp only
  rw [child975]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output974_skip, output975_skip]
  kernel_rfl

theorem node977_cond_eq
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value491 value1 value2 = (output973, value492, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value492 value1 value2 = (output976, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value491 value1 value2 = (output977, value5, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child973]
  dsimp only
  rw [child976]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output973_skip, output976_skip]
  kernel_rfl

theorem node978_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value490 value1 value2 = (output972, value491, value1))
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value491 value1 value2 = (output977, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input978 value490 value1 value2 = (output978, value5, value1) := by
  rw [input978_def, output978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  dsimp only
  rw [child977]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output977_skip]
  kernel_rfl

theorem node979_cond_eq
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value488 value1 value2 = (output971, value490, value1))
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value490 value1 value2 = (output978, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input979 value488 value1 value2 = (output979, value5, value1) := by
  rw [input979_def, output979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child971]
  dsimp only
  rw [child978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output971_skip, output978_skip]
  kernel_rfl

theorem node980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input980 value5 value1 value2 = (output980, value494, value1) := by
  rw [input980_def, output980_def]
  kernel_rfl

theorem node981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input981 value494 value1 value2 = (output981, value495, value1) := by
  rw [input981_def, output981_def]
  kernel_rfl

theorem node982_cond_eq
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value5 value1 value2 = (output980, value494, value1))
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value494 value1 value2 = (output981, value495, value1)) : Flapjack.WordAlloc.removeDeadStructural input982 value5 value1 value2 = (output982, value495, value1) := by
  rw [input982_def, output982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child980]
  dsimp only
  rw [child981]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output980_skip, output981_skip]
  kernel_rfl

theorem node983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input983 value495 value1 value2 = (output983, value496, value1) := by
  rw [input983_def, output983_def]
  kernel_rfl

theorem node984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input984 value496 value1 value2 = (output984, value496, value1) := by
  rw [input984_def, output984_def]
  kernel_rfl

theorem node985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input985 value496 value1 value2 = (output985, value497, value1) := by
  rw [input985_def, output985_def]
  kernel_rfl

theorem node986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input986 value497 value1 value2 = (output986, value498, value1) := by
  rw [input986_def, output986_def]
  kernel_rfl

theorem node987_cond_eq
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value496 value1 value2 = (output985, value497, value1))
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value497 value1 value2 = (output986, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input987 value496 value1 value2 = (output987, value498, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child985]
  dsimp only
  rw [child986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output985_skip, output986_skip]
  kernel_rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value498 value1 value2 = (output988, value499, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

theorem node989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input989 value499 value1 value2 = (output989, value500, value1) := by
  rw [input989_def, output989_def]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value500 value1 value2 = (output990, value501, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value501 value1 value2 = (output991, value5, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value500 value1 value2 = (output990, value501, value1))
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value501 value1 value2 = (output991, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input992 value500 value1 value2 = (output992, value5, value1) := by
  rw [input992_def, output992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  dsimp only
  rw [child991]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output991_skip]
  kernel_rfl

theorem node993_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value499 value1 value2 = (output989, value500, value1))
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value500 value1 value2 = (output992, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input993 value499 value1 value2 = (output993, value5, value1) := by
  rw [input993_def, output993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  dsimp only
  rw [child992]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output992_skip]
  kernel_rfl

theorem node994_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value498 value1 value2 = (output988, value499, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value499 value1 value2 = (output993, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value498 value1 value2 = (output994, value5, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  dsimp only
  rw [child993]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value496 value1 value2 = (output987, value498, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value498 value1 value2 = (output994, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value496 value1 value2 = (output995, value5, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  dsimp only
  rw [child994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input996 value5 value1 value2 = (output996, value502, value1) := by
  rw [input996_def, output996_def]
  kernel_rfl

theorem node997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input997 value502 value1 value2 = (output997, value503, value1) := by
  rw [input997_def, output997_def]
  kernel_rfl

theorem node998_cond_eq
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value5 value1 value2 = (output996, value502, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value502 value1 value2 = (output997, value503, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value5 value1 value2 = (output998, value503, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child996]
  dsimp only
  rw [child997]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output996_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input999 value503 value1 value2 = (output999, value504, value1) := by
  rw [input999_def, output999_def]
  kernel_rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value504 value1 value2 = (output1000, value504, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

theorem node1001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1001 value504 value1 value2 = (output1001, value505, value1) := by
  rw [input1001_def, output1001_def]
  kernel_rfl

theorem node1002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value505 value1 value2 = (output1002, value506, value1) := by
  rw [input1002_def, output1002_def]
  kernel_rfl

theorem node1003_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value504 value1 value2 = (output1001, value505, value1))
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value505 value1 value2 = (output1002, value506, value1)) : Flapjack.WordAlloc.removeDeadStructural input1003 value504 value1 value2 = (output1003, value506, value1) := by
  rw [input1003_def, output1003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  dsimp only
  rw [child1002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1001_skip, output1002_skip]
  kernel_rfl

theorem node1004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value506 value1 value2 = (output1004, value507, value1) := by
  rw [input1004_def, output1004_def]
  kernel_rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value507 value1 value2 = (output1005, value508, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

theorem node1006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value508 value1 value2 = (output1006, value509, value1) := by
  rw [input1006_def, output1006_def]
  kernel_rfl

theorem node1007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1007 value509 value1 value2 = (output1007, value5, value1) := by
  rw [input1007_def, output1007_def]
  kernel_rfl

theorem node1008_cond_eq
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value508 value1 value2 = (output1006, value509, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value509 value1 value2 = (output1007, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value508 value1 value2 = (output1008, value5, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1006]
  dsimp only
  rw [child1007]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1006_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value507 value1 value2 = (output1005, value508, value1))
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value508 value1 value2 = (output1008, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1009 value507 value1 value2 = (output1009, value5, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  dsimp only
  rw [child1008]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1008_skip]
  kernel_rfl

theorem node1010_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value506 value1 value2 = (output1004, value507, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value507 value1 value2 = (output1009, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value506 value1 value2 = (output1010, value5, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  dsimp only
  rw [child1009]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value504 value1 value2 = (output1003, value506, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value506 value1 value2 = (output1010, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value504 value1 value2 = (output1011, value5, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1003]
  dsimp only
  rw [child1010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1003_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value5 value1 value2 = (output1012, value510, value1) := by
  rw [input1012_def, output1012_def]
  kernel_rfl

theorem node1013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1013 value510 value1 value2 = (output1013, value511, value1) := by
  rw [input1013_def, output1013_def]
  kernel_rfl

theorem node1014_cond_eq
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value5 value1 value2 = (output1012, value510, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value510 value1 value2 = (output1013, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value5 value1 value2 = (output1014, value511, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1012]
  dsimp only
  rw [child1013]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1012_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value511 value1 value2 = (output1015, value512, value1) := by
  rw [input1015_def, output1015_def]
  kernel_rfl

theorem node1016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1016 value512 value1 value2 = (output1016, value512, value1) := by
  rw [input1016_def, output1016_def]
  kernel_rfl

theorem node1017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value512 value1 value2 = (output1017, value513, value1) := by
  rw [input1017_def, output1017_def]
  kernel_rfl

theorem node1018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value513 value1 value2 = (output1018, value514, value1) := by
  rw [input1018_def, output1018_def]
  kernel_rfl

theorem node1019_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value512 value1 value2 = (output1017, value513, value1))
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value513 value1 value2 = (output1018, value514, value1)) : Flapjack.WordAlloc.removeDeadStructural input1019 value512 value1 value2 = (output1019, value514, value1) := by
  rw [input1019_def, output1019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  dsimp only
  rw [child1018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1018_skip]
  kernel_rfl

theorem node1020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1020 value514 value1 value2 = (output1020, value515, value1) := by
  rw [input1020_def, output1020_def]
  kernel_rfl

theorem node1021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1021 value515 value1 value2 = (output1021, value516, value1) := by
  rw [input1021_def, output1021_def]
  kernel_rfl

theorem node1022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1022 value516 value1 value2 = (output1022, value517, value1) := by
  rw [input1022_def, output1022_def]
  kernel_rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value517 value1 value2 = (output1023, value5, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
