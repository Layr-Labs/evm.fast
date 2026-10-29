import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages276.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages276.Parallel
theorem node768_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value383 value1 value2 = (output766, value383, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value383 value1 value2 = (output767, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value383 value1 value2 = (output768, value383, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value383 value1 value2 = (output765, value383, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value383 value1 value2 = (output768, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value383 value1 value2 = (output769, value383, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input770 value383 value1 value2 = (output770, value383, value1) := by
  rw [input770_def, output770_def]
  kernel_rfl

theorem node771_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value383 value1 value2 = (output769, value383, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value383 value1 value2 = (output770, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value383 value1 value2 = (output771, value383, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input772 value383 value1 value2 = (output772, value384, value1) := by
  rw [input772_def, output772_def]
  kernel_rfl

theorem node773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input773 value384 value1 value2 = (output773, value385, value1) := by
  rw [input773_def, output773_def]
  kernel_rfl

theorem node774_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value383 value1 value2 = (output772, value384, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value384 value1 value2 = (output773, value385, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value383 value1 value2 = (output774, value385, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value385 value1 value2 = (output775, value383, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value383 value1 value2 = (output776, value386, value199) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input777 value386 value199 value2 = (output777, value387, value199) := by
  rw [input777_def, output777_def]
  kernel_rfl

theorem node778_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value383 value1 value2 = (output776, value386, value199))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value386 value199 value2 = (output777, value387, value199)) : Flapjack.WordAlloc.removeDeadStructural input778 value383 value1 value2 = (output778, value387, value199) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input779 value387 value199 value2 = (output779, value383, value199) := by
  rw [input779_def, output779_def]
  kernel_rfl

theorem node780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input780 value383 value199 value2 = (output780, value383, value199) := by
  rw [input780_def, output780_def]
  kernel_rfl

theorem node781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input781 value383 value199 value2 = (output781, value383, value199) := by
  rw [input781_def, output781_def]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value383 value199 value2 = (output782, value383, value199) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value383 value199 value2 = (output781, value383, value199))
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value383 value199 value2 = (output782, value383, value199)) : Flapjack.WordAlloc.removeDeadStructural input783 value383 value199 value2 = (output783, value383, value199) := by
  rw [input783_def, output783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output782_skip]
  kernel_rfl

theorem node784_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value383 value199 value2 = (output780, value383, value199))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value383 value199 value2 = (output783, value383, value199)) : Flapjack.WordAlloc.removeDeadStructural input784 value383 value199 value2 = (output784, value383, value199) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value387 value199 value2 = (output779, value383, value199))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value383 value199 value2 = (output784, value383, value199)) : Flapjack.WordAlloc.removeDeadStructural input785 value387 value199 value2 = (output785, value383, value199) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value383 value1 value2 = (output778, value387, value199))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value387 value199 value2 = (output785, value383, value199)) : Flapjack.WordAlloc.removeDeadStructural input786 value383 value1 value2 = (output786, value383, value199) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value385 value1 value2 = (output775, value383, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value383 value1 value2 = (output786, value383, value199)) : Flapjack.WordAlloc.removeDeadStructural input787 value385 value1 value2 = (output787, value383, value199) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value383 value1 value2 = (output774, value385, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value385 value1 value2 = (output787, value383, value199)) : Flapjack.WordAlloc.removeDeadStructural input788 value383 value1 value2 = (output788, value383, value199) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value383 value1 value2 = (output771, value383, value1))
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value383 value1 value2 = (output788, value383, value199)) : Flapjack.WordAlloc.removeDeadStructural input789 value383 value1 value2 = (output789, value383, value199) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child771]
  try dsimp only
  rw [child788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output771_skip, output788_skip]
  kernel_rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value383 value1 value2 = (output790, value383, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value383 value1 value2 = (output791, value383, value1) := by
  rw [input791_def, output791_def]
  kernel_rfl

theorem node792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input792 value383 value1 value2 = (output792, value383, value1) := by
  rw [input792_def, output792_def]
  kernel_rfl

theorem node793_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value383 value1 value2 = (output791, value383, value1))
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value383 value1 value2 = (output792, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input793 value383 value1 value2 = (output793, value383, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output792_skip]
  kernel_rfl

theorem node794_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value383 value1 value2 = (output790, value383, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value383 value1 value2 = (output793, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value383 value1 value2 = (output794, value383, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input795 value383 value1 value2 = (output795, value383, value1) := by
  rw [input795_def, output795_def]
  kernel_rfl

theorem node796_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value383 value1 value2 = (output794, value383, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value383 value1 value2 = (output795, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value383 value1 value2 = (output796, value383, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input797 value383 value1 value2 = (output797, value383, value1) := by
  rw [input797_def, output797_def]
  kernel_rfl

theorem node798_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value383 value1 value2 = (output796, value383, value1))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value383 value1 value2 = (output797, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input798 value383 value1 value2 = (output798, value383, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value383 value1 value2 = (output789, value383, value199))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value383 value1 value2 = (output798, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input799 value383 value1 value2 = (output799, value389, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child789]
  try dsimp only
  rw [child798]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value383 value1 value2 = (output764, value383, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value383 value1 value2 = (output799, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value383 value1 value2 = (output800, value389, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input801 value389 value1 value2 = (output801, value390, value1) := by
  rw [input801_def, output801_def]
  kernel_rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value390 value1 value2 = (output802, value391, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value391 value1 value2 = (output803, value391, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value391 value1 value2 = (output804, value392, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value392 value1 value2 = (output805, value393, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value391 value1 value2 = (output804, value392, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value392 value1 value2 = (output805, value393, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value391 value1 value2 = (output806, value393, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input807 value393 value1 value2 = (output807, value394, value1) := by
  rw [input807_def, output807_def]
  kernel_rfl

theorem node808_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value391 value1 value2 = (output806, value393, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value393 value1 value2 = (output807, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value391 value1 value2 = (output808, value394, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input809 value394 value1 value2 = (output809, value395, value1) := by
  rw [input809_def, output809_def]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value395 value1 value2 = (output810, value396, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value394 value1 value2 = (output809, value395, value1))
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value395 value1 value2 = (output810, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input811 value394 value1 value2 = (output811, value396, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output810_skip]
  kernel_rfl

theorem node812_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value391 value1 value2 = (output808, value394, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value394 value1 value2 = (output811, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value391 value1 value2 = (output812, value396, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value391 value1 value2 = (output803, value391, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value391 value1 value2 = (output812, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value391 value1 value2 = (output813, value396, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value390 value1 value2 = (output802, value391, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value391 value1 value2 = (output813, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value390 value1 value2 = (output814, value396, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value389 value1 value2 = (output801, value390, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value390 value1 value2 = (output814, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value389 value1 value2 = (output815, value396, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value383 value1 value2 = (output800, value389, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value389 value1 value2 = (output815, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value383 value1 value2 = (output816, value396, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value383 value1 value2 = (output759, value383, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value383 value1 value2 = (output816, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value383 value1 value2 = (output817, value396, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value382 value1 value2 = (output758, value383, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value383 value1 value2 = (output817, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value382 value1 value2 = (output818, value396, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value381 value1 value2 = (output757, value382, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value382 value1 value2 = (output818, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value381 value1 value2 = (output819, value396, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value378 value1 value2 = (output756, value381, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value381 value1 value2 = (output819, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value378 value1 value2 = (output820, value396, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value378 value1 value2 = (output751, value378, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value378 value1 value2 = (output820, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value378 value1 value2 = (output821, value396, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value377 value1 value2 = (output750, value378, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value378 value1 value2 = (output821, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value377 value1 value2 = (output822, value396, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value376 value1 value2 = (output749, value377, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value377 value1 value2 = (output822, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value376 value1 value2 = (output823, value396, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value375 value1 value2 = (output748, value376, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value376 value1 value2 = (output823, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value375 value1 value2 = (output824, value396, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value371 value1 value2 = (output747, value375, value1))
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value375 value1 value2 = (output824, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input825 value371 value1 value2 = (output825, value396, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output824_skip]
  kernel_rfl

theorem node826_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value374 value1 value2 = (output746, value371, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value371 value1 value2 = (output825, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value374 value1 value2 = (output826, value396, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value360 value1 value2 = (output745, value374, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value374 value1 value2 = (output826, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value360 value1 value2 = (output827, value396, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value360 value1 value2 = (output668, value360, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value360 value1 value2 = (output827, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value360 value1 value2 = (output828, value396, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value360 value1 value2 = (output667, value360, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value360 value1 value2 = (output828, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value360 value1 value2 = (output829, value396, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value359 value1 value2 = (output666, value360, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value360 value1 value2 = (output829, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value359 value1 value2 = (output830, value396, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value356 value1 value2 = (output665, value359, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value359 value1 value2 = (output830, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value356 value1 value2 = (output831, value396, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value356 value1 value2 = (output660, value356, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value356 value1 value2 = (output831, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value356 value1 value2 = (output832, value396, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value355 value1 value2 = (output659, value356, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value356 value1 value2 = (output832, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value355 value1 value2 = (output833, value396, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value352 value1 value2 = (output658, value355, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value355 value1 value2 = (output833, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value352 value1 value2 = (output834, value396, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value354 value1 value2 = (output657, value352, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value352 value1 value2 = (output834, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value354 value1 value2 = (output835, value396, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value352 value1 value2 = (output656, value354, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value354 value1 value2 = (output835, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value352 value1 value2 = (output836, value396, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value351 value1 value2 = (output653, value352, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value352 value1 value2 = (output836, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value351 value1 value2 = (output837, value396, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value351 value1 value2 = (output652, value351, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value351 value1 value2 = (output837, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value351 value1 value2 = (output838, value396, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value351 value1 value2 = (output651, value351, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value351 value1 value2 = (output838, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value351 value1 value2 = (output839, value396, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value350 value1 value2 = (output650, value351, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value351 value1 value2 = (output839, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value350 value1 value2 = (output840, value396, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value349 value1 value2 = (output649, value350, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value350 value1 value2 = (output840, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value349 value1 value2 = (output841, value396, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value346 value1 value2 = (output648, value349, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value349 value1 value2 = (output841, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value346 value1 value2 = (output842, value396, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value346 value1 value2 = (output643, value346, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value346 value1 value2 = (output842, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value346 value1 value2 = (output843, value396, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value344 value1 value2 = (output642, value346, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value346 value1 value2 = (output843, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value344 value1 value2 = (output844, value396, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value343 value1 value2 = (output639, value344, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value344 value1 value2 = (output844, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value343 value1 value2 = (output845, value396, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value342 value1 value2 = (output638, value343, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value343 value1 value2 = (output845, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value342 value1 value2 = (output846, value396, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value340 value1 value2 = (output637, value342, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value342 value1 value2 = (output846, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value340 value1 value2 = (output847, value396, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value339 value1 value2 = (output634, value340, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value340 value1 value2 = (output847, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value339 value1 value2 = (output848, value396, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value339 value1 value2 = (output633, value339, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value339 value1 value2 = (output848, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value339 value1 value2 = (output849, value396, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value339 value1 value2 = (output632, value339, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value339 value1 value2 = (output849, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value339 value1 value2 = (output850, value396, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value338 value1 value2 = (output631, value339, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value339 value1 value2 = (output850, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value338 value1 value2 = (output851, value396, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value337 value1 value2 = (output630, value338, value1))
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value338 value1 value2 = (output851, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input852 value337 value1 value2 = (output852, value396, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output851_skip]
  kernel_rfl

theorem node853_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value334 value1 value2 = (output629, value337, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value337 value1 value2 = (output852, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value334 value1 value2 = (output853, value396, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value334 value1 value2 = (output624, value334, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value334 value1 value2 = (output853, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value334 value1 value2 = (output854, value396, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value332 value1 value2 = (output623, value334, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value334 value1 value2 = (output854, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value332 value1 value2 = (output855, value396, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value331 value1 value2 = (output620, value332, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value332 value1 value2 = (output855, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value331 value1 value2 = (output856, value396, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value330 value1 value2 = (output619, value331, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value331 value1 value2 = (output856, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value330 value1 value2 = (output857, value396, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output856_skip]
  kernel_rfl

theorem node858_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value328 value1 value2 = (output618, value330, value1))
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value330 value1 value2 = (output857, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input858 value328 value1 value2 = (output858, value396, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output857_skip]
  kernel_rfl

theorem node859_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value327 value1 value2 = (output615, value328, value1))
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value328 value1 value2 = (output858, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input859 value327 value1 value2 = (output859, value396, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output858_skip]
  kernel_rfl

theorem node860_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value327 value1 value2 = (output614, value327, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value327 value1 value2 = (output859, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value327 value1 value2 = (output860, value396, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value327 value1 value2 = (output613, value327, value1))
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value327 value1 value2 = (output860, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input861 value327 value1 value2 = (output861, value396, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child613]
  try dsimp only
  rw [child860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output613_skip, output860_skip]
  kernel_rfl

theorem node862_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value326 value1 value2 = (output612, value327, value1))
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value327 value1 value2 = (output861, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input862 value326 value1 value2 = (output862, value396, value1) := by
  rw [input862_def, output862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output861_skip]
  kernel_rfl

theorem node863_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value325 value1 value2 = (output611, value326, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value326 value1 value2 = (output862, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value325 value1 value2 = (output863, value396, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value322 value1 value2 = (output610, value325, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value325 value1 value2 = (output863, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value322 value1 value2 = (output864, value396, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value322 value1 value2 = (output605, value322, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value322 value1 value2 = (output864, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value322 value1 value2 = (output865, value396, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value320 value1 value2 = (output604, value322, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value322 value1 value2 = (output865, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value320 value1 value2 = (output866, value396, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value319 value1 value2 = (output601, value320, value1))
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value320 value1 value2 = (output866, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input867 value319 value1 value2 = (output867, value396, value1) := by
  rw [input867_def, output867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output866_skip]
  kernel_rfl

theorem node868_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value318 value1 value2 = (output600, value319, value1))
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value319 value1 value2 = (output867, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input868 value318 value1 value2 = (output868, value396, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output867_skip]
  kernel_rfl

theorem node869_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value316 value1 value2 = (output599, value318, value1))
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value318 value1 value2 = (output868, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input869 value316 value1 value2 = (output869, value396, value1) := by
  rw [input869_def, output869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output868_skip]
  kernel_rfl

theorem node870_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value315 value1 value2 = (output596, value316, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value316 value1 value2 = (output869, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value315 value1 value2 = (output870, value396, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value315 value1 value2 = (output595, value315, value1))
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value315 value1 value2 = (output870, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input871 value315 value1 value2 = (output871, value396, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output870_skip]
  kernel_rfl

theorem node872_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value315 value1 value2 = (output594, value315, value1))
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value315 value1 value2 = (output871, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input872 value315 value1 value2 = (output872, value396, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output871_skip]
  kernel_rfl

theorem node873_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value314 value1 value2 = (output593, value315, value1))
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value315 value1 value2 = (output872, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input873 value314 value1 value2 = (output873, value396, value1) := by
  rw [input873_def, output873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output872_skip]
  kernel_rfl

theorem node874_cond_eq
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value313 value1 value2 = (output592, value314, value1))
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value314 value1 value2 = (output873, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input874 value313 value1 value2 = (output874, value396, value1) := by
  rw [input874_def, output874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child592]
  try dsimp only
  rw [child873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output592_skip, output873_skip]
  kernel_rfl

theorem node875_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value310 value1 value2 = (output591, value313, value1))
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value313 value1 value2 = (output874, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input875 value310 value1 value2 = (output875, value396, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  try dsimp only
  rw [child874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output591_skip, output874_skip]
  kernel_rfl

theorem node876_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value310 value1 value2 = (output586, value310, value1))
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value310 value1 value2 = (output875, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input876 value310 value1 value2 = (output876, value396, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  try dsimp only
  rw [child875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output586_skip, output875_skip]
  kernel_rfl

theorem node877_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value308 value1 value2 = (output585, value310, value1))
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value310 value1 value2 = (output876, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input877 value308 value1 value2 = (output877, value396, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  try dsimp only
  rw [child876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output876_skip]
  kernel_rfl

theorem node878_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value307 value1 value2 = (output582, value308, value1))
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value308 value1 value2 = (output877, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input878 value307 value1 value2 = (output878, value396, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output877_skip]
  kernel_rfl

theorem node879_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value306 value1 value2 = (output581, value307, value1))
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value307 value1 value2 = (output878, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input879 value306 value1 value2 = (output879, value396, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output878_skip]
  kernel_rfl

theorem node880_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value304 value1 value2 = (output580, value306, value1))
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value306 value1 value2 = (output879, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input880 value304 value1 value2 = (output880, value396, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  try dsimp only
  rw [child879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output879_skip]
  kernel_rfl

theorem node881_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value303 value1 value2 = (output577, value304, value1))
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value304 value1 value2 = (output880, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input881 value303 value1 value2 = (output881, value396, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output577_skip, output880_skip]
  kernel_rfl

theorem node882_cond_eq
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value303 value1 value2 = (output576, value303, value1))
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value303 value1 value2 = (output881, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input882 value303 value1 value2 = (output882, value396, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child576]
  try dsimp only
  rw [child881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output576_skip, output881_skip]
  kernel_rfl

theorem node883_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value303 value1 value2 = (output575, value303, value1))
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value303 value1 value2 = (output882, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input883 value303 value1 value2 = (output883, value396, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output575_skip, output882_skip]
  kernel_rfl

theorem node884_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value302 value1 value2 = (output574, value303, value1))
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value303 value1 value2 = (output883, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input884 value302 value1 value2 = (output884, value396, value1) := by
  rw [input884_def, output884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output883_skip]
  kernel_rfl

theorem node885_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value301 value1 value2 = (output573, value302, value1))
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value302 value1 value2 = (output884, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input885 value301 value1 value2 = (output885, value396, value1) := by
  rw [input885_def, output885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output884_skip]
  kernel_rfl

theorem node886_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value298 value1 value2 = (output572, value301, value1))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value301 value1 value2 = (output885, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input886 value298 value1 value2 = (output886, value396, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value298 value1 value2 = (output567, value298, value1))
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value298 value1 value2 = (output886, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input887 value298 value1 value2 = (output887, value396, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output886_skip]
  kernel_rfl

theorem node888_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value296 value1 value2 = (output566, value298, value1))
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value298 value1 value2 = (output887, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input888 value296 value1 value2 = (output888, value396, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output887_skip]
  kernel_rfl

theorem node889_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value295 value1 value2 = (output563, value296, value1))
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value296 value1 value2 = (output888, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input889 value295 value1 value2 = (output889, value396, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output888_skip]
  kernel_rfl

theorem node890_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value294 value1 value2 = (output562, value295, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value295 value1 value2 = (output889, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value294 value1 value2 = (output890, value396, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value292 value1 value2 = (output561, value294, value1))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value294 value1 value2 = (output890, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input891 value292 value1 value2 = (output891, value396, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value291 value1 value2 = (output558, value292, value1))
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value292 value1 value2 = (output891, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input892 value291 value1 value2 = (output892, value396, value1) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output891_skip]
  kernel_rfl

theorem node893_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value291 value1 value2 = (output557, value291, value1))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value291 value1 value2 = (output892, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input893 value291 value1 value2 = (output893, value396, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output892_skip]
  kernel_rfl

theorem node894_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value291 value1 value2 = (output556, value291, value1))
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value291 value1 value2 = (output893, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input894 value291 value1 value2 = (output894, value396, value1) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output893_skip]
  kernel_rfl

theorem node895_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value290 value1 value2 = (output555, value291, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value291 value1 value2 = (output894, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input895 value290 value1 value2 = (output895, value396, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value289 value1 value2 = (output554, value290, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value290 value1 value2 = (output895, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value289 value1 value2 = (output896, value396, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value286 value1 value2 = (output553, value289, value1))
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value289 value1 value2 = (output896, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input897 value286 value1 value2 = (output897, value396, value1) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output896_skip]
  kernel_rfl

theorem node898_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value286 value1 value2 = (output548, value286, value1))
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value286 value1 value2 = (output897, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input898 value286 value1 value2 = (output898, value396, value1) := by
  rw [input898_def, output898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output897_skip]
  kernel_rfl

theorem node899_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value284 value1 value2 = (output547, value286, value1))
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value286 value1 value2 = (output898, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input899 value284 value1 value2 = (output899, value396, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output898_skip]
  kernel_rfl

theorem node900_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value283 value1 value2 = (output544, value284, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value284 value1 value2 = (output899, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value283 value1 value2 = (output900, value396, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value282 value1 value2 = (output543, value283, value1))
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value283 value1 value2 = (output900, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input901 value282 value1 value2 = (output901, value396, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output900_skip]
  kernel_rfl

theorem node902_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value280 value1 value2 = (output542, value282, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value282 value1 value2 = (output901, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value280 value1 value2 = (output902, value396, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value279 value1 value2 = (output539, value280, value1))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value280 value1 value2 = (output902, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input903 value279 value1 value2 = (output903, value396, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value279 value1 value2 = (output538, value279, value1))
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value279 value1 value2 = (output903, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input904 value279 value1 value2 = (output904, value396, value1) := by
  rw [input904_def, output904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output903_skip]
  kernel_rfl

theorem node905_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value279 value1 value2 = (output537, value279, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value279 value1 value2 = (output904, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value279 value1 value2 = (output905, value396, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value278 value1 value2 = (output536, value279, value1))
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value279 value1 value2 = (output905, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input906 value278 value1 value2 = (output906, value396, value1) := by
  rw [input906_def, output906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output905_skip]
  kernel_rfl

theorem node907_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value277 value1 value2 = (output535, value278, value1))
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value278 value1 value2 = (output906, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input907 value277 value1 value2 = (output907, value396, value1) := by
  rw [input907_def, output907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output906_skip]
  kernel_rfl

theorem node908_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value274 value1 value2 = (output534, value277, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value277 value1 value2 = (output907, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value274 value1 value2 = (output908, value396, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value274 value1 value2 = (output529, value274, value1))
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value274 value1 value2 = (output908, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input909 value274 value1 value2 = (output909, value396, value1) := by
  rw [input909_def, output909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output908_skip]
  kernel_rfl

theorem node910_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value272 value1 value2 = (output528, value274, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value274 value1 value2 = (output909, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value272 value1 value2 = (output910, value396, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value271 value1 value2 = (output525, value272, value1))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value272 value1 value2 = (output910, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value271 value1 value2 = (output911, value396, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value270 value1 value2 = (output524, value271, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value271 value1 value2 = (output911, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value270 value1 value2 = (output912, value396, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value268 value1 value2 = (output523, value270, value1))
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value270 value1 value2 = (output912, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input913 value268 value1 value2 = (output913, value396, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output912_skip]
  kernel_rfl

theorem node914_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value267 value1 value2 = (output520, value268, value1))
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value268 value1 value2 = (output913, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input914 value267 value1 value2 = (output914, value396, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output913_skip]
  kernel_rfl

theorem node915_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value267 value1 value2 = (output519, value267, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value267 value1 value2 = (output914, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value267 value1 value2 = (output915, value396, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value267 value1 value2 = (output518, value267, value1))
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value267 value1 value2 = (output915, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input916 value267 value1 value2 = (output916, value396, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output915_skip]
  kernel_rfl

theorem node917_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value266 value1 value2 = (output517, value267, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value267 value1 value2 = (output916, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value266 value1 value2 = (output917, value396, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value265 value1 value2 = (output516, value266, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value266 value1 value2 = (output917, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value265 value1 value2 = (output918, value396, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value262 value1 value2 = (output515, value265, value1))
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value265 value1 value2 = (output918, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input919 value262 value1 value2 = (output919, value396, value1) := by
  rw [input919_def, output919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output918_skip]
  kernel_rfl

theorem node920_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value262 value1 value2 = (output510, value262, value1))
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value262 value1 value2 = (output919, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input920 value262 value1 value2 = (output920, value396, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output919_skip]
  kernel_rfl

theorem node921_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value260 value1 value2 = (output509, value262, value1))
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value262 value1 value2 = (output920, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input921 value260 value1 value2 = (output921, value396, value1) := by
  rw [input921_def, output921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output920_skip]
  kernel_rfl

theorem node922_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value259 value1 value2 = (output506, value260, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value260 value1 value2 = (output921, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value259 value1 value2 = (output922, value396, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value258 value1 value2 = (output505, value259, value1))
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value259 value1 value2 = (output922, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input923 value258 value1 value2 = (output923, value396, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output922_skip]
  kernel_rfl

theorem node924_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value257 value1 value2 = (output504, value258, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value258 value1 value2 = (output923, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value257 value1 value2 = (output924, value396, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value256 value1 value2 = (output503, value257, value1))
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value257 value1 value2 = (output924, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input925 value256 value1 value2 = (output925, value396, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output924_skip]
  kernel_rfl

theorem node926_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value255 value1 value2 = (output502, value256, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value256 value1 value2 = (output925, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value255 value1 value2 = (output926, value396, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output925_skip]
  kernel_rfl

theorem node927_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value253 value1 value2 = (output501, value255, value1))
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value255 value1 value2 = (output926, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input927 value253 value1 value2 = (output927, value396, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output926_skip]
  kernel_rfl

theorem node928_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value252 value1 value2 = (output498, value253, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value253 value1 value2 = (output927, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value252 value1 value2 = (output928, value396, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value250 value1 value2 = (output497, value252, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value252 value1 value2 = (output928, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value250 value1 value2 = (output929, value396, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value249 value1 value2 = (output494, value250, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value250 value1 value2 = (output929, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value249 value1 value2 = (output930, value396, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value247 value1 value2 = (output493, value249, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value249 value1 value2 = (output930, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value247 value1 value2 = (output931, value396, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value246 value1 value2 = (output490, value247, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value247 value1 value2 = (output931, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value246 value1 value2 = (output932, value396, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value244 value1 value2 = (output489, value246, value1))
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value246 value1 value2 = (output932, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input933 value244 value1 value2 = (output933, value396, value1) := by
  rw [input933_def, output933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output932_skip]
  kernel_rfl

theorem node934_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value243 value1 value2 = (output486, value244, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value244 value1 value2 = (output933, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input934 value243 value1 value2 = (output934, value396, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value243 value1 value2 = (output485, value243, value1))
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value243 value1 value2 = (output934, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input935 value243 value1 value2 = (output935, value396, value1) := by
  rw [input935_def, output935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output934_skip]
  kernel_rfl

theorem node936_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value242 value1 value2 = (output484, value243, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value243 value1 value2 = (output935, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value242 value1 value2 = (output936, value396, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value239 value1 value2 = (output483, value242, value1))
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value242 value1 value2 = (output936, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input937 value239 value1 value2 = (output937, value396, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output936_skip]
  kernel_rfl

theorem node938_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value239 value1 value2 = (output478, value239, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value239 value1 value2 = (output937, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value239 value1 value2 = (output938, value396, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value237 value1 value2 = (output477, value239, value1))
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value239 value1 value2 = (output938, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input939 value237 value1 value2 = (output939, value396, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output938_skip]
  kernel_rfl

theorem node940_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value236 value1 value2 = (output474, value237, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value237 value1 value2 = (output939, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value236 value1 value2 = (output940, value396, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value235 value1 value2 = (output473, value236, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value236 value1 value2 = (output940, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value235 value1 value2 = (output941, value396, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value233 value1 value2 = (output472, value235, value1))
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value235 value1 value2 = (output941, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input942 value233 value1 value2 = (output942, value396, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output941_skip]
  kernel_rfl

theorem node943_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value232 value1 value2 = (output469, value233, value1))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value233 value1 value2 = (output942, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value232 value1 value2 = (output943, value396, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value232 value1 value2 = (output468, value232, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value232 value1 value2 = (output943, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value232 value1 value2 = (output944, value396, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value231 value1 value2 = (output467, value232, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value232 value1 value2 = (output944, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value231 value1 value2 = (output945, value396, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value228 value1 value2 = (output466, value231, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value231 value1 value2 = (output945, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value228 value1 value2 = (output946, value396, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value228 value1 value2 = (output461, value228, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value228 value1 value2 = (output946, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value228 value1 value2 = (output947, value396, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value226 value1 value2 = (output460, value228, value1))
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value228 value1 value2 = (output947, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input948 value226 value1 value2 = (output948, value396, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output947_skip]
  kernel_rfl

theorem node949_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value225 value1 value2 = (output457, value226, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value226 value1 value2 = (output948, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value225 value1 value2 = (output949, value396, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value224 value1 value2 = (output456, value225, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value225 value1 value2 = (output949, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value224 value1 value2 = (output950, value396, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output949_skip]
  kernel_rfl

theorem node951_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value222 value1 value2 = (output455, value224, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value224 value1 value2 = (output950, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value222 value1 value2 = (output951, value396, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value221 value1 value2 = (output452, value222, value1))
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value222 value1 value2 = (output951, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input952 value221 value1 value2 = (output952, value396, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output951_skip]
  kernel_rfl

theorem node953_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value221 value1 value2 = (output451, value221, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value221 value1 value2 = (output952, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value221 value1 value2 = (output953, value396, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value220 value1 value2 = (output450, value221, value1))
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value221 value1 value2 = (output953, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input954 value220 value1 value2 = (output954, value396, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output953_skip]
  kernel_rfl

theorem node955_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value217 value1 value2 = (output449, value220, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value220 value1 value2 = (output954, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value217 value1 value2 = (output955, value396, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value217 value1 value2 = (output444, value217, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value217 value1 value2 = (output955, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value217 value1 value2 = (output956, value396, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value215 value1 value2 = (output443, value217, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value217 value1 value2 = (output956, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value215 value1 value2 = (output957, value396, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value214 value1 value2 = (output440, value215, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value215 value1 value2 = (output957, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value214 value1 value2 = (output958, value396, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value213 value1 value2 = (output439, value214, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value214 value1 value2 = (output958, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value213 value1 value2 = (output959, value396, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value211 value1 value2 = (output438, value213, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value213 value1 value2 = (output959, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value211 value1 value2 = (output960, value396, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value210 value1 value2 = (output435, value211, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value211 value1 value2 = (output960, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value210 value1 value2 = (output961, value396, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value210 value1 value2 = (output434, value210, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value210 value1 value2 = (output961, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value210 value1 value2 = (output962, value396, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value210 value1 value2 = (output433, value210, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value210 value1 value2 = (output962, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value210 value1 value2 = (output963, value396, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value209 value1 value2 = (output432, value210, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value210 value1 value2 = (output963, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value209 value1 value2 = (output964, value396, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value208 value1 value2 = (output431, value209, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value209 value1 value2 = (output964, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value208 value1 value2 = (output965, value396, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child431]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output431_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value205 value1 value2 = (output430, value208, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value208 value1 value2 = (output965, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value205 value1 value2 = (output966, value396, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value205 value1 value2 = (output425, value205, value1))
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value205 value1 value2 = (output966, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value205 value1 value2 = (output967, value396, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child425]
  try dsimp only
  rw [child966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output425_skip, output966_skip]
  kernel_rfl

theorem node968_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value204 value1 value2 = (output424, value205, value1))
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value205 value1 value2 = (output967, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input968 value204 value1 value2 = (output968, value396, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output967_skip]
  kernel_rfl

theorem node969_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value203 value1 value2 = (output423, value204, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value204 value1 value2 = (output968, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value203 value1 value2 = (output969, value396, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value195 value1 value2 = (output422, value203, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value203 value1 value2 = (output969, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value195 value1 value2 = (output970, value396, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output422_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value195 value1 value2 = (output381, value195, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value195 value1 value2 = (output970, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value195 value1 value2 = (output971, value396, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value194 value1 value2 = (output380, value195, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value195 value1 value2 = (output971, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value194 value1 value2 = (output972, value396, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value194 value1 value2 = (output379, value194, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value194 value1 value2 = (output972, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value194 value1 value2 = (output973, value396, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output379_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value193 value1 value2 = (output378, value194, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value194 value1 value2 = (output973, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value193 value1 value2 = (output974, value396, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value190 value1 value2 = (output377, value193, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value193 value1 value2 = (output974, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value190 value1 value2 = (output975, value396, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value190 value1 value2 = (output372, value190, value1))
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value190 value1 value2 = (output975, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input976 value190 value1 value2 = (output976, value396, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output975_skip]
  kernel_rfl

theorem node977_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value188 value1 value2 = (output371, value190, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value190 value1 value2 = (output976, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value188 value1 value2 = (output977, value396, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output976_skip]
  kernel_rfl

theorem node978_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value187 value1 value2 = (output368, value188, value1))
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value188 value1 value2 = (output977, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input978 value187 value1 value2 = (output978, value396, value1) := by
  rw [input978_def, output978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output977_skip]
  kernel_rfl

theorem node979_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value186 value1 value2 = (output367, value187, value1))
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value187 value1 value2 = (output978, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input979 value186 value1 value2 = (output979, value396, value1) := by
  rw [input979_def, output979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output978_skip]
  kernel_rfl

theorem node980_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value184 value1 value2 = (output366, value186, value1))
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value186 value1 value2 = (output979, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input980 value184 value1 value2 = (output980, value396, value1) := by
  rw [input980_def, output980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output979_skip]
  kernel_rfl

theorem node981_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value183 value1 value2 = (output363, value184, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value184 value1 value2 = (output980, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value183 value1 value2 = (output981, value396, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value183 value1 value2 = (output362, value183, value1))
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value183 value1 value2 = (output981, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input982 value183 value1 value2 = (output982, value396, value1) := by
  rw [input982_def, output982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output981_skip]
  kernel_rfl

theorem node983_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value182 value1 value2 = (output361, value183, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value183 value1 value2 = (output982, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value182 value1 value2 = (output983, value396, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value179 value1 value2 = (output360, value182, value1))
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value182 value1 value2 = (output983, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input984 value179 value1 value2 = (output984, value396, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output983_skip]
  kernel_rfl

theorem node985_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value179 value1 value2 = (output355, value179, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value179 value1 value2 = (output984, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value179 value1 value2 = (output985, value396, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output984_skip]
  kernel_rfl

theorem node986_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value177 value1 value2 = (output354, value179, value1))
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value179 value1 value2 = (output985, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input986 value177 value1 value2 = (output986, value396, value1) := by
  rw [input986_def, output986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output985_skip]
  kernel_rfl

theorem node987_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value176 value1 value2 = (output351, value177, value1))
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value177 value1 value2 = (output986, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input987 value176 value1 value2 = (output987, value396, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output986_skip]
  kernel_rfl

theorem node988_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value175 value1 value2 = (output350, value176, value1))
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value176 value1 value2 = (output987, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input988 value175 value1 value2 = (output988, value396, value1) := by
  rw [input988_def, output988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output987_skip]
  kernel_rfl

theorem node989_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value173 value1 value2 = (output349, value175, value1))
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value175 value1 value2 = (output988, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input989 value173 value1 value2 = (output989, value396, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child349]
  try dsimp only
  rw [child988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output988_skip]
  kernel_rfl

theorem node990_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value171 value1 value2 = (output346, value173, value1))
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value173 value1 value2 = (output989, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input990 value171 value1 value2 = (output990, value396, value1) := by
  rw [input990_def, output990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output989_skip]
  kernel_rfl

theorem node991_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value170 value1 value2 = (output343, value171, value1))
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value171 value1 value2 = (output990, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input991 value170 value1 value2 = (output991, value396, value1) := by
  rw [input991_def, output991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output990_skip]
  kernel_rfl

theorem node992_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value169 value1 value2 = (output342, value170, value1))
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value170 value1 value2 = (output991, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input992 value169 value1 value2 = (output992, value396, value1) := by
  rw [input992_def, output992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output991_skip]
  kernel_rfl

theorem node993_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value167 value1 value2 = (output341, value169, value1))
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value169 value1 value2 = (output992, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input993 value167 value1 value2 = (output993, value396, value1) := by
  rw [input993_def, output993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output992_skip]
  kernel_rfl

theorem node994_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value166 value1 value2 = (output338, value167, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value167 value1 value2 = (output993, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value166 value1 value2 = (output994, value396, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value166 value1 value2 = (output337, value166, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value166 value1 value2 = (output994, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value166 value1 value2 = (output995, value396, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value166 value1 value2 = (output336, value166, value1))
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value166 value1 value2 = (output995, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input996 value166 value1 value2 = (output996, value396, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output995_skip]
  kernel_rfl

theorem node997_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value165 value1 value2 = (output335, value166, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value166 value1 value2 = (output996, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value165 value1 value2 = (output997, value396, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output996_skip]
  kernel_rfl

theorem node998_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value164 value1 value2 = (output334, value165, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value165 value1 value2 = (output997, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value164 value1 value2 = (output998, value396, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value161 value1 value2 = (output333, value164, value1))
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value164 value1 value2 = (output998, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input999 value161 value1 value2 = (output999, value396, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output998_skip]
  kernel_rfl

theorem node1000_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value161 value1 value2 = (output328, value161, value1))
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value161 value1 value2 = (output999, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1000 value161 value1 value2 = (output1000, value396, value1) := by
  rw [input1000_def, output1000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output999_skip]
  kernel_rfl

theorem node1001_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value159 value1 value2 = (output327, value161, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value161 value1 value2 = (output1000, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value159 value1 value2 = (output1001, value396, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child1000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output1000_skip]
  kernel_rfl

theorem node1002_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value158 value1 value2 = (output324, value159, value1))
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value159 value1 value2 = (output1001, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1002 value158 value1 value2 = (output1002, value396, value1) := by
  rw [input1002_def, output1002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child1001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output1001_skip]
  kernel_rfl

theorem node1003_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value157 value1 value2 = (output323, value158, value1))
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value158 value1 value2 = (output1002, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1003 value157 value1 value2 = (output1003, value396, value1) := by
  rw [input1003_def, output1003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child1002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output1002_skip]
  kernel_rfl

theorem node1004_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value155 value1 value2 = (output322, value157, value1))
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value157 value1 value2 = (output1003, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1004 value155 value1 value2 = (output1004, value396, value1) := by
  rw [input1004_def, output1004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child1003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output1003_skip]
  kernel_rfl

theorem node1005_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value154 value1 value2 = (output319, value155, value1))
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value155 value1 value2 = (output1004, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1005 value154 value1 value2 = (output1005, value396, value1) := by
  rw [input1005_def, output1005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child1004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output1004_skip]
  kernel_rfl

theorem node1006_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value154 value1 value2 = (output318, value154, value1))
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value154 value1 value2 = (output1005, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1006 value154 value1 value2 = (output1006, value396, value1) := by
  rw [input1006_def, output1006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child1005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output1005_skip]
  kernel_rfl

theorem node1007_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value154 value1 value2 = (output317, value154, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value154 value1 value2 = (output1006, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value154 value1 value2 = (output1007, value396, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value153 value1 value2 = (output316, value154, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value154 value1 value2 = (output1007, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value153 value1 value2 = (output1008, value396, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value152 value1 value2 = (output315, value153, value1))
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value153 value1 value2 = (output1008, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1009 value152 value1 value2 = (output1009, value396, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  try dsimp only
  rw [child1008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output315_skip, output1008_skip]
  kernel_rfl

theorem node1010_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value149 value1 value2 = (output314, value152, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value152 value1 value2 = (output1009, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value149 value1 value2 = (output1010, value396, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value149 value1 value2 = (output309, value149, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value149 value1 value2 = (output1010, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value149 value1 value2 = (output1011, value396, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value147 value1 value2 = (output308, value149, value1))
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value149 value1 value2 = (output1011, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1012 value147 value1 value2 = (output1012, value396, value1) := by
  rw [input1012_def, output1012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child1011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output1011_skip]
  kernel_rfl

theorem node1013_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value146 value1 value2 = (output305, value147, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value147 value1 value2 = (output1012, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value146 value1 value2 = (output1013, value396, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child1012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output1012_skip]
  kernel_rfl

theorem node1014_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value145 value1 value2 = (output304, value146, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value146 value1 value2 = (output1013, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value145 value1 value2 = (output1014, value396, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value143 value1 value2 = (output303, value145, value1))
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value145 value1 value2 = (output1014, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1015 value143 value1 value2 = (output1015, value396, value1) := by
  rw [input1015_def, output1015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child1014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output1014_skip]
  kernel_rfl

theorem node1016_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value142 value1 value2 = (output300, value143, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value143 value1 value2 = (output1015, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value142 value1 value2 = (output1016, value396, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value142 value1 value2 = (output299, value142, value1))
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value142 value1 value2 = (output1016, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1017 value142 value1 value2 = (output1017, value396, value1) := by
  rw [input1017_def, output1017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child1016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output1016_skip]
  kernel_rfl

theorem node1018_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value142 value1 value2 = (output298, value142, value1))
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value142 value1 value2 = (output1017, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1018 value142 value1 value2 = (output1018, value396, value1) := by
  rw [input1018_def, output1018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child1017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output1017_skip]
  kernel_rfl

theorem node1019_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value141 value1 value2 = (output297, value142, value1))
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value142 value1 value2 = (output1018, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1019 value141 value1 value2 = (output1019, value396, value1) := by
  rw [input1019_def, output1019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child1018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output1018_skip]
  kernel_rfl

theorem node1020_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value140 value1 value2 = (output296, value141, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value141 value1 value2 = (output1019, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value140 value1 value2 = (output1020, value396, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child1019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output1019_skip]
  kernel_rfl

theorem node1021_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value137 value1 value2 = (output295, value140, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value140 value1 value2 = (output1020, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value137 value1 value2 = (output1021, value396, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child1020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output1020_skip]
  kernel_rfl

theorem node1022_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value137 value1 value2 = (output290, value137, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value137 value1 value2 = (output1021, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value137 value1 value2 = (output1022, value396, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child1021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output1021_skip]
  kernel_rfl

theorem node1023_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value135 value1 value2 = (output289, value137, value1))
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value137 value1 value2 = (output1022, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1023 value135 value1 value2 = (output1023, value396, value1) := by
  rw [input1023_def, output1023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child1022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output1022_skip]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages276.Parallel
