import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages862.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages862.Parallel
theorem node768_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value182 value1 value100 = (output758, value185, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value185 value1 value100 = (output767, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value182 value1 value100 = (output768, value187, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value182 value1 value100 = (output753, value182, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value182 value1 value100 = (output768, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value182 value1 value100 = (output769, value187, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value181 value1 value100 = (output752, value182, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value182 value1 value100 = (output769, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value181 value1 value100 = (output770, value187, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value180 value1 value100 = (output751, value181, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value181 value1 value100 = (output770, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value180 value1 value100 = (output771, value187, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value105 value1 value100 = (output750, value180, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value180 value1 value100 = (output771, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value105 value1 value100 = (output772, value187, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value105 value1 value100 = (output431, value105, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value105 value1 value100 = (output772, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value105 value1 value100 = (output773, value187, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child431]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output431_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value103 value1 value100 = (output430, value105, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value105 value1 value100 = (output773, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value103 value1 value100 = (output774, value187, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value102 value1 value100 = (output427, value103, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value103 value1 value100 = (output774, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value102 value1 value100 = (output775, value187, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value102 value1 value100 = (output426, value102, value1))
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value102 value1 value100 = (output775, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input776 value102 value1 value100 = (output776, value187, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output775_skip]
  kernel_rfl

theorem node777_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value101 value1 value100 = (output423, value102, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value102 value1 value100 = (output776, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value101 value1 value100 = (output777, value187, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input778 value101 value1 value100 = (output778, value101, value1) := by
  rw [input778_def, output778_def]
  kernel_rfl

theorem node779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input779 value101 value1 value100 = (output779, value101, value1) := by
  rw [input779_def, output779_def]
  kernel_rfl

theorem node780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input780 value101 value1 value100 = (output780, value101, value1) := by
  rw [input780_def, output780_def]
  kernel_rfl

theorem node781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input781 value101 value1 value100 = (output781, value101, value1) := by
  rw [input781_def, output781_def]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value101 value1 value100 = (output782, value101, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value101 value1 value100 = (output783, value101, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input784 value101 value1 value100 = (output784, value101, value1) := by
  rw [input784_def, output784_def]
  kernel_rfl

theorem node785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input785 value101 value1 value100 = (output785, value101, value1) := by
  rw [input785_def, output785_def]
  kernel_rfl

theorem node786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input786 value101 value1 value100 = (output786, value101, value1) := by
  rw [input786_def, output786_def]
  kernel_rfl

theorem node787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input787 value101 value1 value100 = (output787, value101, value1) := by
  rw [input787_def, output787_def]
  kernel_rfl

theorem node788_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value101 value1 value100 = (output786, value101, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value101 value1 value100 = (output787, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value101 value1 value100 = (output788, value101, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output786_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value101 value1 value100 = (output785, value101, value1))
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value101 value1 value100 = (output788, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input789 value101 value1 value100 = (output789, value101, value1) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output788_skip]
  kernel_rfl

theorem node790_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value101 value1 value100 = (output784, value101, value1))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value101 value1 value100 = (output789, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input790 value101 value1 value100 = (output790, value101, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value101 value1 value100 = (output783, value101, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value101 value1 value100 = (output790, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value101 value1 value100 = (output791, value101, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value101 value1 value100 = (output782, value101, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value101 value1 value100 = (output791, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value101 value1 value100 = (output792, value101, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value101 value1 value100 = (output781, value101, value1))
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value101 value1 value100 = (output792, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input793 value101 value1 value100 = (output793, value101, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output792_skip]
  kernel_rfl

theorem node794_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value101 value1 value100 = (output780, value101, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value101 value1 value100 = (output793, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value101 value1 value100 = (output794, value101, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value101 value1 value100 = (output779, value101, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value101 value1 value100 = (output794, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value101 value1 value100 = (output795, value101, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value101 value1 value100 = (output778, value101, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value101 value1 value100 = (output795, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value101 value1 value100 = (output796, value101, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input797 value101 value1 value100 = (output797, value187, value1) := by
  rw [input797_def, output797_def]
  kernel_rfl

theorem node798_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value101 value1 value100 = (output796, value101, value1))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value101 value1 value100 = (output797, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input798 value101 value1 value100 = (output798, value187, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value187 value1 value100 = (output799, value98, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

theorem node800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input800 value98 value1 value100 = (output800, value188, value1) := by
  rw [input800_def, output800_def]
  kernel_rfl

theorem node801_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value187 value1 value100 = (output799, value98, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value98 value1 value100 = (output800, value188, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value187 value1 value100 = (output801, value188, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value188 value1 value100 = (output802, value188, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value188 value1 value100 = (output803, value188, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value188 value1 value100 = (output804, value188, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value188 value1 value100 = (output803, value188, value1))
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value188 value1 value100 = (output804, value188, value1)) : Flapjack.WordAlloc.removeDeadStructural input805 value188 value1 value100 = (output805, value188, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output804_skip]
  kernel_rfl

theorem node806_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value188 value1 value100 = (output802, value188, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value188 value1 value100 = (output805, value188, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value188 value1 value100 = (output806, value188, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value187 value1 value100 = (output801, value188, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value188 value1 value100 = (output806, value188, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value187 value1 value100 = (output807, value188, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value101 value1 value100 = (output798, value187, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value187 value1 value100 = (output807, value188, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value101 value1 value100 = (output808, value188, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value101 value1 value100 = (output777, value187, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value101 value1 value100 = (output808, value188, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value101 value1 value100 = (output809, value187, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child777]
  try dsimp only
  rw [child808]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value187 value1 value100 = (output810, value190, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value190 value1 value100 = (output811, value99, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value187 value1 value100 = (output810, value190, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value190 value1 value100 = (output811, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value187 value1 value100 = (output812, value99, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value101 value1 value100 = (output809, value187, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value187 value1 value100 = (output812, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value101 value1 value100 = (output813, value99, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value101 value1 value100 = (output402, value101, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value101 value1 value100 = (output813, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value101 value1 value100 = (output814, value99, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value99 value1 value100 = (output401, value101, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value101 value1 value100 = (output814, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value99 value1 value100 = (output815, value99, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output401_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value99 value1 value100 = (output815, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value98 value1 value2 = (output816, value99, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value100 = (value99, value98) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child815
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input817 value99 value1 value2 = (output817, value191, value1) := by
  rw [input817_def, output817_def]
  kernel_rfl

theorem node818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input818 value191 value1 value2 = (output818, value191, value1) := by
  rw [input818_def, output818_def]
  kernel_rfl

theorem node819_cond_eq
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value99 value1 value2 = (output817, value191, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value191 value1 value2 = (output818, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value99 value1 value2 = (output819, value191, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child817]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output817_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value98 value1 value2 = (output816, value99, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value99 value1 value2 = (output819, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value98 value1 value2 = (output820, value191, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input821 value191 value1 value2 = (output821, value191, value1) := by
  rw [input821_def, output821_def]
  kernel_rfl

theorem node822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input822 value191 value1 value2 = (output822, value192, value1) := by
  rw [input822_def, output822_def]
  kernel_rfl

theorem node823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input823 value192 value1 value2 = (output823, value192, value1) := by
  rw [input823_def, output823_def]
  kernel_rfl

theorem node824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input824 value192 value1 value2 = (output824, value193, value1) := by
  rw [input824_def, output824_def]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value193 value1 value2 = (output825, value194, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value192 value1 value2 = (output824, value193, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value193 value1 value2 = (output825, value194, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value192 value1 value2 = (output826, value194, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input827 value194 value1 value2 = (output827, value195, value1) := by
  rw [input827_def, output827_def]
  kernel_rfl

theorem node828_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value192 value1 value2 = (output826, value194, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value194 value1 value2 = (output827, value195, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value192 value1 value2 = (output828, value195, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input829 value195 value1 value2 = (output829, value196, value1) := by
  rw [input829_def, output829_def]
  kernel_rfl

theorem node830_cond_eq
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value192 value1 value2 = (output828, value195, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value195 value1 value2 = (output829, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value192 value1 value2 = (output830, value196, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child828]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output828_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input831 value196 value1 value2 = (output831, value196, value1) := by
  rw [input831_def, output831_def]
  kernel_rfl

theorem node832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input832 value196 value1 value2 = (output832, value197, value1) := by
  rw [input832_def, output832_def]
  kernel_rfl

theorem node833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input833 value197 value1 value2 = (output833, value198, value1) := by
  rw [input833_def, output833_def]
  kernel_rfl

theorem node834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input834 value198 value1 value2 = (output834, value199, value1) := by
  rw [input834_def, output834_def]
  kernel_rfl

theorem node835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input835 value199 value1 value2 = (output835, value200, value1) := by
  rw [input835_def, output835_def]
  kernel_rfl

theorem node836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input836 value200 value1 value2 = (output836, value201, value1) := by
  rw [input836_def, output836_def]
  kernel_rfl

theorem node837_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value199 value1 value2 = (output835, value200, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value200 value1 value2 = (output836, value201, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value199 value1 value2 = (output837, value201, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value198 value1 value2 = (output834, value199, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value199 value1 value2 = (output837, value201, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value198 value1 value2 = (output838, value201, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value197 value1 value2 = (output833, value198, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value198 value1 value2 = (output838, value201, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value197 value1 value2 = (output839, value201, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output833_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value196 value1 value2 = (output832, value197, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value197 value1 value2 = (output839, value201, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value196 value1 value2 = (output840, value201, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input841 value201 value1 value2 = (output841, value202, value1) := by
  rw [input841_def, output841_def]
  kernel_rfl

theorem node842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input842 value202 value1 value2 = (output842, value202, value1) := by
  rw [input842_def, output842_def]
  kernel_rfl

theorem node843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input843 value203 value1 value204 = (output843, value205, value1) := by
  rw [input843_def, output843_def]
  kernel_rfl

theorem node844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input844 value205 value1 value204 = (output844, value205, value1) := by
  rw [input844_def, output844_def]
  kernel_rfl

theorem node845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input845 value205 value1 value204 = (output845, value205, value1) := by
  rw [input845_def, output845_def]
  kernel_rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value205 value1 value204 = (output846, value205, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value205 value1 value204 = (output847, value205, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

theorem node848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input848 value205 value1 value204 = (output848, value205, value1) := by
  rw [input848_def, output848_def]
  kernel_rfl

theorem node849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input849 value205 value1 value204 = (output849, value205, value1) := by
  rw [input849_def, output849_def]
  kernel_rfl

theorem node850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input850 value205 value1 value204 = (output850, value205, value1) := by
  rw [input850_def, output850_def]
  kernel_rfl

theorem node851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input851 value205 value1 value204 = (output851, value205, value1) := by
  rw [input851_def, output851_def]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value205 value1 value204 = (output852, value205, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value205 value1 value204 = (output851, value205, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value205 value1 value204 = (output852, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value205 value1 value204 = (output853, value205, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value205 value1 value204 = (output850, value205, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value205 value1 value204 = (output853, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value205 value1 value204 = (output854, value205, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value205 value1 value204 = (output849, value205, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value205 value1 value204 = (output854, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value205 value1 value204 = (output855, value205, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child849]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output849_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value205 value1 value204 = (output848, value205, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value205 value1 value204 = (output855, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value205 value1 value204 = (output856, value205, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value205 value1 value204 = (output847, value205, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value205 value1 value204 = (output856, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value205 value1 value204 = (output857, value205, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output856_skip]
  kernel_rfl

theorem node858_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value205 value1 value204 = (output846, value205, value1))
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value205 value1 value204 = (output857, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input858 value205 value1 value204 = (output858, value205, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output857_skip]
  kernel_rfl

theorem node859_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value205 value1 value204 = (output845, value205, value1))
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value205 value1 value204 = (output858, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input859 value205 value1 value204 = (output859, value205, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  try dsimp only
  rw [child858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output858_skip]
  kernel_rfl

theorem node860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input860 value205 value1 value204 = (output860, value206, value1) := by
  rw [input860_def, output860_def]
  kernel_rfl

theorem node861_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value205 value1 value204 = (output859, value205, value1))
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value205 value1 value204 = (output860, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input861 value205 value1 value204 = (output861, value206, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output860_skip]
  kernel_rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value206 value1 value204 = (output862, value203, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

theorem node863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input863 value203 value1 value204 = (output863, value206, value1) := by
  rw [input863_def, output863_def]
  kernel_rfl

theorem node864_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value206 value1 value204 = (output862, value203, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value203 value1 value204 = (output863, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value206 value1 value204 = (output864, value206, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  try dsimp only
  rw [child863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input865 value206 value1 value204 = (output865, value207, value1) := by
  rw [input865_def, output865_def]
  kernel_rfl

theorem node866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input866 value207 value1 value204 = (output866, value208, value1) := by
  rw [input866_def, output866_def]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value208 value1 value204 = (output867, value209, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value207 value1 value204 = (output866, value208, value1))
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value208 value1 value204 = (output867, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input868 value207 value1 value204 = (output868, value209, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output867_skip]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value209 value1 value204 = (output869, value209, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input870 value209 value1 value204 = (output870, value209, value1) := by
  rw [input870_def, output870_def]
  kernel_rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value209 value1 value204 = (output871, value209, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

theorem node872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input872 value209 value1 value204 = (output872, value209, value1) := by
  rw [input872_def, output872_def]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value209 value1 value204 = (output873, value209, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value209 value1 value204 = (output874, value209, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input875 value209 value1 value204 = (output875, value209, value1) := by
  rw [input875_def, output875_def]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value209 value1 value204 = (output876, value209, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value209 value1 value204 = (output877, value209, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input878 value209 value1 value204 = (output878, value209, value1) := by
  rw [input878_def, output878_def]
  kernel_rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value209 value1 value204 = (output879, value209, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

theorem node880_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value209 value1 value204 = (output878, value209, value1))
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value209 value1 value204 = (output879, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input880 value209 value1 value204 = (output880, value209, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output879_skip]
  kernel_rfl

theorem node881_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value209 value1 value204 = (output877, value209, value1))
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value209 value1 value204 = (output880, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input881 value209 value1 value204 = (output881, value209, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output880_skip]
  kernel_rfl

theorem node882_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value209 value1 value204 = (output876, value209, value1))
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value209 value1 value204 = (output881, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input882 value209 value1 value204 = (output882, value209, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output881_skip]
  kernel_rfl

theorem node883_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value209 value1 value204 = (output875, value209, value1))
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value209 value1 value204 = (output882, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input883 value209 value1 value204 = (output883, value209, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output882_skip]
  kernel_rfl

theorem node884_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value209 value1 value204 = (output874, value209, value1))
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value209 value1 value204 = (output883, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input884 value209 value1 value204 = (output884, value209, value1) := by
  rw [input884_def, output884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output883_skip]
  kernel_rfl

theorem node885_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value209 value1 value204 = (output873, value209, value1))
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value209 value1 value204 = (output884, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input885 value209 value1 value204 = (output885, value209, value1) := by
  rw [input885_def, output885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output884_skip]
  kernel_rfl

theorem node886_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value209 value1 value204 = (output872, value209, value1))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value209 value1 value204 = (output885, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input886 value209 value1 value204 = (output886, value209, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value209 value1 value204 = (output871, value209, value1))
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value209 value1 value204 = (output886, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input887 value209 value1 value204 = (output887, value209, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output886_skip]
  kernel_rfl

theorem node888_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value209 value1 value204 = (output870, value209, value1))
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value209 value1 value204 = (output887, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input888 value209 value1 value204 = (output888, value209, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output887_skip]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value209 value1 value204 = (output889, value210, value1) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value209 value1 value204 = (output888, value209, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value209 value1 value204 = (output889, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value209 value1 value204 = (output890, value210, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input891 value210 value1 value204 = (output891, value210, value1) := by
  rw [input891_def, output891_def]
  kernel_rfl

theorem node892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input892 value210 value1 value204 = (output892, value211, value1) := by
  rw [input892_def, output892_def]
  kernel_rfl

theorem node893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input893 value211 value1 value204 = (output893, value212, value1) := by
  rw [input893_def, output893_def]
  kernel_rfl

theorem node894_cond_eq
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value210 value1 value204 = (output892, value211, value1))
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value211 value1 value204 = (output893, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input894 value210 value1 value204 = (output894, value212, value1) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child892]
  try dsimp only
  rw [child893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output892_skip, output893_skip]
  kernel_rfl

theorem node895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input895 value212 value1 value204 = (output895, value213, value1) := by
  rw [input895_def, output895_def]
  kernel_rfl

theorem node896_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value210 value1 value204 = (output894, value212, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value212 value1 value204 = (output895, value213, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value210 value1 value204 = (output896, value213, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value213 value1 value204 = (output897, value214, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value214 value1 value204 = (output898, value215, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input899 value215 value1 value204 = (output899, value216, value1) := by
  rw [input899_def, output899_def]
  kernel_rfl

theorem node900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input900 value216 value1 value204 = (output900, value216, value1) := by
  rw [input900_def, output900_def]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value216 value1 value204 = (output901, value217, value1) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input902 value217 value1 value204 = (output902, value218, value1) := by
  rw [input902_def, output902_def]
  kernel_rfl

theorem node903_cond_eq
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value216 value1 value204 = (output901, value217, value1))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value217 value1 value204 = (output902, value218, value1)) : Flapjack.WordAlloc.removeDeadStructural input903 value216 value1 value204 = (output903, value218, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child901]
  try dsimp only
  rw [child902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output901_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value218 value1 value204 = (output904, value219, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value216 value1 value204 = (output903, value218, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value218 value1 value204 = (output904, value219, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value216 value1 value204 = (output905, value219, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value219 value1 value204 = (output906, value220, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value220 value1 value204 = (output907, value221, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

theorem node908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input908 value221 value1 value204 = (output908, value221, value1) := by
  rw [input908_def, output908_def]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value221 value1 value204 = (output909, value222, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input910 value222 value1 value204 = (output910, value223, value1) := by
  rw [input910_def, output910_def]
  kernel_rfl

theorem node911_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value221 value1 value204 = (output909, value222, value1))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value222 value1 value204 = (output910, value223, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value221 value1 value204 = (output911, value223, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input912 value223 value1 value204 = (output912, value224, value1) := by
  rw [input912_def, output912_def]
  kernel_rfl

theorem node913_cond_eq
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value221 value1 value204 = (output911, value223, value1))
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value223 value1 value204 = (output912, value224, value1)) : Flapjack.WordAlloc.removeDeadStructural input913 value221 value1 value204 = (output913, value224, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child911]
  try dsimp only
  rw [child912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output911_skip, output912_skip]
  kernel_rfl

theorem node914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input914 value224 value1 value204 = (output914, value225, value1) := by
  rw [input914_def, output914_def]
  kernel_rfl

theorem node915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input915 value225 value1 value204 = (output915, value225, value1) := by
  rw [input915_def, output915_def]
  kernel_rfl

theorem node916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input916 value225 value1 value204 = (output916, value225, value1) := by
  rw [input916_def, output916_def]
  kernel_rfl

theorem node917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input917 value225 value1 value204 = (output917, value225, value1) := by
  rw [input917_def, output917_def]
  kernel_rfl

theorem node918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input918 value225 value1 value204 = (output918, value225, value1) := by
  rw [input918_def, output918_def]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value226 value1 value227 = (output919, value228, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input920 value228 value1 value227 = (output920, value228, value1) := by
  rw [input920_def, output920_def]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value228 value1 value227 = (output921, value228, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input922 value228 value1 value227 = (output922, value228, value1) := by
  rw [input922_def, output922_def]
  kernel_rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value228 value1 value227 = (output923, value228, value1) := by
  rw [input923_def, output923_def]
  kernel_rfl

theorem node924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input924 value228 value1 value227 = (output924, value228, value1) := by
  rw [input924_def, output924_def]
  kernel_rfl

theorem node925_cond_eq
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value228 value1 value227 = (output923, value228, value1))
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value228 value1 value227 = (output924, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input925 value228 value1 value227 = (output925, value228, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child923]
  try dsimp only
  rw [child924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output923_skip, output924_skip]
  kernel_rfl

theorem node926_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value228 value1 value227 = (output922, value228, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value228 value1 value227 = (output925, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value228 value1 value227 = (output926, value228, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output925_skip]
  kernel_rfl

theorem node927_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value228 value1 value227 = (output921, value228, value1))
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value228 value1 value227 = (output926, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input927 value228 value1 value227 = (output927, value228, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output926_skip]
  kernel_rfl

theorem node928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input928 value228 value1 value227 = (output928, value229, value1) := by
  rw [input928_def, output928_def]
  kernel_rfl

theorem node929_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value228 value1 value227 = (output927, value228, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value228 value1 value227 = (output928, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value228 value1 value227 = (output929, value229, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input930 value229 value1 value227 = (output930, value226, value1) := by
  rw [input930_def, output930_def]
  kernel_rfl

theorem node931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input931 value226 value1 value227 = (output931, value229, value1) := by
  rw [input931_def, output931_def]
  kernel_rfl

theorem node932_cond_eq
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value229 value1 value227 = (output930, value226, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value226 value1 value227 = (output931, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value229 value1 value227 = (output932, value229, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child930]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output930_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value229 value1 value227 = (output933, value230, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input934 value230 value1 value227 = (output934, value231, value1) := by
  rw [input934_def, output934_def]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value231 value1 value227 = (output935, value232, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value230 value1 value227 = (output934, value231, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value231 value1 value227 = (output935, value232, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value230 value1 value227 = (output936, value232, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value232 value1 value227 = (output937, value232, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input938 value233 value1 value234 = (output938, value235, value1) := by
  rw [input938_def, output938_def]
  kernel_rfl

theorem node939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input939 value235 value1 value234 = (output939, value235, value1) := by
  rw [input939_def, output939_def]
  kernel_rfl

theorem node940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input940 value235 value1 value234 = (output940, value235, value1) := by
  rw [input940_def, output940_def]
  kernel_rfl

theorem node941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input941 value235 value1 value234 = (output941, value235, value1) := by
  rw [input941_def, output941_def]
  kernel_rfl

theorem node942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input942 value235 value1 value234 = (output942, value235, value1) := by
  rw [input942_def, output942_def]
  kernel_rfl

theorem node943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input943 value235 value1 value234 = (output943, value235, value1) := by
  rw [input943_def, output943_def]
  kernel_rfl

theorem node944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input944 value235 value1 value234 = (output944, value235, value1) := by
  rw [input944_def, output944_def]
  kernel_rfl

theorem node945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input945 value235 value1 value234 = (output945, value235, value1) := by
  rw [input945_def, output945_def]
  kernel_rfl

theorem node946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input946 value235 value1 value234 = (output946, value235, value1) := by
  rw [input946_def, output946_def]
  kernel_rfl

theorem node947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input947 value235 value1 value234 = (output947, value235, value1) := by
  rw [input947_def, output947_def]
  kernel_rfl

theorem node948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input948 value235 value1 value234 = (output948, value235, value1) := by
  rw [input948_def, output948_def]
  kernel_rfl

theorem node949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input949 value235 value1 value234 = (output949, value235, value1) := by
  rw [input949_def, output949_def]
  kernel_rfl

theorem node950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input950 value235 value1 value234 = (output950, value235, value1) := by
  rw [input950_def, output950_def]
  kernel_rfl

theorem node951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input951 value235 value1 value234 = (output951, value235, value1) := by
  rw [input951_def, output951_def]
  kernel_rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value235 value1 value234 = (output952, value235, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

theorem node953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input953 value235 value1 value234 = (output953, value235, value1) := by
  rw [input953_def, output953_def]
  kernel_rfl

theorem node954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input954 value235 value1 value234 = (output954, value235, value1) := by
  rw [input954_def, output954_def]
  kernel_rfl

theorem node955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input955 value235 value1 value234 = (output955, value235, value1) := by
  rw [input955_def, output955_def]
  kernel_rfl

theorem node956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input956 value235 value1 value234 = (output956, value235, value1) := by
  rw [input956_def, output956_def]
  kernel_rfl

theorem node957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input957 value235 value1 value234 = (output957, value235, value1) := by
  rw [input957_def, output957_def]
  kernel_rfl

theorem node958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input958 value235 value1 value234 = (output958, value235, value1) := by
  rw [input958_def, output958_def]
  kernel_rfl

theorem node959_cond_eq
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value235 value1 value234 = (output957, value235, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value235 value1 value234 = (output958, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value235 value1 value234 = (output959, value235, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child957]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output957_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value235 value1 value234 = (output956, value235, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value235 value1 value234 = (output959, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value235 value1 value234 = (output960, value235, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child956]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output956_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value235 value1 value234 = (output955, value235, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value235 value1 value234 = (output960, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value235 value1 value234 = (output961, value235, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child955]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output955_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value235 value1 value234 = (output954, value235, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value235 value1 value234 = (output961, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value235 value1 value234 = (output962, value235, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child954]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output954_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value235 value1 value234 = (output953, value235, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value235 value1 value234 = (output962, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value235 value1 value234 = (output963, value235, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output953_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value235 value1 value234 = (output952, value235, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value235 value1 value234 = (output963, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value235 value1 value234 = (output964, value235, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child952]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output952_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value235 value1 value234 = (output951, value235, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value235 value1 value234 = (output964, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value235 value1 value234 = (output965, value235, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value235 value1 value234 = (output950, value235, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value235 value1 value234 = (output965, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value235 value1 value234 = (output966, value235, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child950]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output950_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value235 value1 value234 = (output949, value235, value1))
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value235 value1 value234 = (output966, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value235 value1 value234 = (output967, value235, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child949]
  try dsimp only
  rw [child966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output949_skip, output966_skip]
  kernel_rfl

theorem node968_cond_eq
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value235 value1 value234 = (output948, value235, value1))
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value235 value1 value234 = (output967, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input968 value235 value1 value234 = (output968, value235, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child948]
  try dsimp only
  rw [child967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output948_skip, output967_skip]
  kernel_rfl

theorem node969_cond_eq
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value235 value1 value234 = (output947, value235, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value235 value1 value234 = (output968, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value235 value1 value234 = (output969, value235, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child947]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output947_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value235 value1 value234 = (output946, value235, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value235 value1 value234 = (output969, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value235 value1 value234 = (output970, value235, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value235 value1 value234 = (output945, value235, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value235 value1 value234 = (output970, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value235 value1 value234 = (output971, value235, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value235 value1 value234 = (output944, value235, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value235 value1 value234 = (output971, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value235 value1 value234 = (output972, value235, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value235 value1 value234 = (output943, value235, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value235 value1 value234 = (output972, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value235 value1 value234 = (output973, value235, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child943]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output943_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value235 value1 value234 = (output942, value235, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value235 value1 value234 = (output973, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value235 value1 value234 = (output974, value235, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output942_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value235 value1 value234 = (output941, value235, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value235 value1 value234 = (output974, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value235 value1 value234 = (output975, value235, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value235 value1 value234 = (output940, value235, value1))
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value235 value1 value234 = (output975, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input976 value235 value1 value234 = (output976, value235, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child940]
  try dsimp only
  rw [child975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output940_skip, output975_skip]
  kernel_rfl

theorem node977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input977 value235 value1 value234 = (output977, value236, value1) := by
  rw [input977_def, output977_def]
  kernel_rfl

theorem node978_cond_eq
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value235 value1 value234 = (output976, value235, value1))
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value235 value1 value234 = (output977, value236, value1)) : Flapjack.WordAlloc.removeDeadStructural input978 value235 value1 value234 = (output978, value236, value1) := by
  rw [input978_def, output978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child976]
  try dsimp only
  rw [child977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output976_skip, output977_skip]
  kernel_rfl

theorem node979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input979 value236 value1 value234 = (output979, value233, value1) := by
  rw [input979_def, output979_def]
  kernel_rfl

theorem node980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input980 value233 value1 value234 = (output980, value236, value1) := by
  rw [input980_def, output980_def]
  kernel_rfl

theorem node981_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value236 value1 value234 = (output979, value233, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value233 value1 value234 = (output980, value236, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value236 value1 value234 = (output981, value236, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output979_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input982 value236 value1 value234 = (output982, value237, value1) := by
  rw [input982_def, output982_def]
  kernel_rfl

theorem node983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input983 value237 value1 value234 = (output983, value238, value1) := by
  rw [input983_def, output983_def]
  kernel_rfl

theorem node984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input984 value238 value1 value234 = (output984, value239, value1) := by
  rw [input984_def, output984_def]
  kernel_rfl

theorem node985_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value237 value1 value234 = (output983, value238, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value238 value1 value234 = (output984, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value237 value1 value234 = (output985, value239, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child983]
  try dsimp only
  rw [child984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output983_skip, output984_skip]
  kernel_rfl

theorem node986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input986 value239 value1 value234 = (output986, value239, value1) := by
  rw [input986_def, output986_def]
  kernel_rfl

theorem node987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input987 value239 value1 value234 = (output987, value239, value1) := by
  rw [input987_def, output987_def]
  kernel_rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value239 value1 value234 = (output988, value239, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

theorem node989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input989 value239 value1 value234 = (output989, value239, value1) := by
  rw [input989_def, output989_def]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value239 value1 value234 = (output990, value239, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value239 value1 value234 = (output991, value239, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input992 value239 value1 value234 = (output992, value239, value1) := by
  rw [input992_def, output992_def]
  kernel_rfl

theorem node993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input993 value239 value1 value234 = (output993, value239, value1) := by
  rw [input993_def, output993_def]
  kernel_rfl

theorem node994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input994 value239 value1 value234 = (output994, value239, value1) := by
  rw [input994_def, output994_def]
  kernel_rfl

theorem node995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input995 value239 value1 value234 = (output995, value239, value1) := by
  rw [input995_def, output995_def]
  kernel_rfl

theorem node996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input996 value239 value1 value234 = (output996, value239, value1) := by
  rw [input996_def, output996_def]
  kernel_rfl

theorem node997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input997 value239 value1 value234 = (output997, value239, value1) := by
  rw [input997_def, output997_def]
  kernel_rfl

theorem node998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input998 value239 value1 value234 = (output998, value239, value1) := by
  rw [input998_def, output998_def]
  kernel_rfl

theorem node999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input999 value239 value1 value234 = (output999, value239, value1) := by
  rw [input999_def, output999_def]
  kernel_rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value239 value1 value234 = (output1000, value239, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

theorem node1001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1001 value239 value1 value234 = (output1001, value239, value1) := by
  rw [input1001_def, output1001_def]
  kernel_rfl

theorem node1002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value239 value1 value234 = (output1002, value239, value1) := by
  rw [input1002_def, output1002_def]
  kernel_rfl

theorem node1003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value239 value1 value234 = (output1003, value239, value1) := by
  rw [input1003_def, output1003_def]
  kernel_rfl

theorem node1004_cond_eq
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value239 value1 value234 = (output1002, value239, value1))
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value239 value1 value234 = (output1003, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1004 value239 value1 value234 = (output1004, value239, value1) := by
  rw [input1004_def, output1004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1002]
  try dsimp only
  rw [child1003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1002_skip, output1003_skip]
  kernel_rfl

theorem node1005_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value239 value1 value234 = (output1001, value239, value1))
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value239 value1 value234 = (output1004, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1005 value239 value1 value234 = (output1005, value239, value1) := by
  rw [input1005_def, output1005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  try dsimp only
  rw [child1004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1001_skip, output1004_skip]
  kernel_rfl

theorem node1006_cond_eq
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value239 value1 value234 = (output1000, value239, value1))
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value239 value1 value234 = (output1005, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1006 value239 value1 value234 = (output1006, value239, value1) := by
  rw [input1006_def, output1006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1000]
  try dsimp only
  rw [child1005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1000_skip, output1005_skip]
  kernel_rfl

theorem node1007_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value239 value1 value234 = (output999, value239, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value239 value1 value234 = (output1006, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value239 value1 value234 = (output1007, value239, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value239 value1 value234 = (output998, value239, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value239 value1 value234 = (output1007, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value239 value1 value234 = (output1008, value239, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child998]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output998_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value239 value1 value234 = (output997, value239, value1))
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value239 value1 value234 = (output1008, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1009 value239 value1 value234 = (output1009, value239, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child997]
  try dsimp only
  rw [child1008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output997_skip, output1008_skip]
  kernel_rfl

theorem node1010_cond_eq
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value239 value1 value234 = (output996, value239, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value239 value1 value234 = (output1009, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value239 value1 value234 = (output1010, value239, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child996]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output996_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value239 value1 value234 = (output995, value239, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value239 value1 value234 = (output1010, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value239 value1 value234 = (output1011, value239, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child995]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output995_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value239 value1 value234 = (output994, value239, value1))
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value239 value1 value234 = (output1011, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1012 value239 value1 value234 = (output1012, value239, value1) := by
  rw [input1012_def, output1012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child994]
  try dsimp only
  rw [child1011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output994_skip, output1011_skip]
  kernel_rfl

theorem node1013_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value239 value1 value234 = (output993, value239, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value239 value1 value234 = (output1012, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value239 value1 value234 = (output1013, value239, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  try dsimp only
  rw [child1012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output1012_skip]
  kernel_rfl

theorem node1014_cond_eq
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value239 value1 value234 = (output992, value239, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value239 value1 value234 = (output1013, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value239 value1 value234 = (output1014, value239, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child992]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output992_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value239 value1 value234 = (output991, value239, value1))
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value239 value1 value234 = (output1014, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1015 value239 value1 value234 = (output1015, value239, value1) := by
  rw [input1015_def, output1015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child991]
  try dsimp only
  rw [child1014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output991_skip, output1014_skip]
  kernel_rfl

theorem node1016_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value239 value1 value234 = (output990, value239, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value239 value1 value234 = (output1015, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value239 value1 value234 = (output1016, value239, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value239 value1 value234 = (output989, value239, value1))
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value239 value1 value234 = (output1016, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1017 value239 value1 value234 = (output1017, value239, value1) := by
  rw [input1017_def, output1017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  try dsimp only
  rw [child1016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output1016_skip]
  kernel_rfl

theorem node1018_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value239 value1 value234 = (output988, value239, value1))
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value239 value1 value234 = (output1017, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1018 value239 value1 value234 = (output1018, value239, value1) := by
  rw [input1018_def, output1018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  try dsimp only
  rw [child1017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output1017_skip]
  kernel_rfl

theorem node1019_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value239 value1 value234 = (output987, value239, value1))
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value239 value1 value234 = (output1018, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input1019 value239 value1 value234 = (output1019, value239, value1) := by
  rw [input1019_def, output1019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child1018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output1018_skip]
  kernel_rfl

theorem node1020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1020 value239 value1 value234 = (output1020, value240, value1) := by
  rw [input1020_def, output1020_def]
  kernel_rfl

theorem node1021_cond_eq
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value239 value1 value234 = (output1019, value239, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value239 value1 value234 = (output1020, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value239 value1 value234 = (output1021, value240, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1019]
  try dsimp only
  rw [child1020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1019_skip, output1020_skip]
  kernel_rfl

theorem node1022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1022 value240 value1 value234 = (output1022, value240, value1) := by
  rw [input1022_def, output1022_def]
  kernel_rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value240 value1 value234 = (output1023, value240, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages862.Parallel
