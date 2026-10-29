import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input768 value120 value1 value119 = (output768, value120, value1) := by
  rw [input768_def, output768_def]
  kernel_rfl

theorem node769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input769 value120 value1 value119 = (output769, value120, value1) := by
  rw [input769_def, output769_def]
  kernel_rfl

theorem node770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input770 value120 value1 value119 = (output770, value120, value1) := by
  rw [input770_def, output770_def]
  kernel_rfl

theorem node771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input771 value120 value1 value119 = (output771, value120, value1) := by
  rw [input771_def, output771_def]
  kernel_rfl

theorem node772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input772 value120 value1 value119 = (output772, value120, value1) := by
  rw [input772_def, output772_def]
  kernel_rfl

theorem node773_cond_eq
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value120 value1 value119 = (output771, value120, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value120 value1 value119 = (output772, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value120 value1 value119 = (output773, value120, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child771]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output771_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value120 value1 value119 = (output770, value120, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value120 value1 value119 = (output773, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value120 value1 value119 = (output774, value120, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child770]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output770_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value120 value1 value119 = (output769, value120, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value120 value1 value119 = (output774, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value120 value1 value119 = (output775, value120, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value120 value1 value119 = (output776, value121, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

theorem node777_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value120 value1 value119 = (output775, value120, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value120 value1 value119 = (output776, value121, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value120 value1 value119 = (output777, value121, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input778 value121 value1 value119 = (output778, value118, value1) := by
  rw [input778_def, output778_def]
  kernel_rfl

theorem node779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input779 value118 value1 value119 = (output779, value121, value1) := by
  rw [input779_def, output779_def]
  kernel_rfl

theorem node780_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value121 value1 value119 = (output778, value118, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value118 value1 value119 = (output779, value121, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value121 value1 value119 = (output780, value121, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input781 value121 value1 value119 = (output781, value122, value1) := by
  rw [input781_def, output781_def]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value122 value1 value119 = (output782, value123, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value123 value1 value119 = (output783, value124, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value122 value1 value119 = (output782, value123, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value123 value1 value119 = (output783, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value122 value1 value119 = (output784, value124, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input785 value124 value1 value119 = (output785, value125, value1) := by
  rw [input785_def, output785_def]
  kernel_rfl

theorem node786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input786 value125 value1 value119 = (output786, value126, value1) := by
  rw [input786_def, output786_def]
  kernel_rfl

theorem node787_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value124 value1 value119 = (output785, value125, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value125 value1 value119 = (output786, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value124 value1 value119 = (output787, value126, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input788 value126 value1 value119 = (output788, value127, value1) := by
  rw [input788_def, output788_def]
  kernel_rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value127 value1 value119 = (output789, value128, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value128 value1 value119 = (output790, value129, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value129 value1 value119 = (output791, value130, value1) := by
  rw [input791_def, output791_def]
  kernel_rfl

theorem node792_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value128 value1 value119 = (output790, value129, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value129 value1 value119 = (output791, value130, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value128 value1 value119 = (output792, value130, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value130 value1 value119 = (output793, value131, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input794 value131 value1 value119 = (output794, value132, value1) := by
  rw [input794_def, output794_def]
  kernel_rfl

theorem node795_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value130 value1 value119 = (output793, value131, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value131 value1 value119 = (output794, value132, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value130 value1 value119 = (output795, value132, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value128 value1 value119 = (output792, value130, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value130 value1 value119 = (output795, value132, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value128 value1 value119 = (output796, value132, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value127 value1 value119 = (output789, value128, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value128 value1 value119 = (output796, value132, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value127 value1 value119 = (output797, value132, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value132 value1 value119 = (output798, value133, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value133 value1 value119 = (output799, value133, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

theorem node800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input800 value133 value1 value119 = (output800, value134, value1) := by
  rw [input800_def, output800_def]
  kernel_rfl

theorem node801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input801 value134 value1 value119 = (output801, value135, value1) := by
  rw [input801_def, output801_def]
  kernel_rfl

theorem node802_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value133 value1 value119 = (output800, value134, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value134 value1 value119 = (output801, value135, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value133 value1 value119 = (output802, value135, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value135 value1 value119 = (output803, value136, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

theorem node804_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value133 value1 value119 = (output802, value135, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value135 value1 value119 = (output803, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value133 value1 value119 = (output804, value136, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output803_skip]
  kernel_rfl

theorem node805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input805 value136 value1 value119 = (output805, value137, value1) := by
  rw [input805_def, output805_def]
  kernel_rfl

theorem node806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input806 value137 value1 value119 = (output806, value137, value1) := by
  rw [input806_def, output806_def]
  kernel_rfl

theorem node807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input807 value137 value1 value119 = (output807, value137, value1) := by
  rw [input807_def, output807_def]
  kernel_rfl

theorem node808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input808 value137 value1 value119 = (output808, value138, value1) := by
  rw [input808_def, output808_def]
  kernel_rfl

theorem node809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input809 value138 value1 value119 = (output809, value139, value1) := by
  rw [input809_def, output809_def]
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value139 value1 value119 = (output810, value140, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value140 value1 value119 = (output811, value141, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value141 value1 value119 = (output812, value142, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

theorem node813_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value140 value1 value119 = (output811, value141, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value141 value1 value119 = (output812, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value140 value1 value119 = (output813, value142, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value139 value1 value119 = (output810, value140, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value140 value1 value119 = (output813, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value139 value1 value119 = (output814, value142, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value138 value1 value119 = (output809, value139, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value139 value1 value119 = (output814, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value138 value1 value119 = (output815, value142, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value137 value1 value119 = (output808, value138, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value138 value1 value119 = (output815, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value137 value1 value119 = (output816, value142, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input817 value142 value1 value119 = (output817, value142, value1) := by
  rw [input817_def, output817_def]
  kernel_rfl

theorem node818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input818 value142 value1 value119 = (output818, value142, value1) := by
  rw [input818_def, output818_def]
  kernel_rfl

theorem node819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input819 value142 value1 value119 = (output819, value142, value1) := by
  rw [input819_def, output819_def]
  kernel_rfl

theorem node820_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value142 value1 value119 = (output818, value142, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value142 value1 value119 = (output819, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value142 value1 value119 = (output820, value142, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value142 value1 value119 = (output817, value142, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value142 value1 value119 = (output820, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value142 value1 value119 = (output821, value142, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child817]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output817_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value137 value1 value119 = (output816, value142, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value142 value1 value119 = (output821, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value137 value1 value119 = (output822, value142, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value137 value1 value119 = (output807, value137, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value137 value1 value119 = (output822, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value137 value1 value119 = (output823, value142, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value137 value1 value119 = (output806, value137, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value137 value1 value119 = (output823, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value137 value1 value119 = (output824, value142, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value136 value1 value119 = (output805, value137, value1))
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value137 value1 value119 = (output824, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input825 value136 value1 value119 = (output825, value142, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child805]
  try dsimp only
  rw [child824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output805_skip, output824_skip]
  kernel_rfl

theorem node826_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value133 value1 value119 = (output804, value136, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value136 value1 value119 = (output825, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value133 value1 value119 = (output826, value142, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value133 value1 value119 = (output799, value133, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value133 value1 value119 = (output826, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value133 value1 value119 = (output827, value142, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value132 value1 value119 = (output798, value133, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value133 value1 value119 = (output827, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value132 value1 value119 = (output828, value142, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value127 value1 value119 = (output797, value132, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value132 value1 value119 = (output828, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value127 value1 value119 = (output829, value142, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value126 value1 value119 = (output788, value127, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value127 value1 value119 = (output829, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value126 value1 value119 = (output830, value142, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value124 value1 value119 = (output787, value126, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value126 value1 value119 = (output830, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value124 value1 value119 = (output831, value142, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child787]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output787_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value122 value1 value119 = (output784, value124, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value124 value1 value119 = (output831, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value122 value1 value119 = (output832, value142, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value121 value1 value119 = (output781, value122, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value122 value1 value119 = (output832, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value121 value1 value119 = (output833, value142, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value121 value1 value119 = (output780, value121, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value121 value1 value119 = (output833, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value121 value1 value119 = (output834, value142, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value120 value1 value119 = (output777, value121, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value121 value1 value119 = (output834, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value120 value1 value119 = (output835, value142, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child777]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input836 value120 value1 value119 = (output836, value120, value1) := by
  rw [input836_def, output836_def]
  kernel_rfl

theorem node837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input837 value120 value1 value119 = (output837, value120, value1) := by
  rw [input837_def, output837_def]
  kernel_rfl

theorem node838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input838 value120 value1 value119 = (output838, value120, value1) := by
  rw [input838_def, output838_def]
  kernel_rfl

theorem node839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input839 value120 value1 value119 = (output839, value120, value1) := by
  rw [input839_def, output839_def]
  kernel_rfl

theorem node840_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value120 value1 value119 = (output838, value120, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value120 value1 value119 = (output839, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value120 value1 value119 = (output840, value120, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value120 value1 value119 = (output837, value120, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value120 value1 value119 = (output840, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value120 value1 value119 = (output841, value120, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child837]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output837_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value120 value1 value119 = (output836, value120, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value120 value1 value119 = (output841, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value120 value1 value119 = (output842, value120, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child836]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output836_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input843 value120 value1 value119 = (output843, value142, value1) := by
  rw [input843_def, output843_def]
  kernel_rfl

theorem node844_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value120 value1 value119 = (output842, value120, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value120 value1 value119 = (output843, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value120 value1 value119 = (output844, value142, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output842_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input845 value142 value1 value119 = (output845, value117, value1) := by
  rw [input845_def, output845_def]
  kernel_rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value117 value1 value119 = (output846, value143, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

theorem node847_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value142 value1 value119 = (output845, value117, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value117 value1 value119 = (output846, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value142 value1 value119 = (output847, value143, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input848 value143 value1 value119 = (output848, value143, value1) := by
  rw [input848_def, output848_def]
  kernel_rfl

theorem node849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input849 value143 value1 value119 = (output849, value143, value1) := by
  rw [input849_def, output849_def]
  kernel_rfl

theorem node850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input850 value143 value1 value119 = (output850, value143, value1) := by
  rw [input850_def, output850_def]
  kernel_rfl

theorem node851_cond_eq
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value143 value1 value119 = (output849, value143, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value143 value1 value119 = (output850, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value143 value1 value119 = (output851, value143, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child849]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output849_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value143 value1 value119 = (output848, value143, value1))
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value143 value1 value119 = (output851, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input852 value143 value1 value119 = (output852, value143, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output851_skip]
  kernel_rfl

theorem node853_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value142 value1 value119 = (output847, value143, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value143 value1 value119 = (output852, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value142 value1 value119 = (output853, value143, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value120 value1 value119 = (output844, value142, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value142 value1 value119 = (output853, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value120 value1 value119 = (output854, value143, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value120 value1 value119 = (output835, value142, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value120 value1 value119 = (output854, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value120 value1 value119 = (output855, value142, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child835]
  try dsimp only
  rw [child854]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input856 value142 value1 value119 = (output856, value145, value1) := by
  rw [input856_def, output856_def]
  kernel_rfl

theorem node857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input857 value145 value1 value119 = (output857, value118, value1) := by
  rw [input857_def, output857_def]
  kernel_rfl

theorem node858_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value142 value1 value119 = (output856, value145, value1))
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value145 value1 value119 = (output857, value118, value1)) : Flapjack.WordAlloc.removeDeadStructural input858 value142 value1 value119 = (output858, value118, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output857_skip]
  kernel_rfl

theorem node859_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value120 value1 value119 = (output855, value142, value1))
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value142 value1 value119 = (output858, value118, value1)) : Flapjack.WordAlloc.removeDeadStructural input859 value120 value1 value119 = (output859, value118, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output858_skip]
  kernel_rfl

theorem node860_cond_eq
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value120 value1 value119 = (output768, value120, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value120 value1 value119 = (output859, value118, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value120 value1 value119 = (output860, value118, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child768]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output768_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value118 value1 value119 = (output767, value120, value1))
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value120 value1 value119 = (output860, value118, value1)) : Flapjack.WordAlloc.removeDeadStructural input861 value118 value1 value119 = (output861, value118, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output860_skip]
  kernel_rfl

theorem node862_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value118 value1 value119 = (output861, value118, value1)) : Flapjack.WordAlloc.removeDeadStructural input862 value117 value1 value2 = (output862, value118, value1) := by
  rw [input862_def, output862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value119 = (value118, value117) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child861
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input863 value118 value1 value2 = (output863, value146, value1) := by
  rw [input863_def, output863_def]
  kernel_rfl

theorem node864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input864 value146 value1 value2 = (output864, value146, value1) := by
  rw [input864_def, output864_def]
  kernel_rfl

theorem node865_cond_eq
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value118 value1 value2 = (output863, value146, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value146 value1 value2 = (output864, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value118 value1 value2 = (output865, value146, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child863]
  try dsimp only
  rw [child864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output863_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value117 value1 value2 = (output862, value118, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value118 value1 value2 = (output865, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value117 value1 value2 = (output866, value146, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value146 value1 value2 = (output867, value146, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input868 value146 value1 value2 = (output868, value147, value1) := by
  rw [input868_def, output868_def]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value147 value1 value2 = (output869, value148, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input870 value148 value1 value2 = (output870, value149, value1) := by
  rw [input870_def, output870_def]
  kernel_rfl

theorem node871_cond_eq
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value147 value1 value2 = (output869, value148, value1))
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value148 value1 value2 = (output870, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input871 value147 value1 value2 = (output871, value149, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child869]
  try dsimp only
  rw [child870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output869_skip, output870_skip]
  kernel_rfl

theorem node872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input872 value149 value1 value2 = (output872, value150, value1) := by
  rw [input872_def, output872_def]
  kernel_rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value150 value1 value2 = (output873, value151, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

theorem node874_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value149 value1 value2 = (output872, value150, value1))
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value150 value1 value2 = (output873, value151, value1)) : Flapjack.WordAlloc.removeDeadStructural input874 value149 value1 value2 = (output874, value151, value1) := by
  rw [input874_def, output874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output873_skip]
  kernel_rfl

theorem node875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input875 value151 value1 value2 = (output875, value152, value1) := by
  rw [input875_def, output875_def]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value152 value1 value2 = (output876, value153, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value151 value1 value2 = (output875, value152, value1))
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value152 value1 value2 = (output876, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input877 value151 value1 value2 = (output877, value153, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output876_skip]
  kernel_rfl

theorem node878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input878 value153 value1 value2 = (output878, value154, value1) := by
  rw [input878_def, output878_def]
  kernel_rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value154 value1 value2 = (output879, value155, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

theorem node880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input880 value155 value1 value2 = (output880, value156, value1) := by
  rw [input880_def, output880_def]
  kernel_rfl

theorem node881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input881 value156 value1 value2 = (output881, value157, value1) := by
  rw [input881_def, output881_def]
  kernel_rfl

theorem node882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input882 value157 value1 value2 = (output882, value158, value1) := by
  rw [input882_def, output882_def]
  kernel_rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value158 value1 value2 = (output883, value159, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value159 value1 value2 = (output884, value160, value1) := by
  rw [input884_def, output884_def]
  kernel_rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value160 value1 value2 = (output885, value161, value1) := by
  rw [input885_def, output885_def]
  kernel_rfl

theorem node886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input886 value161 value1 value2 = (output886, value162, value1) := by
  rw [input886_def, output886_def]
  kernel_rfl

theorem node887_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value160 value1 value2 = (output885, value161, value1))
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value161 value1 value2 = (output886, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input887 value160 value1 value2 = (output887, value162, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output886_skip]
  kernel_rfl

theorem node888_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value159 value1 value2 = (output884, value160, value1))
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value160 value1 value2 = (output887, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input888 value159 value1 value2 = (output888, value162, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  try dsimp only
  rw [child887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output887_skip]
  kernel_rfl

theorem node889_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value158 value1 value2 = (output883, value159, value1))
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value159 value1 value2 = (output888, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input889 value158 value1 value2 = (output889, value162, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output888_skip]
  kernel_rfl

theorem node890_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value157 value1 value2 = (output882, value158, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value158 value1 value2 = (output889, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value157 value1 value2 = (output890, value162, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value156 value1 value2 = (output881, value157, value1))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value157 value1 value2 = (output890, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input891 value156 value1 value2 = (output891, value162, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input892 value162 value1 value2 = (output892, value163, value1) := by
  rw [input892_def, output892_def]
  kernel_rfl

theorem node893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input893 value163 value1 value2 = (output893, value164, value1) := by
  rw [input893_def, output893_def]
  kernel_rfl

theorem node894_cond_eq
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value162 value1 value2 = (output892, value163, value1))
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value163 value1 value2 = (output893, value164, value1)) : Flapjack.WordAlloc.removeDeadStructural input894 value162 value1 value2 = (output894, value164, value1) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child892]
  try dsimp only
  rw [child893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output892_skip, output893_skip]
  kernel_rfl

theorem node895_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value156 value1 value2 = (output891, value162, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value162 value1 value2 = (output894, value164, value1)) : Flapjack.WordAlloc.removeDeadStructural input895 value156 value1 value2 = (output895, value164, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value155 value1 value2 = (output880, value156, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value156 value1 value2 = (output895, value164, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value155 value1 value2 = (output896, value164, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value164 value1 value2 = (output897, value165, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value165 value1 value2 = (output898, value166, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value164 value1 value2 = (output897, value165, value1))
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value165 value1 value2 = (output898, value166, value1)) : Flapjack.WordAlloc.removeDeadStructural input899 value164 value1 value2 = (output899, value166, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output898_skip]
  kernel_rfl

theorem node900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input900 value166 value1 value2 = (output900, value167, value1) := by
  rw [input900_def, output900_def]
  kernel_rfl

theorem node901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input901 value167 value1 value2 = (output901, value168, value1) := by
  rw [input901_def, output901_def]
  kernel_rfl

theorem node902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input902 value168 value1 value2 = (output902, value169, value1) := by
  rw [input902_def, output902_def]
  kernel_rfl

theorem node903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input903 value169 value1 value2 = (output903, value170, value1) := by
  rw [input903_def, output903_def]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value170 value1 value2 = (output904, value171, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input905 value171 value1 value2 = (output905, value172, value1) := by
  rw [input905_def, output905_def]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value172 value1 value2 = (output906, value173, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value173 value1 value2 = (output907, value174, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

theorem node908_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value172 value1 value2 = (output906, value173, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value173 value1 value2 = (output907, value174, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value172 value1 value2 = (output908, value174, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value171 value1 value2 = (output905, value172, value1))
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value172 value1 value2 = (output908, value174, value1)) : Flapjack.WordAlloc.removeDeadStructural input909 value171 value1 value2 = (output909, value174, value1) := by
  rw [input909_def, output909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output908_skip]
  kernel_rfl

theorem node910_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value170 value1 value2 = (output904, value171, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value171 value1 value2 = (output909, value174, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value170 value1 value2 = (output910, value174, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value169 value1 value2 = (output903, value170, value1))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value170 value1 value2 = (output910, value174, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value169 value1 value2 = (output911, value174, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value168 value1 value2 = (output902, value169, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value169 value1 value2 = (output911, value174, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value168 value1 value2 = (output912, value174, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value174 value1 value2 = (output913, value175, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input914 value175 value1 value2 = (output914, value176, value1) := by
  rw [input914_def, output914_def]
  kernel_rfl

theorem node915_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value174 value1 value2 = (output913, value175, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value175 value1 value2 = (output914, value176, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value174 value1 value2 = (output915, value176, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value168 value1 value2 = (output912, value174, value1))
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value174 value1 value2 = (output915, value176, value1)) : Flapjack.WordAlloc.removeDeadStructural input916 value168 value1 value2 = (output916, value176, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output915_skip]
  kernel_rfl

theorem node917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input917 value176 value1 value2 = (output917, value176, value1) := by
  rw [input917_def, output917_def]
  kernel_rfl

theorem node918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input918 value176 value1 value2 = (output918, value177, value1) := by
  rw [input918_def, output918_def]
  kernel_rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value177 value1 value2 = (output919, value178, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

theorem node920_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value176 value1 value2 = (output918, value177, value1))
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value177 value1 value2 = (output919, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input920 value176 value1 value2 = (output920, value178, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output919_skip]
  kernel_rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value178 value1 value2 = (output921, value179, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

theorem node922_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value176 value1 value2 = (output920, value178, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value178 value1 value2 = (output921, value179, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value176 value1 value2 = (output922, value179, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value179 value1 value2 = (output923, value180, value1) := by
  rw [input923_def, output923_def]
  kernel_rfl

theorem node924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input924 value180 value1 value2 = (output924, value181, value1) := by
  rw [input924_def, output924_def]
  kernel_rfl

theorem node925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input925 value181 value1 value2 = (output925, value182, value1) := by
  rw [input925_def, output925_def]
  kernel_rfl

theorem node926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input926 value182 value1 value2 = (output926, value183, value1) := by
  rw [input926_def, output926_def]
  kernel_rfl

theorem node927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input927 value183 value1 value2 = (output927, value184, value1) := by
  rw [input927_def, output927_def]
  kernel_rfl

theorem node928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input928 value184 value1 value2 = (output928, value185, value1) := by
  rw [input928_def, output928_def]
  kernel_rfl

theorem node929_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value183 value1 value2 = (output927, value184, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value184 value1 value2 = (output928, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value183 value1 value2 = (output929, value185, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value182 value1 value2 = (output926, value183, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value183 value1 value2 = (output929, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value182 value1 value2 = (output930, value185, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output926_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value181 value1 value2 = (output925, value182, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value182 value1 value2 = (output930, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value181 value1 value2 = (output931, value185, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child925]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output925_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value180 value1 value2 = (output924, value181, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value181 value1 value2 = (output931, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value180 value1 value2 = (output932, value185, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value185 value1 value2 = (output933, value186, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

theorem node934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input934 value186 value1 value2 = (output934, value187, value1) := by
  rw [input934_def, output934_def]
  kernel_rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value187 value1 value2 = (output935, value188, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

theorem node936_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value186 value1 value2 = (output934, value187, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value187 value1 value2 = (output935, value188, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value186 value1 value2 = (output936, value188, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input937 value188 value1 value2 = (output937, value188, value1) := by
  rw [input937_def, output937_def]
  kernel_rfl

theorem node938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input938 value188 value1 value2 = (output938, value188, value1) := by
  rw [input938_def, output938_def]
  kernel_rfl

theorem node939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input939 value188 value1 value2 = (output939, value189, value1) := by
  rw [input939_def, output939_def]
  kernel_rfl

theorem node940_cond_eq
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value188 value1 value2 = (output938, value188, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value188 value1 value2 = (output939, value189, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value188 value1 value2 = (output940, value189, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child938]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output938_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input941 value189 value1 value2 = (output941, value190, value1) := by
  rw [input941_def, output941_def]
  kernel_rfl

theorem node942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input942 value190 value1 value2 = (output942, value190, value1) := by
  rw [input942_def, output942_def]
  kernel_rfl

theorem node943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input943 value190 value1 value2 = (output943, value190, value1) := by
  rw [input943_def, output943_def]
  kernel_rfl

theorem node944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input944 value190 value1 value2 = (output944, value190, value1) := by
  rw [input944_def, output944_def]
  kernel_rfl

theorem node945_cond_eq
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value190 value1 value2 = (output943, value190, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value190 value1 value2 = (output944, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value190 value1 value2 = (output945, value190, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child943]
  try dsimp only
  rw [child944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output943_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value190 value1 value2 = (output942, value190, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value190 value1 value2 = (output945, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value190 value1 value2 = (output946, value190, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output942_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value189 value1 value2 = (output941, value190, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value190 value1 value2 = (output946, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value189 value1 value2 = (output947, value190, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value188 value1 value2 = (output940, value189, value1))
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value189 value1 value2 = (output947, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input948 value188 value1 value2 = (output948, value190, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child940]
  try dsimp only
  rw [child947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output940_skip, output947_skip]
  kernel_rfl

theorem node949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input949 value188 value1 value2 = (output949, value188, value1) := by
  rw [input949_def, output949_def]
  kernel_rfl

theorem node950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input950 value188 value1 value2 = (output950, value191, value1) := by
  rw [input950_def, output950_def]
  kernel_rfl

theorem node951_cond_eq
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value188 value1 value2 = (output949, value188, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value188 value1 value2 = (output950, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value188 value1 value2 = (output951, value191, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child949]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output949_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value191 value1 value2 = (output952, value191, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

theorem node953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input953 value191 value1 value2 = (output953, value191, value1) := by
  rw [input953_def, output953_def]
  kernel_rfl

theorem node954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input954 value191 value1 value2 = (output954, value191, value1) := by
  rw [input954_def, output954_def]
  kernel_rfl

theorem node955_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value191 value1 value2 = (output953, value191, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value191 value1 value2 = (output954, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value191 value1 value2 = (output955, value191, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output953_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value191 value1 value2 = (output952, value191, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value191 value1 value2 = (output955, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value191 value1 value2 = (output956, value191, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child952]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output952_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value188 value1 value2 = (output951, value191, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value191 value1 value2 = (output956, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value188 value1 value2 = (output957, value191, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value188 value1 value2 = (output948, value190, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value188 value1 value2 = (output957, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value188 value1 value2 = (output958, value193, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child948]
  try dsimp only
  rw [child957]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output948_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input959 value193 value1 value2 = (output959, value194, value1) := by
  rw [input959_def, output959_def]
  kernel_rfl

theorem node960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input960 value194 value1 value2 = (output960, value191, value1) := by
  rw [input960_def, output960_def]
  kernel_rfl

theorem node961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input961 value191 value1 value2 = (output961, value195, value1) := by
  rw [input961_def, output961_def]
  kernel_rfl

theorem node962_cond_eq
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value194 value1 value2 = (output960, value191, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value191 value1 value2 = (output961, value195, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value194 value1 value2 = (output962, value195, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child960]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output960_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input963 value195 value1 value2 = (output963, value196, value1) := by
  rw [input963_def, output963_def]
  kernel_rfl

theorem node964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input964 value196 value1 value2 = (output964, value196, value1) := by
  rw [input964_def, output964_def]
  kernel_rfl

theorem node965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input965 value196 value1 value2 = (output965, value196, value1) := by
  rw [input965_def, output965_def]
  kernel_rfl

theorem node966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input966 value196 value1 value2 = (output966, value196, value1) := by
  rw [input966_def, output966_def]
  kernel_rfl

theorem node967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input967 value196 value1 value2 = (output967, value196, value1) := by
  rw [input967_def, output967_def]
  kernel_rfl

theorem node968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input968 value196 value1 value2 = (output968, value196, value1) := by
  rw [input968_def, output968_def]
  kernel_rfl

theorem node969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input969 value196 value1 value2 = (output969, value196, value1) := by
  rw [input969_def, output969_def]
  kernel_rfl

theorem node970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input970 value196 value1 value2 = (output970, value196, value1) := by
  rw [input970_def, output970_def]
  kernel_rfl

theorem node971_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value196 value1 value2 = (output969, value196, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value196 value1 value2 = (output970, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value196 value1 value2 = (output971, value196, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value196 value1 value2 = (output968, value196, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value196 value1 value2 = (output971, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value196 value1 value2 = (output972, value196, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child968]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output968_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value196 value1 value2 = (output967, value196, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value196 value1 value2 = (output972, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value196 value1 value2 = (output973, value196, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output967_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value196 value1 value2 = (output966, value196, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value196 value1 value2 = (output973, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value196 value1 value2 = (output974, value196, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output966_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value196 value1 value2 = (output965, value196, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value196 value1 value2 = (output974, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value196 value1 value2 = (output975, value196, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child965]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output965_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input976 value196 value1 value2 = (output976, value197, value1) := by
  rw [input976_def, output976_def]
  kernel_rfl

theorem node977_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value196 value1 value2 = (output975, value196, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value196 value1 value2 = (output976, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value196 value1 value2 = (output977, value197, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output976_skip]
  kernel_rfl

theorem node978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input978 value197 value1 value2 = (output978, value197, value1) := by
  rw [input978_def, output978_def]
  kernel_rfl

theorem node979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input979 value197 value1 value2 = (output979, value198, value1) := by
  rw [input979_def, output979_def]
  kernel_rfl

theorem node980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input980 value198 value1 value2 = (output980, value199, value1) := by
  rw [input980_def, output980_def]
  kernel_rfl

theorem node981_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value197 value1 value2 = (output979, value198, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value198 value1 value2 = (output980, value199, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value197 value1 value2 = (output981, value199, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output979_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input982 value199 value1 value2 = (output982, value200, value1) := by
  rw [input982_def, output982_def]
  kernel_rfl

theorem node983_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value197 value1 value2 = (output981, value199, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value199 value1 value2 = (output982, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value197 value1 value2 = (output983, value200, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input984 value200 value1 value2 = (output984, value201, value1) := by
  rw [input984_def, output984_def]
  kernel_rfl

theorem node985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input985 value201 value1 value2 = (output985, value202, value1) := by
  rw [input985_def, output985_def]
  kernel_rfl

theorem node986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input986 value202 value1 value2 = (output986, value202, value1) := by
  rw [input986_def, output986_def]
  kernel_rfl

theorem node987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input987 value202 value1 value2 = (output987, value202, value1) := by
  rw [input987_def, output987_def]
  kernel_rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value202 value1 value2 = (output988, value202, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

theorem node989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input989 value202 value1 value2 = (output989, value202, value1) := by
  rw [input989_def, output989_def]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value202 value1 value2 = (output990, value202, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value202 value1 value2 = (output991, value202, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input992 value202 value1 value2 = (output992, value202, value1) := by
  rw [input992_def, output992_def]
  kernel_rfl

theorem node993_cond_eq
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value202 value1 value2 = (output991, value202, value1))
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value202 value1 value2 = (output992, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input993 value202 value1 value2 = (output993, value202, value1) := by
  rw [input993_def, output993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child991]
  try dsimp only
  rw [child992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output991_skip, output992_skip]
  kernel_rfl

theorem node994_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value202 value1 value2 = (output990, value202, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value202 value1 value2 = (output993, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value202 value1 value2 = (output994, value202, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value202 value1 value2 = (output989, value202, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value202 value1 value2 = (output994, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value202 value1 value2 = (output995, value202, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value202 value1 value2 = (output988, value202, value1))
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value202 value1 value2 = (output995, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input996 value202 value1 value2 = (output996, value202, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  try dsimp only
  rw [child995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output995_skip]
  kernel_rfl

theorem node997_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value202 value1 value2 = (output987, value202, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value202 value1 value2 = (output996, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value202 value1 value2 = (output997, value202, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output996_skip]
  kernel_rfl

theorem node998_cond_eq
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value202 value1 value2 = (output986, value202, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value202 value1 value2 = (output997, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value202 value1 value2 = (output998, value202, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child986]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output986_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value201 value1 value2 = (output985, value202, value1))
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value202 value1 value2 = (output998, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input999 value201 value1 value2 = (output999, value202, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child985]
  try dsimp only
  rw [child998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output985_skip, output998_skip]
  kernel_rfl

theorem node1000_cond_eq
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value200 value1 value2 = (output984, value201, value1))
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value201 value1 value2 = (output999, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input1000 value200 value1 value2 = (output1000, value202, value1) := by
  rw [input1000_def, output1000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child984]
  try dsimp only
  rw [child999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output984_skip, output999_skip]
  kernel_rfl

theorem node1001_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value197 value1 value2 = (output983, value200, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value200 value1 value2 = (output1000, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value197 value1 value2 = (output1001, value202, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child983]
  try dsimp only
  rw [child1000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output983_skip, output1000_skip]
  kernel_rfl

theorem node1002_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value197 value1 value2 = (output978, value197, value1))
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value197 value1 value2 = (output1001, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input1002 value197 value1 value2 = (output1002, value202, value1) := by
  rw [input1002_def, output1002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  try dsimp only
  rw [child1001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output978_skip, output1001_skip]
  kernel_rfl

theorem node1003_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value196 value1 value2 = (output977, value197, value1))
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value197 value1 value2 = (output1002, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input1003 value196 value1 value2 = (output1003, value202, value1) := by
  rw [input1003_def, output1003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  try dsimp only
  rw [child1002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output977_skip, output1002_skip]
  kernel_rfl

theorem node1004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value196 value1 value2 = (output1004, value196, value1) := by
  rw [input1004_def, output1004_def]
  kernel_rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value196 value1 value2 = (output1005, value196, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

theorem node1006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value196 value1 value2 = (output1006, value196, value1) := by
  rw [input1006_def, output1006_def]
  kernel_rfl

theorem node1007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1007 value196 value1 value2 = (output1007, value196, value1) := by
  rw [input1007_def, output1007_def]
  kernel_rfl

theorem node1008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1008 value196 value1 value2 = (output1008, value196, value1) := by
  rw [input1008_def, output1008_def]
  kernel_rfl

theorem node1009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value196 value1 value2 = (output1009, value196, value1) := by
  rw [input1009_def, output1009_def]
  kernel_rfl

theorem node1010_cond_eq
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value196 value1 value2 = (output1008, value196, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value196 value1 value2 = (output1009, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value196 value1 value2 = (output1010, value196, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1008]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1008_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value196 value1 value2 = (output1007, value196, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value196 value1 value2 = (output1010, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value196 value1 value2 = (output1011, value196, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1007]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1007_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value196 value1 value2 = (output1006, value196, value1))
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value196 value1 value2 = (output1011, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input1012 value196 value1 value2 = (output1012, value196, value1) := by
  rw [input1012_def, output1012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1006]
  try dsimp only
  rw [child1011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1006_skip, output1011_skip]
  kernel_rfl

theorem node1013_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value196 value1 value2 = (output1005, value196, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value196 value1 value2 = (output1012, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value196 value1 value2 = (output1013, value196, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1012_skip]
  kernel_rfl

theorem node1014_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value196 value1 value2 = (output1004, value196, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value196 value1 value2 = (output1013, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value196 value1 value2 = (output1014, value196, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value196 value1 value2 = (output1015, value203, value1) := by
  rw [input1015_def, output1015_def]
  kernel_rfl

theorem node1016_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value196 value1 value2 = (output1014, value196, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value196 value1 value2 = (output1015, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value196 value1 value2 = (output1016, value203, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value203 value1 value2 = (output1017, value203, value1) := by
  rw [input1017_def, output1017_def]
  kernel_rfl

theorem node1018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value203 value1 value2 = (output1018, value203, value1) := by
  rw [input1018_def, output1018_def]
  kernel_rfl

theorem node1019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value203 value1 value2 = (output1019, value203, value1) := by
  rw [input1019_def, output1019_def]
  kernel_rfl

theorem node1020_cond_eq
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value203 value1 value2 = (output1018, value203, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value203 value1 value2 = (output1019, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value203 value1 value2 = (output1020, value203, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1018]
  try dsimp only
  rw [child1019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1018_skip, output1019_skip]
  kernel_rfl

theorem node1021_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value203 value1 value2 = (output1017, value203, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value203 value1 value2 = (output1020, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value203 value1 value2 = (output1021, value203, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  try dsimp only
  rw [child1020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1020_skip]
  kernel_rfl

theorem node1022_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value196 value1 value2 = (output1016, value203, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value203 value1 value2 = (output1021, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value196 value1 value2 = (output1022, value203, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child1021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output1021_skip]
  kernel_rfl

theorem node1023_cond_eq
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value196 value1 value2 = (output1003, value202, value1))
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value196 value1 value2 = (output1022, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1023 value196 value1 value2 = (output1023, value205, value1) := by
  rw [input1023_def, output1023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1003]
  try dsimp only
  rw [child1022]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1003_skip, output1022_skip]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
