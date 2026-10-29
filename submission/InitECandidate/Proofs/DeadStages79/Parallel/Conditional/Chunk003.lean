import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages79.Parallel
theorem node768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input768 value197 value1 value192 = (output768, value197, value1) := by
  rw [input768_def, output768_def]
  kernel_rfl

theorem node769_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value197 value1 value192 = (output767, value197, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value197 value1 value192 = (output768, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value197 value1 value192 = (output769, value197, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input770 value197 value1 value192 = (output770, value198, value1) := by
  rw [input770_def, output770_def]
  kernel_rfl

theorem node771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input771 value198 value1 value192 = (output771, value199, value1) := by
  rw [input771_def, output771_def]
  kernel_rfl

theorem node772_cond_eq
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value197 value1 value192 = (output770, value198, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value198 value1 value192 = (output771, value199, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value197 value1 value192 = (output772, value199, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child770]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output770_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input773 value199 value1 value192 = (output773, value197, value1) := by
  rw [input773_def, output773_def]
  kernel_rfl

theorem node774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input774 value197 value1 value192 = (output774, value197, value1) := by
  rw [input774_def, output774_def]
  kernel_rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value197 value1 value192 = (output775, value197, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value197 value1 value192 = (output776, value197, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value197 value1 value192 = (output775, value197, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value197 value1 value192 = (output776, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value197 value1 value192 = (output777, value197, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value197 value1 value192 = (output774, value197, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value197 value1 value192 = (output777, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value197 value1 value192 = (output778, value197, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value199 value1 value192 = (output773, value197, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value197 value1 value192 = (output778, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value199 value1 value192 = (output779, value197, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value197 value1 value192 = (output772, value199, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value199 value1 value192 = (output779, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value197 value1 value192 = (output780, value197, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value197 value1 value192 = (output769, value197, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value197 value1 value192 = (output780, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value197 value1 value192 = (output781, value197, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value197 value1 value192 = (output782, value197, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value197 value1 value192 = (output783, value197, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value197 value1 value192 = (output782, value197, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value197 value1 value192 = (output783, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value197 value1 value192 = (output784, value197, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input785 value197 value1 value192 = (output785, value197, value1) := by
  rw [input785_def, output785_def]
  kernel_rfl

theorem node786_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value197 value1 value192 = (output784, value197, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value197 value1 value192 = (output785, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value197 value1 value192 = (output786, value197, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value197 value1 value192 = (output781, value197, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value197 value1 value192 = (output786, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value197 value1 value192 = (output787, value201, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child781]
  try dsimp only
  rw [child786]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value197 value1 value192 = (output766, value197, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value197 value1 value192 = (output787, value201, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value197 value1 value192 = (output788, value201, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value201 value1 value192 = (output789, value202, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value202 value1 value192 = (output790, value203, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value203 value1 value192 = (output791, value204, value1) := by
  rw [input791_def, output791_def]
  kernel_rfl

theorem node792_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value202 value1 value192 = (output790, value203, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value203 value1 value192 = (output791, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value202 value1 value192 = (output792, value204, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value204 value1 value192 = (output793, value205, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value202 value1 value192 = (output792, value204, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value204 value1 value192 = (output793, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value202 value1 value192 = (output794, value205, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value201 value1 value192 = (output789, value202, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value202 value1 value192 = (output794, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value201 value1 value192 = (output795, value205, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input796 value205 value1 value192 = (output796, value206, value1) := by
  rw [input796_def, output796_def]
  kernel_rfl

theorem node797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input797 value206 value1 value192 = (output797, value207, value1) := by
  rw [input797_def, output797_def]
  kernel_rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value207 value1 value192 = (output798, value208, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

theorem node799_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value206 value1 value192 = (output797, value207, value1))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value207 value1 value192 = (output798, value208, value1)) : Flapjack.WordAlloc.removeDeadStructural input799 value206 value1 value192 = (output799, value208, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input800 value208 value1 value192 = (output800, value209, value1) := by
  rw [input800_def, output800_def]
  kernel_rfl

theorem node801_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value206 value1 value192 = (output799, value208, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value208 value1 value192 = (output800, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value206 value1 value192 = (output801, value209, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value205 value1 value192 = (output796, value206, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value206 value1 value192 = (output801, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value205 value1 value192 = (output802, value209, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value209 value1 value192 = (output803, value209, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value209 value1 value192 = (output804, value209, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value209 value1 value192 = (output805, value209, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input806 value209 value1 value192 = (output806, value209, value1) := by
  rw [input806_def, output806_def]
  kernel_rfl

theorem node807_cond_eq
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value209 value1 value192 = (output805, value209, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value209 value1 value192 = (output806, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value209 value1 value192 = (output807, value209, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child805]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output805_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value209 value1 value192 = (output804, value209, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value209 value1 value192 = (output807, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value209 value1 value192 = (output808, value209, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input809 value209 value1 value192 = (output809, value209, value1) := by
  rw [input809_def, output809_def]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value209 value1 value192 = (output810, value209, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value209 value1 value192 = (output809, value209, value1))
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value209 value1 value192 = (output810, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input811 value209 value1 value192 = (output811, value209, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output810_skip]
  kernel_rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value209 value1 value192 = (output812, value210, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

theorem node813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input813 value210 value1 value192 = (output813, value211, value1) := by
  rw [input813_def, output813_def]
  kernel_rfl

theorem node814_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value209 value1 value192 = (output812, value210, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value210 value1 value192 = (output813, value211, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value209 value1 value192 = (output814, value211, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input815 value211 value1 value192 = (output815, value209, value1) := by
  rw [input815_def, output815_def]
  kernel_rfl

theorem node816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input816 value209 value1 value192 = (output816, value209, value1) := by
  rw [input816_def, output816_def]
  kernel_rfl

theorem node817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input817 value209 value1 value192 = (output817, value209, value1) := by
  rw [input817_def, output817_def]
  kernel_rfl

theorem node818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input818 value209 value1 value192 = (output818, value209, value1) := by
  rw [input818_def, output818_def]
  kernel_rfl

theorem node819_cond_eq
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value209 value1 value192 = (output817, value209, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value209 value1 value192 = (output818, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value209 value1 value192 = (output819, value209, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child817]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output817_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value209 value1 value192 = (output816, value209, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value209 value1 value192 = (output819, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value209 value1 value192 = (output820, value209, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value211 value1 value192 = (output815, value209, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value209 value1 value192 = (output820, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value211 value1 value192 = (output821, value209, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value209 value1 value192 = (output814, value211, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value211 value1 value192 = (output821, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value209 value1 value192 = (output822, value209, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value209 value1 value192 = (output811, value209, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value209 value1 value192 = (output822, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value209 value1 value192 = (output823, value209, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input824 value209 value1 value192 = (output824, value209, value1) := by
  rw [input824_def, output824_def]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value209 value1 value192 = (output825, value209, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value209 value1 value192 = (output824, value209, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value209 value1 value192 = (output825, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value209 value1 value192 = (output826, value209, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input827 value209 value1 value192 = (output827, value209, value1) := by
  rw [input827_def, output827_def]
  kernel_rfl

theorem node828_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value209 value1 value192 = (output826, value209, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value209 value1 value192 = (output827, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value209 value1 value192 = (output828, value209, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value209 value1 value192 = (output823, value209, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value209 value1 value192 = (output828, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value209 value1 value192 = (output829, value213, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child823]
  try dsimp only
  rw [child828]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value209 value1 value192 = (output808, value209, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value209 value1 value192 = (output829, value213, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value209 value1 value192 = (output830, value213, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input831 value213 value1 value192 = (output831, value214, value1) := by
  rw [input831_def, output831_def]
  kernel_rfl

theorem node832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input832 value214 value1 value192 = (output832, value215, value1) := by
  rw [input832_def, output832_def]
  kernel_rfl

theorem node833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input833 value215 value1 value192 = (output833, value216, value1) := by
  rw [input833_def, output833_def]
  kernel_rfl

theorem node834_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value214 value1 value192 = (output832, value215, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value215 value1 value192 = (output833, value216, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value214 value1 value192 = (output834, value216, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input835 value216 value1 value192 = (output835, value217, value1) := by
  rw [input835_def, output835_def]
  kernel_rfl

theorem node836_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value214 value1 value192 = (output834, value216, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value216 value1 value192 = (output835, value217, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value214 value1 value192 = (output836, value217, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value213 value1 value192 = (output831, value214, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value214 value1 value192 = (output836, value217, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value213 value1 value192 = (output837, value217, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input838 value217 value1 value192 = (output838, value218, value1) := by
  rw [input838_def, output838_def]
  kernel_rfl

theorem node839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input839 value218 value1 value192 = (output839, value219, value1) := by
  rw [input839_def, output839_def]
  kernel_rfl

theorem node840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input840 value219 value1 value192 = (output840, value220, value1) := by
  rw [input840_def, output840_def]
  kernel_rfl

theorem node841_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value218 value1 value192 = (output839, value219, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value219 value1 value192 = (output840, value220, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value218 value1 value192 = (output841, value220, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input842 value220 value1 value192 = (output842, value221, value1) := by
  rw [input842_def, output842_def]
  kernel_rfl

theorem node843_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value218 value1 value192 = (output841, value220, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value220 value1 value192 = (output842, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value218 value1 value192 = (output843, value221, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value217 value1 value192 = (output838, value218, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value218 value1 value192 = (output843, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value217 value1 value192 = (output844, value221, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input845 value221 value1 value192 = (output845, value221, value1) := by
  rw [input845_def, output845_def]
  kernel_rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value221 value1 value192 = (output846, value221, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value221 value1 value192 = (output847, value221, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

theorem node848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input848 value221 value1 value192 = (output848, value221, value1) := by
  rw [input848_def, output848_def]
  kernel_rfl

theorem node849_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value221 value1 value192 = (output847, value221, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value221 value1 value192 = (output848, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value221 value1 value192 = (output849, value221, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value221 value1 value192 = (output846, value221, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value221 value1 value192 = (output849, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value221 value1 value192 = (output850, value221, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input851 value221 value1 value192 = (output851, value221, value1) := by
  rw [input851_def, output851_def]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value221 value1 value192 = (output852, value221, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value221 value1 value192 = (output851, value221, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value221 value1 value192 = (output852, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value221 value1 value192 = (output853, value221, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input854 value221 value1 value192 = (output854, value222, value1) := by
  rw [input854_def, output854_def]
  kernel_rfl

theorem node855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input855 value222 value1 value192 = (output855, value223, value1) := by
  rw [input855_def, output855_def]
  kernel_rfl

theorem node856_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value221 value1 value192 = (output854, value222, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value222 value1 value192 = (output855, value223, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value221 value1 value192 = (output856, value223, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  try dsimp only
  rw [child855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output854_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input857 value223 value1 value192 = (output857, value221, value1) := by
  rw [input857_def, output857_def]
  kernel_rfl

theorem node858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input858 value221 value1 value192 = (output858, value221, value1) := by
  rw [input858_def, output858_def]
  kernel_rfl

theorem node859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input859 value221 value1 value192 = (output859, value221, value1) := by
  rw [input859_def, output859_def]
  kernel_rfl

theorem node860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input860 value221 value1 value192 = (output860, value221, value1) := by
  rw [input860_def, output860_def]
  kernel_rfl

theorem node861_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value221 value1 value192 = (output859, value221, value1))
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value221 value1 value192 = (output860, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input861 value221 value1 value192 = (output861, value221, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output860_skip]
  kernel_rfl

theorem node862_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value221 value1 value192 = (output858, value221, value1))
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value221 value1 value192 = (output861, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input862 value221 value1 value192 = (output862, value221, value1) := by
  rw [input862_def, output862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output861_skip]
  kernel_rfl

theorem node863_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value223 value1 value192 = (output857, value221, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value221 value1 value192 = (output862, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value223 value1 value192 = (output863, value221, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value221 value1 value192 = (output856, value223, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value223 value1 value192 = (output863, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value221 value1 value192 = (output864, value221, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value221 value1 value192 = (output853, value221, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value221 value1 value192 = (output864, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value221 value1 value192 = (output865, value221, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child853]
  try dsimp only
  rw [child864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output853_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input866 value221 value1 value192 = (output866, value221, value1) := by
  rw [input866_def, output866_def]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value221 value1 value192 = (output867, value221, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value221 value1 value192 = (output866, value221, value1))
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value221 value1 value192 = (output867, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input868 value221 value1 value192 = (output868, value221, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output867_skip]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value221 value1 value192 = (output869, value221, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value221 value1 value192 = (output868, value221, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value221 value1 value192 = (output869, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value221 value1 value192 = (output870, value221, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value221 value1 value192 = (output865, value221, value1))
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value221 value1 value192 = (output870, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input871 value221 value1 value192 = (output871, value225, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child865]
  try dsimp only
  rw [child870]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output865_skip, output870_skip]
  kernel_rfl

theorem node872_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value221 value1 value192 = (output850, value221, value1))
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value221 value1 value192 = (output871, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input872 value221 value1 value192 = (output872, value225, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  try dsimp only
  rw [child871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output871_skip]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value225 value1 value192 = (output873, value226, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value226 value1 value192 = (output874, value227, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input875 value227 value1 value192 = (output875, value228, value1) := by
  rw [input875_def, output875_def]
  kernel_rfl

theorem node876_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value226 value1 value192 = (output874, value227, value1))
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value227 value1 value192 = (output875, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input876 value226 value1 value192 = (output876, value228, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output875_skip]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value228 value1 value192 = (output877, value229, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value226 value1 value192 = (output876, value228, value1))
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value228 value1 value192 = (output877, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input878 value226 value1 value192 = (output878, value229, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output877_skip]
  kernel_rfl

theorem node879_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value225 value1 value192 = (output873, value226, value1))
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value226 value1 value192 = (output878, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input879 value225 value1 value192 = (output879, value229, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output878_skip]
  kernel_rfl

theorem node880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input880 value229 value1 value192 = (output880, value230, value1) := by
  rw [input880_def, output880_def]
  kernel_rfl

theorem node881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input881 value230 value1 value192 = (output881, value231, value1) := by
  rw [input881_def, output881_def]
  kernel_rfl

theorem node882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input882 value231 value1 value192 = (output882, value232, value1) := by
  rw [input882_def, output882_def]
  kernel_rfl

theorem node883_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value230 value1 value192 = (output881, value231, value1))
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value231 value1 value192 = (output882, value232, value1)) : Flapjack.WordAlloc.removeDeadStructural input883 value230 value1 value192 = (output883, value232, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output882_skip]
  kernel_rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value232 value1 value192 = (output884, value233, value1) := by
  rw [input884_def, output884_def]
  kernel_rfl

theorem node885_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value230 value1 value192 = (output883, value232, value1))
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value232 value1 value192 = (output884, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input885 value230 value1 value192 = (output885, value233, value1) := by
  rw [input885_def, output885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output884_skip]
  kernel_rfl

theorem node886_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value229 value1 value192 = (output880, value230, value1))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value230 value1 value192 = (output885, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input886 value229 value1 value192 = (output886, value233, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input887 value233 value1 value192 = (output887, value233, value1) := by
  rw [input887_def, output887_def]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value233 value1 value192 = (output888, value233, value1) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value233 value1 value192 = (output889, value233, value1) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input890 value233 value1 value192 = (output890, value233, value1) := by
  rw [input890_def, output890_def]
  kernel_rfl

theorem node891_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value233 value1 value192 = (output889, value233, value1))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value233 value1 value192 = (output890, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input891 value233 value1 value192 = (output891, value233, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  try dsimp only
  rw [child890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value233 value1 value192 = (output888, value233, value1))
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value233 value1 value192 = (output891, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input892 value233 value1 value192 = (output892, value233, value1) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output891_skip]
  kernel_rfl

theorem node893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input893 value233 value1 value192 = (output893, value233, value1) := by
  rw [input893_def, output893_def]
  kernel_rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value233 value1 value192 = (output894, value233, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

theorem node895_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value233 value1 value192 = (output893, value233, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value233 value1 value192 = (output894, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input895 value233 value1 value192 = (output895, value233, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input896 value233 value1 value192 = (output896, value233, value1) := by
  rw [input896_def, output896_def]
  kernel_rfl

theorem node897_cond_eq
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value233 value1 value192 = (output895, value233, value1))
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value233 value1 value192 = (output896, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input897 value233 value1 value192 = (output897, value233, value1) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child895]
  try dsimp only
  rw [child896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output895_skip, output896_skip]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value233 value1 value192 = (output898, value234, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input899 value234 value1 value192 = (output899, value235, value1) := by
  rw [input899_def, output899_def]
  kernel_rfl

theorem node900_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value233 value1 value192 = (output898, value234, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value234 value1 value192 = (output899, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value233 value1 value192 = (output900, value235, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value235 value1 value192 = (output901, value233, value1) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input902 value233 value1 value192 = (output902, value233, value1) := by
  rw [input902_def, output902_def]
  kernel_rfl

theorem node903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input903 value233 value1 value192 = (output903, value233, value1) := by
  rw [input903_def, output903_def]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value233 value1 value192 = (output904, value233, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value233 value1 value192 = (output903, value233, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value233 value1 value192 = (output904, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value233 value1 value192 = (output905, value233, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value233 value1 value192 = (output902, value233, value1))
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value233 value1 value192 = (output905, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input906 value233 value1 value192 = (output906, value233, value1) := by
  rw [input906_def, output906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output905_skip]
  kernel_rfl

theorem node907_cond_eq
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value235 value1 value192 = (output901, value233, value1))
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value233 value1 value192 = (output906, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input907 value235 value1 value192 = (output907, value233, value1) := by
  rw [input907_def, output907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child901]
  try dsimp only
  rw [child906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output901_skip, output906_skip]
  kernel_rfl

theorem node908_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value233 value1 value192 = (output900, value235, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value235 value1 value192 = (output907, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value233 value1 value192 = (output908, value233, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value233 value1 value192 = (output897, value233, value1))
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value233 value1 value192 = (output908, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input909 value233 value1 value192 = (output909, value233, value1) := by
  rw [input909_def, output909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output908_skip]
  kernel_rfl

theorem node910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input910 value233 value1 value192 = (output910, value233, value1) := by
  rw [input910_def, output910_def]
  kernel_rfl

theorem node911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input911 value233 value1 value192 = (output911, value233, value1) := by
  rw [input911_def, output911_def]
  kernel_rfl

theorem node912_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value233 value1 value192 = (output910, value233, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value233 value1 value192 = (output911, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value233 value1 value192 = (output912, value233, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value233 value1 value192 = (output913, value233, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value233 value1 value192 = (output912, value233, value1))
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value233 value1 value192 = (output913, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input914 value233 value1 value192 = (output914, value233, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output913_skip]
  kernel_rfl

theorem node915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input915 value233 value1 value192 = (output915, value233, value1) := by
  rw [input915_def, output915_def]
  kernel_rfl

theorem node916_cond_eq
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value233 value1 value192 = (output914, value233, value1))
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value233 value1 value192 = (output915, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input916 value233 value1 value192 = (output916, value233, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child914]
  try dsimp only
  rw [child915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output914_skip, output915_skip]
  kernel_rfl

theorem node917_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value233 value1 value192 = (output909, value233, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value233 value1 value192 = (output916, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value233 value1 value192 = (output917, value237, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child909]
  try dsimp only
  rw [child916]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value233 value1 value192 = (output892, value233, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value233 value1 value192 = (output917, value237, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value233 value1 value192 = (output918, value237, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child892]
  try dsimp only
  rw [child917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output892_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value237 value1 value192 = (output919, value238, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input920 value238 value1 value192 = (output920, value239, value1) := by
  rw [input920_def, output920_def]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value239 value1 value192 = (output921, value240, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value238 value1 value192 = (output920, value239, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value239 value1 value192 = (output921, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value238 value1 value192 = (output922, value240, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value240 value1 value192 = (output923, value241, value1) := by
  rw [input923_def, output923_def]
  kernel_rfl

theorem node924_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value238 value1 value192 = (output922, value240, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value240 value1 value192 = (output923, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value238 value1 value192 = (output924, value241, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value237 value1 value192 = (output919, value238, value1))
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value238 value1 value192 = (output924, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input925 value237 value1 value192 = (output925, value241, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child919]
  try dsimp only
  rw [child924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output919_skip, output924_skip]
  kernel_rfl

theorem node926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input926 value241 value1 value192 = (output926, value242, value1) := by
  rw [input926_def, output926_def]
  kernel_rfl

theorem node927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input927 value242 value1 value192 = (output927, value243, value1) := by
  rw [input927_def, output927_def]
  kernel_rfl

theorem node928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input928 value243 value1 value192 = (output928, value244, value1) := by
  rw [input928_def, output928_def]
  kernel_rfl

theorem node929_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value242 value1 value192 = (output927, value243, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value243 value1 value192 = (output928, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value242 value1 value192 = (output929, value244, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input930 value244 value1 value192 = (output930, value245, value1) := by
  rw [input930_def, output930_def]
  kernel_rfl

theorem node931_cond_eq
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value242 value1 value192 = (output929, value244, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value244 value1 value192 = (output930, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value242 value1 value192 = (output931, value245, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child929]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output929_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value241 value1 value192 = (output926, value242, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value242 value1 value192 = (output931, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value241 value1 value192 = (output932, value245, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output926_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value245 value1 value192 = (output933, value245, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input934 value245 value1 value192 = (output934, value245, value1) := by
  rw [input934_def, output934_def]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value245 value1 value192 = (output935, value245, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value245 value1 value192 = (output934, value245, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value245 value1 value192 = (output935, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value245 value1 value192 = (output936, value245, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value245 value1 value192 = (output933, value245, value1))
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value245 value1 value192 = (output936, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input937 value245 value1 value192 = (output937, value245, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output936_skip]
  kernel_rfl

theorem node938_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value241 value1 value192 = (output932, value245, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value245 value1 value192 = (output937, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value241 value1 value192 = (output938, value245, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value237 value1 value192 = (output925, value241, value1))
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value241 value1 value192 = (output938, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input939 value237 value1 value192 = (output939, value245, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child925]
  try dsimp only
  rw [child938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output925_skip, output938_skip]
  kernel_rfl

theorem node940_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value233 value1 value192 = (output918, value237, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value237 value1 value192 = (output939, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value233 value1 value192 = (output940, value245, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value233 value1 value192 = (output887, value233, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value233 value1 value192 = (output940, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value233 value1 value192 = (output941, value245, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value229 value1 value192 = (output886, value233, value1))
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value233 value1 value192 = (output941, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input942 value229 value1 value192 = (output942, value245, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output941_skip]
  kernel_rfl

theorem node943_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value225 value1 value192 = (output879, value229, value1))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value229 value1 value192 = (output942, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value225 value1 value192 = (output943, value245, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value221 value1 value192 = (output872, value225, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value225 value1 value192 = (output943, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value221 value1 value192 = (output944, value245, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value221 value1 value192 = (output845, value221, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value221 value1 value192 = (output944, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value221 value1 value192 = (output945, value245, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  try dsimp only
  rw [child944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value217 value1 value192 = (output844, value221, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value221 value1 value192 = (output945, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value217 value1 value192 = (output946, value245, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value213 value1 value192 = (output837, value217, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value217 value1 value192 = (output946, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value213 value1 value192 = (output947, value245, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child837]
  try dsimp only
  rw [child946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output837_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value209 value1 value192 = (output830, value213, value1))
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value213 value1 value192 = (output947, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input948 value209 value1 value192 = (output948, value245, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  try dsimp only
  rw [child947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output947_skip]
  kernel_rfl

theorem node949_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value209 value1 value192 = (output803, value209, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value209 value1 value192 = (output948, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value209 value1 value192 = (output949, value245, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value205 value1 value192 = (output802, value209, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value209 value1 value192 = (output949, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value205 value1 value192 = (output950, value245, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output949_skip]
  kernel_rfl

theorem node951_cond_eq
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value201 value1 value192 = (output795, value205, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value205 value1 value192 = (output950, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value201 value1 value192 = (output951, value245, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child795]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output795_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value197 value1 value192 = (output788, value201, value1))
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value201 value1 value192 = (output951, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input952 value197 value1 value192 = (output952, value245, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output951_skip]
  kernel_rfl

theorem node953_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value197 value1 value192 = (output761, value197, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value197 value1 value192 = (output952, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value197 value1 value192 = (output953, value245, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value195 value1 value192 = (output760, value197, value1))
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value197 value1 value192 = (output953, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input954 value195 value1 value192 = (output954, value245, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output760_skip, output953_skip]
  kernel_rfl

theorem node955_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value194 value1 value192 = (output757, value195, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value195 value1 value192 = (output954, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value194 value1 value192 = (output955, value245, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value194 value1 value192 = (output756, value194, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value194 value1 value192 = (output955, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value194 value1 value192 = (output956, value245, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value193 value1 value192 = (output753, value194, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value194 value1 value192 = (output956, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value193 value1 value192 = (output957, value245, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input958 value193 value1 value192 = (output958, value193, value1) := by
  rw [input958_def, output958_def]
  kernel_rfl

theorem node959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input959 value193 value1 value192 = (output959, value193, value1) := by
  rw [input959_def, output959_def]
  kernel_rfl

theorem node960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input960 value193 value1 value192 = (output960, value193, value1) := by
  rw [input960_def, output960_def]
  kernel_rfl

theorem node961_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value193 value1 value192 = (output959, value193, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value193 value1 value192 = (output960, value193, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value193 value1 value192 = (output961, value193, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value193 value1 value192 = (output958, value193, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value193 value1 value192 = (output961, value193, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value193 value1 value192 = (output962, value193, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child958]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output958_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input963 value193 value1 value192 = (output963, value245, value1) := by
  rw [input963_def, output963_def]
  kernel_rfl

theorem node964_cond_eq
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value193 value1 value192 = (output962, value193, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value193 value1 value192 = (output963, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value193 value1 value192 = (output964, value245, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child962]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output962_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input965 value245 value1 value192 = (output965, value191, value1) := by
  rw [input965_def, output965_def]
  kernel_rfl

theorem node966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input966 value191 value1 value192 = (output966, value245, value1) := by
  rw [input966_def, output966_def]
  kernel_rfl

theorem node967_cond_eq
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value245 value1 value192 = (output965, value191, value1))
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value191 value1 value192 = (output966, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value245 value1 value192 = (output967, value245, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child965]
  try dsimp only
  rw [child966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output965_skip, output966_skip]
  kernel_rfl

theorem node968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input968 value245 value1 value192 = (output968, value245, value1) := by
  rw [input968_def, output968_def]
  kernel_rfl

theorem node969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input969 value245 value1 value192 = (output969, value245, value1) := by
  rw [input969_def, output969_def]
  kernel_rfl

theorem node970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input970 value245 value1 value192 = (output970, value245, value1) := by
  rw [input970_def, output970_def]
  kernel_rfl

theorem node971_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value245 value1 value192 = (output969, value245, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value245 value1 value192 = (output970, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value245 value1 value192 = (output971, value245, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value245 value1 value192 = (output968, value245, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value245 value1 value192 = (output971, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value245 value1 value192 = (output972, value245, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child968]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output968_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value245 value1 value192 = (output967, value245, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value245 value1 value192 = (output972, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value245 value1 value192 = (output973, value245, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output967_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value193 value1 value192 = (output964, value245, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value245 value1 value192 = (output973, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value193 value1 value192 = (output974, value245, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child964]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output964_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value193 value1 value192 = (output957, value245, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value193 value1 value192 = (output974, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value193 value1 value192 = (output975, value247, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child957]
  try dsimp only
  rw [child974]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output957_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input976 value247 value1 value192 = (output976, value245, value1) := by
  rw [input976_def, output976_def]
  kernel_rfl

theorem node977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input977 value245 value1 value192 = (output977, value248, value1) := by
  rw [input977_def, output977_def]
  kernel_rfl

theorem node978_cond_eq
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value247 value1 value192 = (output976, value245, value1))
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value245 value1 value192 = (output977, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input978 value247 value1 value192 = (output978, value248, value1) := by
  rw [input978_def, output978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child976]
  try dsimp only
  rw [child977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output976_skip, output977_skip]
  kernel_rfl

theorem node979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input979 value248 value1 value192 = (output979, value191, value1) := by
  rw [input979_def, output979_def]
  kernel_rfl

theorem node980_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value247 value1 value192 = (output978, value248, value1))
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value248 value1 value192 = (output979, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input980 value247 value1 value192 = (output980, value191, value1) := by
  rw [input980_def, output980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  try dsimp only
  rw [child979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output978_skip, output979_skip]
  kernel_rfl

theorem node981_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value193 value1 value192 = (output975, value247, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value247 value1 value192 = (output980, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value193 value1 value192 = (output981, value191, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value193 value1 value192 = (output746, value193, value1))
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value193 value1 value192 = (output981, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input982 value193 value1 value192 = (output982, value191, value1) := by
  rw [input982_def, output982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output981_skip]
  kernel_rfl

theorem node983_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value191 value1 value192 = (output745, value193, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value193 value1 value192 = (output982, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value191 value1 value192 = (output983, value191, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value191 value1 value192 = (output983, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input984 value191 value1 value2 = (output984, value191, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value192 = (value191, value191) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child983
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input985 value191 value1 value2 = (output985, value249, value1) := by
  rw [input985_def, output985_def]
  kernel_rfl

theorem node986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input986 value249 value1 value2 = (output986, value249, value1) := by
  rw [input986_def, output986_def]
  kernel_rfl

theorem node987_cond_eq
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value191 value1 value2 = (output985, value249, value1))
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value249 value1 value2 = (output986, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input987 value191 value1 value2 = (output987, value249, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child985]
  try dsimp only
  rw [child986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output985_skip, output986_skip]
  kernel_rfl

theorem node988_cond_eq
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value191 value1 value2 = (output984, value191, value1))
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value191 value1 value2 = (output987, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input988 value191 value1 value2 = (output988, value249, value1) := by
  rw [input988_def, output988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child984]
  try dsimp only
  rw [child987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output984_skip, output987_skip]
  kernel_rfl

theorem node989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input989 value249 value1 value2 = (output989, value249, value1) := by
  rw [input989_def, output989_def]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value249 value1 value2 = (output990, value249, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value249 value1 value2 = (output991, value249, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input992 value249 value1 value2 = (output992, value249, value1) := by
  rw [input992_def, output992_def]
  kernel_rfl

theorem node993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input993 value249 value1 value2 = (output993, value249, value1) := by
  rw [input993_def, output993_def]
  kernel_rfl

theorem node994_cond_eq
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value249 value1 value2 = (output992, value249, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value249 value1 value2 = (output993, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value249 value1 value2 = (output994, value249, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child992]
  try dsimp only
  rw [child993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output992_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value249 value1 value2 = (output991, value249, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value249 value1 value2 = (output994, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value249 value1 value2 = (output995, value249, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child991]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output991_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input996 value249 value1 value2 = (output996, value249, value1) := by
  rw [input996_def, output996_def]
  kernel_rfl

theorem node997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input997 value249 value1 value2 = (output997, value250, value1) := by
  rw [input997_def, output997_def]
  kernel_rfl

theorem node998_cond_eq
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value249 value1 value2 = (output996, value249, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value249 value1 value2 = (output997, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value249 value1 value2 = (output998, value250, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child996]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output996_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input999 value250 value1 value2 = (output999, value251, value1) := by
  rw [input999_def, output999_def]
  kernel_rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value251 value1 value2 = (output1000, value252, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

theorem node1001_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value250 value1 value2 = (output999, value251, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value251 value1 value2 = (output1000, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value250 value1 value2 = (output1001, value252, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  try dsimp only
  rw [child1000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output1000_skip]
  kernel_rfl

theorem node1002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value252 value1 value2 = (output1002, value250, value1) := by
  rw [input1002_def, output1002_def]
  kernel_rfl

theorem node1003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value250 value1 value2 = (output1003, value250, value1) := by
  rw [input1003_def, output1003_def]
  kernel_rfl

theorem node1004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value250 value1 value2 = (output1004, value250, value1) := by
  rw [input1004_def, output1004_def]
  kernel_rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value250 value1 value2 = (output1005, value250, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

theorem node1006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value250 value1 value2 = (output1006, value250, value1) := by
  rw [input1006_def, output1006_def]
  kernel_rfl

theorem node1007_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value250 value1 value2 = (output1005, value250, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value250 value1 value2 = (output1006, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value250 value1 value2 = (output1007, value250, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value250 value1 value2 = (output1004, value250, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value250 value1 value2 = (output1007, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value250 value1 value2 = (output1008, value250, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value250 value1 value2 = (output1009, value250, value1) := by
  rw [input1009_def, output1009_def]
  kernel_rfl

theorem node1010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1010 value250 value1 value2 = (output1010, value250, value1) := by
  rw [input1010_def, output1010_def]
  kernel_rfl

theorem node1011_cond_eq
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value250 value1 value2 = (output1009, value250, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value250 value1 value2 = (output1010, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value250 value1 value2 = (output1011, value250, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1009]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1009_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value250 value1 value2 = (output1012, value251, value1) := by
  rw [input1012_def, output1012_def]
  kernel_rfl

theorem node1013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1013 value251 value1 value2 = (output1013, value253, value1) := by
  rw [input1013_def, output1013_def]
  kernel_rfl

theorem node1014_cond_eq
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value250 value1 value2 = (output1012, value251, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value251 value1 value2 = (output1013, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value250 value1 value2 = (output1014, value253, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1012]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1012_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value253 value1 value2 = (output1015, value250, value1) := by
  rw [input1015_def, output1015_def]
  kernel_rfl

theorem node1016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1016 value250 value1 value2 = (output1016, value250, value1) := by
  rw [input1016_def, output1016_def]
  kernel_rfl

theorem node1017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value250 value1 value2 = (output1017, value250, value1) := by
  rw [input1017_def, output1017_def]
  kernel_rfl

theorem node1018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value250 value1 value2 = (output1018, value250, value1) := by
  rw [input1018_def, output1018_def]
  kernel_rfl

theorem node1019_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value250 value1 value2 = (output1017, value250, value1))
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value250 value1 value2 = (output1018, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1019 value250 value1 value2 = (output1019, value250, value1) := by
  rw [input1019_def, output1019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  try dsimp only
  rw [child1018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1018_skip]
  kernel_rfl

theorem node1020_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value250 value1 value2 = (output1016, value250, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value250 value1 value2 = (output1019, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value250 value1 value2 = (output1020, value250, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child1019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output1019_skip]
  kernel_rfl

theorem node1021_cond_eq
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value253 value1 value2 = (output1015, value250, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value250 value1 value2 = (output1020, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value253 value1 value2 = (output1021, value250, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1015]
  try dsimp only
  rw [child1020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1015_skip, output1020_skip]
  kernel_rfl

theorem node1022_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value250 value1 value2 = (output1014, value253, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value253 value1 value2 = (output1021, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value250 value1 value2 = (output1022, value250, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child1021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output1021_skip]
  kernel_rfl

theorem node1023_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value250 value1 value2 = (output1011, value250, value1))
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value250 value1 value2 = (output1022, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1023 value250 value1 value2 = (output1023, value250, value1) := by
  rw [input1023_def, output1023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  try dsimp only
  rw [child1022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output1022_skip]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages79.Parallel
