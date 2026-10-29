import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages874.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages874.Parallel
theorem node768_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value231 value1 value229 = (output766, value228, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value228 value1 value229 = (output767, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value231 value1 value229 = (output768, value231, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input769 value231 value1 value229 = (output769, value232, value1) := by
  rw [input769_def, output769_def]
  kernel_rfl

theorem node770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input770 value232 value1 value229 = (output770, value233, value1) := by
  rw [input770_def, output770_def]
  kernel_rfl

theorem node771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input771 value233 value1 value229 = (output771, value234, value1) := by
  rw [input771_def, output771_def]
  kernel_rfl

theorem node772_cond_eq
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value232 value1 value229 = (output770, value233, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value233 value1 value229 = (output771, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value232 value1 value229 = (output772, value234, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child770]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output770_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input773 value234 value1 value229 = (output773, value234, value1) := by
  rw [input773_def, output773_def]
  kernel_rfl

theorem node774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input774 value234 value1 value229 = (output774, value234, value1) := by
  rw [input774_def, output774_def]
  kernel_rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value234 value1 value229 = (output775, value234, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value234 value1 value229 = (output776, value234, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value234 value1 value229 = (output775, value234, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value234 value1 value229 = (output776, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value234 value1 value229 = (output777, value234, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value234 value1 value229 = (output774, value234, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value234 value1 value229 = (output777, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value234 value1 value229 = (output778, value234, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input779 value234 value1 value229 = (output779, value234, value1) := by
  rw [input779_def, output779_def]
  kernel_rfl

theorem node780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input780 value234 value1 value229 = (output780, value234, value1) := by
  rw [input780_def, output780_def]
  kernel_rfl

theorem node781_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value234 value1 value229 = (output779, value234, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value234 value1 value229 = (output780, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value234 value1 value229 = (output781, value234, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value234 value1 value229 = (output782, value234, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value234 value1 value229 = (output781, value234, value1))
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value234 value1 value229 = (output782, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input783 value234 value1 value229 = (output783, value234, value1) := by
  rw [input783_def, output783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output782_skip]
  kernel_rfl

theorem node784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input784 value234 value1 value229 = (output784, value235, value1) := by
  rw [input784_def, output784_def]
  kernel_rfl

theorem node785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input785 value235 value1 value229 = (output785, value236, value1) := by
  rw [input785_def, output785_def]
  kernel_rfl

theorem node786_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value234 value1 value229 = (output784, value235, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value235 value1 value229 = (output785, value236, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value234 value1 value229 = (output786, value236, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input787 value236 value1 value229 = (output787, value234, value1) := by
  rw [input787_def, output787_def]
  kernel_rfl

theorem node788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input788 value234 value1 value229 = (output788, value237, value13) := by
  rw [input788_def, output788_def]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value237 value13 value229 = (output789, value238, value13) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value234 value1 value229 = (output788, value237, value13))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value237 value13 value229 = (output789, value238, value13)) : Flapjack.WordAlloc.removeDeadStructural input790 value234 value1 value229 = (output790, value238, value13) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value238 value13 value229 = (output791, value234, value13) := by
  rw [input791_def, output791_def]
  kernel_rfl

theorem node792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input792 value234 value13 value229 = (output792, value234, value13) := by
  rw [input792_def, output792_def]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value234 value13 value229 = (output793, value234, value13) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input794 value234 value13 value229 = (output794, value234, value13) := by
  rw [input794_def, output794_def]
  kernel_rfl

theorem node795_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value234 value13 value229 = (output793, value234, value13))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value234 value13 value229 = (output794, value234, value13)) : Flapjack.WordAlloc.removeDeadStructural input795 value234 value13 value229 = (output795, value234, value13) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value234 value13 value229 = (output792, value234, value13))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value234 value13 value229 = (output795, value234, value13)) : Flapjack.WordAlloc.removeDeadStructural input796 value234 value13 value229 = (output796, value234, value13) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value238 value13 value229 = (output791, value234, value13))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value234 value13 value229 = (output796, value234, value13)) : Flapjack.WordAlloc.removeDeadStructural input797 value238 value13 value229 = (output797, value234, value13) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value234 value1 value229 = (output790, value238, value13))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value238 value13 value229 = (output797, value234, value13)) : Flapjack.WordAlloc.removeDeadStructural input798 value234 value1 value229 = (output798, value234, value13) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value236 value1 value229 = (output787, value234, value1))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value234 value1 value229 = (output798, value234, value13)) : Flapjack.WordAlloc.removeDeadStructural input799 value236 value1 value229 = (output799, value234, value13) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child787]
  try dsimp only
  rw [child798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output787_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value234 value1 value229 = (output786, value236, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value236 value1 value229 = (output799, value234, value13)) : Flapjack.WordAlloc.removeDeadStructural input800 value234 value1 value229 = (output800, value234, value13) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output786_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value234 value1 value229 = (output783, value234, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value234 value1 value229 = (output800, value234, value13)) : Flapjack.WordAlloc.removeDeadStructural input801 value234 value1 value229 = (output801, value234, value13) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value234 value1 value229 = (output802, value234, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value234 value1 value229 = (output803, value234, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

theorem node804_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value234 value1 value229 = (output802, value234, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value234 value1 value229 = (output803, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value234 value1 value229 = (output804, value234, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output803_skip]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value234 value1 value229 = (output805, value234, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value234 value1 value229 = (output804, value234, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value234 value1 value229 = (output805, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value234 value1 value229 = (output806, value234, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input807 value234 value1 value229 = (output807, value234, value1) := by
  rw [input807_def, output807_def]
  kernel_rfl

theorem node808_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value234 value1 value229 = (output806, value234, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value234 value1 value229 = (output807, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value234 value1 value229 = (output808, value234, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value234 value1 value229 = (output801, value234, value13))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value234 value1 value229 = (output808, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value234 value1 value229 = (output809, value240, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child801]
  try dsimp only
  rw [child808]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value234 value1 value229 = (output778, value234, value1))
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value234 value1 value229 = (output809, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input810 value234 value1 value229 = (output810, value240, value1) := by
  rw [input810_def, output810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output809_skip]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value240 value1 value229 = (output811, value241, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value241 value1 value229 = (output812, value242, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

theorem node813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input813 value242 value1 value229 = (output813, value243, value1) := by
  rw [input813_def, output813_def]
  kernel_rfl

theorem node814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input814 value243 value1 value229 = (output814, value244, value1) := by
  rw [input814_def, output814_def]
  kernel_rfl

theorem node815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input815 value244 value1 value229 = (output815, value245, value1) := by
  rw [input815_def, output815_def]
  kernel_rfl

theorem node816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input816 value245 value1 value229 = (output816, value246, value1) := by
  rw [input816_def, output816_def]
  kernel_rfl

theorem node817_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value244 value1 value229 = (output815, value245, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value245 value1 value229 = (output816, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value244 value1 value229 = (output817, value246, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value243 value1 value229 = (output814, value244, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value244 value1 value229 = (output817, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value243 value1 value229 = (output818, value246, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input819 value246 value1 value229 = (output819, value247, value1) := by
  rw [input819_def, output819_def]
  kernel_rfl

theorem node820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input820 value247 value1 value229 = (output820, value248, value1) := by
  rw [input820_def, output820_def]
  kernel_rfl

theorem node821_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value246 value1 value229 = (output819, value247, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value247 value1 value229 = (output820, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value246 value1 value229 = (output821, value248, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value243 value1 value229 = (output818, value246, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value246 value1 value229 = (output821, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value243 value1 value229 = (output822, value248, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input823 value248 value1 value229 = (output823, value248, value1) := by
  rw [input823_def, output823_def]
  kernel_rfl

theorem node824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input824 value248 value1 value229 = (output824, value248, value1) := by
  rw [input824_def, output824_def]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value248 value1 value229 = (output825, value248, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value248 value1 value229 = (output824, value248, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value248 value1 value229 = (output825, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value248 value1 value229 = (output826, value248, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value248 value1 value229 = (output823, value248, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value248 value1 value229 = (output826, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value248 value1 value229 = (output827, value248, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value243 value1 value229 = (output822, value248, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value248 value1 value229 = (output827, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value243 value1 value229 = (output828, value248, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value242 value1 value229 = (output813, value243, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value243 value1 value229 = (output828, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value242 value1 value229 = (output829, value248, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value241 value1 value229 = (output812, value242, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value242 value1 value229 = (output829, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value241 value1 value229 = (output830, value248, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value240 value1 value229 = (output811, value241, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value241 value1 value229 = (output830, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value240 value1 value229 = (output831, value248, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value234 value1 value229 = (output810, value240, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value240 value1 value229 = (output831, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value234 value1 value229 = (output832, value248, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value234 value1 value229 = (output773, value234, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value234 value1 value229 = (output832, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value234 value1 value229 = (output833, value248, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value232 value1 value229 = (output772, value234, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value234 value1 value229 = (output833, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value232 value1 value229 = (output834, value248, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value231 value1 value229 = (output769, value232, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value232 value1 value229 = (output834, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value231 value1 value229 = (output835, value248, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value231 value1 value229 = (output768, value231, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value231 value1 value229 = (output835, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value231 value1 value229 = (output836, value248, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child768]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output768_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value230 value1 value229 = (output765, value231, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value231 value1 value229 = (output836, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value230 value1 value229 = (output837, value248, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input838 value230 value1 value229 = (output838, value230, value1) := by
  rw [input838_def, output838_def]
  kernel_rfl

theorem node839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input839 value230 value1 value229 = (output839, value230, value1) := by
  rw [input839_def, output839_def]
  kernel_rfl

theorem node840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input840 value230 value1 value229 = (output840, value230, value1) := by
  rw [input840_def, output840_def]
  kernel_rfl

theorem node841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input841 value230 value1 value229 = (output841, value230, value1) := by
  rw [input841_def, output841_def]
  kernel_rfl

theorem node842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input842 value230 value1 value229 = (output842, value230, value1) := by
  rw [input842_def, output842_def]
  kernel_rfl

theorem node843_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value230 value1 value229 = (output841, value230, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value230 value1 value229 = (output842, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value230 value1 value229 = (output843, value230, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value230 value1 value229 = (output840, value230, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value230 value1 value229 = (output843, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value230 value1 value229 = (output844, value230, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value230 value1 value229 = (output839, value230, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value230 value1 value229 = (output844, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value230 value1 value229 = (output845, value230, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value230 value1 value229 = (output838, value230, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value230 value1 value229 = (output845, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value230 value1 value229 = (output846, value230, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value230 value1 value229 = (output847, value248, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

theorem node848_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value230 value1 value229 = (output846, value230, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value230 value1 value229 = (output847, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value230 value1 value229 = (output848, value248, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input849 value248 value1 value229 = (output849, value227, value1) := by
  rw [input849_def, output849_def]
  kernel_rfl

theorem node850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input850 value227 value1 value229 = (output850, value227, value1) := by
  rw [input850_def, output850_def]
  kernel_rfl

theorem node851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input851 value227 value1 value229 = (output851, value227, value1) := by
  rw [input851_def, output851_def]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value227 value1 value229 = (output852, value227, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value227 value1 value229 = (output851, value227, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value227 value1 value229 = (output852, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value227 value1 value229 = (output853, value227, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value227 value1 value229 = (output850, value227, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value227 value1 value229 = (output853, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value227 value1 value229 = (output854, value227, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value248 value1 value229 = (output849, value227, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value227 value1 value229 = (output854, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value248 value1 value229 = (output855, value227, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child849]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output849_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value230 value1 value229 = (output848, value248, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value248 value1 value229 = (output855, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value230 value1 value229 = (output856, value227, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value230 value1 value229 = (output837, value248, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value230 value1 value229 = (output856, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value230 value1 value229 = (output857, value248, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child837]
  try dsimp only
  rw [child856]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output837_skip, output856_skip]
  kernel_rfl

theorem node858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input858 value248 value1 value229 = (output858, value251, value1) := by
  rw [input858_def, output858_def]
  kernel_rfl

theorem node859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input859 value251 value1 value229 = (output859, value228, value1) := by
  rw [input859_def, output859_def]
  kernel_rfl

theorem node860_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value248 value1 value229 = (output858, value251, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value251 value1 value229 = (output859, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value248 value1 value229 = (output860, value228, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value230 value1 value229 = (output857, value248, value1))
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value248 value1 value229 = (output860, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input861 value230 value1 value229 = (output861, value228, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output860_skip]
  kernel_rfl

theorem node862_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value230 value1 value229 = (output754, value230, value1))
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value230 value1 value229 = (output861, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input862 value230 value1 value229 = (output862, value228, value1) := by
  rw [input862_def, output862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output861_skip]
  kernel_rfl

theorem node863_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value228 value1 value229 = (output753, value230, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value230 value1 value229 = (output862, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value228 value1 value229 = (output863, value228, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value228 value1 value229 = (output863, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value227 value1 value2 = (output864, value228, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value229 = (value228, value227) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child863
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input865 value228 value1 value2 = (output865, value252, value1) := by
  rw [input865_def, output865_def]
  kernel_rfl

theorem node866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input866 value252 value1 value2 = (output866, value252, value1) := by
  rw [input866_def, output866_def]
  kernel_rfl

theorem node867_cond_eq
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value228 value1 value2 = (output865, value252, value1))
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value252 value1 value2 = (output866, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input867 value228 value1 value2 = (output867, value252, value1) := by
  rw [input867_def, output867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child865]
  try dsimp only
  rw [child866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output865_skip, output866_skip]
  kernel_rfl

theorem node868_cond_eq
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value227 value1 value2 = (output864, value228, value1))
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value228 value1 value2 = (output867, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input868 value227 value1 value2 = (output868, value252, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child864]
  try dsimp only
  rw [child867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output864_skip, output867_skip]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value252 value1 value2 = (output869, value252, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input870 value252 value1 value2 = (output870, value253, value1) := by
  rw [input870_def, output870_def]
  kernel_rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value253 value1 value2 = (output871, value253, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

theorem node872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input872 value253 value1 value2 = (output872, value253, value1) := by
  rw [input872_def, output872_def]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value253 value1 value2 = (output873, value253, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value253 value1 value2 = (output874, value253, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value253 value1 value2 = (output873, value253, value1))
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value253 value1 value2 = (output874, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input875 value253 value1 value2 = (output875, value253, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output874_skip]
  kernel_rfl

theorem node876_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value253 value1 value2 = (output872, value253, value1))
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value253 value1 value2 = (output875, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input876 value253 value1 value2 = (output876, value253, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output875_skip]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value253 value1 value2 = (output877, value253, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input878 value253 value1 value2 = (output878, value253, value1) := by
  rw [input878_def, output878_def]
  kernel_rfl

theorem node879_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value253 value1 value2 = (output877, value253, value1))
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value253 value1 value2 = (output878, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input879 value253 value1 value2 = (output879, value253, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output878_skip]
  kernel_rfl

theorem node880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input880 value253 value1 value2 = (output880, value254, value1) := by
  rw [input880_def, output880_def]
  kernel_rfl

theorem node881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input881 value254 value1 value2 = (output881, value255, value1) := by
  rw [input881_def, output881_def]
  kernel_rfl

theorem node882_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value253 value1 value2 = (output880, value254, value1))
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value254 value1 value2 = (output881, value255, value1)) : Flapjack.WordAlloc.removeDeadStructural input882 value253 value1 value2 = (output882, value255, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output881_skip]
  kernel_rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value255 value1 value2 = (output883, value253, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value253 value1 value2 = (output884, value256, value13) := by
  rw [input884_def, output884_def]
  kernel_rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value256 value13 value2 = (output885, value257, value13) := by
  rw [input885_def, output885_def]
  kernel_rfl

theorem node886_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value253 value1 value2 = (output884, value256, value13))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value256 value13 value2 = (output885, value257, value13)) : Flapjack.WordAlloc.removeDeadStructural input886 value253 value1 value2 = (output886, value257, value13) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  try dsimp only
  rw [child885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input887 value257 value13 value2 = (output887, value253, value13) := by
  rw [input887_def, output887_def]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value253 value13 value2 = (output888, value253, value13) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value253 value13 value2 = (output889, value253, value13) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input890 value253 value13 value2 = (output890, value253, value13) := by
  rw [input890_def, output890_def]
  kernel_rfl

theorem node891_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value253 value13 value2 = (output889, value253, value13))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value253 value13 value2 = (output890, value253, value13)) : Flapjack.WordAlloc.removeDeadStructural input891 value253 value13 value2 = (output891, value253, value13) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  try dsimp only
  rw [child890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value253 value13 value2 = (output888, value253, value13))
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value253 value13 value2 = (output891, value253, value13)) : Flapjack.WordAlloc.removeDeadStructural input892 value253 value13 value2 = (output892, value253, value13) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output891_skip]
  kernel_rfl

theorem node893_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value257 value13 value2 = (output887, value253, value13))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value253 value13 value2 = (output892, value253, value13)) : Flapjack.WordAlloc.removeDeadStructural input893 value257 value13 value2 = (output893, value253, value13) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output892_skip]
  kernel_rfl

theorem node894_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value253 value1 value2 = (output886, value257, value13))
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value257 value13 value2 = (output893, value253, value13)) : Flapjack.WordAlloc.removeDeadStructural input894 value253 value1 value2 = (output894, value253, value13) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output893_skip]
  kernel_rfl

theorem node895_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value255 value1 value2 = (output883, value253, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value253 value1 value2 = (output894, value253, value13)) : Flapjack.WordAlloc.removeDeadStructural input895 value255 value1 value2 = (output895, value253, value13) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value253 value1 value2 = (output882, value255, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value255 value1 value2 = (output895, value253, value13)) : Flapjack.WordAlloc.removeDeadStructural input896 value253 value1 value2 = (output896, value253, value13) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value253 value1 value2 = (output879, value253, value1))
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value253 value1 value2 = (output896, value253, value13)) : Flapjack.WordAlloc.removeDeadStructural input897 value253 value1 value2 = (output897, value253, value13) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output896_skip]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value253 value1 value2 = (output898, value253, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input899 value253 value1 value2 = (output899, value253, value1) := by
  rw [input899_def, output899_def]
  kernel_rfl

theorem node900_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value253 value1 value2 = (output898, value253, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value253 value1 value2 = (output899, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value253 value1 value2 = (output900, value253, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value253 value1 value2 = (output901, value253, value1) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value253 value1 value2 = (output900, value253, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value253 value1 value2 = (output901, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value253 value1 value2 = (output902, value253, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value253 value1 value2 = (output897, value253, value13))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value253 value1 value2 = (output902, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input903 value253 value1 value2 = (output903, value259, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child897]
  try dsimp only
  rw [child902]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value253 value1 value2 = (output876, value253, value1))
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value253 value1 value2 = (output903, value259, value1)) : Flapjack.WordAlloc.removeDeadStructural input904 value253 value1 value2 = (output904, value259, value1) := by
  rw [input904_def, output904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output903_skip]
  kernel_rfl

theorem node905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input905 value259 value1 value2 = (output905, value260, value1) := by
  rw [input905_def, output905_def]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value260 value1 value2 = (output906, value261, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value261 value1 value2 = (output907, value261, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

theorem node908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input908 value261 value1 value2 = (output908, value261, value1) := by
  rw [input908_def, output908_def]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value261 value1 value2 = (output909, value261, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input910 value261 value1 value2 = (output910, value261, value1) := by
  rw [input910_def, output910_def]
  kernel_rfl

theorem node911_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value261 value1 value2 = (output909, value261, value1))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value261 value1 value2 = (output910, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value261 value1 value2 = (output911, value261, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value261 value1 value2 = (output908, value261, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value261 value1 value2 = (output911, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value261 value1 value2 = (output912, value261, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value261 value1 value2 = (output913, value261, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input914 value261 value1 value2 = (output914, value261, value1) := by
  rw [input914_def, output914_def]
  kernel_rfl

theorem node915_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value261 value1 value2 = (output913, value261, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value261 value1 value2 = (output914, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value261 value1 value2 = (output915, value261, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input916 value261 value1 value2 = (output916, value261, value1) := by
  rw [input916_def, output916_def]
  kernel_rfl

theorem node917_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value261 value1 value2 = (output915, value261, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value261 value1 value2 = (output916, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value261 value1 value2 = (output917, value261, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input918 value261 value1 value2 = (output918, value262, value1) := by
  rw [input918_def, output918_def]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value262 value1 value2 = (output919, value263, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value261 value1 value2 = (output918, value262, value1))
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value262 value1 value2 = (output919, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input920 value261 value1 value2 = (output920, value263, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output919_skip]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value263 value1 value2 = (output921, value261, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input922 value261 value1 value2 = (output922, value264, value13) := by
  rw [input922_def, output922_def]
  kernel_rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value264 value13 value2 = (output923, value265, value13) := by
  rw [input923_def, output923_def]
  kernel_rfl

theorem node924_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value261 value1 value2 = (output922, value264, value13))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value264 value13 value2 = (output923, value265, value13)) : Flapjack.WordAlloc.removeDeadStructural input924 value261 value1 value2 = (output924, value265, value13) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input925 value265 value13 value2 = (output925, value261, value13) := by
  rw [input925_def, output925_def]
  kernel_rfl

theorem node926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input926 value261 value13 value2 = (output926, value261, value13) := by
  rw [input926_def, output926_def]
  kernel_rfl

theorem node927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input927 value261 value13 value2 = (output927, value261, value13) := by
  rw [input927_def, output927_def]
  kernel_rfl

theorem node928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input928 value261 value13 value2 = (output928, value261, value13) := by
  rw [input928_def, output928_def]
  kernel_rfl

theorem node929_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value261 value13 value2 = (output927, value261, value13))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value261 value13 value2 = (output928, value261, value13)) : Flapjack.WordAlloc.removeDeadStructural input929 value261 value13 value2 = (output929, value261, value13) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value261 value13 value2 = (output926, value261, value13))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value261 value13 value2 = (output929, value261, value13)) : Flapjack.WordAlloc.removeDeadStructural input930 value261 value13 value2 = (output930, value261, value13) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output926_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value265 value13 value2 = (output925, value261, value13))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value261 value13 value2 = (output930, value261, value13)) : Flapjack.WordAlloc.removeDeadStructural input931 value265 value13 value2 = (output931, value261, value13) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child925]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output925_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value261 value1 value2 = (output924, value265, value13))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value265 value13 value2 = (output931, value261, value13)) : Flapjack.WordAlloc.removeDeadStructural input932 value261 value1 value2 = (output932, value261, value13) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value263 value1 value2 = (output921, value261, value1))
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value261 value1 value2 = (output932, value261, value13)) : Flapjack.WordAlloc.removeDeadStructural input933 value263 value1 value2 = (output933, value261, value13) := by
  rw [input933_def, output933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output932_skip]
  kernel_rfl

theorem node934_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value261 value1 value2 = (output920, value263, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value263 value1 value2 = (output933, value261, value13)) : Flapjack.WordAlloc.removeDeadStructural input934 value261 value1 value2 = (output934, value261, value13) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value261 value1 value2 = (output917, value261, value1))
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value261 value1 value2 = (output934, value261, value13)) : Flapjack.WordAlloc.removeDeadStructural input935 value261 value1 value2 = (output935, value261, value13) := by
  rw [input935_def, output935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output934_skip]
  kernel_rfl

theorem node936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input936 value261 value1 value2 = (output936, value261, value1) := by
  rw [input936_def, output936_def]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value261 value1 value2 = (output937, value261, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value261 value1 value2 = (output936, value261, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value261 value1 value2 = (output937, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value261 value1 value2 = (output938, value261, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input939 value261 value1 value2 = (output939, value261, value1) := by
  rw [input939_def, output939_def]
  kernel_rfl

theorem node940_cond_eq
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value261 value1 value2 = (output938, value261, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value261 value1 value2 = (output939, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value261 value1 value2 = (output940, value261, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child938]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output938_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input941 value261 value1 value2 = (output941, value261, value1) := by
  rw [input941_def, output941_def]
  kernel_rfl

theorem node942_cond_eq
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value261 value1 value2 = (output940, value261, value1))
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value261 value1 value2 = (output941, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input942 value261 value1 value2 = (output942, value261, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child940]
  try dsimp only
  rw [child941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output940_skip, output941_skip]
  kernel_rfl

theorem node943_cond_eq
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value261 value1 value2 = (output935, value261, value13))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value261 value1 value2 = (output942, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value261 value1 value2 = (output943, value267, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child935]
  try dsimp only
  rw [child942]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output935_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value261 value1 value2 = (output912, value261, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value261 value1 value2 = (output943, value267, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value261 value1 value2 = (output944, value267, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input945 value267 value1 value2 = (output945, value261, value1) := by
  rw [input945_def, output945_def]
  kernel_rfl

theorem node946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input946 value261 value1 value2 = (output946, value268, value1) := by
  rw [input946_def, output946_def]
  kernel_rfl

theorem node947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input947 value268 value1 value2 = (output947, value269, value1) := by
  rw [input947_def, output947_def]
  kernel_rfl

theorem node948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input948 value269 value1 value2 = (output948, value270, value1) := by
  rw [input948_def, output948_def]
  kernel_rfl

theorem node949_cond_eq
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value268 value1 value2 = (output947, value269, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value269 value1 value2 = (output948, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value268 value1 value2 = (output949, value270, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child947]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output947_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input950 value270 value1 value2 = (output950, value270, value1) := by
  rw [input950_def, output950_def]
  kernel_rfl

theorem node951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input951 value270 value1 value2 = (output951, value270, value1) := by
  rw [input951_def, output951_def]
  kernel_rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value270 value1 value2 = (output952, value270, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

theorem node953_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value270 value1 value2 = (output951, value270, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value270 value1 value2 = (output952, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value270 value1 value2 = (output953, value270, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value270 value1 value2 = (output950, value270, value1))
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value270 value1 value2 = (output953, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input954 value270 value1 value2 = (output954, value270, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child950]
  try dsimp only
  rw [child953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output950_skip, output953_skip]
  kernel_rfl

theorem node955_cond_eq
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value268 value1 value2 = (output949, value270, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value270 value1 value2 = (output954, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value268 value1 value2 = (output955, value270, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child949]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output949_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value261 value1 value2 = (output946, value268, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value268 value1 value2 = (output955, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value261 value1 value2 = (output956, value270, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value267 value1 value2 = (output945, value261, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value261 value1 value2 = (output956, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value267 value1 value2 = (output957, value270, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value261 value1 value2 = (output944, value267, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value267 value1 value2 = (output957, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value261 value1 value2 = (output958, value270, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value261 value1 value2 = (output907, value261, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value261 value1 value2 = (output958, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value261 value1 value2 = (output959, value270, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value260 value1 value2 = (output906, value261, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value261 value1 value2 = (output959, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value260 value1 value2 = (output960, value270, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value259 value1 value2 = (output905, value260, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value260 value1 value2 = (output960, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value259 value1 value2 = (output961, value270, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value253 value1 value2 = (output904, value259, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value259 value1 value2 = (output961, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value253 value1 value2 = (output962, value270, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value253 value1 value2 = (output871, value253, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value253 value1 value2 = (output962, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value253 value1 value2 = (output963, value270, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value252 value1 value2 = (output870, value253, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value253 value1 value2 = (output963, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value252 value1 value2 = (output964, value270, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value252 value1 value2 = (output869, value252, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value252 value1 value2 = (output964, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value252 value1 value2 = (output965, value270, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child869]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output869_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value227 value1 value2 = (output868, value252, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value252 value1 value2 = (output965, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value227 value1 value2 = (output966, value270, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value227 value1 value2 = (output752, value227, value1))
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value227 value1 value2 = (output966, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value227 value1 value2 = (output967, value270, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output966_skip]
  kernel_rfl

theorem node968_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value222 value1 value2 = (output751, value227, value1))
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value227 value1 value2 = (output967, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input968 value222 value1 value2 = (output968, value270, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output967_skip]
  kernel_rfl

theorem node969_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value219 value1 value2 = (output742, value222, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value222 value1 value2 = (output968, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value219 value1 value2 = (output969, value270, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value219 value1 value2 = (output737, value219, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value219 value1 value2 = (output969, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value219 value1 value2 = (output970, value270, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output737_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value217 value1 value2 = (output736, value219, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value219 value1 value2 = (output970, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value217 value1 value2 = (output971, value270, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value215 value1 value2 = (output733, value217, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value217 value1 value2 = (output971, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value215 value1 value2 = (output972, value270, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value213 value1 value2 = (output730, value215, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value215 value1 value2 = (output972, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value213 value1 value2 = (output973, value270, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value211 value1 value2 = (output727, value213, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value213 value1 value2 = (output973, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value211 value1 value2 = (output974, value270, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value210 value1 value2 = (output724, value211, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value211 value1 value2 = (output974, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value210 value1 value2 = (output975, value270, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value209 value1 value2 = (output723, value210, value1))
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value210 value1 value2 = (output975, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input976 value209 value1 value2 = (output976, value270, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output975_skip]
  kernel_rfl

theorem node977_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value208 value1 value2 = (output722, value209, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value209 value1 value2 = (output976, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value208 value1 value2 = (output977, value270, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output976_skip]
  kernel_rfl

theorem node978_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value207 value1 value2 = (output721, value208, value1))
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value208 value1 value2 = (output977, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input978 value207 value1 value2 = (output978, value270, value1) := by
  rw [input978_def, output978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output977_skip]
  kernel_rfl

theorem node979_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value206 value1 value2 = (output720, value207, value1))
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value207 value1 value2 = (output978, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input979 value206 value1 value2 = (output979, value270, value1) := by
  rw [input979_def, output979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output978_skip]
  kernel_rfl

theorem node980_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value205 value1 value2 = (output719, value206, value1))
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value206 value1 value2 = (output979, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input980 value205 value1 value2 = (output980, value270, value1) := by
  rw [input980_def, output980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output979_skip]
  kernel_rfl

theorem node981_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value204 value1 value2 = (output718, value205, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value205 value1 value2 = (output980, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value204 value1 value2 = (output981, value270, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value203 value1 value2 = (output717, value204, value1))
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value204 value1 value2 = (output981, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input982 value203 value1 value2 = (output982, value270, value1) := by
  rw [input982_def, output982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  try dsimp only
  rw [child981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output717_skip, output981_skip]
  kernel_rfl

theorem node983_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value200 value1 value2 = (output716, value203, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value203 value1 value2 = (output982, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value200 value1 value2 = (output983, value270, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value200 value1 value2 = (output711, value200, value1))
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value200 value1 value2 = (output983, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input984 value200 value1 value2 = (output984, value270, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child711]
  try dsimp only
  rw [child983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output711_skip, output983_skip]
  kernel_rfl

theorem node985_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value199 value1 value2 = (output710, value200, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value200 value1 value2 = (output984, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value199 value1 value2 = (output985, value270, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output984_skip]
  kernel_rfl

theorem node986_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value198 value1 value2 = (output709, value199, value1))
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value199 value1 value2 = (output985, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input986 value198 value1 value2 = (output986, value270, value1) := by
  rw [input986_def, output986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output985_skip]
  kernel_rfl

theorem node987_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value192 value1 value2 = (output708, value198, value1))
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value198 value1 value2 = (output986, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input987 value192 value1 value2 = (output987, value270, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output986_skip]
  kernel_rfl

theorem node988_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value192 value1 value2 = (output667, value192, value1))
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value192 value1 value2 = (output987, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input988 value192 value1 value2 = (output988, value270, value1) := by
  rw [input988_def, output988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output987_skip]
  kernel_rfl

theorem node989_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value191 value1 value2 = (output666, value192, value1))
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value192 value1 value2 = (output988, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input989 value191 value1 value2 = (output989, value270, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output988_skip]
  kernel_rfl

theorem node990_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value190 value1 value2 = (output665, value191, value1))
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value191 value1 value2 = (output989, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input990 value190 value1 value2 = (output990, value270, value1) := by
  rw [input990_def, output990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output989_skip]
  kernel_rfl

theorem node991_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value189 value1 value2 = (output664, value190, value1))
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value190 value1 value2 = (output990, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input991 value189 value1 value2 = (output991, value270, value1) := by
  rw [input991_def, output991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output990_skip]
  kernel_rfl

theorem node992_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value188 value1 value2 = (output663, value189, value1))
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value189 value1 value2 = (output991, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input992 value188 value1 value2 = (output992, value270, value1) := by
  rw [input992_def, output992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output991_skip]
  kernel_rfl

theorem node993_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value187 value1 value2 = (output662, value188, value1))
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value188 value1 value2 = (output992, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input993 value187 value1 value2 = (output993, value270, value1) := by
  rw [input993_def, output993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output992_skip]
  kernel_rfl

theorem node994_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value184 value1 value2 = (output661, value187, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value187 value1 value2 = (output993, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value184 value1 value2 = (output994, value270, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value184 value1 value2 = (output656, value184, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value184 value1 value2 = (output994, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value184 value1 value2 = (output995, value270, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value183 value1 value2 = (output655, value184, value1))
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value184 value1 value2 = (output995, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input996 value183 value1 value2 = (output996, value270, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output995_skip]
  kernel_rfl

theorem node997_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value182 value1 value2 = (output654, value183, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value183 value1 value2 = (output996, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value182 value1 value2 = (output997, value270, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output996_skip]
  kernel_rfl

theorem node998_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value177 value1 value2 = (output653, value182, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value182 value1 value2 = (output997, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value177 value1 value2 = (output998, value270, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value177 value1 value2 = (output632, value177, value1))
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value177 value1 value2 = (output998, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input999 value177 value1 value2 = (output999, value270, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output998_skip]
  kernel_rfl

theorem node1000_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value176 value1 value2 = (output631, value177, value1))
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value177 value1 value2 = (output999, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1000 value176 value1 value2 = (output1000, value270, value1) := by
  rw [input1000_def, output1000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output999_skip]
  kernel_rfl

theorem node1001_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value175 value1 value2 = (output630, value176, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value176 value1 value2 = (output1000, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value175 value1 value2 = (output1001, value270, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child1000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output1000_skip]
  kernel_rfl

theorem node1002_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value174 value1 value2 = (output629, value175, value1))
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value175 value1 value2 = (output1001, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1002 value174 value1 value2 = (output1002, value270, value1) := by
  rw [input1002_def, output1002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child1001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output1001_skip]
  kernel_rfl

theorem node1003_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value173 value1 value2 = (output628, value174, value1))
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value174 value1 value2 = (output1002, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1003 value173 value1 value2 = (output1003, value270, value1) := by
  rw [input1003_def, output1003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child1002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output1002_skip]
  kernel_rfl

theorem node1004_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value172 value1 value2 = (output627, value173, value1))
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value173 value1 value2 = (output1003, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1004 value172 value1 value2 = (output1004, value270, value1) := by
  rw [input1004_def, output1004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child1003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output1003_skip]
  kernel_rfl

theorem node1005_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value171 value1 value2 = (output626, value172, value1))
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value172 value1 value2 = (output1004, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1005 value171 value1 value2 = (output1005, value270, value1) := by
  rw [input1005_def, output1005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child1004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output1004_skip]
  kernel_rfl

theorem node1006_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value170 value1 value2 = (output625, value171, value1))
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value171 value1 value2 = (output1005, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1006 value170 value1 value2 = (output1006, value270, value1) := by
  rw [input1006_def, output1006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child1005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output1005_skip]
  kernel_rfl

theorem node1007_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value169 value1 value2 = (output624, value170, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value170 value1 value2 = (output1006, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value169 value1 value2 = (output1007, value270, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value166 value1 value2 = (output623, value169, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value169 value1 value2 = (output1007, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value166 value1 value2 = (output1008, value270, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value166 value1 value2 = (output618, value166, value1))
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value166 value1 value2 = (output1008, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1009 value166 value1 value2 = (output1009, value270, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child1008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output1008_skip]
  kernel_rfl

theorem node1010_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value165 value1 value2 = (output617, value166, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value166 value1 value2 = (output1009, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value165 value1 value2 = (output1010, value270, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value164 value1 value2 = (output616, value165, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value165 value1 value2 = (output1010, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value164 value1 value2 = (output1011, value270, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value159 value1 value2 = (output615, value164, value1))
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value164 value1 value2 = (output1011, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1012 value159 value1 value2 = (output1012, value270, value1) := by
  rw [input1012_def, output1012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child1011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output1011_skip]
  kernel_rfl

theorem node1013_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value159 value1 value2 = (output594, value159, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value159 value1 value2 = (output1012, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value159 value1 value2 = (output1013, value270, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child1012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output1012_skip]
  kernel_rfl

theorem node1014_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value158 value1 value2 = (output593, value159, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value159 value1 value2 = (output1013, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value158 value1 value2 = (output1014, value270, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value157 value1 value2 = (output592, value158, value1))
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value158 value1 value2 = (output1014, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1015 value157 value1 value2 = (output1015, value270, value1) := by
  rw [input1015_def, output1015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child592]
  try dsimp only
  rw [child1014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output592_skip, output1014_skip]
  kernel_rfl

theorem node1016_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value156 value1 value2 = (output591, value157, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value157 value1 value2 = (output1015, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value156 value1 value2 = (output1016, value270, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output591_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value155 value1 value2 = (output590, value156, value1))
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value156 value1 value2 = (output1016, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1017 value155 value1 value2 = (output1017, value270, value1) := by
  rw [input1017_def, output1017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child1016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output1016_skip]
  kernel_rfl

theorem node1018_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value154 value1 value2 = (output589, value155, value1))
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value155 value1 value2 = (output1017, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input1018 value154 value1 value2 = (output1018, value270, value1) := by
  rw [input1018_def, output1018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  try dsimp only
  rw [child1017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output1017_skip]
  kernel_rfl

theorem node1019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value154 value1 value2 = (output1019, value154, value1) := by
  rw [input1019_def, output1019_def]
  kernel_rfl

theorem node1020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1020 value154 value1 value2 = (output1020, value154, value1) := by
  rw [input1020_def, output1020_def]
  kernel_rfl

theorem node1021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1021 value154 value1 value2 = (output1021, value154, value1) := by
  rw [input1021_def, output1021_def]
  kernel_rfl

theorem node1022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1022 value154 value1 value2 = (output1022, value154, value1) := by
  rw [input1022_def, output1022_def]
  kernel_rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value154 value1 value2 = (output1023, value154, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages874.Parallel
