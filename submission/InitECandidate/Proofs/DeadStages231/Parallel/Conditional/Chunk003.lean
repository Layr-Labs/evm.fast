import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages231.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages231.Parallel
theorem node768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input768 value470 value1 value2 = (output768, value471, value1) := by
  rw [input768_def, output768_def]
  kernel_rfl

theorem node769_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value469 value1 value2 = (output767, value470, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value470 value1 value2 = (output768, value471, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value469 value1 value2 = (output769, value471, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input770 value471 value1 value2 = (output770, value472, value1) := by
  rw [input770_def, output770_def]
  kernel_rfl

theorem node771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input771 value472 value1 value2 = (output771, value473, value1) := by
  rw [input771_def, output771_def]
  kernel_rfl

theorem node772_cond_eq
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value471 value1 value2 = (output770, value472, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value472 value1 value2 = (output771, value473, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value471 value1 value2 = (output772, value473, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child770]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output770_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input773 value473 value1 value2 = (output773, value474, value1) := by
  rw [input773_def, output773_def]
  kernel_rfl

theorem node774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input774 value474 value1 value2 = (output774, value475, value1) := by
  rw [input774_def, output774_def]
  kernel_rfl

theorem node775_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value473 value1 value2 = (output773, value474, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value474 value1 value2 = (output774, value475, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value473 value1 value2 = (output775, value475, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value475 value1 value2 = (output776, value476, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input777 value476 value1 value2 = (output777, value477, value1) := by
  rw [input777_def, output777_def]
  kernel_rfl

theorem node778_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value475 value1 value2 = (output776, value476, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value476 value1 value2 = (output777, value477, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value475 value1 value2 = (output778, value477, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input779 value477 value1 value2 = (output779, value478, value1) := by
  rw [input779_def, output779_def]
  kernel_rfl

theorem node780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input780 value478 value1 value2 = (output780, value479, value1) := by
  rw [input780_def, output780_def]
  kernel_rfl

theorem node781_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value477 value1 value2 = (output779, value478, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value478 value1 value2 = (output780, value479, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value477 value1 value2 = (output781, value479, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value479 value1 value2 = (output782, value480, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value480 value1 value2 = (output783, value481, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value479 value1 value2 = (output782, value480, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value480 value1 value2 = (output783, value481, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value479 value1 value2 = (output784, value481, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input785 value481 value1 value2 = (output785, value482, value1) := by
  rw [input785_def, output785_def]
  kernel_rfl

theorem node786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input786 value482 value1 value2 = (output786, value483, value1) := by
  rw [input786_def, output786_def]
  kernel_rfl

theorem node787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input787 value483 value1 value2 = (output787, value484, value1) := by
  rw [input787_def, output787_def]
  kernel_rfl

theorem node788_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value482 value1 value2 = (output786, value483, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value483 value1 value2 = (output787, value484, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value482 value1 value2 = (output788, value484, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output786_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value484 value1 value2 = (output789, value485, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value485 value1 value2 = (output790, value486, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value486 value1 value2 = (output791, value487, value1) := by
  rw [input791_def, output791_def]
  kernel_rfl

theorem node792_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value485 value1 value2 = (output790, value486, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value486 value1 value2 = (output791, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value485 value1 value2 = (output792, value487, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value487 value1 value2 = (output793, value488, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input794 value488 value1 value2 = (output794, value489, value1) := by
  rw [input794_def, output794_def]
  kernel_rfl

theorem node795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input795 value489 value1 value2 = (output795, value490, value1) := by
  rw [input795_def, output795_def]
  kernel_rfl

theorem node796_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value488 value1 value2 = (output794, value489, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value489 value1 value2 = (output795, value490, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value488 value1 value2 = (output796, value490, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input797 value490 value1 value2 = (output797, value491, value1) := by
  rw [input797_def, output797_def]
  kernel_rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value491 value1 value2 = (output798, value492, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value492 value1 value2 = (output799, value493, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

theorem node800_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value491 value1 value2 = (output798, value492, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value492 value1 value2 = (output799, value493, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value491 value1 value2 = (output800, value493, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input801 value493 value1 value2 = (output801, value494, value1) := by
  rw [input801_def, output801_def]
  kernel_rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value494 value1 value2 = (output802, value495, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

theorem node803_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value493 value1 value2 = (output801, value494, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value494 value1 value2 = (output802, value495, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value493 value1 value2 = (output803, value495, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value495 value1 value2 = (output804, value496, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value496 value1 value2 = (output805, value497, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value495 value1 value2 = (output804, value496, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value496 value1 value2 = (output805, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value495 value1 value2 = (output806, value497, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input807 value497 value1 value2 = (output807, value498, value1) := by
  rw [input807_def, output807_def]
  kernel_rfl

theorem node808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input808 value498 value1 value2 = (output808, value499, value1) := by
  rw [input808_def, output808_def]
  kernel_rfl

theorem node809_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value497 value1 value2 = (output807, value498, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value498 value1 value2 = (output808, value499, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value497 value1 value2 = (output809, value499, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value499 value1 value2 = (output810, value500, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value500 value1 value2 = (output811, value500, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value500 value1 value2 = (output812, value500, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

theorem node813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input813 value500 value1 value2 = (output813, value500, value1) := by
  rw [input813_def, output813_def]
  kernel_rfl

theorem node814_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value500 value1 value2 = (output812, value500, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value500 value1 value2 = (output813, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value500 value1 value2 = (output814, value500, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value500 value1 value2 = (output811, value500, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value500 value1 value2 = (output814, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value500 value1 value2 = (output815, value500, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value499 value1 value2 = (output810, value500, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value500 value1 value2 = (output815, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value499 value1 value2 = (output816, value500, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value497 value1 value2 = (output809, value499, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value499 value1 value2 = (output816, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value497 value1 value2 = (output817, value500, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value495 value1 value2 = (output806, value497, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value497 value1 value2 = (output817, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value495 value1 value2 = (output818, value500, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value493 value1 value2 = (output803, value495, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value495 value1 value2 = (output818, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value493 value1 value2 = (output819, value500, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value491 value1 value2 = (output800, value493, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value493 value1 value2 = (output819, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value491 value1 value2 = (output820, value500, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value490 value1 value2 = (output797, value491, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value491 value1 value2 = (output820, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value490 value1 value2 = (output821, value500, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value488 value1 value2 = (output796, value490, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value490 value1 value2 = (output821, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value488 value1 value2 = (output822, value500, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value487 value1 value2 = (output793, value488, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value488 value1 value2 = (output822, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value487 value1 value2 = (output823, value500, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value485 value1 value2 = (output792, value487, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value487 value1 value2 = (output823, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value485 value1 value2 = (output824, value500, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value484 value1 value2 = (output789, value485, value1))
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value485 value1 value2 = (output824, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input825 value484 value1 value2 = (output825, value500, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  try dsimp only
  rw [child824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output824_skip]
  kernel_rfl

theorem node826_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value482 value1 value2 = (output788, value484, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value484 value1 value2 = (output825, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value482 value1 value2 = (output826, value500, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value481 value1 value2 = (output785, value482, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value482 value1 value2 = (output826, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value481 value1 value2 = (output827, value500, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value479 value1 value2 = (output784, value481, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value481 value1 value2 = (output827, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value479 value1 value2 = (output828, value500, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value477 value1 value2 = (output781, value479, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value479 value1 value2 = (output828, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value477 value1 value2 = (output829, value500, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value475 value1 value2 = (output778, value477, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value477 value1 value2 = (output829, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value475 value1 value2 = (output830, value500, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value473 value1 value2 = (output775, value475, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value475 value1 value2 = (output830, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value473 value1 value2 = (output831, value500, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value471 value1 value2 = (output772, value473, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value473 value1 value2 = (output831, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value471 value1 value2 = (output832, value500, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value469 value1 value2 = (output769, value471, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value471 value1 value2 = (output832, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value469 value1 value2 = (output833, value500, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value468 value1 value2 = (output766, value469, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value469 value1 value2 = (output833, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value468 value1 value2 = (output834, value500, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value466 value1 value2 = (output765, value468, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value468 value1 value2 = (output834, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value466 value1 value2 = (output835, value500, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value465 value1 value2 = (output762, value466, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value466 value1 value2 = (output835, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value465 value1 value2 = (output836, value500, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value463 value1 value2 = (output761, value465, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value465 value1 value2 = (output836, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value463 value1 value2 = (output837, value500, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value462 value1 value2 = (output758, value463, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value463 value1 value2 = (output837, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value462 value1 value2 = (output838, value500, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value460 value1 value2 = (output757, value462, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value462 value1 value2 = (output838, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value460 value1 value2 = (output839, value500, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value459 value1 value2 = (output754, value460, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value460 value1 value2 = (output839, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value459 value1 value2 = (output840, value500, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value457 value1 value2 = (output753, value459, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value459 value1 value2 = (output840, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value457 value1 value2 = (output841, value500, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value455 value1 value2 = (output750, value457, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value457 value1 value2 = (output841, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value455 value1 value2 = (output842, value500, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value453 value1 value2 = (output747, value455, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value455 value1 value2 = (output842, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value453 value1 value2 = (output843, value500, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value451 value1 value2 = (output744, value453, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value453 value1 value2 = (output843, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value451 value1 value2 = (output844, value500, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value449 value1 value2 = (output741, value451, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value451 value1 value2 = (output844, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value449 value1 value2 = (output845, value500, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value447 value1 value2 = (output738, value449, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value449 value1 value2 = (output845, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value447 value1 value2 = (output846, value500, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output738_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value446 value1 value2 = (output735, value447, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value447 value1 value2 = (output846, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value446 value1 value2 = (output847, value500, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child735]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output735_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value444 value1 value2 = (output734, value446, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value446 value1 value2 = (output847, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value444 value1 value2 = (output848, value500, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value443 value1 value2 = (output731, value444, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value444 value1 value2 = (output848, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value443 value1 value2 = (output849, value500, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value441 value1 value2 = (output730, value443, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value443 value1 value2 = (output849, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value441 value1 value2 = (output850, value500, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value440 value1 value2 = (output727, value441, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value441 value1 value2 = (output850, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value440 value1 value2 = (output851, value500, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value438 value1 value2 = (output726, value440, value1))
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value440 value1 value2 = (output851, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input852 value438 value1 value2 = (output852, value500, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output851_skip]
  kernel_rfl

theorem node853_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value437 value1 value2 = (output723, value438, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value438 value1 value2 = (output852, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value437 value1 value2 = (output853, value500, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value433 value1 value2 = (output722, value437, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value437 value1 value2 = (output853, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value433 value1 value2 = (output854, value500, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value435 value1 value2 = (output719, value433, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value433 value1 value2 = (output854, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value435 value1 value2 = (output855, value500, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value433 value1 value2 = (output718, value435, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value435 value1 value2 = (output855, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value433 value1 value2 = (output856, value500, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value432 value1 value2 = (output715, value433, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value433 value1 value2 = (output856, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value432 value1 value2 = (output857, value500, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output856_skip]
  kernel_rfl

theorem node858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input858 value432 value1 value2 = (output858, value432, value1) := by
  rw [input858_def, output858_def]
  kernel_rfl

theorem node859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input859 value432 value1 value2 = (output859, value432, value1) := by
  rw [input859_def, output859_def]
  kernel_rfl

theorem node860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input860 value432 value1 value2 = (output860, value432, value1) := by
  rw [input860_def, output860_def]
  kernel_rfl

theorem node861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input861 value432 value1 value2 = (output861, value432, value1) := by
  rw [input861_def, output861_def]
  kernel_rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value432 value1 value2 = (output862, value432, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

theorem node863_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value432 value1 value2 = (output861, value432, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value432 value1 value2 = (output862, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value432 value1 value2 = (output863, value432, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value432 value1 value2 = (output860, value432, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value432 value1 value2 = (output863, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value432 value1 value2 = (output864, value432, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value432 value1 value2 = (output859, value432, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value432 value1 value2 = (output864, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value432 value1 value2 = (output865, value432, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value432 value1 value2 = (output858, value432, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value432 value1 value2 = (output865, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value432 value1 value2 = (output866, value432, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value432 value1 value2 = (output867, value500, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value432 value1 value2 = (output866, value432, value1))
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value432 value1 value2 = (output867, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input868 value432 value1 value2 = (output868, value500, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output867_skip]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value500 value1 value2 = (output869, value500, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value432 value1 value2 = (output868, value500, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value500 value1 value2 = (output869, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value432 value1 value2 = (output870, value500, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value432 value1 value2 = (output857, value500, value1))
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value432 value1 value2 = (output870, value500, value1)) : Flapjack.WordAlloc.removeDeadStructural input871 value432 value1 value2 = (output871, value502, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child857]
  try dsimp only
  rw [child870]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output870_skip]
  kernel_rfl

theorem node872_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value432 value1 value2 = (output704, value432, value1))
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value432 value1 value2 = (output871, value502, value1)) : Flapjack.WordAlloc.removeDeadStructural input872 value432 value1 value2 = (output872, value502, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output871_skip]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value502 value1 value2 = (output873, value503, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value503 value1 value2 = (output874, value504, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input875 value504 value1 value2 = (output875, value504, value1) := by
  rw [input875_def, output875_def]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value504 value1 value2 = (output876, value505, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value505 value1 value2 = (output877, value506, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value504 value1 value2 = (output876, value505, value1))
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value505 value1 value2 = (output877, value506, value1)) : Flapjack.WordAlloc.removeDeadStructural input878 value504 value1 value2 = (output878, value506, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output877_skip]
  kernel_rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value506 value1 value2 = (output879, value507, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

theorem node880_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value504 value1 value2 = (output878, value506, value1))
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value506 value1 value2 = (output879, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input880 value504 value1 value2 = (output880, value507, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output879_skip]
  kernel_rfl

theorem node881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input881 value507 value1 value2 = (output881, value508, value1) := by
  rw [input881_def, output881_def]
  kernel_rfl

theorem node882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input882 value508 value1 value2 = (output882, value509, value1) := by
  rw [input882_def, output882_def]
  kernel_rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value509 value1 value2 = (output883, value510, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value510 value1 value2 = (output884, value511, value1) := by
  rw [input884_def, output884_def]
  kernel_rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value511 value1 value2 = (output885, value512, value1) := by
  rw [input885_def, output885_def]
  kernel_rfl

theorem node886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input886 value512 value1 value2 = (output886, value513, value1) := by
  rw [input886_def, output886_def]
  kernel_rfl

theorem node887_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value511 value1 value2 = (output885, value512, value1))
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value512 value1 value2 = (output886, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input887 value511 value1 value2 = (output887, value513, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output886_skip]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value513 value1 value2 = (output888, value514, value1) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value514 value1 value2 = (output889, value515, value1) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value513 value1 value2 = (output888, value514, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value514 value1 value2 = (output889, value515, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value513 value1 value2 = (output890, value515, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input891 value515 value1 value2 = (output891, value516, value1) := by
  rw [input891_def, output891_def]
  kernel_rfl

theorem node892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input892 value516 value1 value2 = (output892, value517, value1) := by
  rw [input892_def, output892_def]
  kernel_rfl

theorem node893_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value515 value1 value2 = (output891, value516, value1))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value516 value1 value2 = (output892, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input893 value515 value1 value2 = (output893, value517, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  try dsimp only
  rw [child892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output892_skip]
  kernel_rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value517 value1 value2 = (output894, value518, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

theorem node895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input895 value518 value1 value2 = (output895, value519, value1) := by
  rw [input895_def, output895_def]
  kernel_rfl

theorem node896_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value517 value1 value2 = (output894, value518, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value518 value1 value2 = (output895, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value517 value1 value2 = (output896, value519, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value519 value1 value2 = (output897, value519, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value519 value1 value2 = (output898, value519, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input899 value519 value1 value2 = (output899, value519, value1) := by
  rw [input899_def, output899_def]
  kernel_rfl

theorem node900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input900 value519 value1 value2 = (output900, value519, value1) := by
  rw [input900_def, output900_def]
  kernel_rfl

theorem node901_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value519 value1 value2 = (output899, value519, value1))
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value519 value1 value2 = (output900, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input901 value519 value1 value2 = (output901, value519, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output900_skip]
  kernel_rfl

theorem node902_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value519 value1 value2 = (output898, value519, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value519 value1 value2 = (output901, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value519 value1 value2 = (output902, value519, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input903 value519 value1 value2 = (output903, value519, value1) := by
  rw [input903_def, output903_def]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value519 value1 value2 = (output904, value519, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value519 value1 value2 = (output903, value519, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value519 value1 value2 = (output904, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value519 value1 value2 = (output905, value519, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value519 value1 value2 = (output906, value519, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value519 value1 value2 = (output905, value519, value1))
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value519 value1 value2 = (output906, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input907 value519 value1 value2 = (output907, value519, value1) := by
  rw [input907_def, output907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output906_skip]
  kernel_rfl

theorem node908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input908 value519 value1 value2 = (output908, value520, value1) := by
  rw [input908_def, output908_def]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value520 value1 value2 = (output909, value521, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value519 value1 value2 = (output908, value520, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value520 value1 value2 = (output909, value521, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value519 value1 value2 = (output910, value521, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input911 value521 value1 value2 = (output911, value519, value1) := by
  rw [input911_def, output911_def]
  kernel_rfl

theorem node912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input912 value519 value1 value2 = (output912, value519, value1) := by
  rw [input912_def, output912_def]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value519 value1 value2 = (output913, value519, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input914 value519 value1 value2 = (output914, value519, value1) := by
  rw [input914_def, output914_def]
  kernel_rfl

theorem node915_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value519 value1 value2 = (output913, value519, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value519 value1 value2 = (output914, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value519 value1 value2 = (output915, value519, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value519 value1 value2 = (output912, value519, value1))
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value519 value1 value2 = (output915, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input916 value519 value1 value2 = (output916, value519, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output915_skip]
  kernel_rfl

theorem node917_cond_eq
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value521 value1 value2 = (output911, value519, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value519 value1 value2 = (output916, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value521 value1 value2 = (output917, value519, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child911]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output911_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value519 value1 value2 = (output910, value521, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value521 value1 value2 = (output917, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value519 value1 value2 = (output918, value519, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  try dsimp only
  rw [child917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value519 value1 value2 = (output907, value519, value1))
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value519 value1 value2 = (output918, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input919 value519 value1 value2 = (output919, value519, value1) := by
  rw [input919_def, output919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output918_skip]
  kernel_rfl

theorem node920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input920 value519 value1 value2 = (output920, value519, value1) := by
  rw [input920_def, output920_def]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value519 value1 value2 = (output921, value519, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value519 value1 value2 = (output920, value519, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value519 value1 value2 = (output921, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value519 value1 value2 = (output922, value519, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value519 value1 value2 = (output923, value519, value1) := by
  rw [input923_def, output923_def]
  kernel_rfl

theorem node924_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value519 value1 value2 = (output922, value519, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value519 value1 value2 = (output923, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value519 value1 value2 = (output924, value519, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input925 value519 value1 value2 = (output925, value519, value1) := by
  rw [input925_def, output925_def]
  kernel_rfl

theorem node926_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value519 value1 value2 = (output924, value519, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value519 value1 value2 = (output925, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value519 value1 value2 = (output926, value519, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output925_skip]
  kernel_rfl

theorem node927_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value519 value1 value2 = (output919, value519, value1))
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value519 value1 value2 = (output926, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input927 value519 value1 value2 = (output927, value523, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child919]
  try dsimp only
  rw [child926]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output919_skip, output926_skip]
  kernel_rfl

theorem node928_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value519 value1 value2 = (output902, value519, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value519 value1 value2 = (output927, value523, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value519 value1 value2 = (output928, value523, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input929 value523 value1 value2 = (output929, value524, value1) := by
  rw [input929_def, output929_def]
  kernel_rfl

theorem node930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input930 value524 value1 value2 = (output930, value525, value1) := by
  rw [input930_def, output930_def]
  kernel_rfl

theorem node931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input931 value525 value1 value2 = (output931, value525, value1) := by
  rw [input931_def, output931_def]
  kernel_rfl

theorem node932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input932 value525 value1 value2 = (output932, value526, value1) := by
  rw [input932_def, output932_def]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value526 value1 value2 = (output933, value527, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value525 value1 value2 = (output932, value526, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value526 value1 value2 = (output933, value527, value1)) : Flapjack.WordAlloc.removeDeadStructural input934 value525 value1 value2 = (output934, value527, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value527 value1 value2 = (output935, value528, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value525 value1 value2 = (output934, value527, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value527 value1 value2 = (output935, value528, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value525 value1 value2 = (output936, value528, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value528 value1 value2 = (output937, value529, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input938 value529 value1 value2 = (output938, value530, value1) := by
  rw [input938_def, output938_def]
  kernel_rfl

theorem node939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input939 value530 value1 value2 = (output939, value531, value1) := by
  rw [input939_def, output939_def]
  kernel_rfl

theorem node940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input940 value531 value1 value2 = (output940, value532, value1) := by
  rw [input940_def, output940_def]
  kernel_rfl

theorem node941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input941 value532 value1 value2 = (output941, value533, value1) := by
  rw [input941_def, output941_def]
  kernel_rfl

theorem node942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input942 value533 value1 value2 = (output942, value534, value1) := by
  rw [input942_def, output942_def]
  kernel_rfl

theorem node943_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value532 value1 value2 = (output941, value533, value1))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value533 value1 value2 = (output942, value534, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value532 value1 value2 = (output943, value534, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input944 value534 value1 value2 = (output944, value535, value1) := by
  rw [input944_def, output944_def]
  kernel_rfl

theorem node945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input945 value535 value1 value2 = (output945, value536, value1) := by
  rw [input945_def, output945_def]
  kernel_rfl

theorem node946_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value534 value1 value2 = (output944, value535, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value535 value1 value2 = (output945, value536, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value534 value1 value2 = (output946, value536, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input947 value536 value1 value2 = (output947, value537, value1) := by
  rw [input947_def, output947_def]
  kernel_rfl

theorem node948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input948 value537 value1 value2 = (output948, value538, value1) := by
  rw [input948_def, output948_def]
  kernel_rfl

theorem node949_cond_eq
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value536 value1 value2 = (output947, value537, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value537 value1 value2 = (output948, value538, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value536 value1 value2 = (output949, value538, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child947]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output947_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input950 value538 value1 value2 = (output950, value539, value1) := by
  rw [input950_def, output950_def]
  kernel_rfl

theorem node951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input951 value539 value1 value2 = (output951, value540, value1) := by
  rw [input951_def, output951_def]
  kernel_rfl

theorem node952_cond_eq
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value538 value1 value2 = (output950, value539, value1))
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value539 value1 value2 = (output951, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input952 value538 value1 value2 = (output952, value540, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child950]
  try dsimp only
  rw [child951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output950_skip, output951_skip]
  kernel_rfl

theorem node953_cond_eq
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value536 value1 value2 = (output949, value538, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value538 value1 value2 = (output952, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value536 value1 value2 = (output953, value540, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child949]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output949_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value534 value1 value2 = (output946, value536, value1))
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value536 value1 value2 = (output953, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input954 value534 value1 value2 = (output954, value540, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output953_skip]
  kernel_rfl

theorem node955_cond_eq
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value532 value1 value2 = (output943, value534, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value534 value1 value2 = (output954, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value532 value1 value2 = (output955, value540, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child943]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output943_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value531 value1 value2 = (output940, value532, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value532 value1 value2 = (output955, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value531 value1 value2 = (output956, value540, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child940]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output940_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value530 value1 value2 = (output939, value531, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value531 value1 value2 = (output956, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value530 value1 value2 = (output957, value540, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child939]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output939_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value529 value1 value2 = (output938, value530, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value530 value1 value2 = (output957, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value529 value1 value2 = (output958, value540, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child938]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output938_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value528 value1 value2 = (output937, value529, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value529 value1 value2 = (output958, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value528 value1 value2 = (output959, value540, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child937]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output937_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value525 value1 value2 = (output936, value528, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value528 value1 value2 = (output959, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value525 value1 value2 = (output960, value540, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value525 value1 value2 = (output931, value525, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value525 value1 value2 = (output960, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value525 value1 value2 = (output961, value540, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child931]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output931_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value524 value1 value2 = (output930, value525, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value525 value1 value2 = (output961, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value524 value1 value2 = (output962, value540, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child930]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output930_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value523 value1 value2 = (output929, value524, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value524 value1 value2 = (output962, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value523 value1 value2 = (output963, value540, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child929]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output929_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value519 value1 value2 = (output928, value523, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value523 value1 value2 = (output963, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value519 value1 value2 = (output964, value540, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child928]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output928_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value519 value1 value2 = (output897, value519, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value519 value1 value2 = (output964, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value519 value1 value2 = (output965, value540, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value517 value1 value2 = (output896, value519, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value519 value1 value2 = (output965, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value517 value1 value2 = (output966, value540, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value515 value1 value2 = (output893, value517, value1))
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value517 value1 value2 = (output966, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value515 value1 value2 = (output967, value540, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output966_skip]
  kernel_rfl

theorem node968_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value513 value1 value2 = (output890, value515, value1))
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value515 value1 value2 = (output967, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input968 value513 value1 value2 = (output968, value540, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output967_skip]
  kernel_rfl

theorem node969_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value511 value1 value2 = (output887, value513, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value513 value1 value2 = (output968, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value511 value1 value2 = (output969, value540, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value510 value1 value2 = (output884, value511, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value511 value1 value2 = (output969, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value510 value1 value2 = (output970, value540, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value509 value1 value2 = (output883, value510, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value510 value1 value2 = (output970, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value509 value1 value2 = (output971, value540, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value508 value1 value2 = (output882, value509, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value509 value1 value2 = (output971, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value508 value1 value2 = (output972, value540, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value507 value1 value2 = (output881, value508, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value508 value1 value2 = (output972, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value507 value1 value2 = (output973, value540, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value504 value1 value2 = (output880, value507, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value507 value1 value2 = (output973, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value504 value1 value2 = (output974, value540, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value504 value1 value2 = (output875, value504, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value504 value1 value2 = (output974, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value504 value1 value2 = (output975, value540, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value503 value1 value2 = (output874, value504, value1))
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value504 value1 value2 = (output975, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input976 value503 value1 value2 = (output976, value540, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output975_skip]
  kernel_rfl

theorem node977_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value502 value1 value2 = (output873, value503, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value503 value1 value2 = (output976, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value502 value1 value2 = (output977, value540, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output976_skip]
  kernel_rfl

theorem node978_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value432 value1 value2 = (output872, value502, value1))
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value502 value1 value2 = (output977, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input978 value432 value1 value2 = (output978, value540, value1) := by
  rw [input978_def, output978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output977_skip]
  kernel_rfl

theorem node979_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value432 value1 value2 = (output699, value432, value1))
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value432 value1 value2 = (output978, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input979 value432 value1 value2 = (output979, value540, value1) := by
  rw [input979_def, output979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output978_skip]
  kernel_rfl

theorem node980_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value430 value1 value2 = (output698, value432, value1))
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value432 value1 value2 = (output979, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input980 value430 value1 value2 = (output980, value540, value1) := by
  rw [input980_def, output980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output979_skip]
  kernel_rfl

theorem node981_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value428 value1 value2 = (output695, value430, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value430 value1 value2 = (output980, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value428 value1 value2 = (output981, value540, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value426 value1 value2 = (output692, value428, value1))
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value428 value1 value2 = (output981, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input982 value426 value1 value2 = (output982, value540, value1) := by
  rw [input982_def, output982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output981_skip]
  kernel_rfl

theorem node983_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value424 value1 value2 = (output689, value426, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value426 value1 value2 = (output982, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value424 value1 value2 = (output983, value540, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value422 value1 value2 = (output686, value424, value1))
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value424 value1 value2 = (output983, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input984 value422 value1 value2 = (output984, value540, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output983_skip]
  kernel_rfl

theorem node985_cond_eq
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value420 value1 value2 = (output683, value422, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value422 value1 value2 = (output984, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value420 value1 value2 = (output985, value540, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child683]
  try dsimp only
  rw [child984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output683_skip, output984_skip]
  kernel_rfl

theorem node986_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value418 value1 value2 = (output680, value420, value1))
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value420 value1 value2 = (output985, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input986 value418 value1 value2 = (output986, value540, value1) := by
  rw [input986_def, output986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output985_skip]
  kernel_rfl

theorem node987_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value416 value1 value2 = (output677, value418, value1))
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value418 value1 value2 = (output986, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input987 value416 value1 value2 = (output987, value540, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output986_skip]
  kernel_rfl

theorem node988_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value414 value1 value2 = (output674, value416, value1))
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value416 value1 value2 = (output987, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input988 value414 value1 value2 = (output988, value540, value1) := by
  rw [input988_def, output988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output987_skip]
  kernel_rfl

theorem node989_cond_eq
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value412 value1 value2 = (output671, value414, value1))
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value414 value1 value2 = (output988, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input989 value412 value1 value2 = (output989, value540, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child671]
  try dsimp only
  rw [child988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output671_skip, output988_skip]
  kernel_rfl

theorem node990_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value410 value1 value2 = (output668, value412, value1))
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value412 value1 value2 = (output989, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input990 value410 value1 value2 = (output990, value540, value1) := by
  rw [input990_def, output990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output989_skip]
  kernel_rfl

theorem node991_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value408 value1 value2 = (output665, value410, value1))
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value410 value1 value2 = (output990, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input991 value408 value1 value2 = (output991, value540, value1) := by
  rw [input991_def, output991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output990_skip]
  kernel_rfl

theorem node992_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value406 value1 value2 = (output662, value408, value1))
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value408 value1 value2 = (output991, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input992 value406 value1 value2 = (output992, value540, value1) := by
  rw [input992_def, output992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output991_skip]
  kernel_rfl

theorem node993_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value404 value1 value2 = (output659, value406, value1))
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value406 value1 value2 = (output992, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input993 value404 value1 value2 = (output993, value540, value1) := by
  rw [input993_def, output993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output992_skip]
  kernel_rfl

theorem node994_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value402 value1 value2 = (output656, value404, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value404 value1 value2 = (output993, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value402 value1 value2 = (output994, value540, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value400 value1 value2 = (output653, value402, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value402 value1 value2 = (output994, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value400 value1 value2 = (output995, value540, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value399 value1 value2 = (output650, value400, value1))
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value400 value1 value2 = (output995, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input996 value399 value1 value2 = (output996, value540, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output995_skip]
  kernel_rfl

theorem node997_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value398 value1 value2 = (output649, value399, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value399 value1 value2 = (output996, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value398 value1 value2 = (output997, value540, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output996_skip]
  kernel_rfl

theorem node998_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value397 value1 value2 = (output648, value398, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value398 value1 value2 = (output997, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value397 value1 value2 = (output998, value540, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value396 value1 value2 = (output647, value397, value1))
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value397 value1 value2 = (output998, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input999 value396 value1 value2 = (output999, value540, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output998_skip]
  kernel_rfl

theorem node1000_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value393 value1 value2 = (output646, value396, value1))
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value396 value1 value2 = (output999, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1000 value393 value1 value2 = (output1000, value540, value1) := by
  rw [input1000_def, output1000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output999_skip]
  kernel_rfl

theorem node1001_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value393 value1 value2 = (output641, value393, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value393 value1 value2 = (output1000, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value393 value1 value2 = (output1001, value540, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child1000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output1000_skip]
  kernel_rfl

theorem node1002_cond_eq
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value392 value1 value2 = (output640, value393, value1))
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value393 value1 value2 = (output1001, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1002 value392 value1 value2 = (output1002, value540, value1) := by
  rw [input1002_def, output1002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child640]
  try dsimp only
  rw [child1001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output640_skip, output1001_skip]
  kernel_rfl

theorem node1003_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value391 value1 value2 = (output639, value392, value1))
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value392 value1 value2 = (output1002, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1003 value391 value1 value2 = (output1003, value540, value1) := by
  rw [input1003_def, output1003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child1002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output1002_skip]
  kernel_rfl

theorem node1004_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value390 value1 value2 = (output638, value391, value1))
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value391 value1 value2 = (output1003, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1004 value390 value1 value2 = (output1004, value540, value1) := by
  rw [input1004_def, output1004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child1003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output1003_skip]
  kernel_rfl

theorem node1005_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value389 value1 value2 = (output637, value390, value1))
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value390 value1 value2 = (output1004, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1005 value389 value1 value2 = (output1005, value540, value1) := by
  rw [input1005_def, output1005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child1004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output1004_skip]
  kernel_rfl

theorem node1006_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value386 value1 value2 = (output636, value389, value1))
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value389 value1 value2 = (output1005, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1006 value386 value1 value2 = (output1006, value540, value1) := by
  rw [input1006_def, output1006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child1005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output1005_skip]
  kernel_rfl

theorem node1007_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value386 value1 value2 = (output631, value386, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value386 value1 value2 = (output1006, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value386 value1 value2 = (output1007, value540, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value385 value1 value2 = (output630, value386, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value386 value1 value2 = (output1007, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value385 value1 value2 = (output1008, value540, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value384 value1 value2 = (output629, value385, value1))
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value385 value1 value2 = (output1008, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1009 value384 value1 value2 = (output1009, value540, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child1008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output1008_skip]
  kernel_rfl

theorem node1010_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value383 value1 value2 = (output628, value384, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value384 value1 value2 = (output1009, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value383 value1 value2 = (output1010, value540, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value382 value1 value2 = (output627, value383, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value383 value1 value2 = (output1010, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value382 value1 value2 = (output1011, value540, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value381 value1 value2 = (output626, value382, value1))
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value382 value1 value2 = (output1011, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1012 value381 value1 value2 = (output1012, value540, value1) := by
  rw [input1012_def, output1012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child1011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output1011_skip]
  kernel_rfl

theorem node1013_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value380 value1 value2 = (output625, value381, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value381 value1 value2 = (output1012, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value380 value1 value2 = (output1013, value540, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child1012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output1012_skip]
  kernel_rfl

theorem node1014_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value379 value1 value2 = (output624, value380, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value380 value1 value2 = (output1013, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value379 value1 value2 = (output1014, value540, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value378 value1 value2 = (output623, value379, value1))
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value379 value1 value2 = (output1014, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1015 value378 value1 value2 = (output1015, value540, value1) := by
  rw [input1015_def, output1015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child1014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output1014_skip]
  kernel_rfl

theorem node1016_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value375 value1 value2 = (output622, value378, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value378 value1 value2 = (output1015, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value375 value1 value2 = (output1016, value540, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value375 value1 value2 = (output617, value375, value1))
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value375 value1 value2 = (output1016, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1017 value375 value1 value2 = (output1017, value540, value1) := by
  rw [input1017_def, output1017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child1016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output1016_skip]
  kernel_rfl

theorem node1018_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value374 value1 value2 = (output616, value375, value1))
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value375 value1 value2 = (output1017, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1018 value374 value1 value2 = (output1018, value540, value1) := by
  rw [input1018_def, output1018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child1017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output1017_skip]
  kernel_rfl

theorem node1019_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value373 value1 value2 = (output615, value374, value1))
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value374 value1 value2 = (output1018, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1019 value373 value1 value2 = (output1019, value540, value1) := by
  rw [input1019_def, output1019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child1018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output1018_skip]
  kernel_rfl

theorem node1020_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value372 value1 value2 = (output614, value373, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value373 value1 value2 = (output1019, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value372 value1 value2 = (output1020, value540, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child1019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output1019_skip]
  kernel_rfl

theorem node1021_cond_eq
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value371 value1 value2 = (output613, value372, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value372 value1 value2 = (output1020, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value371 value1 value2 = (output1021, value540, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child613]
  try dsimp only
  rw [child1020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output613_skip, output1020_skip]
  kernel_rfl

theorem node1022_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value370 value1 value2 = (output612, value371, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value371 value1 value2 = (output1021, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value370 value1 value2 = (output1022, value540, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child1021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output1021_skip]
  kernel_rfl

theorem node1023_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value369 value1 value2 = (output611, value370, value1))
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value370 value1 value2 = (output1022, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1023 value369 value1 value2 = (output1023, value540, value1) := by
  rw [input1023_def, output1023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child1022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output1022_skip]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages231.Parallel
