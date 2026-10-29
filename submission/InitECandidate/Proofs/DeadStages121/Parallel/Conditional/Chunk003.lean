import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages121.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages121.Parallel
theorem node768_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value346 value1 value2 = (output470, value347, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value347 value1 value2 = (output767, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value346 value1 value2 = (output768, value474, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value343 value1 value2 = (output469, value346, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value346 value1 value2 = (output768, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value343 value1 value2 = (output769, value474, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value342 value1 value2 = (output464, value343, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value343 value1 value2 = (output769, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value342 value1 value2 = (output770, value474, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value341 value1 value2 = (output463, value342, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value342 value1 value2 = (output770, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value341 value1 value2 = (output771, value474, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value340 value1 value2 = (output462, value341, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value341 value1 value2 = (output771, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value340 value1 value2 = (output772, value474, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value340 value1 value2 = (output461, value340, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value340 value1 value2 = (output772, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value340 value1 value2 = (output773, value474, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value339 value1 value2 = (output460, value340, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value340 value1 value2 = (output773, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value339 value1 value2 = (output774, value474, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value336 value1 value2 = (output459, value339, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value339 value1 value2 = (output774, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value336 value1 value2 = (output775, value474, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value335 value1 value2 = (output454, value336, value1))
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value336 value1 value2 = (output775, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input776 value335 value1 value2 = (output776, value474, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output775_skip]
  kernel_rfl

theorem node777_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value334 value1 value2 = (output453, value335, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value335 value1 value2 = (output776, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value334 value1 value2 = (output777, value474, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value333 value1 value2 = (output452, value334, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value334 value1 value2 = (output777, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value333 value1 value2 = (output778, value474, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value330 value1 value2 = (output451, value333, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value333 value1 value2 = (output778, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value330 value1 value2 = (output779, value474, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value329 value1 value2 = (output446, value330, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value330 value1 value2 = (output779, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value329 value1 value2 = (output780, value474, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value328 value1 value2 = (output445, value329, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value329 value1 value2 = (output780, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value328 value1 value2 = (output781, value474, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child445]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output445_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value327 value1 value2 = (output444, value328, value1))
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value328 value1 value2 = (output781, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input782 value327 value1 value2 = (output782, value474, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output781_skip]
  kernel_rfl

theorem node783_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value327 value1 value2 = (output443, value327, value1))
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value327 value1 value2 = (output782, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input783 value327 value1 value2 = (output783, value474, value1) := by
  rw [input783_def, output783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output782_skip]
  kernel_rfl

theorem node784_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value326 value1 value2 = (output442, value327, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value327 value1 value2 = (output783, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value326 value1 value2 = (output784, value474, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value323 value1 value2 = (output441, value326, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value326 value1 value2 = (output784, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value323 value1 value2 = (output785, value474, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value322 value1 value2 = (output436, value323, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value323 value1 value2 = (output785, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value322 value1 value2 = (output786, value474, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value321 value1 value2 = (output435, value322, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value322 value1 value2 = (output786, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value321 value1 value2 = (output787, value474, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value320 value1 value2 = (output434, value321, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value321 value1 value2 = (output787, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value320 value1 value2 = (output788, value474, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value317 value1 value2 = (output433, value320, value1))
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value320 value1 value2 = (output788, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input789 value317 value1 value2 = (output789, value474, value1) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output788_skip]
  kernel_rfl

theorem node790_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value316 value1 value2 = (output428, value317, value1))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value317 value1 value2 = (output789, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input790 value316 value1 value2 = (output790, value474, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value315 value1 value2 = (output427, value316, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value316 value1 value2 = (output790, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value315 value1 value2 = (output791, value474, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value314 value1 value2 = (output426, value315, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value315 value1 value2 = (output791, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value314 value1 value2 = (output792, value474, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value314 value1 value2 = (output425, value314, value1))
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value314 value1 value2 = (output792, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input793 value314 value1 value2 = (output793, value474, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child425]
  try dsimp only
  rw [child792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output425_skip, output792_skip]
  kernel_rfl

theorem node794_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value313 value1 value2 = (output424, value314, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value314 value1 value2 = (output793, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value313 value1 value2 = (output794, value474, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value310 value1 value2 = (output423, value313, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value313 value1 value2 = (output794, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value310 value1 value2 = (output795, value474, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value309 value1 value2 = (output418, value310, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value310 value1 value2 = (output795, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value309 value1 value2 = (output796, value474, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child418]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output418_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value308 value1 value2 = (output417, value309, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value309 value1 value2 = (output796, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value308 value1 value2 = (output797, value474, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output417_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value307 value1 value2 = (output416, value308, value1))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value308 value1 value2 = (output797, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input798 value307 value1 value2 = (output798, value474, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output416_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value304 value1 value2 = (output415, value307, value1))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value307 value1 value2 = (output798, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input799 value304 value1 value2 = (output799, value474, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value303 value1 value2 = (output410, value304, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value304 value1 value2 = (output799, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value303 value1 value2 = (output800, value474, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value302 value1 value2 = (output409, value303, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value303 value1 value2 = (output800, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value302 value1 value2 = (output801, value474, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value301 value1 value2 = (output408, value302, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value302 value1 value2 = (output801, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value301 value1 value2 = (output802, value474, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value301 value1 value2 = (output407, value301, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value301 value1 value2 = (output802, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value301 value1 value2 = (output803, value474, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value300 value1 value2 = (output406, value301, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value301 value1 value2 = (output803, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value300 value1 value2 = (output804, value474, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output803_skip]
  kernel_rfl

theorem node805_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value299 value1 value2 = (output405, value300, value1))
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value300 value1 value2 = (output804, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input805 value299 value1 value2 = (output805, value474, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output804_skip]
  kernel_rfl

theorem node806_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value299 value1 value2 = (output404, value299, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value299 value1 value2 = (output805, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value299 value1 value2 = (output806, value474, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value298 value1 value2 = (output403, value299, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value299 value1 value2 = (output806, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value298 value1 value2 = (output807, value474, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value295 value1 value2 = (output402, value298, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value298 value1 value2 = (output807, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value295 value1 value2 = (output808, value474, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value294 value1 value2 = (output397, value295, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value295 value1 value2 = (output808, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value294 value1 value2 = (output809, value474, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child397]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output397_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value293 value1 value2 = (output396, value294, value1))
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value294 value1 value2 = (output809, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input810 value293 value1 value2 = (output810, value474, value1) := by
  rw [input810_def, output810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output809_skip]
  kernel_rfl

theorem node811_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value292 value1 value2 = (output395, value293, value1))
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value293 value1 value2 = (output810, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input811 value292 value1 value2 = (output811, value474, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output810_skip]
  kernel_rfl

theorem node812_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value291 value1 value2 = (output394, value292, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value292 value1 value2 = (output811, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value291 value1 value2 = (output812, value474, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value290 value1 value2 = (output393, value291, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value291 value1 value2 = (output812, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value290 value1 value2 = (output813, value474, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output393_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value289 value1 value2 = (output392, value290, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value290 value1 value2 = (output813, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value289 value1 value2 = (output814, value474, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value288 value1 value2 = (output391, value289, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value289 value1 value2 = (output814, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value288 value1 value2 = (output815, value474, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value288 value1 value2 = (output390, value288, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value288 value1 value2 = (output815, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value288 value1 value2 = (output816, value474, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value287 value1 value2 = (output389, value288, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value288 value1 value2 = (output816, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value287 value1 value2 = (output817, value474, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value284 value1 value2 = (output388, value287, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value287 value1 value2 = (output817, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value284 value1 value2 = (output818, value474, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value283 value1 value2 = (output383, value284, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value284 value1 value2 = (output818, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value283 value1 value2 = (output819, value474, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value282 value1 value2 = (output382, value283, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value283 value1 value2 = (output819, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value282 value1 value2 = (output820, value474, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value281 value1 value2 = (output381, value282, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value282 value1 value2 = (output820, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value281 value1 value2 = (output821, value474, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value278 value1 value2 = (output380, value281, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value281 value1 value2 = (output821, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value278 value1 value2 = (output822, value474, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value277 value1 value2 = (output375, value278, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value278 value1 value2 = (output822, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value277 value1 value2 = (output823, value474, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value276 value1 value2 = (output374, value277, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value277 value1 value2 = (output823, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value276 value1 value2 = (output824, value474, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value275 value1 value2 = (output373, value276, value1))
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value276 value1 value2 = (output824, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input825 value275 value1 value2 = (output825, value474, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output824_skip]
  kernel_rfl

theorem node826_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value275 value1 value2 = (output372, value275, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value275 value1 value2 = (output825, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value275 value1 value2 = (output826, value474, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value274 value1 value2 = (output371, value275, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value275 value1 value2 = (output826, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value274 value1 value2 = (output827, value474, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value271 value1 value2 = (output370, value274, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value274 value1 value2 = (output827, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value271 value1 value2 = (output828, value474, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value270 value1 value2 = (output365, value271, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value271 value1 value2 = (output828, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value270 value1 value2 = (output829, value474, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value269 value1 value2 = (output364, value270, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value270 value1 value2 = (output829, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value269 value1 value2 = (output830, value474, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value268 value1 value2 = (output363, value269, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value269 value1 value2 = (output830, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value268 value1 value2 = (output831, value474, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value265 value1 value2 = (output362, value268, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value268 value1 value2 = (output831, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value265 value1 value2 = (output832, value474, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value264 value1 value2 = (output357, value265, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value265 value1 value2 = (output832, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value264 value1 value2 = (output833, value474, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value263 value1 value2 = (output356, value264, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value264 value1 value2 = (output833, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value263 value1 value2 = (output834, value474, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value262 value1 value2 = (output355, value263, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value263 value1 value2 = (output834, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value262 value1 value2 = (output835, value474, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value262 value1 value2 = (output354, value262, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value262 value1 value2 = (output835, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value262 value1 value2 = (output836, value474, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value261 value1 value2 = (output353, value262, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value262 value1 value2 = (output836, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value261 value1 value2 = (output837, value474, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value258 value1 value2 = (output352, value261, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value261 value1 value2 = (output837, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value258 value1 value2 = (output838, value474, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value257 value1 value2 = (output347, value258, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value258 value1 value2 = (output838, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value257 value1 value2 = (output839, value474, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value256 value1 value2 = (output346, value257, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value257 value1 value2 = (output839, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value256 value1 value2 = (output840, value474, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value255 value1 value2 = (output345, value256, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value256 value1 value2 = (output840, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value255 value1 value2 = (output841, value474, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value252 value1 value2 = (output344, value255, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value255 value1 value2 = (output841, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value252 value1 value2 = (output842, value474, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value251 value1 value2 = (output339, value252, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value252 value1 value2 = (output842, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value251 value1 value2 = (output843, value474, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value250 value1 value2 = (output338, value251, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value251 value1 value2 = (output843, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value250 value1 value2 = (output844, value474, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value249 value1 value2 = (output337, value250, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value250 value1 value2 = (output844, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value249 value1 value2 = (output845, value474, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value249 value1 value2 = (output336, value249, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value249 value1 value2 = (output845, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value249 value1 value2 = (output846, value474, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value248 value1 value2 = (output335, value249, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value249 value1 value2 = (output846, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value248 value1 value2 = (output847, value474, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value245 value1 value2 = (output334, value248, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value248 value1 value2 = (output847, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value245 value1 value2 = (output848, value474, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value244 value1 value2 = (output329, value245, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value245 value1 value2 = (output848, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value244 value1 value2 = (output849, value474, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value243 value1 value2 = (output328, value244, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value244 value1 value2 = (output849, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value243 value1 value2 = (output850, value474, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value242 value1 value2 = (output327, value243, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value243 value1 value2 = (output850, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value242 value1 value2 = (output851, value474, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value239 value1 value2 = (output326, value242, value1))
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value242 value1 value2 = (output851, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input852 value239 value1 value2 = (output852, value474, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output851_skip]
  kernel_rfl

theorem node853_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value238 value1 value2 = (output321, value239, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value239 value1 value2 = (output852, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value238 value1 value2 = (output853, value474, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value237 value1 value2 = (output320, value238, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value238 value1 value2 = (output853, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value237 value1 value2 = (output854, value474, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value236 value1 value2 = (output319, value237, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value237 value1 value2 = (output854, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value236 value1 value2 = (output855, value474, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value236 value1 value2 = (output318, value236, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value236 value1 value2 = (output855, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value236 value1 value2 = (output856, value474, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value235 value1 value2 = (output317, value236, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value236 value1 value2 = (output856, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value235 value1 value2 = (output857, value474, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output856_skip]
  kernel_rfl

theorem node858_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value232 value1 value2 = (output316, value235, value1))
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value235 value1 value2 = (output857, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input858 value232 value1 value2 = (output858, value474, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output857_skip]
  kernel_rfl

theorem node859_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value231 value1 value2 = (output311, value232, value1))
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value232 value1 value2 = (output858, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input859 value231 value1 value2 = (output859, value474, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output858_skip]
  kernel_rfl

theorem node860_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value230 value1 value2 = (output310, value231, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value231 value1 value2 = (output859, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value230 value1 value2 = (output860, value474, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value229 value1 value2 = (output309, value230, value1))
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value230 value1 value2 = (output860, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input861 value229 value1 value2 = (output861, value474, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output860_skip]
  kernel_rfl

theorem node862_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value226 value1 value2 = (output308, value229, value1))
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value229 value1 value2 = (output861, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input862 value226 value1 value2 = (output862, value474, value1) := by
  rw [input862_def, output862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output861_skip]
  kernel_rfl

theorem node863_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value225 value1 value2 = (output303, value226, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value226 value1 value2 = (output862, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value225 value1 value2 = (output863, value474, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value224 value1 value2 = (output302, value225, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value225 value1 value2 = (output863, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value224 value1 value2 = (output864, value474, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value223 value1 value2 = (output301, value224, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value224 value1 value2 = (output864, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value223 value1 value2 = (output865, value474, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value223 value1 value2 = (output300, value223, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value223 value1 value2 = (output865, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value223 value1 value2 = (output866, value474, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value222 value1 value2 = (output299, value223, value1))
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value223 value1 value2 = (output866, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input867 value222 value1 value2 = (output867, value474, value1) := by
  rw [input867_def, output867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output866_skip]
  kernel_rfl

theorem node868_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value219 value1 value2 = (output298, value222, value1))
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value222 value1 value2 = (output867, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input868 value219 value1 value2 = (output868, value474, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output867_skip]
  kernel_rfl

theorem node869_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value218 value1 value2 = (output293, value219, value1))
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value219 value1 value2 = (output868, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input869 value218 value1 value2 = (output869, value474, value1) := by
  rw [input869_def, output869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output868_skip]
  kernel_rfl

theorem node870_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value217 value1 value2 = (output292, value218, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value218 value1 value2 = (output869, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value217 value1 value2 = (output870, value474, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value216 value1 value2 = (output291, value217, value1))
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value217 value1 value2 = (output870, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input871 value216 value1 value2 = (output871, value474, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output870_skip]
  kernel_rfl

theorem node872_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value213 value1 value2 = (output290, value216, value1))
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value216 value1 value2 = (output871, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input872 value213 value1 value2 = (output872, value474, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output871_skip]
  kernel_rfl

theorem node873_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value212 value1 value2 = (output285, value213, value1))
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value213 value1 value2 = (output872, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input873 value212 value1 value2 = (output873, value474, value1) := by
  rw [input873_def, output873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output872_skip]
  kernel_rfl

theorem node874_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value211 value1 value2 = (output284, value212, value1))
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value212 value1 value2 = (output873, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input874 value211 value1 value2 = (output874, value474, value1) := by
  rw [input874_def, output874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output873_skip]
  kernel_rfl

theorem node875_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value210 value1 value2 = (output283, value211, value1))
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value211 value1 value2 = (output874, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input875 value210 value1 value2 = (output875, value474, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output874_skip]
  kernel_rfl

theorem node876_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value210 value1 value2 = (output282, value210, value1))
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value210 value1 value2 = (output875, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input876 value210 value1 value2 = (output876, value474, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output875_skip]
  kernel_rfl

theorem node877_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value209 value1 value2 = (output281, value210, value1))
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value210 value1 value2 = (output876, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input877 value209 value1 value2 = (output877, value474, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output876_skip]
  kernel_rfl

theorem node878_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value208 value1 value2 = (output280, value209, value1))
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value209 value1 value2 = (output877, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input878 value208 value1 value2 = (output878, value474, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output877_skip]
  kernel_rfl

theorem node879_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value208 value1 value2 = (output279, value208, value1))
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value208 value1 value2 = (output878, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input879 value208 value1 value2 = (output879, value474, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output878_skip]
  kernel_rfl

theorem node880_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value207 value1 value2 = (output278, value208, value1))
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value208 value1 value2 = (output879, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input880 value207 value1 value2 = (output880, value474, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output879_skip]
  kernel_rfl

theorem node881_cond_eq
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value204 value1 value2 = (output277, value207, value1))
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value207 value1 value2 = (output880, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input881 value204 value1 value2 = (output881, value474, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child277]
  try dsimp only
  rw [child880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output277_skip, output880_skip]
  kernel_rfl

theorem node882_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value203 value1 value2 = (output272, value204, value1))
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value204 value1 value2 = (output881, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input882 value203 value1 value2 = (output882, value474, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output881_skip]
  kernel_rfl

theorem node883_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value202 value1 value2 = (output271, value203, value1))
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value203 value1 value2 = (output882, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input883 value202 value1 value2 = (output883, value474, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output882_skip]
  kernel_rfl

theorem node884_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value201 value1 value2 = (output270, value202, value1))
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value202 value1 value2 = (output883, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input884 value201 value1 value2 = (output884, value474, value1) := by
  rw [input884_def, output884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output883_skip]
  kernel_rfl

theorem node885_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value200 value1 value2 = (output269, value201, value1))
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value201 value1 value2 = (output884, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input885 value200 value1 value2 = (output885, value474, value1) := by
  rw [input885_def, output885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output884_skip]
  kernel_rfl

theorem node886_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value199 value1 value2 = (output268, value200, value1))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value200 value1 value2 = (output885, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input886 value199 value1 value2 = (output886, value474, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value198 value1 value2 = (output267, value199, value1))
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value199 value1 value2 = (output886, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input887 value198 value1 value2 = (output887, value474, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output886_skip]
  kernel_rfl

theorem node888_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value197 value1 value2 = (output266, value198, value1))
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value198 value1 value2 = (output887, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input888 value197 value1 value2 = (output888, value474, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output887_skip]
  kernel_rfl

theorem node889_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value197 value1 value2 = (output265, value197, value1))
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value197 value1 value2 = (output888, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input889 value197 value1 value2 = (output889, value474, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output888_skip]
  kernel_rfl

theorem node890_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value196 value1 value2 = (output264, value197, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value197 value1 value2 = (output889, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value196 value1 value2 = (output890, value474, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value193 value1 value2 = (output263, value196, value1))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value196 value1 value2 = (output890, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input891 value193 value1 value2 = (output891, value474, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child263]
  try dsimp only
  rw [child890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output263_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value192 value1 value2 = (output258, value193, value1))
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value193 value1 value2 = (output891, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input892 value192 value1 value2 = (output892, value474, value1) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output891_skip]
  kernel_rfl

theorem node893_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value191 value1 value2 = (output257, value192, value1))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value192 value1 value2 = (output892, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input893 value191 value1 value2 = (output893, value474, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output892_skip]
  kernel_rfl

theorem node894_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value190 value1 value2 = (output256, value191, value1))
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value191 value1 value2 = (output893, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input894 value190 value1 value2 = (output894, value474, value1) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output893_skip]
  kernel_rfl

theorem node895_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value187 value1 value2 = (output255, value190, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value190 value1 value2 = (output894, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input895 value187 value1 value2 = (output895, value474, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value186 value1 value2 = (output250, value187, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value187 value1 value2 = (output895, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value186 value1 value2 = (output896, value474, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value185 value1 value2 = (output249, value186, value1))
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value186 value1 value2 = (output896, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input897 value185 value1 value2 = (output897, value474, value1) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child249]
  try dsimp only
  rw [child896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output249_skip, output896_skip]
  kernel_rfl

theorem node898_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value184 value1 value2 = (output248, value185, value1))
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value185 value1 value2 = (output897, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input898 value184 value1 value2 = (output898, value474, value1) := by
  rw [input898_def, output898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  try dsimp only
  rw [child897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output897_skip]
  kernel_rfl

theorem node899_cond_eq
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value184 value1 value2 = (output247, value184, value1))
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value184 value1 value2 = (output898, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input899 value184 value1 value2 = (output899, value474, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child247]
  try dsimp only
  rw [child898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output247_skip, output898_skip]
  kernel_rfl

theorem node900_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value183 value1 value2 = (output246, value184, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value184 value1 value2 = (output899, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value183 value1 value2 = (output900, value474, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value180 value1 value2 = (output245, value183, value1))
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value183 value1 value2 = (output900, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input901 value180 value1 value2 = (output901, value474, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output900_skip]
  kernel_rfl

theorem node902_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value179 value1 value2 = (output240, value180, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value180 value1 value2 = (output901, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value179 value1 value2 = (output902, value474, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value178 value1 value2 = (output239, value179, value1))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value179 value1 value2 = (output902, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input903 value178 value1 value2 = (output903, value474, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value177 value1 value2 = (output238, value178, value1))
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value178 value1 value2 = (output903, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input904 value177 value1 value2 = (output904, value474, value1) := by
  rw [input904_def, output904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output903_skip]
  kernel_rfl

theorem node905_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value174 value1 value2 = (output237, value177, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value177 value1 value2 = (output904, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value174 value1 value2 = (output905, value474, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value173 value1 value2 = (output232, value174, value1))
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value174 value1 value2 = (output905, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input906 value173 value1 value2 = (output906, value474, value1) := by
  rw [input906_def, output906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output905_skip]
  kernel_rfl

theorem node907_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value172 value1 value2 = (output231, value173, value1))
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value173 value1 value2 = (output906, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input907 value172 value1 value2 = (output907, value474, value1) := by
  rw [input907_def, output907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output906_skip]
  kernel_rfl

theorem node908_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value171 value1 value2 = (output230, value172, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value172 value1 value2 = (output907, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value171 value1 value2 = (output908, value474, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value171 value1 value2 = (output229, value171, value1))
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value171 value1 value2 = (output908, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input909 value171 value1 value2 = (output909, value474, value1) := by
  rw [input909_def, output909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output908_skip]
  kernel_rfl

theorem node910_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value170 value1 value2 = (output228, value171, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value171 value1 value2 = (output909, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value170 value1 value2 = (output910, value474, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value167 value1 value2 = (output227, value170, value1))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value170 value1 value2 = (output910, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value167 value1 value2 = (output911, value474, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value166 value1 value2 = (output222, value167, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value167 value1 value2 = (output911, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value166 value1 value2 = (output912, value474, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value165 value1 value2 = (output221, value166, value1))
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value166 value1 value2 = (output912, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input913 value165 value1 value2 = (output913, value474, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output912_skip]
  kernel_rfl

theorem node914_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value164 value1 value2 = (output220, value165, value1))
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value165 value1 value2 = (output913, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input914 value164 value1 value2 = (output914, value474, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output913_skip]
  kernel_rfl

theorem node915_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value161 value1 value2 = (output219, value164, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value164 value1 value2 = (output914, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value161 value1 value2 = (output915, value474, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value160 value1 value2 = (output214, value161, value1))
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value161 value1 value2 = (output915, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input916 value160 value1 value2 = (output916, value474, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output915_skip]
  kernel_rfl

theorem node917_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value159 value1 value2 = (output213, value160, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value160 value1 value2 = (output916, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value159 value1 value2 = (output917, value474, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value158 value1 value2 = (output212, value159, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value159 value1 value2 = (output917, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value158 value1 value2 = (output918, value474, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child212]
  try dsimp only
  rw [child917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output212_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value158 value1 value2 = (output211, value158, value1))
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value158 value1 value2 = (output918, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input919 value158 value1 value2 = (output919, value474, value1) := by
  rw [input919_def, output919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child211]
  try dsimp only
  rw [child918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output211_skip, output918_skip]
  kernel_rfl

theorem node920_cond_eq
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value157 value1 value2 = (output210, value158, value1))
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value158 value1 value2 = (output919, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input920 value157 value1 value2 = (output920, value474, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child210]
  try dsimp only
  rw [child919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output210_skip, output919_skip]
  kernel_rfl

theorem node921_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value154 value1 value2 = (output209, value157, value1))
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value157 value1 value2 = (output920, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input921 value154 value1 value2 = (output921, value474, value1) := by
  rw [input921_def, output921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output209_skip, output920_skip]
  kernel_rfl

theorem node922_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value153 value1 value2 = (output204, value154, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value154 value1 value2 = (output921, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value153 value1 value2 = (output922, value474, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value152 value1 value2 = (output203, value153, value1))
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value153 value1 value2 = (output922, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input923 value152 value1 value2 = (output923, value474, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output922_skip]
  kernel_rfl

theorem node924_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value151 value1 value2 = (output202, value152, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value152 value1 value2 = (output923, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value151 value1 value2 = (output924, value474, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value148 value1 value2 = (output201, value151, value1))
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value151 value1 value2 = (output924, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input925 value148 value1 value2 = (output925, value474, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output924_skip]
  kernel_rfl

theorem node926_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value147 value1 value2 = (output196, value148, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value148 value1 value2 = (output925, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value147 value1 value2 = (output926, value474, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output925_skip]
  kernel_rfl

theorem node927_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value146 value1 value2 = (output195, value147, value1))
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value147 value1 value2 = (output926, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input927 value146 value1 value2 = (output927, value474, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output926_skip]
  kernel_rfl

theorem node928_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value145 value1 value2 = (output194, value146, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value146 value1 value2 = (output927, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value145 value1 value2 = (output928, value474, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value145 value1 value2 = (output193, value145, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value145 value1 value2 = (output928, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value145 value1 value2 = (output929, value474, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value144 value1 value2 = (output192, value145, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value145 value1 value2 = (output929, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value144 value1 value2 = (output930, value474, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value141 value1 value2 = (output191, value144, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value144 value1 value2 = (output930, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value141 value1 value2 = (output931, value474, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value140 value1 value2 = (output186, value141, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value141 value1 value2 = (output931, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value140 value1 value2 = (output932, value474, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value139 value1 value2 = (output185, value140, value1))
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value140 value1 value2 = (output932, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input933 value139 value1 value2 = (output933, value474, value1) := by
  rw [input933_def, output933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output932_skip]
  kernel_rfl

theorem node934_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value138 value1 value2 = (output184, value139, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value139 value1 value2 = (output933, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input934 value138 value1 value2 = (output934, value474, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value135 value1 value2 = (output183, value138, value1))
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value138 value1 value2 = (output934, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input935 value135 value1 value2 = (output935, value474, value1) := by
  rw [input935_def, output935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output934_skip]
  kernel_rfl

theorem node936_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value134 value1 value2 = (output178, value135, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value135 value1 value2 = (output935, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value134 value1 value2 = (output936, value474, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value133 value1 value2 = (output177, value134, value1))
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value134 value1 value2 = (output936, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input937 value133 value1 value2 = (output937, value474, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output936_skip]
  kernel_rfl

theorem node938_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value132 value1 value2 = (output176, value133, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value133 value1 value2 = (output937, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value132 value1 value2 = (output938, value474, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value132 value1 value2 = (output175, value132, value1))
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value132 value1 value2 = (output938, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input939 value132 value1 value2 = (output939, value474, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output938_skip]
  kernel_rfl

theorem node940_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value131 value1 value2 = (output174, value132, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value132 value1 value2 = (output939, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value131 value1 value2 = (output940, value474, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value128 value1 value2 = (output173, value131, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value131 value1 value2 = (output940, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value128 value1 value2 = (output941, value474, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value127 value1 value2 = (output168, value128, value1))
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value128 value1 value2 = (output941, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input942 value127 value1 value2 = (output942, value474, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output941_skip]
  kernel_rfl

theorem node943_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value126 value1 value2 = (output167, value127, value1))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value127 value1 value2 = (output942, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value126 value1 value2 = (output943, value474, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value125 value1 value2 = (output166, value126, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value126 value1 value2 = (output943, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value125 value1 value2 = (output944, value474, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value122 value1 value2 = (output165, value125, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value125 value1 value2 = (output944, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value122 value1 value2 = (output945, value474, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value121 value1 value2 = (output160, value122, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value122 value1 value2 = (output945, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value121 value1 value2 = (output946, value474, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value120 value1 value2 = (output159, value121, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value121 value1 value2 = (output946, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value120 value1 value2 = (output947, value474, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  try dsimp only
  rw [child946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value119 value1 value2 = (output158, value120, value1))
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value120 value1 value2 = (output947, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input948 value119 value1 value2 = (output948, value474, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output947_skip]
  kernel_rfl

theorem node949_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value119 value1 value2 = (output157, value119, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value119 value1 value2 = (output948, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value119 value1 value2 = (output949, value474, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value118 value1 value2 = (output156, value119, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value119 value1 value2 = (output949, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value118 value1 value2 = (output950, value474, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output949_skip]
  kernel_rfl

theorem node951_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value117 value1 value2 = (output155, value118, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value118 value1 value2 = (output950, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value117 value1 value2 = (output951, value474, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value117 value1 value2 = (output154, value117, value1))
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value117 value1 value2 = (output951, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input952 value117 value1 value2 = (output952, value474, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output951_skip]
  kernel_rfl

theorem node953_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value116 value1 value2 = (output153, value117, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value117 value1 value2 = (output952, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value116 value1 value2 = (output953, value474, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value113 value1 value2 = (output152, value116, value1))
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value116 value1 value2 = (output953, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input954 value113 value1 value2 = (output954, value474, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output953_skip]
  kernel_rfl

theorem node955_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value112 value1 value2 = (output147, value113, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value113 value1 value2 = (output954, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value112 value1 value2 = (output955, value474, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value111 value1 value2 = (output146, value112, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value112 value1 value2 = (output955, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value111 value1 value2 = (output956, value474, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value110 value1 value2 = (output145, value111, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value111 value1 value2 = (output956, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value110 value1 value2 = (output957, value474, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output145_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value109 value1 value2 = (output144, value110, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value110 value1 value2 = (output957, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value109 value1 value2 = (output958, value474, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value108 value1 value2 = (output143, value109, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value109 value1 value2 = (output958, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value108 value1 value2 = (output959, value474, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value107 value1 value2 = (output142, value108, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value108 value1 value2 = (output959, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value107 value1 value2 = (output960, value474, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value106 value1 value2 = (output141, value107, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value107 value1 value2 = (output960, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value106 value1 value2 = (output961, value474, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value106 value1 value2 = (output140, value106, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value106 value1 value2 = (output961, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value106 value1 value2 = (output962, value474, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value105 value1 value2 = (output139, value106, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value106 value1 value2 = (output962, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value105 value1 value2 = (output963, value474, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value102 value1 value2 = (output138, value105, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value105 value1 value2 = (output963, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value102 value1 value2 = (output964, value474, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output138_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value101 value1 value2 = (output133, value102, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value102 value1 value2 = (output964, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value101 value1 value2 = (output965, value474, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value100 value1 value2 = (output132, value101, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value101 value1 value2 = (output965, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value100 value1 value2 = (output966, value474, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value99 value1 value2 = (output131, value100, value1))
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value100 value1 value2 = (output966, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value99 value1 value2 = (output967, value474, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output966_skip]
  kernel_rfl

theorem node968_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value96 value1 value2 = (output130, value99, value1))
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value99 value1 value2 = (output967, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input968 value96 value1 value2 = (output968, value474, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  try dsimp only
  rw [child967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output967_skip]
  kernel_rfl

theorem node969_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value95 value1 value2 = (output125, value96, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value96 value1 value2 = (output968, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value95 value1 value2 = (output969, value474, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value94 value1 value2 = (output124, value95, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value95 value1 value2 = (output969, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value94 value1 value2 = (output970, value474, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value93 value1 value2 = (output123, value94, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value94 value1 value2 = (output970, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value93 value1 value2 = (output971, value474, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value93 value1 value2 = (output122, value93, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value93 value1 value2 = (output971, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value93 value1 value2 = (output972, value474, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value92 value1 value2 = (output121, value93, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value93 value1 value2 = (output972, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value92 value1 value2 = (output973, value474, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value89 value1 value2 = (output120, value92, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value92 value1 value2 = (output973, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value89 value1 value2 = (output974, value474, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value88 value1 value2 = (output115, value89, value1))
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value89 value1 value2 = (output974, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input975 value88 value1 value2 = (output975, value474, value1) := by
  rw [input975_def, output975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output974_skip]
  kernel_rfl

theorem node976_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value87 value1 value2 = (output114, value88, value1))
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value88 value1 value2 = (output975, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input976 value87 value1 value2 = (output976, value474, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output975_skip]
  kernel_rfl

theorem node977_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value86 value1 value2 = (output113, value87, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value87 value1 value2 = (output976, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value86 value1 value2 = (output977, value474, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output976_skip]
  kernel_rfl

theorem node978_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value83 value1 value2 = (output112, value86, value1))
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value86 value1 value2 = (output977, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input978 value83 value1 value2 = (output978, value474, value1) := by
  rw [input978_def, output978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output977_skip]
  kernel_rfl

theorem node979_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value82 value1 value2 = (output107, value83, value1))
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value83 value1 value2 = (output978, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input979 value82 value1 value2 = (output979, value474, value1) := by
  rw [input979_def, output979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output978_skip]
  kernel_rfl

theorem node980_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value81 value1 value2 = (output106, value82, value1))
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value82 value1 value2 = (output979, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input980 value81 value1 value2 = (output980, value474, value1) := by
  rw [input980_def, output980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output979_skip]
  kernel_rfl

theorem node981_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value80 value1 value2 = (output105, value81, value1))
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value81 value1 value2 = (output980, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input981 value80 value1 value2 = (output981, value474, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output980_skip]
  kernel_rfl

theorem node982_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value80 value1 value2 = (output104, value80, value1))
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value80 value1 value2 = (output981, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input982 value80 value1 value2 = (output982, value474, value1) := by
  rw [input982_def, output982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output981_skip]
  kernel_rfl

theorem node983_cond_eq
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value79 value1 value2 = (output103, value80, value1))
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value80 value1 value2 = (output982, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input983 value79 value1 value2 = (output983, value474, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child103]
  try dsimp only
  rw [child982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output103_skip, output982_skip]
  kernel_rfl

theorem node984_cond_eq
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value76 value1 value2 = (output102, value79, value1))
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value79 value1 value2 = (output983, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input984 value76 value1 value2 = (output984, value474, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child102]
  try dsimp only
  rw [child983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output102_skip, output983_skip]
  kernel_rfl

theorem node985_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value75 value1 value2 = (output97, value76, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value76 value1 value2 = (output984, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value75 value1 value2 = (output985, value474, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output984_skip]
  kernel_rfl

theorem node986_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value74 value1 value2 = (output96, value75, value1))
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value75 value1 value2 = (output985, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input986 value74 value1 value2 = (output986, value474, value1) := by
  rw [input986_def, output986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output985_skip]
  kernel_rfl

theorem node987_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value73 value1 value2 = (output95, value74, value1))
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value74 value1 value2 = (output986, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input987 value73 value1 value2 = (output987, value474, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output986_skip]
  kernel_rfl

theorem node988_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value70 value1 value2 = (output94, value73, value1))
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value73 value1 value2 = (output987, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input988 value70 value1 value2 = (output988, value474, value1) := by
  rw [input988_def, output988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output987_skip]
  kernel_rfl

theorem node989_cond_eq
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value69 value1 value2 = (output89, value70, value1))
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value70 value1 value2 = (output988, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input989 value69 value1 value2 = (output989, value474, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child89]
  try dsimp only
  rw [child988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output89_skip, output988_skip]
  kernel_rfl

theorem node990_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value68 value1 value2 = (output88, value69, value1))
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value69 value1 value2 = (output989, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input990 value68 value1 value2 = (output990, value474, value1) := by
  rw [input990_def, output990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output989_skip]
  kernel_rfl

theorem node991_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value67 value1 value2 = (output87, value68, value1))
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value68 value1 value2 = (output990, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input991 value67 value1 value2 = (output991, value474, value1) := by
  rw [input991_def, output991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output990_skip]
  kernel_rfl

theorem node992_cond_eq
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value67 value1 value2 = (output86, value67, value1))
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value67 value1 value2 = (output991, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input992 value67 value1 value2 = (output992, value474, value1) := by
  rw [input992_def, output992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child86]
  try dsimp only
  rw [child991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output86_skip, output991_skip]
  kernel_rfl

theorem node993_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value66 value1 value2 = (output85, value67, value1))
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value67 value1 value2 = (output992, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input993 value66 value1 value2 = (output993, value474, value1) := by
  rw [input993_def, output993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output992_skip]
  kernel_rfl

theorem node994_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value63 value1 value2 = (output84, value66, value1))
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value66 value1 value2 = (output993, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input994 value63 value1 value2 = (output994, value474, value1) := by
  rw [input994_def, output994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output993_skip]
  kernel_rfl

theorem node995_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value62 value1 value2 = (output79, value63, value1))
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value63 value1 value2 = (output994, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input995 value62 value1 value2 = (output995, value474, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output994_skip]
  kernel_rfl

theorem node996_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value61 value1 value2 = (output78, value62, value1))
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value62 value1 value2 = (output995, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input996 value61 value1 value2 = (output996, value474, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output995_skip]
  kernel_rfl

theorem node997_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value60 value1 value2 = (output77, value61, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value61 value1 value2 = (output996, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value60 value1 value2 = (output997, value474, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output996_skip]
  kernel_rfl

theorem node998_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value57 value1 value2 = (output76, value60, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value60 value1 value2 = (output997, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value57 value1 value2 = (output998, value474, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output997_skip]
  kernel_rfl

theorem node999_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value56 value1 value2 = (output71, value57, value1))
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value57 value1 value2 = (output998, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input999 value56 value1 value2 = (output999, value474, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output998_skip]
  kernel_rfl

theorem node1000_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value55 value1 value2 = (output70, value56, value1))
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value56 value1 value2 = (output999, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1000 value55 value1 value2 = (output1000, value474, value1) := by
  rw [input1000_def, output1000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output999_skip]
  kernel_rfl

theorem node1001_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value54 value1 value2 = (output69, value55, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value55 value1 value2 = (output1000, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value54 value1 value2 = (output1001, value474, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child1000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output1000_skip]
  kernel_rfl

theorem node1002_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value54 value1 value2 = (output68, value54, value1))
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value54 value1 value2 = (output1001, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1002 value54 value1 value2 = (output1002, value474, value1) := by
  rw [input1002_def, output1002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child1001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output1001_skip]
  kernel_rfl

theorem node1003_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value53 value1 value2 = (output67, value54, value1))
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value54 value1 value2 = (output1002, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1003 value53 value1 value2 = (output1003, value474, value1) := by
  rw [input1003_def, output1003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child1002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output1002_skip]
  kernel_rfl

theorem node1004_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value52 value1 value2 = (output66, value53, value1))
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value53 value1 value2 = (output1003, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1004 value52 value1 value2 = (output1004, value474, value1) := by
  rw [input1004_def, output1004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child1003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output1003_skip]
  kernel_rfl

theorem node1005_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value52 value1 value2 = (output65, value52, value1))
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value52 value1 value2 = (output1004, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1005 value52 value1 value2 = (output1005, value474, value1) := by
  rw [input1005_def, output1005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child1004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output1004_skip]
  kernel_rfl

theorem node1006_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value51 value1 value2 = (output64, value52, value1))
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value52 value1 value2 = (output1005, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1006 value51 value1 value2 = (output1006, value474, value1) := by
  rw [input1006_def, output1006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child1005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output1005_skip]
  kernel_rfl

theorem node1007_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value48 value1 value2 = (output63, value51, value1))
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value51 value1 value2 = (output1006, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1007 value48 value1 value2 = (output1007, value474, value1) := by
  rw [input1007_def, output1007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child1006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output1006_skip]
  kernel_rfl

theorem node1008_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value47 value1 value2 = (output58, value48, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value48 value1 value2 = (output1007, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value47 value1 value2 = (output1008, value474, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  try dsimp only
  rw [child1007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output1007_skip]
  kernel_rfl

theorem node1009_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value46 value1 value2 = (output57, value47, value1))
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value47 value1 value2 = (output1008, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1009 value46 value1 value2 = (output1009, value474, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child1008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output1008_skip]
  kernel_rfl

theorem node1010_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value45 value1 value2 = (output56, value46, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value46 value1 value2 = (output1009, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value45 value1 value2 = (output1010, value474, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child1009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output1009_skip]
  kernel_rfl

theorem node1011_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value44 value1 value2 = (output55, value45, value1))
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value45 value1 value2 = (output1010, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1011 value44 value1 value2 = (output1011, value474, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child1010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output1010_skip]
  kernel_rfl

theorem node1012_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value43 value1 value2 = (output54, value44, value1))
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value44 value1 value2 = (output1011, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1012 value43 value1 value2 = (output1012, value474, value1) := by
  rw [input1012_def, output1012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  try dsimp only
  rw [child1011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output54_skip, output1011_skip]
  kernel_rfl

theorem node1013_cond_eq
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value42 value1 value2 = (output53, value43, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value43 value1 value2 = (output1012, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value42 value1 value2 = (output1013, value474, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child53]
  try dsimp only
  rw [child1012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output53_skip, output1012_skip]
  kernel_rfl

theorem node1014_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value41 value1 value2 = (output52, value42, value1))
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value42 value1 value2 = (output1013, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1014 value41 value1 value2 = (output1014, value474, value1) := by
  rw [input1014_def, output1014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child1013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output1013_skip]
  kernel_rfl

theorem node1015_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value41 value1 value2 = (output51, value41, value1))
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value41 value1 value2 = (output1014, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1015 value41 value1 value2 = (output1015, value474, value1) := by
  rw [input1015_def, output1015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child1014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output1014_skip]
  kernel_rfl

theorem node1016_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value40 value1 value2 = (output50, value41, value1))
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value41 value1 value2 = (output1015, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1016 value40 value1 value2 = (output1016, value474, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child1015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output1015_skip]
  kernel_rfl

theorem node1017_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value37 value1 value2 = (output49, value40, value1))
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value40 value1 value2 = (output1016, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1017 value37 value1 value2 = (output1017, value474, value1) := by
  rw [input1017_def, output1017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child1016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output1016_skip]
  kernel_rfl

theorem node1018_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1))
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value37 value1 value2 = (output1017, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1018 value36 value1 value2 = (output1018, value474, value1) := by
  rw [input1018_def, output1018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child1017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output1017_skip]
  kernel_rfl

theorem node1019_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value35 value1 value2 = (output43, value36, value1))
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value36 value1 value2 = (output1018, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1019 value35 value1 value2 = (output1019, value474, value1) := by
  rw [input1019_def, output1019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child1018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output1018_skip]
  kernel_rfl

theorem node1020_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value34 value1 value2 = (output42, value35, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value35 value1 value2 = (output1019, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value34 value1 value2 = (output1020, value474, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  try dsimp only
  rw [child1019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output42_skip, output1019_skip]
  kernel_rfl

theorem node1021_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value31 value1 value2 = (output41, value34, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value34 value1 value2 = (output1020, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value31 value1 value2 = (output1021, value474, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  try dsimp only
  rw [child1020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output41_skip, output1020_skip]
  kernel_rfl

theorem node1022_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value30 value1 value2 = (output36, value31, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value31 value1 value2 = (output1021, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value30 value1 value2 = (output1022, value474, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child1021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output1021_skip]
  kernel_rfl

theorem node1023_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value29 value1 value2 = (output35, value30, value1))
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value30 value1 value2 = (output1022, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1023 value29 value1 value2 = (output1023, value474, value1) := by
  rw [input1023_def, output1023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child1022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output1022_skip]
  kernel_rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages121.Parallel
