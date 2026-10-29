import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages810.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages810.Parallel
theorem node768_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value109 value1 value2 = (output137, value110, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value110 value1 value2 = (output767, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value109 value1 value2 = (output768, value374, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value108 value1 value2 = (output136, value109, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value109 value1 value2 = (output768, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value108 value1 value2 = (output769, value374, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value107 value1 value2 = (output135, value108, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value108 value1 value2 = (output769, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value107 value1 value2 = (output770, value374, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value106 value1 value2 = (output134, value107, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value107 value1 value2 = (output770, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value106 value1 value2 = (output771, value374, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value105 value1 value2 = (output133, value106, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value106 value1 value2 = (output771, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value105 value1 value2 = (output772, value374, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value104 value1 value2 = (output132, value105, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value105 value1 value2 = (output772, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value104 value1 value2 = (output773, value374, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value101 value1 value2 = (output131, value104, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value104 value1 value2 = (output773, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value101 value1 value2 = (output774, value374, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value101 value1 value2 = (output126, value101, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value101 value1 value2 = (output774, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value101 value1 value2 = (output775, value374, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value100 value1 value2 = (output125, value101, value1))
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value101 value1 value2 = (output775, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input776 value100 value1 value2 = (output776, value374, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output775_skip]
  kernel_rfl

theorem node777_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value99 value1 value2 = (output124, value100, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value100 value1 value2 = (output776, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value99 value1 value2 = (output777, value374, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value98 value1 value2 = (output123, value99, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value99 value1 value2 = (output777, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value98 value1 value2 = (output778, value374, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value97 value1 value2 = (output122, value98, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value98 value1 value2 = (output778, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value97 value1 value2 = (output779, value374, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value96 value1 value2 = (output121, value97, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value97 value1 value2 = (output779, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value96 value1 value2 = (output780, value374, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value95 value1 value2 = (output120, value96, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value96 value1 value2 = (output780, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value95 value1 value2 = (output781, value374, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value94 value1 value2 = (output119, value95, value1))
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value95 value1 value2 = (output781, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input782 value94 value1 value2 = (output782, value374, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output781_skip]
  kernel_rfl

theorem node783_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value93 value1 value2 = (output118, value94, value1))
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value94 value1 value2 = (output782, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input783 value93 value1 value2 = (output783, value374, value1) := by
  rw [input783_def, output783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output782_skip]
  kernel_rfl

theorem node784_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value92 value1 value2 = (output117, value93, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value93 value1 value2 = (output783, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value92 value1 value2 = (output784, value374, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value91 value1 value2 = (output116, value92, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value92 value1 value2 = (output784, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value91 value1 value2 = (output785, value374, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value90 value1 value2 = (output115, value91, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value91 value1 value2 = (output785, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value90 value1 value2 = (output786, value374, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value89 value1 value2 = (output114, value90, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value90 value1 value2 = (output786, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value89 value1 value2 = (output787, value374, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value86 value1 value2 = (output113, value89, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value89 value1 value2 = (output787, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value86 value1 value2 = (output788, value374, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value86, value1))
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value86 value1 value2 = (output788, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input789 value86 value1 value2 = (output789, value374, value1) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output788_skip]
  kernel_rfl

theorem node790_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value86 value1 value2 = (output789, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input790 value85 value1 value2 = (output790, value374, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value84 value1 value2 = (output106, value85, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value85 value1 value2 = (output790, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value84 value1 value2 = (output791, value374, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value83 value1 value2 = (output105, value84, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value84 value1 value2 = (output791, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value83 value1 value2 = (output792, value374, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value82 value1 value2 = (output104, value83, value1))
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value83 value1 value2 = (output792, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input793 value82 value1 value2 = (output793, value374, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output792_skip]
  kernel_rfl

theorem node794_cond_eq
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value81 value1 value2 = (output103, value82, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value82 value1 value2 = (output793, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value81 value1 value2 = (output794, value374, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child103]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output103_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value80 value1 value2 = (output102, value81, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value81 value1 value2 = (output794, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value80 value1 value2 = (output795, value374, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child102]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output102_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value79 value1 value2 = (output101, value80, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value80 value1 value2 = (output795, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value79 value1 value2 = (output796, value374, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value78 value1 value2 = (output100, value79, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value79 value1 value2 = (output796, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value78 value1 value2 = (output797, value374, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value76 value1 value2 = (output99, value78, value1))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value78 value1 value2 = (output797, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input798 value76 value1 value2 = (output798, value374, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value75 value1 value2 = (output96, value76, value1))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value76 value1 value2 = (output798, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input799 value75 value1 value2 = (output799, value374, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value73 value1 value2 = (output95, value75, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value75 value1 value2 = (output799, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value73 value1 value2 = (output800, value374, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value72 value1 value2 = (output92, value73, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value73 value1 value2 = (output800, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value72 value1 value2 = (output801, value374, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value70 value1 value2 = (output91, value72, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value72 value1 value2 = (output801, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value70 value1 value2 = (output802, value374, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value69 value1 value2 = (output88, value70, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value70 value1 value2 = (output802, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value69 value1 value2 = (output803, value374, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value67 value1 value2 = (output87, value69, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value69 value1 value2 = (output803, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value67 value1 value2 = (output804, value374, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output803_skip]
  kernel_rfl

theorem node805_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value66 value1 value2 = (output84, value67, value1))
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value67 value1 value2 = (output804, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input805 value66 value1 value2 = (output805, value374, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output804_skip]
  kernel_rfl

theorem node806_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value64 value1 value2 = (output83, value66, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value66 value1 value2 = (output805, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value64 value1 value2 = (output806, value374, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value63 value1 value2 = (output80, value64, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value64 value1 value2 = (output806, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value63 value1 value2 = (output807, value374, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value61 value1 value2 = (output79, value63, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value63 value1 value2 = (output807, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value61 value1 value2 = (output808, value374, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value59 value1 value2 = (output76, value61, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value61 value1 value2 = (output808, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value59 value1 value2 = (output809, value374, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value58 value1 value2 = (output73, value59, value1))
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value59 value1 value2 = (output809, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input810 value58 value1 value2 = (output810, value374, value1) := by
  rw [input810_def, output810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output809_skip]
  kernel_rfl

theorem node811_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value57 value1 value2 = (output72, value58, value1))
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value58 value1 value2 = (output810, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input811 value57 value1 value2 = (output811, value374, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output810_skip]
  kernel_rfl

theorem node812_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value56 value1 value2 = (output71, value57, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value57 value1 value2 = (output811, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value56 value1 value2 = (output812, value374, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value55 value1 value2 = (output70, value56, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value56 value1 value2 = (output812, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value55 value1 value2 = (output813, value374, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value54 value1 value2 = (output69, value55, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value55 value1 value2 = (output813, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value54 value1 value2 = (output814, value374, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value53 value1 value2 = (output68, value54, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value54 value1 value2 = (output814, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value53 value1 value2 = (output815, value374, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value52 value1 value2 = (output67, value53, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value53 value1 value2 = (output815, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value52 value1 value2 = (output816, value374, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value50 value1 value2 = (output66, value52, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value52 value1 value2 = (output816, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value50 value1 value2 = (output817, value374, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value49 value1 value2 = (output63, value50, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value50 value1 value2 = (output817, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value49 value1 value2 = (output818, value374, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value47 value1 value2 = (output62, value49, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value49 value1 value2 = (output818, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value47 value1 value2 = (output819, value374, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value46 value1 value2 = (output59, value47, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value47 value1 value2 = (output819, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value46 value1 value2 = (output820, value374, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value44 value1 value2 = (output58, value46, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value46 value1 value2 = (output820, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value44 value1 value2 = (output821, value374, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value43 value1 value2 = (output55, value44, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value44 value1 value2 = (output821, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value43 value1 value2 = (output822, value374, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value41 value1 value2 = (output54, value43, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value43 value1 value2 = (output822, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value41 value1 value2 = (output823, value374, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output54_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value40 value1 value2 = (output51, value41, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value41 value1 value2 = (output823, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value40 value1 value2 = (output824, value374, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value38 value1 value2 = (output50, value40, value1))
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value40 value1 value2 = (output824, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input825 value38 value1 value2 = (output825, value374, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output824_skip]
  kernel_rfl

theorem node826_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value37 value1 value2 = (output47, value38, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value38 value1 value2 = (output825, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value37 value1 value2 = (output826, value374, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value35 value1 value2 = (output46, value37, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value37 value1 value2 = (output826, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value35 value1 value2 = (output827, value374, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value33 value1 value2 = (output43, value35, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value35 value1 value2 = (output827, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value33 value1 value2 = (output828, value374, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value32 value1 value2 = (output40, value33, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value33 value1 value2 = (output828, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value32 value1 value2 = (output829, value374, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child40]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output40_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value31 value1 value2 = (output39, value32, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value32 value1 value2 = (output829, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value31 value1 value2 = (output830, value374, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value30 value1 value2 = (output38, value31, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value31 value1 value2 = (output830, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value30 value1 value2 = (output831, value374, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value29 value1 value2 = (output37, value30, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value30 value1 value2 = (output831, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value29 value1 value2 = (output832, value374, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child37]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output37_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value28 value1 value2 = (output36, value29, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value29 value1 value2 = (output832, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value28 value1 value2 = (output833, value374, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value27 value1 value2 = (output35, value28, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value28 value1 value2 = (output833, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value27 value1 value2 = (output834, value374, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value26 value1 value2 = (output34, value27, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value27 value1 value2 = (output834, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value26 value1 value2 = (output835, value374, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value24 value1 value2 = (output33, value26, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value26 value1 value2 = (output835, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value24 value1 value2 = (output836, value374, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value23 value1 value2 = (output30, value24, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value24 value1 value2 = (output836, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value23 value1 value2 = (output837, value374, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value21 value1 value2 = (output29, value23, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value23 value1 value2 = (output837, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value21 value1 value2 = (output838, value374, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value20 value1 value2 = (output26, value21, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value21 value1 value2 = (output838, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value20 value1 value2 = (output839, value374, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value18 value1 value2 = (output25, value20, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value20 value1 value2 = (output839, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value18 value1 value2 = (output840, value374, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output25_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value17 value1 value2 = (output22, value18, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value18 value1 value2 = (output840, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value17 value1 value2 = (output841, value374, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value15 value1 value2 = (output21, value17, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value17 value1 value2 = (output841, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value15 value1 value2 = (output842, value374, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value15, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value15 value1 value2 = (output842, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value14 value1 value2 = (output843, value374, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value12 value1 value2 = (output17, value14, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value14 value1 value2 = (output843, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value12 value1 value2 = (output844, value374, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value12, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value12 value1 value2 = (output844, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value11 value1 value2 = (output845, value374, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value9 value1 value2 = (output13, value11, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value11 value1 value2 = (output845, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value9 value1 value2 = (output846, value374, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value9, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value9 value1 value2 = (output846, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value8 value1 value2 = (output847, value374, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value8, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value8 value1 value2 = (output847, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value5 value1 value2 = (output848, value374, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value5 value1 value2 = (output848, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value5 value1 value2 = (output849, value374, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value5 value1 value2 = (output849, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value4 value1 value2 = (output850, value374, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value4 value1 value2 = (output850, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value0 value1 value2 = (output851, value374, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value374 value1 value2 = (output852, value375, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value0 value1 value2 = (output851, value374, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value374 value1 value2 = (output852, value375, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value0 value1 value2 = (output853, value375, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output852_skip]
  kernel_rfl

#print axioms node853_cond_eq
end InitECandidate.Proofs.DeadStages810.Parallel
