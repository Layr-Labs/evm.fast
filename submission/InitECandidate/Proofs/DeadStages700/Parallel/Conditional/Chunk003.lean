import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages700.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages700.Parallel
theorem node768_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value225 value1 value211 = (output644, value226, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value226 value1 value211 = (output767, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value225 value1 value211 = (output768, value284, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value222 value1 value211 = (output643, value225, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value225 value1 value211 = (output768, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value222 value1 value211 = (output769, value284, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value221 value1 value211 = (output638, value222, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value222 value1 value211 = (output769, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value221 value1 value211 = (output770, value284, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value218 value1 value211 = (output637, value221, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value221 value1 value211 = (output770, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value218 value1 value211 = (output771, value284, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value218 value1 value211 = (output632, value218, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value218 value1 value211 = (output771, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value218 value1 value211 = (output772, value284, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value217 value1 value211 = (output631, value218, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value218 value1 value211 = (output772, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value217 value1 value211 = (output773, value284, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value217 value1 value211 = (output630, value217, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value217 value1 value211 = (output773, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value217 value1 value211 = (output774, value284, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value217 value1 value211 = (output629, value217, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value217 value1 value211 = (output774, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value217 value1 value211 = (output775, value284, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value216 value1 value211 = (output628, value217, value1))
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value217 value1 value211 = (output775, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input776 value216 value1 value211 = (output776, value284, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output775_skip]
  kernel_rfl

theorem node777_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value213 value1 value211 = (output627, value216, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value216 value1 value211 = (output776, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value213 value1 value211 = (output777, value284, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value213 value1 value211 = (output622, value213, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value213 value1 value211 = (output777, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value213 value1 value211 = (output778, value284, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value213 value1 value211 = (output621, value213, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value213 value1 value211 = (output778, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value213 value1 value211 = (output779, value284, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value212 value1 value211 = (output618, value213, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value213 value1 value211 = (output779, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value212 value1 value211 = (output780, value284, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input781 value212 value1 value211 = (output781, value212, value1) := by
  rw [input781_def, output781_def]
  kernel_rfl

theorem node782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input782 value212 value1 value211 = (output782, value212, value1) := by
  rw [input782_def, output782_def]
  kernel_rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value212 value1 value211 = (output783, value212, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

theorem node784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input784 value212 value1 value211 = (output784, value212, value1) := by
  rw [input784_def, output784_def]
  kernel_rfl

theorem node785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input785 value212 value1 value211 = (output785, value212, value1) := by
  rw [input785_def, output785_def]
  kernel_rfl

theorem node786_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value212 value1 value211 = (output784, value212, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value212 value1 value211 = (output785, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value212 value1 value211 = (output786, value212, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value212 value1 value211 = (output783, value212, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value212 value1 value211 = (output786, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value212 value1 value211 = (output787, value212, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value212 value1 value211 = (output782, value212, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value212 value1 value211 = (output787, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value212 value1 value211 = (output788, value212, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value212 value1 value211 = (output781, value212, value1))
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value212 value1 value211 = (output788, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input789 value212 value1 value211 = (output789, value212, value1) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output788_skip]
  kernel_rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value212 value1 value211 = (output790, value284, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

theorem node791_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value212 value1 value211 = (output789, value212, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value212 value1 value211 = (output790, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value212 value1 value211 = (output791, value284, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input792 value284 value1 value211 = (output792, value210, value1) := by
  rw [input792_def, output792_def]
  kernel_rfl

theorem node793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input793 value210 value1 value211 = (output793, value284, value1) := by
  rw [input793_def, output793_def]
  kernel_rfl

theorem node794_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value284 value1 value211 = (output792, value210, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value210 value1 value211 = (output793, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value284 value1 value211 = (output794, value284, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input795 value284 value1 value211 = (output795, value284, value1) := by
  rw [input795_def, output795_def]
  kernel_rfl

theorem node796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input796 value284 value1 value211 = (output796, value284, value1) := by
  rw [input796_def, output796_def]
  kernel_rfl

theorem node797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input797 value284 value1 value211 = (output797, value284, value1) := by
  rw [input797_def, output797_def]
  kernel_rfl

theorem node798_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value284 value1 value211 = (output796, value284, value1))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value284 value1 value211 = (output797, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input798 value284 value1 value211 = (output798, value284, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value284 value1 value211 = (output795, value284, value1))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value284 value1 value211 = (output798, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input799 value284 value1 value211 = (output799, value284, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child795]
  try dsimp only
  rw [child798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output795_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value284 value1 value211 = (output794, value284, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value284 value1 value211 = (output799, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value284 value1 value211 = (output800, value284, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value212 value1 value211 = (output791, value284, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value284 value1 value211 = (output800, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value212 value1 value211 = (output801, value284, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value212 value1 value211 = (output780, value284, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value212 value1 value211 = (output801, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value212 value1 value211 = (output802, value284, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child780]
  try dsimp only
  rw [child801]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value284 value1 value211 = (output803, value287, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

theorem node804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input804 value287 value1 value211 = (output804, value210, value1) := by
  rw [input804_def, output804_def]
  kernel_rfl

theorem node805_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value284 value1 value211 = (output803, value287, value1))
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value287 value1 value211 = (output804, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input805 value284 value1 value211 = (output805, value210, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output804_skip]
  kernel_rfl

theorem node806_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value212 value1 value211 = (output802, value284, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value284 value1 value211 = (output805, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value212 value1 value211 = (output806, value210, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value212 value1 value211 = (output607, value212, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value212 value1 value211 = (output806, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value212 value1 value211 = (output807, value210, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value210 value1 value211 = (output606, value212, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value212 value1 value211 = (output807, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value210 value1 value211 = (output808, value210, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value210 value1 value211 = (output808, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value210 value1 value138 = (output809, value210, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value211 = (value210, value210) :: value138 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child808
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value210 value1 value138 = (output810, value288, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value288 value1 value138 = (output811, value288, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

theorem node812_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value210 value1 value138 = (output810, value288, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value288 value1 value138 = (output811, value288, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value210 value1 value138 = (output812, value288, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value210 value1 value138 = (output809, value210, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value210 value1 value138 = (output812, value288, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value210 value1 value138 = (output813, value288, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input814 value288 value1 value138 = (output814, value288, value1) := by
  rw [input814_def, output814_def]
  kernel_rfl

theorem node815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input815 value288 value1 value138 = (output815, value288, value1) := by
  rw [input815_def, output815_def]
  kernel_rfl

theorem node816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input816 value288 value1 value138 = (output816, value289, value1) := by
  rw [input816_def, output816_def]
  kernel_rfl

theorem node817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input817 value289 value1 value138 = (output817, value290, value1) := by
  rw [input817_def, output817_def]
  kernel_rfl

theorem node818_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value288 value1 value138 = (output816, value289, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value289 value1 value138 = (output817, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value288 value1 value138 = (output818, value290, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input819 value290 value1 value138 = (output819, value291, value1) := by
  rw [input819_def, output819_def]
  kernel_rfl

theorem node820_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value288 value1 value138 = (output818, value290, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value290 value1 value138 = (output819, value291, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value288 value1 value138 = (output820, value291, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input821 value291 value1 value138 = (output821, value292, value1) := by
  rw [input821_def, output821_def]
  kernel_rfl

theorem node822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input822 value292 value1 value138 = (output822, value293, value1) := by
  rw [input822_def, output822_def]
  kernel_rfl

theorem node823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input823 value293 value1 value138 = (output823, value294, value1) := by
  rw [input823_def, output823_def]
  kernel_rfl

theorem node824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input824 value294 value1 value138 = (output824, value295, value1) := by
  rw [input824_def, output824_def]
  kernel_rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value295 value1 value138 = (output825, value296, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

theorem node826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input826 value296 value1 value138 = (output826, value297, value1) := by
  rw [input826_def, output826_def]
  kernel_rfl

theorem node827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input827 value297 value1 value138 = (output827, value298, value1) := by
  rw [input827_def, output827_def]
  kernel_rfl

theorem node828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input828 value298 value1 value138 = (output828, value299, value1) := by
  rw [input828_def, output828_def]
  kernel_rfl

theorem node829_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value297 value1 value138 = (output827, value298, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value298 value1 value138 = (output828, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value297 value1 value138 = (output829, value299, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value296 value1 value138 = (output826, value297, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value297 value1 value138 = (output829, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value296 value1 value138 = (output830, value299, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input831 value299 value1 value138 = (output831, value300, value1) := by
  rw [input831_def, output831_def]
  kernel_rfl

theorem node832_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value296 value1 value138 = (output830, value299, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value299 value1 value138 = (output831, value300, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value296 value1 value138 = (output832, value300, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value295 value1 value138 = (output825, value296, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value296 value1 value138 = (output832, value300, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value295 value1 value138 = (output833, value300, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child825]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output825_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input834 value300 value1 value138 = (output834, value301, value1) := by
  rw [input834_def, output834_def]
  kernel_rfl

theorem node835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input835 value301 value1 value138 = (output835, value302, value1) := by
  rw [input835_def, output835_def]
  kernel_rfl

theorem node836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input836 value302 value1 value138 = (output836, value303, value1) := by
  rw [input836_def, output836_def]
  kernel_rfl

theorem node837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input837 value303 value1 value138 = (output837, value304, value1) := by
  rw [input837_def, output837_def]
  kernel_rfl

theorem node838_cond_eq
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value302 value1 value138 = (output836, value303, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value303 value1 value138 = (output837, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value302 value1 value138 = (output838, value304, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child836]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output836_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value301 value1 value138 = (output835, value302, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value302 value1 value138 = (output838, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value301 value1 value138 = (output839, value304, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input840 value304 value1 value138 = (output840, value305, value1) := by
  rw [input840_def, output840_def]
  kernel_rfl

theorem node841_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value301 value1 value138 = (output839, value304, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value304 value1 value138 = (output840, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value301 value1 value138 = (output841, value305, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value300 value1 value138 = (output834, value301, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value301 value1 value138 = (output841, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value300 value1 value138 = (output842, value305, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input843 value305 value1 value138 = (output843, value306, value1) := by
  rw [input843_def, output843_def]
  kernel_rfl

theorem node844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input844 value306 value1 value138 = (output844, value307, value1) := by
  rw [input844_def, output844_def]
  kernel_rfl

theorem node845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input845 value307 value1 value138 = (output845, value308, value1) := by
  rw [input845_def, output845_def]
  kernel_rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value308 value1 value138 = (output846, value309, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

theorem node847_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value307 value1 value138 = (output845, value308, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value308 value1 value138 = (output846, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value307 value1 value138 = (output847, value309, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value306 value1 value138 = (output844, value307, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value307 value1 value138 = (output847, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value306 value1 value138 = (output848, value309, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input849 value309 value1 value138 = (output849, value310, value1) := by
  rw [input849_def, output849_def]
  kernel_rfl

theorem node850_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value306 value1 value138 = (output848, value309, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value309 value1 value138 = (output849, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value306 value1 value138 = (output850, value310, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value305 value1 value138 = (output843, value306, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value306 value1 value138 = (output850, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value305 value1 value138 = (output851, value310, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input852 value310 value1 value138 = (output852, value311, value1) := by
  rw [input852_def, output852_def]
  kernel_rfl

theorem node853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input853 value311 value1 value138 = (output853, value312, value1) := by
  rw [input853_def, output853_def]
  kernel_rfl

theorem node854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input854 value312 value1 value138 = (output854, value313, value1) := by
  rw [input854_def, output854_def]
  kernel_rfl

theorem node855_cond_eq
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value311 value1 value138 = (output853, value312, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value312 value1 value138 = (output854, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value311 value1 value138 = (output855, value313, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child853]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output853_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input856 value313 value1 value138 = (output856, value314, value1) := by
  rw [input856_def, output856_def]
  kernel_rfl

theorem node857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input857 value314 value1 value138 = (output857, value315, value1) := by
  rw [input857_def, output857_def]
  kernel_rfl

theorem node858_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value313 value1 value138 = (output856, value314, value1))
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value314 value1 value138 = (output857, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input858 value313 value1 value138 = (output858, value315, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output857_skip]
  kernel_rfl

theorem node859_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value311 value1 value138 = (output855, value313, value1))
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value313 value1 value138 = (output858, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input859 value311 value1 value138 = (output859, value315, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output858_skip]
  kernel_rfl

theorem node860_cond_eq
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value310 value1 value138 = (output852, value311, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value311 value1 value138 = (output859, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value310 value1 value138 = (output860, value315, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child852]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output852_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input861 value315 value1 value138 = (output861, value315, value1) := by
  rw [input861_def, output861_def]
  kernel_rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value315 value1 value138 = (output862, value316, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

theorem node863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input863 value316 value1 value138 = (output863, value317, value1) := by
  rw [input863_def, output863_def]
  kernel_rfl

theorem node864_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value315 value1 value138 = (output862, value316, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value316 value1 value138 = (output863, value317, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value315 value1 value138 = (output864, value317, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  try dsimp only
  rw [child863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input865 value317 value1 value138 = (output865, value318, value1) := by
  rw [input865_def, output865_def]
  kernel_rfl

theorem node866_cond_eq
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value315 value1 value138 = (output864, value317, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value317 value1 value138 = (output865, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value315 value1 value138 = (output866, value318, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child864]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output864_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value318 value1 value138 = (output867, value319, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

theorem node868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input868 value319 value1 value138 = (output868, value319, value1) := by
  rw [input868_def, output868_def]
  kernel_rfl

theorem node869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input869 value319 value1 value138 = (output869, value320, value1) := by
  rw [input869_def, output869_def]
  kernel_rfl

theorem node870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input870 value320 value1 value138 = (output870, value320, value1) := by
  rw [input870_def, output870_def]
  kernel_rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value320 value1 value138 = (output871, value321, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

theorem node872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input872 value321 value1 value138 = (output872, value322, value1) := by
  rw [input872_def, output872_def]
  kernel_rfl

theorem node873_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value320 value1 value138 = (output871, value321, value1))
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value321 value1 value138 = (output872, value322, value1)) : Flapjack.WordAlloc.removeDeadStructural input873 value320 value1 value138 = (output873, value322, value1) := by
  rw [input873_def, output873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output872_skip]
  kernel_rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value322 value1 value138 = (output874, value323, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

theorem node875_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value320 value1 value138 = (output873, value322, value1))
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value322 value1 value138 = (output874, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input875 value320 value1 value138 = (output875, value323, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output874_skip]
  kernel_rfl

theorem node876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input876 value323 value1 value138 = (output876, value324, value1) := by
  rw [input876_def, output876_def]
  kernel_rfl

theorem node877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input877 value324 value1 value138 = (output877, value324, value1) := by
  rw [input877_def, output877_def]
  kernel_rfl

theorem node878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input878 value324 value1 value138 = (output878, value325, value1) := by
  rw [input878_def, output878_def]
  kernel_rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value325 value1 value138 = (output879, value325, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

theorem node880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input880 value325 value1 value138 = (output880, value325, value1) := by
  rw [input880_def, output880_def]
  kernel_rfl

theorem node881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input881 value325 value1 value138 = (output881, value325, value1) := by
  rw [input881_def, output881_def]
  kernel_rfl

theorem node882_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value325 value1 value138 = (output880, value325, value1))
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value325 value1 value138 = (output881, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input882 value325 value1 value138 = (output882, value325, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output881_skip]
  kernel_rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value325 value1 value138 = (output883, value137, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value137 value1 value138 = (output884, value326, value1) := by
  rw [input884_def, output884_def]
  kernel_rfl

theorem node885_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value325 value1 value138 = (output883, value137, value1))
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value137 value1 value138 = (output884, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input885 value325 value1 value138 = (output885, value326, value1) := by
  rw [input885_def, output885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output884_skip]
  kernel_rfl

theorem node886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input886 value326 value1 value138 = (output886, value326, value1) := by
  rw [input886_def, output886_def]
  kernel_rfl

theorem node887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input887 value326 value1 value138 = (output887, value326, value1) := by
  rw [input887_def, output887_def]
  kernel_rfl

theorem node888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input888 value326 value1 value138 = (output888, value326, value1) := by
  rw [input888_def, output888_def]
  kernel_rfl

theorem node889_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value326 value1 value138 = (output887, value326, value1))
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value326 value1 value138 = (output888, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input889 value326 value1 value138 = (output889, value326, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output888_skip]
  kernel_rfl

theorem node890_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value326 value1 value138 = (output886, value326, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value326 value1 value138 = (output889, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value326 value1 value138 = (output890, value326, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value325 value1 value138 = (output885, value326, value1))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value326 value1 value138 = (output890, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input891 value325 value1 value138 = (output891, value326, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value325 value1 value138 = (output882, value325, value1))
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value325 value1 value138 = (output891, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input892 value325 value1 value138 = (output892, value326, value1) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output891_skip]
  kernel_rfl

theorem node893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input893 value325 value1 value138 = (output893, value325, value1) := by
  rw [input893_def, output893_def]
  kernel_rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value325 value1 value138 = (output894, value325, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

theorem node895_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value325 value1 value138 = (output893, value325, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value325 value1 value138 = (output894, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input895 value325 value1 value138 = (output895, value325, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input896 value325 value1 value138 = (output896, value325, value1) := by
  rw [input896_def, output896_def]
  kernel_rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value325 value1 value138 = (output897, value325, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value325 value1 value138 = (output898, value325, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

theorem node899_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value325 value1 value138 = (output897, value325, value1))
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value325 value1 value138 = (output898, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input899 value325 value1 value138 = (output899, value325, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output898_skip]
  kernel_rfl

theorem node900_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value325 value1 value138 = (output896, value325, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value325 value1 value138 = (output899, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value325 value1 value138 = (output900, value325, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value325 value1 value138 = (output895, value325, value1))
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value325 value1 value138 = (output900, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input901 value325 value1 value138 = (output901, value325, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child895]
  try dsimp only
  rw [child900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output895_skip, output900_skip]
  kernel_rfl

theorem node902_cond_eq
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value325 value1 value138 = (output892, value326, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value325 value1 value138 = (output901, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value325 value1 value138 = (output902, value328, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child892]
  try dsimp only
  rw [child901]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output892_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input903 value328 value1 value138 = (output903, value329, value1) := by
  rw [input903_def, output903_def]
  kernel_rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value329 value1 value138 = (output904, value330, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

theorem node905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input905 value330 value1 value138 = (output905, value330, value1) := by
  rw [input905_def, output905_def]
  kernel_rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value330 value1 value138 = (output906, value331, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value331 value1 value138 = (output907, value332, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

theorem node908_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value330 value1 value138 = (output906, value331, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value331 value1 value138 = (output907, value332, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value330 value1 value138 = (output908, value332, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value332 value1 value138 = (output909, value333, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

theorem node910_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value330 value1 value138 = (output908, value332, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value332 value1 value138 = (output909, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value330 value1 value138 = (output910, value333, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input911 value333 value1 value138 = (output911, value334, value1) := by
  rw [input911_def, output911_def]
  kernel_rfl

theorem node912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input912 value334 value1 value138 = (output912, value334, value1) := by
  rw [input912_def, output912_def]
  kernel_rfl

theorem node913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input913 value334 value1 value138 = (output913, value137, value1) := by
  rw [input913_def, output913_def]
  kernel_rfl

theorem node914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input914 value137 value1 value138 = (output914, value137, value1) := by
  rw [input914_def, output914_def]
  kernel_rfl

theorem node915_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value334 value1 value138 = (output913, value137, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value137 value1 value138 = (output914, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value334 value1 value138 = (output915, value137, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value334 value1 value138 = (output912, value334, value1))
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value334 value1 value138 = (output915, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input916 value334 value1 value138 = (output916, value137, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output915_skip]
  kernel_rfl

theorem node917_cond_eq
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value333 value1 value138 = (output911, value334, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value334 value1 value138 = (output916, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value333 value1 value138 = (output917, value137, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child911]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output911_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value330 value1 value138 = (output910, value333, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value333 value1 value138 = (output917, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value330 value1 value138 = (output918, value137, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  try dsimp only
  rw [child917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value330 value1 value138 = (output905, value330, value1))
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value330 value1 value138 = (output918, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input919 value330 value1 value138 = (output919, value137, value1) := by
  rw [input919_def, output919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output918_skip]
  kernel_rfl

theorem node920_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value329 value1 value138 = (output904, value330, value1))
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value330 value1 value138 = (output919, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input920 value329 value1 value138 = (output920, value137, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output919_skip]
  kernel_rfl

theorem node921_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value328 value1 value138 = (output903, value329, value1))
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value329 value1 value138 = (output920, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input921 value328 value1 value138 = (output921, value137, value1) := by
  rw [input921_def, output921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output920_skip]
  kernel_rfl

theorem node922_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value325 value1 value138 = (output902, value328, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value328 value1 value138 = (output921, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value325 value1 value138 = (output922, value137, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value325 value1 value138 = (output879, value325, value1))
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value325 value1 value138 = (output922, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input923 value325 value1 value138 = (output923, value137, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output922_skip]
  kernel_rfl

theorem node924_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value324 value1 value138 = (output878, value325, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value325 value1 value138 = (output923, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value324 value1 value138 = (output924, value137, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value324 value1 value138 = (output877, value324, value1))
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value324 value1 value138 = (output924, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input925 value324 value1 value138 = (output925, value137, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output924_skip]
  kernel_rfl

theorem node926_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value323 value1 value138 = (output876, value324, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value324 value1 value138 = (output925, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value323 value1 value138 = (output926, value137, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output925_skip]
  kernel_rfl

theorem node927_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value320 value1 value138 = (output875, value323, value1))
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value323 value1 value138 = (output926, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input927 value320 value1 value138 = (output927, value137, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output926_skip]
  kernel_rfl

theorem node928_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value320 value1 value138 = (output870, value320, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value320 value1 value138 = (output927, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value320 value1 value138 = (output928, value137, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value319 value1 value138 = (output869, value320, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value320 value1 value138 = (output928, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value319 value1 value138 = (output929, value137, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child869]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output869_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value319 value1 value138 = (output868, value319, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value319 value1 value138 = (output929, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value319 value1 value138 = (output930, value137, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value318 value1 value138 = (output867, value319, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value319 value1 value138 = (output930, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value318 value1 value138 = (output931, value137, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child867]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output867_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value315 value1 value138 = (output866, value318, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value318 value1 value138 = (output931, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value315 value1 value138 = (output932, value137, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value315 value1 value138 = (output861, value315, value1))
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value315 value1 value138 = (output932, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input933 value315 value1 value138 = (output933, value137, value1) := by
  rw [input933_def, output933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output932_skip]
  kernel_rfl

theorem node934_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value310 value1 value138 = (output860, value315, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value315 value1 value138 = (output933, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input934 value310 value1 value138 = (output934, value137, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value305 value1 value138 = (output851, value310, value1))
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value310 value1 value138 = (output934, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input935 value305 value1 value138 = (output935, value137, value1) := by
  rw [input935_def, output935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output934_skip]
  kernel_rfl

theorem node936_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value300 value1 value138 = (output842, value305, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value305 value1 value138 = (output935, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value300 value1 value138 = (output936, value137, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output842_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value295 value1 value138 = (output833, value300, value1))
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value300 value1 value138 = (output936, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input937 value295 value1 value138 = (output937, value137, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  try dsimp only
  rw [child936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output833_skip, output936_skip]
  kernel_rfl

theorem node938_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value294 value1 value138 = (output824, value295, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value295 value1 value138 = (output937, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value294 value1 value138 = (output938, value137, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value293 value1 value138 = (output823, value294, value1))
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value294 value1 value138 = (output938, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input939 value293 value1 value138 = (output939, value137, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  try dsimp only
  rw [child938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output938_skip]
  kernel_rfl

theorem node940_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value292 value1 value138 = (output822, value293, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value293 value1 value138 = (output939, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value292 value1 value138 = (output940, value137, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value291 value1 value138 = (output821, value292, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value292 value1 value138 = (output940, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value291 value1 value138 = (output941, value137, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value288 value1 value138 = (output820, value291, value1))
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value291 value1 value138 = (output941, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input942 value288 value1 value138 = (output942, value137, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  try dsimp only
  rw [child941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output941_skip]
  kernel_rfl

theorem node943_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value288 value1 value138 = (output815, value288, value1))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value288 value1 value138 = (output942, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value288 value1 value138 = (output943, value137, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value288 value1 value138 = (output814, value288, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value288 value1 value138 = (output943, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value288 value1 value138 = (output944, value137, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value210 value1 value138 = (output813, value288, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value288 value1 value138 = (output944, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value210 value1 value138 = (output945, value137, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value210 value1 value138 = (output605, value210, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value210 value1 value138 = (output945, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value210 value1 value138 = (output946, value137, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value209 value1 value138 = (output604, value210, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value210 value1 value138 = (output946, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value209 value1 value138 = (output947, value137, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value208 value1 value138 = (output603, value209, value1))
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value209 value1 value138 = (output947, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input948 value208 value1 value138 = (output948, value137, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output947_skip]
  kernel_rfl

theorem node949_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value208 value1 value138 = (output602, value208, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value208 value1 value138 = (output948, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value208 value1 value138 = (output949, value137, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value207 value1 value138 = (output601, value208, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value208 value1 value138 = (output949, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value207 value1 value138 = (output950, value137, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output949_skip]
  kernel_rfl

theorem node951_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value204 value1 value138 = (output600, value207, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value207 value1 value138 = (output950, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value204 value1 value138 = (output951, value137, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value204 value1 value138 = (output595, value204, value1))
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value204 value1 value138 = (output951, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input952 value204 value1 value138 = (output952, value137, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output951_skip]
  kernel_rfl

theorem node953_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value203 value1 value138 = (output594, value204, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value204 value1 value138 = (output952, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value203 value1 value138 = (output953, value137, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value203 value1 value138 = (output593, value203, value1))
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value203 value1 value138 = (output953, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input954 value203 value1 value138 = (output954, value137, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output953_skip]
  kernel_rfl

theorem node955_cond_eq
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value146 value1 value138 = (output592, value203, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value203 value1 value138 = (output954, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value146 value1 value138 = (output955, value137, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child592]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output592_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value146 value1 value138 = (output382, value146, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value146 value1 value138 = (output955, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value146 value1 value138 = (output956, value137, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value145 value1 value138 = (output381, value146, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value146 value1 value138 = (output956, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value145 value1 value138 = (output957, value137, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value144 value1 value138 = (output380, value145, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value145 value1 value138 = (output957, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value144 value1 value138 = (output958, value137, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value143 value1 value138 = (output379, value144, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value144 value1 value138 = (output958, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value143 value1 value138 = (output959, value137, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output379_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value142 value1 value138 = (output378, value143, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value143 value1 value138 = (output959, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value142 value1 value138 = (output960, value137, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value141 value1 value138 = (output377, value142, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value142 value1 value138 = (output960, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value141 value1 value138 = (output961, value137, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value140 value1 value138 = (output376, value141, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value141 value1 value138 = (output961, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value140 value1 value138 = (output962, value137, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value139 value1 value138 = (output375, value140, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value140 value1 value138 = (output962, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value139 value1 value138 = (output963, value137, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value139 value1 value138 = (output374, value139, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value139 value1 value138 = (output963, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value139 value1 value138 = (output964, value137, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value139 value1 value138 = (output371, value139, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value139 value1 value138 = (output964, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value139 value1 value138 = (output965, value137, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value137 value1 value138 = (output370, value139, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value139 value1 value138 = (output965, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value137 value1 value138 = (output966, value137, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value137 value1 value138 = (output966, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value137 value1 value2 = (output967, value137, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value138 = (value137, value137) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child966
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input968 value137 value1 value2 = (output968, value335, value1) := by
  rw [input968_def, output968_def]
  kernel_rfl

theorem node969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input969 value335 value1 value2 = (output969, value335, value1) := by
  rw [input969_def, output969_def]
  kernel_rfl

theorem node970_cond_eq
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value137 value1 value2 = (output968, value335, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value335 value1 value2 = (output969, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value137 value1 value2 = (output970, value335, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child968]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output968_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value137 value1 value2 = (output967, value137, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value137 value1 value2 = (output970, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value137 value1 value2 = (output971, value335, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output967_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input972 value335 value1 value2 = (output972, value335, value1) := by
  rw [input972_def, output972_def]
  kernel_rfl

theorem node973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input973 value335 value1 value2 = (output973, value336, value1) := by
  rw [input973_def, output973_def]
  kernel_rfl

theorem node974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input974 value336 value1 value2 = (output974, value337, value1) := by
  rw [input974_def, output974_def]
  kernel_rfl

theorem node975_cond_eq
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value335 value1 value2 = (output973, value336, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value336 value1 value2 = (output974, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value335 value1 value2 = (output975, value337, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child973]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output973_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input976 value337 value1 value2 = (output976, value338, value1) := by
  rw [input976_def, output976_def]
  kernel_rfl

theorem node977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input977 value338 value1 value2 = (output977, value339, value1) := by
  rw [input977_def, output977_def]
  kernel_rfl

theorem node978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input978 value339 value1 value2 = (output978, value340, value1) := by
  rw [input978_def, output978_def]
  kernel_rfl

theorem node979_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value338 value1 value2 = (output977, value339, value1))
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value339 value1 value2 = (output978, value340, value1)) : Flapjack.WordAlloc.removeDeadStructural input979 value338 value1 value2 = (output979, value340, value1) := by
  rw [input979_def, output979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  try dsimp only
  rw [child978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output977_skip, output978_skip]
  kernel_rfl

theorem node980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input980 value340 value1 value2 = (output980, value341, value1) := by
  rw [input980_def, output980_def]
  kernel_rfl

theorem node981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input981 value341 value1 value2 = (output981, value342, value1) := by
  rw [input981_def, output981_def]
  kernel_rfl

theorem node982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input982 value342 value1 value2 = (output982, value343, value1) := by
  rw [input982_def, output982_def]
  kernel_rfl

theorem node983_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value341 value1 value2 = (output981, value342, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value342 value1 value2 = (output982, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value341 value1 value2 = (output983, value343, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input984 value343 value1 value2 = (output984, value344, value1) := by
  rw [input984_def, output984_def]
  kernel_rfl

theorem node985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input985 value344 value1 value2 = (output985, value345, value1) := by
  rw [input985_def, output985_def]
  kernel_rfl

theorem node986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input986 value345 value1 value2 = (output986, value346, value1) := by
  rw [input986_def, output986_def]
  kernel_rfl

theorem node987_cond_eq
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value344 value1 value2 = (output985, value345, value1))
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value345 value1 value2 = (output986, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input987 value344 value1 value2 = (output987, value346, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child985]
  try dsimp only
  rw [child986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output985_skip, output986_skip]
  kernel_rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value346 value1 value2 = (output988, value335, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

theorem node989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input989 value335 value1 value2 = (output989, value335, value1) := by
  rw [input989_def, output989_def]
  kernel_rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value335 value1 value2 = (output990, value335, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value335 value1 value2 = (output991, value335, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

theorem node992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input992 value335 value1 value2 = (output992, value335, value1) := by
  rw [input992_def, output992_def]
  kernel_rfl

theorem node993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input993 value335 value1 value2 = (output993, value347, value1) := by
  rw [input993_def, output993_def]
  kernel_rfl

theorem node994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input994 value347 value1 value2 = (output994, value347, value1) := by
  rw [input994_def, output994_def]
  kernel_rfl

theorem node995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input995 value347 value1 value2 = (output995, value348, value1) := by
  rw [input995_def, output995_def]
  kernel_rfl

theorem node996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input996 value348 value1 value2 = (output996, value349, value1) := by
  rw [input996_def, output996_def]
  kernel_rfl

theorem node997_cond_eq
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value347 value1 value2 = (output995, value348, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value348 value1 value2 = (output996, value349, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value347 value1 value2 = (output997, value349, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child995]
  try dsimp only
  rw [child996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output995_skip, output996_skip]
  kernel_rfl

theorem node998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input998 value349 value1 value2 = (output998, value350, value1) := by
  rw [input998_def, output998_def]
  kernel_rfl

theorem node999_cond_eq
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value347 value1 value2 = (output997, value349, value1))
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value349 value1 value2 = (output998, value350, value1)) : Flapjack.WordAlloc.removeDeadStructural input999 value347 value1 value2 = (output999, value350, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child997]
  try dsimp only
  rw [child998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output997_skip, output998_skip]
  kernel_rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value350 value1 value2 = (output1000, value351, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

theorem node1001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1001 value351 value1 value2 = (output1001, value351, value1) := by
  rw [input1001_def, output1001_def]
  kernel_rfl

theorem node1002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value351 value1 value2 = (output1002, value352, value1) := by
  rw [input1002_def, output1002_def]
  kernel_rfl

theorem node1003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value352 value1 value2 = (output1003, value352, value1) := by
  rw [input1003_def, output1003_def]
  kernel_rfl

theorem node1004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value352 value1 value2 = (output1004, value353, value1) := by
  rw [input1004_def, output1004_def]
  kernel_rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value353 value1 value2 = (output1005, value354, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

theorem node1006_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value352 value1 value2 = (output1004, value353, value1))
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value353 value1 value2 = (output1005, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input1006 value352 value1 value2 = (output1006, value354, value1) := by
  rw [input1006_def, output1006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child1005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1005_skip]
  kernel_rfl

theorem node1007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1007 value354 value1 value2 = (output1007, value355, value1) := by
  rw [input1007_def, output1007_def]
  kernel_rfl

theorem node1008_cond_eq
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value352 value1 value2 = (output1006, value354, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value354 value1 value2 = (output1007, value355, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value352 value1 value2 = (output1008, value355, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1006]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1006_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value355 value1 value2 = (output1009, value356, value1) := by
  rw [input1009_def, output1009_def]
  kernel_rfl

theorem node1010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1010 value356 value1 value2 = (output1010, value356, value1) := by
  rw [input1010_def, output1010_def]
  kernel_rfl

theorem node1011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1011 value356 value1 value2 = (output1011, value357, value1) := by
  rw [input1011_def, output1011_def]
  kernel_rfl

theorem node1012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value357 value1 value2 = (output1012, value357, value1) := by
  rw [input1012_def, output1012_def]
  kernel_rfl

theorem node1013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1013 value357 value1 value2 = (output1013, value358, value1) := by
  rw [input1013_def, output1013_def]
  kernel_rfl

theorem node1014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1014 value358 value1 value2 = (output1014, value359, value1) := by
  rw [input1014_def, output1014_def]
  kernel_rfl

theorem node1015_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value357 value1 value2 = (output1013, value358, value1))
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value358 value1 value2 = (output1014, value359, value1)) : Flapjack.WordAlloc.removeDeadStructural input1015 value357 value1 value2 = (output1015, value359, value1) := by
  rw [input1015_def, output1015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  try dsimp only
  rw [child1014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1013_skip, output1014_skip]
  kernel_rfl

theorem node1016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1016 value359 value1 value2 = (output1016, value360, value1) := by
  rw [input1016_def, output1016_def]
  kernel_rfl

theorem node1017_cond_eq
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value357 value1 value2 = (output1015, value359, value1))
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value359 value1 value2 = (output1016, value360, value1)) : Flapjack.WordAlloc.removeDeadStructural input1017 value357 value1 value2 = (output1017, value360, value1) := by
  rw [input1017_def, output1017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1015]
  try dsimp only
  rw [child1016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1015_skip, output1016_skip]
  kernel_rfl

theorem node1018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value360 value1 value2 = (output1018, value361, value1) := by
  rw [input1018_def, output1018_def]
  kernel_rfl

theorem node1019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value361 value1 value2 = (output1019, value361, value1) := by
  rw [input1019_def, output1019_def]
  kernel_rfl

theorem node1020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1020 value361 value1 value2 = (output1020, value362, value1) := by
  rw [input1020_def, output1020_def]
  kernel_rfl

theorem node1021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1021 value362 value1 value2 = (output1021, value363, value1) := by
  rw [input1021_def, output1021_def]
  kernel_rfl

theorem node1022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1022 value363 value1 value2 = (output1022, value363, value1) := by
  rw [input1022_def, output1022_def]
  kernel_rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value363 value1 value2 = (output1023, value364, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages700.Parallel
