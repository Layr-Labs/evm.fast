import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages623.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages623.Parallel
theorem node768_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value254 value1 value2 = (output764, value254, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value254 value1 value2 = (output767, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value254 value1 value2 = (output768, value254, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value253 value1 value2 = (output763, value254, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value254 value1 value2 = (output768, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value253 value1 value2 = (output769, value254, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value250 value1 value2 = (output762, value253, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value253 value1 value2 = (output769, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value250 value1 value2 = (output770, value254, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value250 value1 value2 = (output757, value250, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value250 value1 value2 = (output770, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value250 value1 value2 = (output771, value254, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value249 value1 value2 = (output756, value250, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value250 value1 value2 = (output771, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value249 value1 value2 = (output772, value254, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input773 value249 value1 value2 = (output773, value249, value1) := by
  rw [input773_def, output773_def]
  kernel_rfl

theorem node774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input774 value249 value1 value2 = (output774, value249, value1) := by
  rw [input774_def, output774_def]
  kernel_rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value249 value1 value2 = (output775, value249, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value249 value1 value2 = (output776, value249, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value249 value1 value2 = (output775, value249, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value249 value1 value2 = (output776, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value249 value1 value2 = (output777, value249, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value249 value1 value2 = (output774, value249, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value249 value1 value2 = (output777, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value249 value1 value2 = (output778, value249, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value249 value1 value2 = (output773, value249, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value249 value1 value2 = (output778, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value249 value1 value2 = (output779, value249, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input780 value249 value1 value2 = (output780, value254, value1) := by
  rw [input780_def, output780_def]
  kernel_rfl

theorem node781_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value249 value1 value2 = (output779, value249, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value249 value1 value2 = (output780, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value249 value1 value2 = (output781, value254, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value254 value1 value2 = (output782, value254, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value254 value1 value2 = (output783, value254, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input784 value254 value1 value2 = (output784, value254, value1) := by
  rw [input784_def, output784_def]
  kernel_rfl

theorem node785_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value254 value1 value2 = (output783, value254, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value254 value1 value2 = (output784, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value254 value1 value2 = (output785, value254, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value254 value1 value2 = (output782, value254, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value254 value1 value2 = (output785, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value254 value1 value2 = (output786, value254, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value249 value1 value2 = (output781, value254, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value254 value1 value2 = (output786, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value249 value1 value2 = (output787, value254, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value249 value1 value2 = (output772, value254, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value249 value1 value2 = (output787, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value249 value1 value2 = (output788, value256, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child772]
  try dsimp only
  rw [child787]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value256 value1 value2 = (output789, value257, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value257 value1 value2 = (output790, value258, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value258 value1 value2 = (output791, value258, value1) := by
  rw [input791_def, output791_def]
  kernel_rfl

theorem node792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input792 value258 value1 value2 = (output792, value259, value1) := by
  rw [input792_def, output792_def]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value259 value1 value2 = (output793, value260, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value258 value1 value2 = (output792, value259, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value259 value1 value2 = (output793, value260, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value258 value1 value2 = (output794, value260, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input795 value260 value1 value2 = (output795, value261, value1) := by
  rw [input795_def, output795_def]
  kernel_rfl

theorem node796_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value258 value1 value2 = (output794, value260, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value260 value1 value2 = (output795, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value258 value1 value2 = (output796, value261, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input797 value261 value1 value2 = (output797, value262, value1) := by
  rw [input797_def, output797_def]
  kernel_rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value262 value1 value2 = (output798, value262, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value262 value1 value2 = (output799, value263, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

theorem node800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input800 value263 value1 value2 = (output800, value264, value1) := by
  rw [input800_def, output800_def]
  kernel_rfl

theorem node801_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value262 value1 value2 = (output799, value263, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value263 value1 value2 = (output800, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value262 value1 value2 = (output801, value264, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value264 value1 value2 = (output802, value265, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

theorem node803_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value262 value1 value2 = (output801, value264, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value264 value1 value2 = (output802, value265, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value262 value1 value2 = (output803, value265, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value265 value1 value2 = (output804, value266, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value266 value1 value2 = (output805, value267, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input806 value267 value1 value2 = (output806, value268, value1) := by
  rw [input806_def, output806_def]
  kernel_rfl

theorem node807_cond_eq
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value266 value1 value2 = (output805, value267, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value267 value1 value2 = (output806, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value266 value1 value2 = (output807, value268, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child805]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output805_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input808 value268 value1 value2 = (output808, value269, value1) := by
  rw [input808_def, output808_def]
  kernel_rfl

theorem node809_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value266 value1 value2 = (output807, value268, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value268 value1 value2 = (output808, value269, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value266 value1 value2 = (output809, value269, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value269 value1 value2 = (output810, value269, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value269 value1 value2 = (output811, value269, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value269 value1 value2 = (output812, value270, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

theorem node813_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value269 value1 value2 = (output811, value269, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value269 value1 value2 = (output812, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value269 value1 value2 = (output813, value270, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input814 value270 value1 value2 = (output814, value271, value1) := by
  rw [input814_def, output814_def]
  kernel_rfl

theorem node815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input815 value271 value1 value2 = (output815, value271, value1) := by
  rw [input815_def, output815_def]
  kernel_rfl

theorem node816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input816 value271 value1 value2 = (output816, value271, value1) := by
  rw [input816_def, output816_def]
  kernel_rfl

theorem node817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input817 value271 value1 value2 = (output817, value271, value1) := by
  rw [input817_def, output817_def]
  kernel_rfl

theorem node818_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value271 value1 value2 = (output816, value271, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value271 value1 value2 = (output817, value271, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value271 value1 value2 = (output818, value271, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value271 value1 value2 = (output815, value271, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value271 value1 value2 = (output818, value271, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value271 value1 value2 = (output819, value271, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value270 value1 value2 = (output814, value271, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value271 value1 value2 = (output819, value271, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value270 value1 value2 = (output820, value271, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value269 value1 value2 = (output813, value270, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value270 value1 value2 = (output820, value271, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value269 value1 value2 = (output821, value271, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input822 value269 value1 value2 = (output822, value269, value1) := by
  rw [input822_def, output822_def]
  kernel_rfl

theorem node823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input823 value269 value1 value2 = (output823, value272, value1) := by
  rw [input823_def, output823_def]
  kernel_rfl

theorem node824_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value269 value1 value2 = (output822, value269, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value269 value1 value2 = (output823, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value269 value1 value2 = (output824, value272, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value272 value1 value2 = (output825, value272, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input826 value272 value1 value2 = (output826, value272, value1) := by
  rw [input826_def, output826_def]
  kernel_rfl

theorem node827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input827 value272 value1 value2 = (output827, value272, value1) := by
  rw [input827_def, output827_def]
  kernel_rfl

theorem node828_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value272 value1 value2 = (output826, value272, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value272 value1 value2 = (output827, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value272 value1 value2 = (output828, value272, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value272 value1 value2 = (output825, value272, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value272 value1 value2 = (output828, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value272 value1 value2 = (output829, value272, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child825]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output825_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value269 value1 value2 = (output824, value272, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value272 value1 value2 = (output829, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value269 value1 value2 = (output830, value272, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value269 value1 value2 = (output821, value271, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value269 value1 value2 = (output830, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value269 value1 value2 = (output831, value274, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child821]
  try dsimp only
  rw [child830]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input832 value274 value1 value2 = (output832, value272, value1) := by
  rw [input832_def, output832_def]
  kernel_rfl

theorem node833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input833 value272 value1 value2 = (output833, value275, value1) := by
  rw [input833_def, output833_def]
  kernel_rfl

theorem node834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input834 value275 value1 value2 = (output834, value276, value1) := by
  rw [input834_def, output834_def]
  kernel_rfl

theorem node835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input835 value276 value1 value2 = (output835, value276, value1) := by
  rw [input835_def, output835_def]
  kernel_rfl

theorem node836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input836 value276 value1 value2 = (output836, value276, value1) := by
  rw [input836_def, output836_def]
  kernel_rfl

theorem node837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input837 value276 value1 value2 = (output837, value277, value1) := by
  rw [input837_def, output837_def]
  kernel_rfl

theorem node838_cond_eq
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value276 value1 value2 = (output836, value276, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value276 value1 value2 = (output837, value277, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value276 value1 value2 = (output838, value277, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child836]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output836_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input839 value277 value1 value2 = (output839, value278, value1) := by
  rw [input839_def, output839_def]
  kernel_rfl

theorem node840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input840 value278 value1 value2 = (output840, value278, value1) := by
  rw [input840_def, output840_def]
  kernel_rfl

theorem node841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input841 value278 value1 value2 = (output841, value278, value1) := by
  rw [input841_def, output841_def]
  kernel_rfl

theorem node842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input842 value278 value1 value2 = (output842, value278, value1) := by
  rw [input842_def, output842_def]
  kernel_rfl

theorem node843_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value278 value1 value2 = (output841, value278, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value278 value1 value2 = (output842, value278, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value278 value1 value2 = (output843, value278, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value278 value1 value2 = (output840, value278, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value278 value1 value2 = (output843, value278, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value278 value1 value2 = (output844, value278, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value277 value1 value2 = (output839, value278, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value278 value1 value2 = (output844, value278, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value277 value1 value2 = (output845, value278, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value276 value1 value2 = (output838, value277, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value277 value1 value2 = (output845, value278, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value276 value1 value2 = (output846, value278, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value276 value1 value2 = (output847, value276, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

theorem node848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input848 value276 value1 value2 = (output848, value279, value1) := by
  rw [input848_def, output848_def]
  kernel_rfl

theorem node849_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value276 value1 value2 = (output847, value276, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value276 value1 value2 = (output848, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value276 value1 value2 = (output849, value279, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input850 value279 value1 value2 = (output850, value279, value1) := by
  rw [input850_def, output850_def]
  kernel_rfl

theorem node851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input851 value279 value1 value2 = (output851, value279, value1) := by
  rw [input851_def, output851_def]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value279 value1 value2 = (output852, value279, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value279 value1 value2 = (output851, value279, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value279 value1 value2 = (output852, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value279 value1 value2 = (output853, value279, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value279 value1 value2 = (output850, value279, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value279 value1 value2 = (output853, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value279 value1 value2 = (output854, value279, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value276 value1 value2 = (output849, value279, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value279 value1 value2 = (output854, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value276 value1 value2 = (output855, value279, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child849]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output849_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value276 value1 value2 = (output846, value278, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value276 value1 value2 = (output855, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value276 value1 value2 = (output856, value281, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child846]
  try dsimp only
  rw [child855]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input857 value281 value1 value2 = (output857, value279, value1) := by
  rw [input857_def, output857_def]
  kernel_rfl

theorem node858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input858 value279 value1 value2 = (output858, value282, value1) := by
  rw [input858_def, output858_def]
  kernel_rfl

theorem node859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input859 value282 value1 value2 = (output859, value283, value1) := by
  rw [input859_def, output859_def]
  kernel_rfl

theorem node860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input860 value283 value1 value2 = (output860, value283, value1) := by
  rw [input860_def, output860_def]
  kernel_rfl

theorem node861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input861 value283 value1 value2 = (output861, value284, value1) := by
  rw [input861_def, output861_def]
  kernel_rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value284 value1 value2 = (output862, value285, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

theorem node863_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value283 value1 value2 = (output861, value284, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value284 value1 value2 = (output862, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value283 value1 value2 = (output863, value285, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input864 value285 value1 value2 = (output864, value286, value1) := by
  rw [input864_def, output864_def]
  kernel_rfl

theorem node865_cond_eq
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value283 value1 value2 = (output863, value285, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value285 value1 value2 = (output864, value286, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value283 value1 value2 = (output865, value286, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child863]
  try dsimp only
  rw [child864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output863_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input866 value286 value1 value2 = (output866, value287, value1) := by
  rw [input866_def, output866_def]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value287 value1 value2 = (output867, value287, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input868 value287 value1 value2 = (output868, value288, value1) := by
  rw [input868_def, output868_def]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value288 value1 value2 = (output869, value289, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value287 value1 value2 = (output868, value288, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value288 value1 value2 = (output869, value289, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value287 value1 value2 = (output870, value289, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value289 value1 value2 = (output871, value290, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

theorem node872_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value287 value1 value2 = (output870, value289, value1))
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value289 value1 value2 = (output871, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input872 value287 value1 value2 = (output872, value290, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output871_skip]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value290 value1 value2 = (output873, value291, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value291 value1 value2 = (output874, value292, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input875 value292 value1 value2 = (output875, value293, value1) := by
  rw [input875_def, output875_def]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value293 value1 value2 = (output876, value294, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value294 value1 value2 = (output877, value295, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input878 value295 value1 value2 = (output878, value296, value1) := by
  rw [input878_def, output878_def]
  kernel_rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value296 value1 value2 = (output879, value297, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

theorem node880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input880 value297 value1 value2 = (output880, value298, value1) := by
  rw [input880_def, output880_def]
  kernel_rfl

theorem node881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input881 value298 value1 value2 = (output881, value299, value1) := by
  rw [input881_def, output881_def]
  kernel_rfl

theorem node882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input882 value299 value1 value2 = (output882, value300, value1) := by
  rw [input882_def, output882_def]
  kernel_rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value300 value1 value2 = (output883, value301, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value301 value1 value2 = (output884, value302, value1) := by
  rw [input884_def, output884_def]
  kernel_rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value302 value1 value2 = (output885, value303, value1) := by
  rw [input885_def, output885_def]
  kernel_rfl

theorem node886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input886 value303 value1 value2 = (output886, value304, value1) := by
  rw [input886_def, output886_def]
  kernel_rfl

theorem node887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input887 value304 value1 value2 = (output887, value305, value1) := by
  rw [input887_def, output887_def]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value305 value1 value2 = (output888, value306, value1) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input889 value306 value1 value2 = (output889, value306, value1) := by
  rw [input889_def, output889_def]
  kernel_rfl

theorem node890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input890 value306 value1 value2 = (output890, value306, value1) := by
  rw [input890_def, output890_def]
  kernel_rfl

theorem node891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input891 value306 value1 value2 = (output891, value306, value1) := by
  rw [input891_def, output891_def]
  kernel_rfl

theorem node892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input892 value306 value1 value2 = (output892, value306, value1) := by
  rw [input892_def, output892_def]
  kernel_rfl

theorem node893_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value306 value1 value2 = (output891, value306, value1))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value306 value1 value2 = (output892, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input893 value306 value1 value2 = (output893, value306, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  try dsimp only
  rw [child892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output892_skip]
  kernel_rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value306 value1 value2 = (output894, value307, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

theorem node895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input895 value307 value1 value2 = (output895, value308, value1) := by
  rw [input895_def, output895_def]
  kernel_rfl

theorem node896_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value306 value1 value2 = (output894, value307, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value307 value1 value2 = (output895, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value306 value1 value2 = (output896, value308, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value308 value1 value2 = (output897, value306, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value306 value1 value2 = (output898, value309, value310) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input899 value309 value310 value2 = (output899, value311, value310) := by
  rw [input899_def, output899_def]
  kernel_rfl

theorem node900_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value306 value1 value2 = (output898, value309, value310))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value309 value310 value2 = (output899, value311, value310)) : Flapjack.WordAlloc.removeDeadStructural input900 value306 value1 value2 = (output900, value311, value310) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value311 value310 value2 = (output901, value306, value310) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value306 value1 value2 = (output900, value311, value310))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value311 value310 value2 = (output901, value306, value310)) : Flapjack.WordAlloc.removeDeadStructural input902 value306 value1 value2 = (output902, value306, value310) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value308 value1 value2 = (output897, value306, value1))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value306 value1 value2 = (output902, value306, value310)) : Flapjack.WordAlloc.removeDeadStructural input903 value308 value1 value2 = (output903, value306, value310) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value306 value1 value2 = (output896, value308, value1))
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value308 value1 value2 = (output903, value306, value310)) : Flapjack.WordAlloc.removeDeadStructural input904 value306 value1 value2 = (output904, value306, value310) := by
  rw [input904_def, output904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output903_skip]
  kernel_rfl

theorem node905_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value306 value1 value2 = (output893, value306, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value306 value1 value2 = (output904, value306, value310)) : Flapjack.WordAlloc.removeDeadStructural input905 value306 value1 value2 = (output905, value306, value310) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value306 value1 value2 = (output906, value306, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value306 value1 value2 = (output907, value306, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

theorem node908_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value306 value1 value2 = (output906, value306, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value306 value1 value2 = (output907, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value306 value1 value2 = (output908, value306, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value306 value1 value2 = (output909, value306, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value306 value1 value2 = (output908, value306, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value306 value1 value2 = (output909, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value306 value1 value2 = (output910, value306, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value306 value1 value2 = (output905, value306, value310))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value306 value1 value2 = (output910, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value306 value1 value2 = (output911, value313, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child905]
  try dsimp only
  rw [child910]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value306 value1 value2 = (output890, value306, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value306 value1 value2 = (output911, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value306 value1 value2 = (output912, value313, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value313 value1 value2 = (output913, value314, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input914 value314 value1 value2 = (output914, value315, value1) := by
  rw [input914_def, output914_def]
  kernel_rfl

theorem node915_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value313 value1 value2 = (output913, value314, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value314 value1 value2 = (output914, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value313 value1 value2 = (output915, value315, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input916 value315 value1 value2 = (output916, value316, value1) := by
  rw [input916_def, output916_def]
  kernel_rfl

theorem node917_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value313 value1 value2 = (output915, value315, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value315 value1 value2 = (output916, value316, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value313 value1 value2 = (output917, value316, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input918 value316 value1 value2 = (output918, value316, value1) := by
  rw [input918_def, output918_def]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value316 value1 value2 = (output919, value316, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input920 value316 value1 value2 = (output920, value317, value1) := by
  rw [input920_def, output920_def]
  kernel_rfl

theorem node921_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value316 value1 value2 = (output919, value316, value1))
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value316 value1 value2 = (output920, value317, value1)) : Flapjack.WordAlloc.removeDeadStructural input921 value316 value1 value2 = (output921, value317, value1) := by
  rw [input921_def, output921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child919]
  try dsimp only
  rw [child920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output919_skip, output920_skip]
  kernel_rfl

theorem node922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input922 value317 value1 value2 = (output922, value318, value1) := by
  rw [input922_def, output922_def]
  kernel_rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value318 value1 value2 = (output923, value318, value1) := by
  rw [input923_def, output923_def]
  kernel_rfl

theorem node924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input924 value318 value1 value2 = (output924, value318, value1) := by
  rw [input924_def, output924_def]
  kernel_rfl

theorem node925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input925 value318 value1 value2 = (output925, value318, value1) := by
  rw [input925_def, output925_def]
  kernel_rfl

theorem node926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input926 value318 value1 value2 = (output926, value318, value1) := by
  rw [input926_def, output926_def]
  kernel_rfl

theorem node927_cond_eq
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value318 value1 value2 = (output925, value318, value1))
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value318 value1 value2 = (output926, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input927 value318 value1 value2 = (output927, value318, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child925]
  try dsimp only
  rw [child926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output925_skip, output926_skip]
  kernel_rfl

theorem node928_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value318 value1 value2 = (output924, value318, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value318 value1 value2 = (output927, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value318 value1 value2 = (output928, value318, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value318 value1 value2 = (output923, value318, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value318 value1 value2 = (output928, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value318 value1 value2 = (output929, value318, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child923]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output923_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value317 value1 value2 = (output922, value318, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value318 value1 value2 = (output929, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value317 value1 value2 = (output930, value318, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value316 value1 value2 = (output921, value317, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value317 value1 value2 = (output930, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value316 value1 value2 = (output931, value318, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input932 value316 value1 value2 = (output932, value316, value1) := by
  rw [input932_def, output932_def]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value316 value1 value2 = (output933, value319, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value316 value1 value2 = (output932, value316, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value316 value1 value2 = (output933, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input934 value316 value1 value2 = (output934, value319, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value319 value1 value2 = (output935, value318, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input936 value318 value1 value2 = (output936, value318, value1) := by
  rw [input936_def, output936_def]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value318 value1 value2 = (output937, value318, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input938 value318 value1 value2 = (output938, value318, value1) := by
  rw [input938_def, output938_def]
  kernel_rfl

theorem node939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input939 value318 value1 value2 = (output939, value318, value1) := by
  rw [input939_def, output939_def]
  kernel_rfl

theorem node940_cond_eq
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value318 value1 value2 = (output938, value318, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value318 value1 value2 = (output939, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value318 value1 value2 = (output940, value318, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child938]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output938_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value318 value1 value2 = (output937, value318, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value318 value1 value2 = (output940, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value318 value1 value2 = (output941, value318, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child937]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output937_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value318 value1 value2 = (output936, value318, value1))
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value318 value1 value2 = (output941, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input942 value318 value1 value2 = (output942, value318, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output941_skip]
  kernel_rfl

theorem node943_cond_eq
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value319 value1 value2 = (output935, value318, value1))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value318 value1 value2 = (output942, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value319 value1 value2 = (output943, value318, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child935]
  try dsimp only
  rw [child942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output935_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value316 value1 value2 = (output934, value319, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value319 value1 value2 = (output943, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value316 value1 value2 = (output944, value318, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value316 value1 value2 = (output931, value318, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value316 value1 value2 = (output944, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value316 value1 value2 = (output945, value321, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child931]
  try dsimp only
  rw [child944]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output931_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input946 value321 value1 value2 = (output946, value318, value1) := by
  rw [input946_def, output946_def]
  kernel_rfl

theorem node947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input947 value318 value1 value2 = (output947, value322, value1) := by
  rw [input947_def, output947_def]
  kernel_rfl

theorem node948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input948 value322 value1 value2 = (output948, value322, value1) := by
  rw [input948_def, output948_def]
  kernel_rfl

theorem node949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input949 value322 value1 value2 = (output949, value322, value1) := by
  rw [input949_def, output949_def]
  kernel_rfl

theorem node950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input950 value322 value1 value2 = (output950, value323, value1) := by
  rw [input950_def, output950_def]
  kernel_rfl

theorem node951_cond_eq
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value322 value1 value2 = (output949, value322, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value322 value1 value2 = (output950, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value322 value1 value2 = (output951, value323, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child949]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output949_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value323 value1 value2 = (output952, value324, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

theorem node953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input953 value324 value1 value2 = (output953, value324, value1) := by
  rw [input953_def, output953_def]
  kernel_rfl

theorem node954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input954 value324 value1 value2 = (output954, value324, value1) := by
  rw [input954_def, output954_def]
  kernel_rfl

theorem node955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input955 value324 value1 value2 = (output955, value324, value1) := by
  rw [input955_def, output955_def]
  kernel_rfl

theorem node956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input956 value324 value1 value2 = (output956, value324, value1) := by
  rw [input956_def, output956_def]
  kernel_rfl

theorem node957_cond_eq
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value324 value1 value2 = (output955, value324, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value324 value1 value2 = (output956, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value324 value1 value2 = (output957, value324, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child955]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output955_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value324 value1 value2 = (output954, value324, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value324 value1 value2 = (output957, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value324 value1 value2 = (output958, value324, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child954]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output954_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value324 value1 value2 = (output953, value324, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value324 value1 value2 = (output958, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value324 value1 value2 = (output959, value324, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output953_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value323 value1 value2 = (output952, value324, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value324 value1 value2 = (output959, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value323 value1 value2 = (output960, value324, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child952]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output952_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value322 value1 value2 = (output951, value323, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value323 value1 value2 = (output960, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value322 value1 value2 = (output961, value324, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input962 value322 value1 value2 = (output962, value322, value1) := by
  rw [input962_def, output962_def]
  kernel_rfl

theorem node963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input963 value322 value1 value2 = (output963, value325, value1) := by
  rw [input963_def, output963_def]
  kernel_rfl

theorem node964_cond_eq
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value322 value1 value2 = (output962, value322, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value322 value1 value2 = (output963, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value322 value1 value2 = (output964, value325, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child962]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output962_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input965 value325 value1 value2 = (output965, value324, value1) := by
  rw [input965_def, output965_def]
  kernel_rfl

theorem node966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input966 value324 value1 value2 = (output966, value324, value1) := by
  rw [input966_def, output966_def]
  kernel_rfl

theorem node967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input967 value324 value1 value2 = (output967, value324, value1) := by
  rw [input967_def, output967_def]
  kernel_rfl

theorem node968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input968 value324 value1 value2 = (output968, value324, value1) := by
  rw [input968_def, output968_def]
  kernel_rfl

theorem node969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input969 value324 value1 value2 = (output969, value324, value1) := by
  rw [input969_def, output969_def]
  kernel_rfl

theorem node970_cond_eq
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value324 value1 value2 = (output968, value324, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value324 value1 value2 = (output969, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value324 value1 value2 = (output970, value324, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child968]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output968_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value324 value1 value2 = (output967, value324, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value324 value1 value2 = (output970, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value324 value1 value2 = (output971, value324, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output967_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value324 value1 value2 = (output966, value324, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value324 value1 value2 = (output971, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value324 value1 value2 = (output972, value324, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output966_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value325 value1 value2 = (output965, value324, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value324 value1 value2 = (output972, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value325 value1 value2 = (output973, value324, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child965]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output965_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value322 value1 value2 = (output964, value325, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value325 value1 value2 = (output973, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value322 value1 value2 = (output974, value324, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child964]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output964_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value322 value1 value2 = (output961, value324, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value322 value1 value2 = (output974, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value322 value1 value2 = (output975, value327, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child961]
  try dsimp only
  rw [child974]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output961_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input976 value327 value1 value2 = (output976, value328, value1) := by
  rw [input976_def, output976_def]
  kernel_rfl

theorem node977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input977 value328 value1 value2 = (output977, value324, value1) := by
  rw [input977_def, output977_def]
  kernel_rfl

theorem node978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input978 value324 value1 value2 = (output978, value329, value1) := by
  rw [input978_def, output978_def]
  kernel_rfl

theorem node979_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value328 value1 value2 = (output977, value324, value1))
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value324 value1 value2 = (output978, value329, value1)) : Flapjack.WordAlloc.removeDeadStructural input979 value328 value1 value2 = (output979, value329, value1) := by
  rw [input979_def, output979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  try dsimp only
  rw [child978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output977_skip, output978_skip]
  kernel_rfl

theorem node980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input980 value329 value1 value2 = (output980, value329, value1) := by
  rw [input980_def, output980_def]
  kernel_rfl

theorem node981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input981 value329 value1 value2 = (output981, value330, value1) := by
  rw [input981_def, output981_def]
  kernel_rfl

theorem node982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input982 value330 value1 value2 = (output982, value331, value1) := by
  rw [input982_def, output982_def]
  kernel_rfl

theorem node983_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value329 value1 value2 = (output981, value330, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value330 value1 value2 = (output982, value331, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value329 value1 value2 = (output983, value331, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input984 value331 value1 value2 = (output984, value332, value1) := by
  rw [input984_def, output984_def]
  kernel_rfl

theorem node985_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value329 value1 value2 = (output983, value331, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value331 value1 value2 = (output984, value332, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value329 value1 value2 = (output985, value332, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child983]
  try dsimp only
  rw [child984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output983_skip, output984_skip]
  kernel_rfl

theorem node986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input986 value332 value1 value2 = (output986, value333, value1) := by
  rw [input986_def, output986_def]
  kernel_rfl

theorem node987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input987 value333 value1 value2 = (output987, value334, value1) := by
  rw [input987_def, output987_def]
  kernel_rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value334 value1 value2 = (output988, value335, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

theorem node989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input989 value335 value1 value2 = (output989, value336, value1) := by
  rw [input989_def, output989_def]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value336 value1 value2 = (output990, value337, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value337 value1 value2 = (output991, value338, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input992 value338 value1 value2 = (output992, value339, value1) := by
  rw [input992_def, output992_def]
  kernel_rfl

theorem node993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input993 value339 value1 value2 = (output993, value340, value1) := by
  rw [input993_def, output993_def]
  kernel_rfl

theorem node994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input994 value340 value1 value2 = (output994, value341, value1) := by
  rw [input994_def, output994_def]
  kernel_rfl

theorem node995_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value339 value1 value2 = (output993, value340, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value340 value1 value2 = (output994, value341, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value339 value1 value2 = (output995, value341, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value338 value1 value2 = (output992, value339, value1))
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value339 value1 value2 = (output995, value341, value1)) : Flapjack.WordAlloc.removeDeadStructural input996 value338 value1 value2 = (output996, value341, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child992]
  try dsimp only
  rw [child995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output992_skip, output995_skip]
  kernel_rfl

theorem node997_cond_eq
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value337 value1 value2 = (output991, value338, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value338 value1 value2 = (output996, value341, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value337 value1 value2 = (output997, value341, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child991]
  try dsimp only
  rw [child996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output991_skip, output996_skip]
  kernel_rfl

theorem node998_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value336 value1 value2 = (output990, value337, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value337 value1 value2 = (output997, value341, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value336 value1 value2 = (output998, value341, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input999 value341 value1 value2 = (output999, value341, value1) := by
  rw [input999_def, output999_def]
  kernel_rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value341 value1 value2 = (output1000, value342, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

theorem node1001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1001 value342 value1 value2 = (output1001, value342, value1) := by
  rw [input1001_def, output1001_def]
  kernel_rfl

theorem node1002_cond_eq
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value341 value1 value2 = (output1000, value342, value1))
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value342 value1 value2 = (output1001, value342, value1)) : Flapjack.WordAlloc.removeDeadStructural input1002 value341 value1 value2 = (output1002, value342, value1) := by
  rw [input1002_def, output1002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1000]
  try dsimp only
  rw [child1001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1000_skip, output1001_skip]
  kernel_rfl

theorem node1003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value342 value1 value2 = (output1003, value343, value1) := by
  rw [input1003_def, output1003_def]
  kernel_rfl

theorem node1004_cond_eq
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value341 value1 value2 = (output1002, value342, value1))
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value342 value1 value2 = (output1003, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input1004 value341 value1 value2 = (output1004, value343, value1) := by
  rw [input1004_def, output1004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1002]
  try dsimp only
  rw [child1003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1002_skip, output1003_skip]
  kernel_rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value343 value1 value2 = (output1005, value343, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

theorem node1006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value343 value1 value2 = (output1006, value344, value1) := by
  rw [input1006_def, output1006_def]
  kernel_rfl

theorem node1007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1007 value344 value1 value2 = (output1007, value344, value1) := by
  rw [input1007_def, output1007_def]
  kernel_rfl

theorem node1008_cond_eq
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value343 value1 value2 = (output1006, value344, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value344 value1 value2 = (output1007, value344, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value343 value1 value2 = (output1008, value344, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1006]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1006_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value344 value1 value2 = (output1009, value345, value1) := by
  rw [input1009_def, output1009_def]
  kernel_rfl

theorem node1010_cond_eq
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value343 value1 value2 = (output1008, value344, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value344 value1 value2 = (output1009, value345, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value343 value1 value2 = (output1010, value345, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1008]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1008_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1011 value345 value1 value2 = (output1011, value345, value1) := by
  rw [input1011_def, output1011_def]
  kernel_rfl

theorem node1012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value345 value1 value2 = (output1012, value346, value1) := by
  rw [input1012_def, output1012_def]
  kernel_rfl

theorem node1013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1013 value346 value1 value2 = (output1013, value346, value1) := by
  rw [input1013_def, output1013_def]
  kernel_rfl

theorem node1014_cond_eq
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value345 value1 value2 = (output1012, value346, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value346 value1 value2 = (output1013, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value345 value1 value2 = (output1014, value346, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1012]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1012_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value346 value1 value2 = (output1015, value347, value1) := by
  rw [input1015_def, output1015_def]
  kernel_rfl

theorem node1016_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value345 value1 value2 = (output1014, value346, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value346 value1 value2 = (output1015, value347, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value345 value1 value2 = (output1016, value347, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value347 value1 value2 = (output1017, value347, value1) := by
  rw [input1017_def, output1017_def]
  kernel_rfl

theorem node1018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value347 value1 value2 = (output1018, value348, value1) := by
  rw [input1018_def, output1018_def]
  kernel_rfl

theorem node1019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value348 value1 value2 = (output1019, value348, value1) := by
  rw [input1019_def, output1019_def]
  kernel_rfl

theorem node1020_cond_eq
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value347 value1 value2 = (output1018, value348, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value348 value1 value2 = (output1019, value348, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value347 value1 value2 = (output1020, value348, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1018]
  try dsimp only
  rw [child1019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1018_skip, output1019_skip]
  kernel_rfl

theorem node1021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1021 value348 value1 value2 = (output1021, value349, value1) := by
  rw [input1021_def, output1021_def]
  kernel_rfl

theorem node1022_cond_eq
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value347 value1 value2 = (output1020, value348, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value348 value1 value2 = (output1021, value349, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value347 value1 value2 = (output1022, value349, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1020]
  try dsimp only
  rw [child1021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1020_skip, output1021_skip]
  kernel_rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value349 value1 value2 = (output1023, value349, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages623.Parallel
