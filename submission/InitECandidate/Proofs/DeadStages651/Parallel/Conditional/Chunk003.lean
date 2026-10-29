import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages651.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages651.Parallel
theorem node768_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value106 value1 value2 = (output134, value107, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value107 value1 value2 = (output767, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value106 value1 value2 = (output768, value377, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value105 value1 value2 = (output133, value106, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value106 value1 value2 = (output768, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value105 value1 value2 = (output769, value377, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value102 value1 value2 = (output132, value105, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value105 value1 value2 = (output769, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value102 value1 value2 = (output770, value377, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value102 value1 value2 = (output127, value102, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value102 value1 value2 = (output770, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value102 value1 value2 = (output771, value377, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value101 value1 value2 = (output126, value102, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value102 value1 value2 = (output771, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value101 value1 value2 = (output772, value377, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value100 value1 value2 = (output125, value101, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value101 value1 value2 = (output772, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value100 value1 value2 = (output773, value377, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value99 value1 value2 = (output124, value100, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value100 value1 value2 = (output773, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value99 value1 value2 = (output774, value377, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value98 value1 value2 = (output123, value99, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value99 value1 value2 = (output774, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value98 value1 value2 = (output775, value377, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value97 value1 value2 = (output122, value98, value1))
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value98 value1 value2 = (output775, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input776 value97 value1 value2 = (output776, value377, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output775_skip]
  kernel_rfl

theorem node777_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value96 value1 value2 = (output121, value97, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value97 value1 value2 = (output776, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value96 value1 value2 = (output777, value377, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value95 value1 value2 = (output120, value96, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value96 value1 value2 = (output777, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value95 value1 value2 = (output778, value377, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value94 value1 value2 = (output119, value95, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value95 value1 value2 = (output778, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value94 value1 value2 = (output779, value377, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value91 value1 value2 = (output118, value94, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value94 value1 value2 = (output779, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value91 value1 value2 = (output780, value377, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value91 value1 value2 = (output113, value91, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value91 value1 value2 = (output780, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value91 value1 value2 = (output781, value377, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value90 value1 value2 = (output112, value91, value1))
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value91 value1 value2 = (output781, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input782 value90 value1 value2 = (output782, value377, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output781_skip]
  kernel_rfl

theorem node783_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value89 value1 value2 = (output111, value90, value1))
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value90 value1 value2 = (output782, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input783 value89 value1 value2 = (output783, value377, value1) := by
  rw [input783_def, output783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  try dsimp only
  rw [child782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output782_skip]
  kernel_rfl

theorem node784_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value88 value1 value2 = (output110, value89, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value89 value1 value2 = (output783, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value88 value1 value2 = (output784, value377, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value87 value1 value2 = (output109, value88, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value88 value1 value2 = (output784, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value87 value1 value2 = (output785, value377, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value87, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value87 value1 value2 = (output785, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value86 value1 value2 = (output786, value377, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value86 value1 value2 = (output786, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value85 value1 value2 = (output787, value377, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value84 value1 value2 = (output106, value85, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value85 value1 value2 = (output787, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value84 value1 value2 = (output788, value377, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value83 value1 value2 = (output105, value84, value1))
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value84 value1 value2 = (output788, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input789 value83 value1 value2 = (output789, value377, value1) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output788_skip]
  kernel_rfl

theorem node790_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value80 value1 value2 = (output104, value83, value1))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value83 value1 value2 = (output789, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input790 value80 value1 value2 = (output790, value377, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value80 value1 value2 = (output99, value80, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value80 value1 value2 = (output790, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value80 value1 value2 = (output791, value377, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value79 value1 value2 = (output98, value80, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value80 value1 value2 = (output791, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value79 value1 value2 = (output792, value377, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value78 value1 value2 = (output97, value79, value1))
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value79 value1 value2 = (output792, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input793 value78 value1 value2 = (output793, value377, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output792_skip]
  kernel_rfl

theorem node794_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value77 value1 value2 = (output96, value78, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value78 value1 value2 = (output793, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value77 value1 value2 = (output794, value377, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value76 value1 value2 = (output95, value77, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value77 value1 value2 = (output794, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value76 value1 value2 = (output795, value377, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value75 value1 value2 = (output94, value76, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value76 value1 value2 = (output795, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value75 value1 value2 = (output796, value377, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value74 value1 value2 = (output93, value75, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value75 value1 value2 = (output796, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value74 value1 value2 = (output797, value377, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value73 value1 value2 = (output92, value74, value1))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value74 value1 value2 = (output797, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input798 value73 value1 value2 = (output798, value377, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value72 value1 value2 = (output91, value73, value1))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value73 value1 value2 = (output798, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input799 value72 value1 value2 = (output799, value377, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value69 value1 value2 = (output90, value72, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value72 value1 value2 = (output799, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value69 value1 value2 = (output800, value377, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output90_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value69 value1 value2 = (output85, value69, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value69 value1 value2 = (output800, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value69 value1 value2 = (output801, value377, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value68 value1 value2 = (output84, value69, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value69 value1 value2 = (output801, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value68 value1 value2 = (output802, value377, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value67 value1 value2 = (output83, value68, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value68 value1 value2 = (output802, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value67 value1 value2 = (output803, value377, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value66 value1 value2 = (output82, value67, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value67 value1 value2 = (output803, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value66 value1 value2 = (output804, value377, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  try dsimp only
  rw [child803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output82_skip, output803_skip]
  kernel_rfl

theorem node805_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value65 value1 value2 = (output81, value66, value1))
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value66 value1 value2 = (output804, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input805 value65 value1 value2 = (output805, value377, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output804_skip]
  kernel_rfl

theorem node806_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value64 value1 value2 = (output80, value65, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value65 value1 value2 = (output805, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value64 value1 value2 = (output806, value377, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value63 value1 value2 = (output79, value64, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value64 value1 value2 = (output806, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value63 value1 value2 = (output807, value377, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value62 value1 value2 = (output78, value63, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value63 value1 value2 = (output807, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value62 value1 value2 = (output808, value377, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value61 value1 value2 = (output77, value62, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value62 value1 value2 = (output808, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value61 value1 value2 = (output809, value377, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value58 value1 value2 = (output76, value61, value1))
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value61 value1 value2 = (output809, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input810 value58 value1 value2 = (output810, value377, value1) := by
  rw [input810_def, output810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output809_skip]
  kernel_rfl

theorem node811_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value58 value1 value2 = (output71, value58, value1))
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value58 value1 value2 = (output810, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input811 value58 value1 value2 = (output811, value377, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output810_skip]
  kernel_rfl

theorem node812_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value57 value1 value2 = (output70, value58, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value58 value1 value2 = (output811, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value57 value1 value2 = (output812, value377, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value56 value1 value2 = (output69, value57, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value57 value1 value2 = (output812, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value56 value1 value2 = (output813, value377, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value55 value1 value2 = (output68, value56, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value56 value1 value2 = (output813, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value55 value1 value2 = (output814, value377, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value54 value1 value2 = (output67, value55, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value55 value1 value2 = (output814, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value54 value1 value2 = (output815, value377, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value53 value1 value2 = (output66, value54, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value54 value1 value2 = (output815, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value53 value1 value2 = (output816, value377, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value52 value1 value2 = (output65, value53, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value53 value1 value2 = (output816, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value52 value1 value2 = (output817, value377, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value50 value1 value2 = (output64, value52, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value52 value1 value2 = (output817, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value50 value1 value2 = (output818, value377, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value49 value1 value2 = (output61, value50, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value50 value1 value2 = (output818, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value49 value1 value2 = (output819, value377, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output61_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value47 value1 value2 = (output60, value49, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value49 value1 value2 = (output819, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value47 value1 value2 = (output820, value377, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value46 value1 value2 = (output57, value47, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value47 value1 value2 = (output820, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value46 value1 value2 = (output821, value377, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value44 value1 value2 = (output56, value46, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value46 value1 value2 = (output821, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value44 value1 value2 = (output822, value377, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value43 value1 value2 = (output53, value44, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value44 value1 value2 = (output822, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value43 value1 value2 = (output823, value377, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child53]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output53_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value41 value1 value2 = (output52, value43, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value43 value1 value2 = (output823, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value41 value1 value2 = (output824, value377, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value39 value1 value2 = (output49, value41, value1))
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value41 value1 value2 = (output824, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input825 value39 value1 value2 = (output825, value377, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output824_skip]
  kernel_rfl

theorem node826_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value38 value1 value2 = (output46, value39, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value39 value1 value2 = (output825, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value38 value1 value2 = (output826, value377, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value37 value1 value2 = (output45, value38, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value38 value1 value2 = (output826, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value37 value1 value2 = (output827, value377, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value37 value1 value2 = (output827, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value36 value1 value2 = (output828, value377, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value35 value1 value2 = (output43, value36, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value36 value1 value2 = (output828, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value35 value1 value2 = (output829, value377, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value34 value1 value2 = (output42, value35, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value35 value1 value2 = (output829, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value34 value1 value2 = (output830, value377, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output42_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value32 value1 value2 = (output41, value34, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value34 value1 value2 = (output830, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value32 value1 value2 = (output831, value377, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output41_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value31 value1 value2 = (output38, value32, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value32 value1 value2 = (output831, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value31 value1 value2 = (output832, value377, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value29 value1 value2 = (output37, value31, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value31 value1 value2 = (output832, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value29 value1 value2 = (output833, value377, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child37]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output37_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value28 value1 value2 = (output34, value29, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value29 value1 value2 = (output833, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value28 value1 value2 = (output834, value377, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value26 value1 value2 = (output33, value28, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value28 value1 value2 = (output834, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value26 value1 value2 = (output835, value377, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value25 value1 value2 = (output30, value26, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value26 value1 value2 = (output835, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value25 value1 value2 = (output836, value377, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value23 value1 value2 = (output29, value25, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value25 value1 value2 = (output836, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value23 value1 value2 = (output837, value377, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value21 value1 value2 = (output26, value23, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value23 value1 value2 = (output837, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value21 value1 value2 = (output838, value377, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value20 value1 value2 = (output23, value21, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value21 value1 value2 = (output838, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value20 value1 value2 = (output839, value377, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value19 value1 value2 = (output22, value20, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value20 value1 value2 = (output839, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value19 value1 value2 = (output840, value377, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value18 value1 value2 = (output21, value19, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value19 value1 value2 = (output840, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value18 value1 value2 = (output841, value377, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value17 value1 value2 = (output20, value18, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value18 value1 value2 = (output841, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value17 value1 value2 = (output842, value377, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value17 value1 value2 = (output842, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value16 value1 value2 = (output843, value377, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value16 value1 value2 = (output843, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value14 value1 value2 = (output844, value377, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value14 value1 value2 = (output844, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value13 value1 value2 = (output845, value377, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value13 value1 value2 = (output845, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value11 value1 value2 = (output846, value377, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value11 value1 value2 = (output846, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value10 value1 value2 = (output847, value377, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value10 value1 value2 = (output847, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value8 value1 value2 = (output848, value377, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value8 value1 value2 = (output848, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value7 value1 value2 = (output849, value377, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value7 value1 value2 = (output849, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value5 value1 value2 = (output850, value377, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value5 value1 value2 = (output850, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value4 value1 value2 = (output851, value377, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value4 value1 value2 = (output851, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input852 value0 value1 value2 = (output852, value377, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output851_skip]
  kernel_rfl

theorem node853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input853 value377 value1 value2 = (output853, value378, value1) := by
  rw [input853_def, output853_def]
  kernel_rfl

theorem node854_cond_eq
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value0 value1 value2 = (output852, value377, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value377 value1 value2 = (output853, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value0 value1 value2 = (output854, value378, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child852]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output852_skip, output853_skip]
  kernel_rfl

#print axioms node854_cond_eq
end InitECandidate.Proofs.DeadStages651.Parallel
