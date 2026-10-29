import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages652.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages652.Parallel
theorem node768_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value322 value1 value2 = (output544, value323, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value323 value1 value2 = (output767, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value322 value1 value2 = (output768, value418, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output767_skip]
  kernel_rfl

theorem node769_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value321 value1 value2 = (output543, value322, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value322 value1 value2 = (output768, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value321 value1 value2 = (output769, value418, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output768_skip]
  kernel_rfl

theorem node770_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value320 value1 value2 = (output542, value321, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value321 value1 value2 = (output769, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value320 value1 value2 = (output770, value418, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output769_skip]
  kernel_rfl

theorem node771_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value319 value1 value2 = (output541, value320, value1))
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value320 value1 value2 = (output770, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input771 value319 value1 value2 = (output771, value418, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output770_skip]
  kernel_rfl

theorem node772_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value318 value1 value2 = (output540, value319, value1))
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value319 value1 value2 = (output771, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input772 value318 value1 value2 = (output772, value418, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output771_skip]
  kernel_rfl

theorem node773_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value317 value1 value2 = (output539, value318, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value318 value1 value2 = (output772, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value317 value1 value2 = (output773, value418, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output772_skip]
  kernel_rfl

theorem node774_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value316 value1 value2 = (output538, value317, value1))
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value317 value1 value2 = (output773, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input774 value316 value1 value2 = (output774, value418, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output773_skip]
  kernel_rfl

theorem node775_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value315 value1 value2 = (output537, value316, value1))
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value316 value1 value2 = (output774, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input775 value315 value1 value2 = (output775, value418, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output774_skip]
  kernel_rfl

theorem node776_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value312 value1 value2 = (output536, value315, value1))
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value315 value1 value2 = (output775, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input776 value312 value1 value2 = (output776, value418, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output775_skip]
  kernel_rfl

theorem node777_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value312 value1 value2 = (output531, value312, value1))
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value312 value1 value2 = (output776, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input777 value312 value1 value2 = (output777, value418, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output776_skip]
  kernel_rfl

theorem node778_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value311 value1 value2 = (output530, value312, value1))
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value312 value1 value2 = (output777, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input778 value311 value1 value2 = (output778, value418, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output777_skip]
  kernel_rfl

theorem node779_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value310 value1 value2 = (output529, value311, value1))
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value311 value1 value2 = (output778, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input779 value310 value1 value2 = (output779, value418, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output778_skip]
  kernel_rfl

theorem node780_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value309 value1 value2 = (output528, value310, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value310 value1 value2 = (output779, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value309 value1 value2 = (output780, value418, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output779_skip]
  kernel_rfl

theorem node781_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value308 value1 value2 = (output527, value309, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value309 value1 value2 = (output780, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value308 value1 value2 = (output781, value418, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output780_skip]
  kernel_rfl

theorem node782_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value307 value1 value2 = (output526, value308, value1))
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value308 value1 value2 = (output781, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input782 value307 value1 value2 = (output782, value418, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output781_skip]
  kernel_rfl

theorem node783_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value306 value1 value2 = (output525, value307, value1))
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value307 value1 value2 = (output782, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input783 value306 value1 value2 = (output783, value418, value1) := by
  rw [input783_def, output783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output782_skip]
  kernel_rfl

theorem node784_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value305 value1 value2 = (output524, value306, value1))
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value306 value1 value2 = (output783, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input784 value305 value1 value2 = (output784, value418, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output783_skip]
  kernel_rfl

theorem node785_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value304 value1 value2 = (output523, value305, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value305 value1 value2 = (output784, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value304 value1 value2 = (output785, value418, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output784_skip]
  kernel_rfl

theorem node786_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value301 value1 value2 = (output522, value304, value1))
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value304 value1 value2 = (output785, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input786 value301 value1 value2 = (output786, value418, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output785_skip]
  kernel_rfl

theorem node787_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value301 value1 value2 = (output517, value301, value1))
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value301 value1 value2 = (output786, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input787 value301 value1 value2 = (output787, value418, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output786_skip]
  kernel_rfl

theorem node788_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value300 value1 value2 = (output516, value301, value1))
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value301 value1 value2 = (output787, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input788 value300 value1 value2 = (output788, value418, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output787_skip]
  kernel_rfl

theorem node789_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value299 value1 value2 = (output515, value300, value1))
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value300 value1 value2 = (output788, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input789 value299 value1 value2 = (output789, value418, value1) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output788_skip]
  kernel_rfl

theorem node790_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value298 value1 value2 = (output514, value299, value1))
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value299 value1 value2 = (output789, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input790 value298 value1 value2 = (output790, value418, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output789_skip]
  kernel_rfl

theorem node791_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value297 value1 value2 = (output513, value298, value1))
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value298 value1 value2 = (output790, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input791 value297 value1 value2 = (output791, value418, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output790_skip]
  kernel_rfl

theorem node792_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value296 value1 value2 = (output512, value297, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value297 value1 value2 = (output791, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value296 value1 value2 = (output792, value418, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output791_skip]
  kernel_rfl

theorem node793_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value295 value1 value2 = (output511, value296, value1))
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value296 value1 value2 = (output792, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input793 value295 value1 value2 = (output793, value418, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output792_skip]
  kernel_rfl

theorem node794_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value294 value1 value2 = (output510, value295, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value295 value1 value2 = (output793, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value294 value1 value2 = (output794, value418, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output793_skip]
  kernel_rfl

theorem node795_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value293 value1 value2 = (output509, value294, value1))
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value294 value1 value2 = (output794, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input795 value293 value1 value2 = (output795, value418, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output794_skip]
  kernel_rfl

theorem node796_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value290 value1 value2 = (output508, value293, value1))
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value293 value1 value2 = (output795, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input796 value290 value1 value2 = (output796, value418, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output795_skip]
  kernel_rfl

theorem node797_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value290 value1 value2 = (output503, value290, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value290 value1 value2 = (output796, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value290 value1 value2 = (output797, value418, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output796_skip]
  kernel_rfl

theorem node798_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value289 value1 value2 = (output502, value290, value1))
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value290 value1 value2 = (output797, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input798 value289 value1 value2 = (output798, value418, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output797_skip]
  kernel_rfl

theorem node799_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value288 value1 value2 = (output501, value289, value1))
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value289 value1 value2 = (output798, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input799 value288 value1 value2 = (output799, value418, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output798_skip]
  kernel_rfl

theorem node800_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value204 value1 value2 = (output500, value288, value1))
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value288 value1 value2 = (output799, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input800 value204 value1 value2 = (output800, value418, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output799_skip]
  kernel_rfl

theorem node801_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value204 value1 value2 = (output259, value204, value1))
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value204 value1 value2 = (output800, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input801 value204 value1 value2 = (output801, value418, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output800_skip]
  kernel_rfl

theorem node802_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value203 value1 value2 = (output258, value204, value1))
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value204 value1 value2 = (output801, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input802 value203 value1 value2 = (output802, value418, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output801_skip]
  kernel_rfl

theorem node803_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value202 value1 value2 = (output257, value203, value1))
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value203 value1 value2 = (output802, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input803 value202 value1 value2 = (output803, value418, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output802_skip]
  kernel_rfl

theorem node804_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value201 value1 value2 = (output256, value202, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value202 value1 value2 = (output803, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value201 value1 value2 = (output804, value418, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output803_skip]
  kernel_rfl

theorem node805_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value200 value1 value2 = (output255, value201, value1))
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value201 value1 value2 = (output804, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input805 value200 value1 value2 = (output805, value418, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output804_skip]
  kernel_rfl

theorem node806_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value199 value1 value2 = (output254, value200, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value200 value1 value2 = (output805, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value199 value1 value2 = (output806, value418, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output805_skip]
  kernel_rfl

theorem node807_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value198 value1 value2 = (output253, value199, value1))
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value199 value1 value2 = (output806, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input807 value198 value1 value2 = (output807, value418, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output806_skip]
  kernel_rfl

theorem node808_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value197 value1 value2 = (output252, value198, value1))
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value198 value1 value2 = (output807, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input808 value197 value1 value2 = (output808, value418, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output807_skip]
  kernel_rfl

theorem node809_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value196 value1 value2 = (output251, value197, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value197 value1 value2 = (output808, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value196 value1 value2 = (output809, value418, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output808_skip]
  kernel_rfl

theorem node810_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value193 value1 value2 = (output250, value196, value1))
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value196 value1 value2 = (output809, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input810 value193 value1 value2 = (output810, value418, value1) := by
  rw [input810_def, output810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output809_skip]
  kernel_rfl

theorem node811_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value193 value1 value2 = (output245, value193, value1))
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value193 value1 value2 = (output810, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input811 value193 value1 value2 = (output811, value418, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output810_skip]
  kernel_rfl

theorem node812_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value192 value1 value2 = (output244, value193, value1))
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value193 value1 value2 = (output811, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input812 value192 value1 value2 = (output812, value418, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output811_skip]
  kernel_rfl

theorem node813_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value191 value1 value2 = (output243, value192, value1))
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value192 value1 value2 = (output812, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input813 value191 value1 value2 = (output813, value418, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output812_skip]
  kernel_rfl

theorem node814_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value190 value1 value2 = (output242, value191, value1))
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value191 value1 value2 = (output813, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input814 value190 value1 value2 = (output814, value418, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output813_skip]
  kernel_rfl

theorem node815_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value189 value1 value2 = (output241, value190, value1))
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value190 value1 value2 = (output814, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input815 value189 value1 value2 = (output815, value418, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output814_skip]
  kernel_rfl

theorem node816_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value188 value1 value2 = (output240, value189, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value189 value1 value2 = (output815, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value188 value1 value2 = (output816, value418, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output815_skip]
  kernel_rfl

theorem node817_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value187 value1 value2 = (output239, value188, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value188 value1 value2 = (output816, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value187 value1 value2 = (output817, value418, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output816_skip]
  kernel_rfl

theorem node818_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value186 value1 value2 = (output238, value187, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value187 value1 value2 = (output817, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value186 value1 value2 = (output818, value418, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output817_skip]
  kernel_rfl

theorem node819_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value185 value1 value2 = (output237, value186, value1))
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value186 value1 value2 = (output818, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input819 value185 value1 value2 = (output819, value418, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output818_skip]
  kernel_rfl

theorem node820_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value182 value1 value2 = (output236, value185, value1))
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value185 value1 value2 = (output819, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input820 value182 value1 value2 = (output820, value418, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  try dsimp only
  rw [child819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output819_skip]
  kernel_rfl

theorem node821_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value182 value1 value2 = (output231, value182, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value182 value1 value2 = (output820, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value182 value1 value2 = (output821, value418, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output820_skip]
  kernel_rfl

theorem node822_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value181 value1 value2 = (output230, value182, value1))
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value182 value1 value2 = (output821, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input822 value181 value1 value2 = (output822, value418, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output821_skip]
  kernel_rfl

theorem node823_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value180 value1 value2 = (output229, value181, value1))
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value181 value1 value2 = (output822, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input823 value180 value1 value2 = (output823, value418, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output822_skip]
  kernel_rfl

theorem node824_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value179 value1 value2 = (output228, value180, value1))
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value180 value1 value2 = (output823, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input824 value179 value1 value2 = (output824, value418, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output823_skip]
  kernel_rfl

theorem node825_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value178 value1 value2 = (output227, value179, value1))
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value179 value1 value2 = (output824, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input825 value178 value1 value2 = (output825, value418, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output824_skip]
  kernel_rfl

theorem node826_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value175 value1 value2 = (output226, value178, value1))
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value178 value1 value2 = (output825, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input826 value175 value1 value2 = (output826, value418, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output825_skip]
  kernel_rfl

theorem node827_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value175 value1 value2 = (output221, value175, value1))
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value175 value1 value2 = (output826, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input827 value175 value1 value2 = (output827, value418, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output826_skip]
  kernel_rfl

theorem node828_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value174 value1 value2 = (output220, value175, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value175 value1 value2 = (output827, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value174 value1 value2 = (output828, value418, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output827_skip]
  kernel_rfl

theorem node829_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value173 value1 value2 = (output219, value174, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value174 value1 value2 = (output828, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value173 value1 value2 = (output829, value418, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output828_skip]
  kernel_rfl

theorem node830_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value172 value1 value2 = (output218, value173, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value173 value1 value2 = (output829, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value172 value1 value2 = (output830, value418, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output829_skip]
  kernel_rfl

theorem node831_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value171 value1 value2 = (output217, value172, value1))
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value172 value1 value2 = (output830, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input831 value171 value1 value2 = (output831, value418, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output830_skip]
  kernel_rfl

theorem node832_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value170 value1 value2 = (output216, value171, value1))
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value171 value1 value2 = (output831, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input832 value170 value1 value2 = (output832, value418, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output831_skip]
  kernel_rfl

theorem node833_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value169 value1 value2 = (output215, value170, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value170 value1 value2 = (output832, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value169 value1 value2 = (output833, value418, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output832_skip]
  kernel_rfl

theorem node834_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value168 value1 value2 = (output214, value169, value1))
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value169 value1 value2 = (output833, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input834 value168 value1 value2 = (output834, value418, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output833_skip]
  kernel_rfl

theorem node835_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value167 value1 value2 = (output213, value168, value1))
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value168 value1 value2 = (output834, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input835 value167 value1 value2 = (output835, value418, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output834_skip]
  kernel_rfl

theorem node836_cond_eq
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value164 value1 value2 = (output212, value167, value1))
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value167 value1 value2 = (output835, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input836 value164 value1 value2 = (output836, value418, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child212]
  try dsimp only
  rw [child835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output212_skip, output835_skip]
  kernel_rfl

theorem node837_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value164 value1 value2 = (output207, value164, value1))
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value164 value1 value2 = (output836, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input837 value164 value1 value2 = (output837, value418, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output836_skip]
  kernel_rfl

theorem node838_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value163 value1 value2 = (output206, value164, value1))
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value164 value1 value2 = (output837, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input838 value163 value1 value2 = (output838, value418, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output837_skip]
  kernel_rfl

theorem node839_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value162 value1 value2 = (output205, value163, value1))
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value163 value1 value2 = (output838, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input839 value162 value1 value2 = (output839, value418, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output838_skip]
  kernel_rfl

theorem node840_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value161 value1 value2 = (output204, value162, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value162 value1 value2 = (output839, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value161 value1 value2 = (output840, value418, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output839_skip]
  kernel_rfl

theorem node841_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value160 value1 value2 = (output203, value161, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value161 value1 value2 = (output840, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value160 value1 value2 = (output841, value418, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output840_skip]
  kernel_rfl

theorem node842_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value159 value1 value2 = (output202, value160, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value160 value1 value2 = (output841, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value159 value1 value2 = (output842, value418, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output841_skip]
  kernel_rfl

theorem node843_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value158 value1 value2 = (output201, value159, value1))
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value159 value1 value2 = (output842, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input843 value158 value1 value2 = (output843, value418, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output842_skip]
  kernel_rfl

theorem node844_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value157 value1 value2 = (output200, value158, value1))
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value158 value1 value2 = (output843, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input844 value157 value1 value2 = (output844, value418, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output843_skip]
  kernel_rfl

theorem node845_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value156 value1 value2 = (output199, value157, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value157 value1 value2 = (output844, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value156 value1 value2 = (output845, value418, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output844_skip]
  kernel_rfl

theorem node846_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value153 value1 value2 = (output198, value156, value1))
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value156 value1 value2 = (output845, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input846 value153 value1 value2 = (output846, value418, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output845_skip]
  kernel_rfl

theorem node847_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value153 value1 value2 = (output193, value153, value1))
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value153 value1 value2 = (output846, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input847 value153 value1 value2 = (output847, value418, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output846_skip]
  kernel_rfl

theorem node848_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value152 value1 value2 = (output192, value153, value1))
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value153 value1 value2 = (output847, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input848 value152 value1 value2 = (output848, value418, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output847_skip]
  kernel_rfl

theorem node849_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value151 value1 value2 = (output191, value152, value1))
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value152 value1 value2 = (output848, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input849 value151 value1 value2 = (output849, value418, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output848_skip]
  kernel_rfl

theorem node850_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value150 value1 value2 = (output190, value151, value1))
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value151 value1 value2 = (output849, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input850 value150 value1 value2 = (output850, value418, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output849_skip]
  kernel_rfl

theorem node851_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value149 value1 value2 = (output189, value150, value1))
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value150 value1 value2 = (output850, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input851 value149 value1 value2 = (output851, value418, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output850_skip]
  kernel_rfl

theorem node852_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value146 value1 value2 = (output188, value149, value1))
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value149 value1 value2 = (output851, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input852 value146 value1 value2 = (output852, value418, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output851_skip]
  kernel_rfl

theorem node853_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value146 value1 value2 = (output183, value146, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value146 value1 value2 = (output852, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value146 value1 value2 = (output853, value418, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output852_skip]
  kernel_rfl

theorem node854_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value145 value1 value2 = (output182, value146, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value146 value1 value2 = (output853, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value145 value1 value2 = (output854, value418, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output853_skip]
  kernel_rfl

theorem node855_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value144 value1 value2 = (output181, value145, value1))
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value145 value1 value2 = (output854, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input855 value144 value1 value2 = (output855, value418, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output854_skip]
  kernel_rfl

theorem node856_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value143 value1 value2 = (output180, value144, value1))
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value144 value1 value2 = (output855, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input856 value143 value1 value2 = (output856, value418, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output855_skip]
  kernel_rfl

theorem node857_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value142 value1 value2 = (output179, value143, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value143 value1 value2 = (output856, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value142 value1 value2 = (output857, value418, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output856_skip]
  kernel_rfl

theorem node858_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value141 value1 value2 = (output178, value142, value1))
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value142 value1 value2 = (output857, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input858 value141 value1 value2 = (output858, value418, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output857_skip]
  kernel_rfl

theorem node859_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value140 value1 value2 = (output177, value141, value1))
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value141 value1 value2 = (output858, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input859 value140 value1 value2 = (output859, value418, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output858_skip]
  kernel_rfl

theorem node860_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value139 value1 value2 = (output176, value140, value1))
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value140 value1 value2 = (output859, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input860 value139 value1 value2 = (output860, value418, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output859_skip]
  kernel_rfl

theorem node861_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value138 value1 value2 = (output175, value139, value1))
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value139 value1 value2 = (output860, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input861 value138 value1 value2 = (output861, value418, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output860_skip]
  kernel_rfl

theorem node862_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value135 value1 value2 = (output174, value138, value1))
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value138 value1 value2 = (output861, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input862 value135 value1 value2 = (output862, value418, value1) := by
  rw [input862_def, output862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output861_skip]
  kernel_rfl

theorem node863_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value135 value1 value2 = (output169, value135, value1))
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value135 value1 value2 = (output862, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input863 value135 value1 value2 = (output863, value418, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output862_skip]
  kernel_rfl

theorem node864_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value134 value1 value2 = (output168, value135, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value135 value1 value2 = (output863, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value134 value1 value2 = (output864, value418, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output863_skip]
  kernel_rfl

theorem node865_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value133 value1 value2 = (output167, value134, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value134 value1 value2 = (output864, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value133 value1 value2 = (output865, value418, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output864_skip]
  kernel_rfl

theorem node866_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value132 value1 value2 = (output166, value133, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value133 value1 value2 = (output865, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value132 value1 value2 = (output866, value418, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output865_skip]
  kernel_rfl

theorem node867_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value131 value1 value2 = (output165, value132, value1))
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value132 value1 value2 = (output866, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input867 value131 value1 value2 = (output867, value418, value1) := by
  rw [input867_def, output867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output866_skip]
  kernel_rfl

theorem node868_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value130 value1 value2 = (output164, value131, value1))
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value131 value1 value2 = (output867, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input868 value130 value1 value2 = (output868, value418, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output867_skip]
  kernel_rfl

theorem node869_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value129 value1 value2 = (output163, value130, value1))
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value130 value1 value2 = (output868, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input869 value129 value1 value2 = (output869, value418, value1) := by
  rw [input869_def, output869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output868_skip]
  kernel_rfl

theorem node870_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value128 value1 value2 = (output162, value129, value1))
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value129 value1 value2 = (output869, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input870 value128 value1 value2 = (output870, value418, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output869_skip]
  kernel_rfl

theorem node871_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value127 value1 value2 = (output161, value128, value1))
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value128 value1 value2 = (output870, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input871 value127 value1 value2 = (output871, value418, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output870_skip]
  kernel_rfl

theorem node872_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value124 value1 value2 = (output160, value127, value1))
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value127 value1 value2 = (output871, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input872 value124 value1 value2 = (output872, value418, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output871_skip]
  kernel_rfl

theorem node873_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value124 value1 value2 = (output155, value124, value1))
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value124 value1 value2 = (output872, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input873 value124 value1 value2 = (output873, value418, value1) := by
  rw [input873_def, output873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output872_skip]
  kernel_rfl

theorem node874_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value123 value1 value2 = (output154, value124, value1))
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value124 value1 value2 = (output873, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input874 value123 value1 value2 = (output874, value418, value1) := by
  rw [input874_def, output874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output873_skip]
  kernel_rfl

theorem node875_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value122 value1 value2 = (output153, value123, value1))
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value123 value1 value2 = (output874, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input875 value122 value1 value2 = (output875, value418, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output874_skip]
  kernel_rfl

theorem node876_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value121 value1 value2 = (output152, value122, value1))
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value122 value1 value2 = (output875, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input876 value121 value1 value2 = (output876, value418, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output875_skip]
  kernel_rfl

theorem node877_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value120 value1 value2 = (output151, value121, value1))
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value121 value1 value2 = (output876, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input877 value120 value1 value2 = (output877, value418, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output876_skip]
  kernel_rfl

theorem node878_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value119 value1 value2 = (output150, value120, value1))
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value120 value1 value2 = (output877, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input878 value119 value1 value2 = (output878, value418, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output877_skip]
  kernel_rfl

theorem node879_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value118 value1 value2 = (output149, value119, value1))
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value119 value1 value2 = (output878, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input879 value118 value1 value2 = (output879, value418, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output878_skip]
  kernel_rfl

theorem node880_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value117 value1 value2 = (output148, value118, value1))
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value118 value1 value2 = (output879, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input880 value117 value1 value2 = (output880, value418, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output879_skip]
  kernel_rfl

theorem node881_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value116 value1 value2 = (output147, value117, value1))
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value117 value1 value2 = (output880, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input881 value116 value1 value2 = (output881, value418, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output880_skip]
  kernel_rfl

theorem node882_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value113 value1 value2 = (output146, value116, value1))
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value116 value1 value2 = (output881, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input882 value113 value1 value2 = (output882, value418, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output881_skip]
  kernel_rfl

theorem node883_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value113 value1 value2 = (output141, value113, value1))
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value113 value1 value2 = (output882, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input883 value113 value1 value2 = (output883, value418, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  try dsimp only
  rw [child882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output882_skip]
  kernel_rfl

theorem node884_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value112 value1 value2 = (output140, value113, value1))
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value113 value1 value2 = (output883, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input884 value112 value1 value2 = (output884, value418, value1) := by
  rw [input884_def, output884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output883_skip]
  kernel_rfl

theorem node885_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value111 value1 value2 = (output139, value112, value1))
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value112 value1 value2 = (output884, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input885 value111 value1 value2 = (output885, value418, value1) := by
  rw [input885_def, output885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output884_skip]
  kernel_rfl

theorem node886_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value110 value1 value2 = (output138, value111, value1))
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value111 value1 value2 = (output885, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input886 value110 value1 value2 = (output886, value418, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  try dsimp only
  rw [child885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output138_skip, output885_skip]
  kernel_rfl

theorem node887_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value109 value1 value2 = (output137, value110, value1))
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value110 value1 value2 = (output886, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input887 value109 value1 value2 = (output887, value418, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output886_skip]
  kernel_rfl

theorem node888_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value108 value1 value2 = (output136, value109, value1))
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value109 value1 value2 = (output887, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input888 value108 value1 value2 = (output888, value418, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output887_skip]
  kernel_rfl

theorem node889_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value107 value1 value2 = (output135, value108, value1))
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value108 value1 value2 = (output888, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input889 value107 value1 value2 = (output889, value418, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output888_skip]
  kernel_rfl

theorem node890_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value106 value1 value2 = (output134, value107, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value107 value1 value2 = (output889, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value106 value1 value2 = (output890, value418, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output889_skip]
  kernel_rfl

theorem node891_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value105 value1 value2 = (output133, value106, value1))
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value106 value1 value2 = (output890, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input891 value105 value1 value2 = (output891, value418, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output890_skip]
  kernel_rfl

theorem node892_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value102 value1 value2 = (output132, value105, value1))
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value105 value1 value2 = (output891, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input892 value102 value1 value2 = (output892, value418, value1) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output891_skip]
  kernel_rfl

theorem node893_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value102 value1 value2 = (output127, value102, value1))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value102 value1 value2 = (output892, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input893 value102 value1 value2 = (output893, value418, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output892_skip]
  kernel_rfl

theorem node894_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value101 value1 value2 = (output126, value102, value1))
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value102 value1 value2 = (output893, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input894 value101 value1 value2 = (output894, value418, value1) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output893_skip]
  kernel_rfl

theorem node895_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value100 value1 value2 = (output125, value101, value1))
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value101 value1 value2 = (output894, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input895 value100 value1 value2 = (output895, value418, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output894_skip]
  kernel_rfl

theorem node896_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value99 value1 value2 = (output124, value100, value1))
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value100 value1 value2 = (output895, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input896 value99 value1 value2 = (output896, value418, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output895_skip]
  kernel_rfl

theorem node897_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value98 value1 value2 = (output123, value99, value1))
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value99 value1 value2 = (output896, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input897 value98 value1 value2 = (output897, value418, value1) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output896_skip]
  kernel_rfl

theorem node898_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value97 value1 value2 = (output122, value98, value1))
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value98 value1 value2 = (output897, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input898 value97 value1 value2 = (output898, value418, value1) := by
  rw [input898_def, output898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output897_skip]
  kernel_rfl

theorem node899_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value96 value1 value2 = (output121, value97, value1))
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value97 value1 value2 = (output898, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input899 value96 value1 value2 = (output899, value418, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output898_skip]
  kernel_rfl

theorem node900_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value95 value1 value2 = (output120, value96, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value96 value1 value2 = (output899, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value95 value1 value2 = (output900, value418, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output899_skip]
  kernel_rfl

theorem node901_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value94 value1 value2 = (output119, value95, value1))
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value95 value1 value2 = (output900, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input901 value94 value1 value2 = (output901, value418, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output900_skip]
  kernel_rfl

theorem node902_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value91 value1 value2 = (output118, value94, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value94 value1 value2 = (output901, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value91 value1 value2 = (output902, value418, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output901_skip]
  kernel_rfl

theorem node903_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value91 value1 value2 = (output113, value91, value1))
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value91 value1 value2 = (output902, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input903 value91 value1 value2 = (output903, value418, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output902_skip]
  kernel_rfl

theorem node904_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value90 value1 value2 = (output112, value91, value1))
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value91 value1 value2 = (output903, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input904 value90 value1 value2 = (output904, value418, value1) := by
  rw [input904_def, output904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output903_skip]
  kernel_rfl

theorem node905_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value89 value1 value2 = (output111, value90, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value90 value1 value2 = (output904, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value89 value1 value2 = (output905, value418, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  try dsimp only
  rw [child904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output904_skip]
  kernel_rfl

theorem node906_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value88 value1 value2 = (output110, value89, value1))
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value89 value1 value2 = (output905, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input906 value88 value1 value2 = (output906, value418, value1) := by
  rw [input906_def, output906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output905_skip]
  kernel_rfl

theorem node907_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value87 value1 value2 = (output109, value88, value1))
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value88 value1 value2 = (output906, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input907 value87 value1 value2 = (output907, value418, value1) := by
  rw [input907_def, output907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output906_skip]
  kernel_rfl

theorem node908_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value87, value1))
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value87 value1 value2 = (output907, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input908 value86 value1 value2 = (output908, value418, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output907_skip]
  kernel_rfl

theorem node909_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1))
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value86 value1 value2 = (output908, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input909 value85 value1 value2 = (output909, value418, value1) := by
  rw [input909_def, output909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output908_skip]
  kernel_rfl

theorem node910_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value84 value1 value2 = (output106, value85, value1))
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value85 value1 value2 = (output909, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input910 value84 value1 value2 = (output910, value418, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output909_skip]
  kernel_rfl

theorem node911_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value83 value1 value2 = (output105, value84, value1))
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value84 value1 value2 = (output910, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input911 value83 value1 value2 = (output911, value418, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output910_skip]
  kernel_rfl

theorem node912_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value80 value1 value2 = (output104, value83, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value83 value1 value2 = (output911, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value80 value1 value2 = (output912, value418, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output911_skip]
  kernel_rfl

theorem node913_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value80 value1 value2 = (output99, value80, value1))
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value80 value1 value2 = (output912, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input913 value80 value1 value2 = (output913, value418, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output912_skip]
  kernel_rfl

theorem node914_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value79 value1 value2 = (output98, value80, value1))
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value80 value1 value2 = (output913, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input914 value79 value1 value2 = (output914, value418, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output913_skip]
  kernel_rfl

theorem node915_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value78 value1 value2 = (output97, value79, value1))
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value79 value1 value2 = (output914, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input915 value78 value1 value2 = (output915, value418, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output914_skip]
  kernel_rfl

theorem node916_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value77 value1 value2 = (output96, value78, value1))
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value78 value1 value2 = (output915, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input916 value77 value1 value2 = (output916, value418, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output915_skip]
  kernel_rfl

theorem node917_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value76 value1 value2 = (output95, value77, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value77 value1 value2 = (output916, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value76 value1 value2 = (output917, value418, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output916_skip]
  kernel_rfl

theorem node918_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value75 value1 value2 = (output94, value76, value1))
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value76 value1 value2 = (output917, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input918 value75 value1 value2 = (output918, value418, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output917_skip]
  kernel_rfl

theorem node919_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value74 value1 value2 = (output93, value75, value1))
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value75 value1 value2 = (output918, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input919 value74 value1 value2 = (output919, value418, value1) := by
  rw [input919_def, output919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output918_skip]
  kernel_rfl

theorem node920_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value73 value1 value2 = (output92, value74, value1))
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value74 value1 value2 = (output919, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input920 value73 value1 value2 = (output920, value418, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output919_skip]
  kernel_rfl

theorem node921_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value72 value1 value2 = (output91, value73, value1))
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value73 value1 value2 = (output920, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input921 value72 value1 value2 = (output921, value418, value1) := by
  rw [input921_def, output921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output920_skip]
  kernel_rfl

theorem node922_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value69 value1 value2 = (output90, value72, value1))
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value72 value1 value2 = (output921, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input922 value69 value1 value2 = (output922, value418, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  try dsimp only
  rw [child921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output90_skip, output921_skip]
  kernel_rfl

theorem node923_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value69 value1 value2 = (output85, value69, value1))
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value69 value1 value2 = (output922, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input923 value69 value1 value2 = (output923, value418, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output922_skip]
  kernel_rfl

theorem node924_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value68 value1 value2 = (output84, value69, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value69 value1 value2 = (output923, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value68 value1 value2 = (output924, value418, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output923_skip]
  kernel_rfl

theorem node925_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value67 value1 value2 = (output83, value68, value1))
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value68 value1 value2 = (output924, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input925 value67 value1 value2 = (output925, value418, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output924_skip]
  kernel_rfl

theorem node926_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value66 value1 value2 = (output82, value67, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value67 value1 value2 = (output925, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value66 value1 value2 = (output926, value418, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  try dsimp only
  rw [child925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output82_skip, output925_skip]
  kernel_rfl

theorem node927_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value65 value1 value2 = (output81, value66, value1))
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value66 value1 value2 = (output926, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input927 value65 value1 value2 = (output927, value418, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output926_skip]
  kernel_rfl

theorem node928_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value64 value1 value2 = (output80, value65, value1))
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value65 value1 value2 = (output927, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input928 value64 value1 value2 = (output928, value418, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output927_skip]
  kernel_rfl

theorem node929_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value63 value1 value2 = (output79, value64, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value64 value1 value2 = (output928, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value63 value1 value2 = (output929, value418, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output928_skip]
  kernel_rfl

theorem node930_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value62 value1 value2 = (output78, value63, value1))
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value63 value1 value2 = (output929, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input930 value62 value1 value2 = (output930, value418, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output929_skip]
  kernel_rfl

theorem node931_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value61 value1 value2 = (output77, value62, value1))
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value62 value1 value2 = (output930, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input931 value61 value1 value2 = (output931, value418, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output930_skip]
  kernel_rfl

theorem node932_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value58 value1 value2 = (output76, value61, value1))
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value61 value1 value2 = (output931, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input932 value58 value1 value2 = (output932, value418, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output931_skip]
  kernel_rfl

theorem node933_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value58 value1 value2 = (output71, value58, value1))
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value58 value1 value2 = (output932, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input933 value58 value1 value2 = (output933, value418, value1) := by
  rw [input933_def, output933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output932_skip]
  kernel_rfl

theorem node934_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value57 value1 value2 = (output70, value58, value1))
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value58 value1 value2 = (output933, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input934 value57 value1 value2 = (output934, value418, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output933_skip]
  kernel_rfl

theorem node935_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value56 value1 value2 = (output69, value57, value1))
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value57 value1 value2 = (output934, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input935 value56 value1 value2 = (output935, value418, value1) := by
  rw [input935_def, output935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output934_skip]
  kernel_rfl

theorem node936_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value55 value1 value2 = (output68, value56, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value56 value1 value2 = (output935, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value55 value1 value2 = (output936, value418, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output935_skip]
  kernel_rfl

theorem node937_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value54 value1 value2 = (output67, value55, value1))
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value55 value1 value2 = (output936, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input937 value54 value1 value2 = (output937, value418, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output936_skip]
  kernel_rfl

theorem node938_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value53 value1 value2 = (output66, value54, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value54 value1 value2 = (output937, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value53 value1 value2 = (output938, value418, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output937_skip]
  kernel_rfl

theorem node939_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value52 value1 value2 = (output65, value53, value1))
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value53 value1 value2 = (output938, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input939 value52 value1 value2 = (output939, value418, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output938_skip]
  kernel_rfl

theorem node940_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value50 value1 value2 = (output64, value52, value1))
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value52 value1 value2 = (output939, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input940 value50 value1 value2 = (output940, value418, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output939_skip]
  kernel_rfl

theorem node941_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value49 value1 value2 = (output61, value50, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value50 value1 value2 = (output940, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value49 value1 value2 = (output941, value418, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output61_skip, output940_skip]
  kernel_rfl

theorem node942_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value47 value1 value2 = (output60, value49, value1))
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value49 value1 value2 = (output941, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input942 value47 value1 value2 = (output942, value418, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output941_skip]
  kernel_rfl

theorem node943_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value46 value1 value2 = (output57, value47, value1))
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value47 value1 value2 = (output942, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input943 value46 value1 value2 = (output943, value418, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output942_skip]
  kernel_rfl

theorem node944_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value44 value1 value2 = (output56, value46, value1))
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value46 value1 value2 = (output943, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input944 value44 value1 value2 = (output944, value418, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output943_skip]
  kernel_rfl

theorem node945_cond_eq
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value43 value1 value2 = (output53, value44, value1))
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value44 value1 value2 = (output944, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input945 value43 value1 value2 = (output945, value418, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child53]
  try dsimp only
  rw [child944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output53_skip, output944_skip]
  kernel_rfl

theorem node946_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value41 value1 value2 = (output52, value43, value1))
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value43 value1 value2 = (output945, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input946 value41 value1 value2 = (output946, value418, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output945_skip]
  kernel_rfl

theorem node947_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value39 value1 value2 = (output49, value41, value1))
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value41 value1 value2 = (output946, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input947 value39 value1 value2 = (output947, value418, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output946_skip]
  kernel_rfl

theorem node948_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value38 value1 value2 = (output46, value39, value1))
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value39 value1 value2 = (output947, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input948 value38 value1 value2 = (output948, value418, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output947_skip]
  kernel_rfl

theorem node949_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value37 value1 value2 = (output45, value38, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value38 value1 value2 = (output948, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value37 value1 value2 = (output949, value418, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output948_skip]
  kernel_rfl

theorem node950_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value37 value1 value2 = (output949, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value36 value1 value2 = (output950, value418, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output949_skip]
  kernel_rfl

theorem node951_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value35 value1 value2 = (output43, value36, value1))
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value36 value1 value2 = (output950, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input951 value35 value1 value2 = (output951, value418, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output950_skip]
  kernel_rfl

theorem node952_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value34 value1 value2 = (output42, value35, value1))
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value35 value1 value2 = (output951, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input952 value34 value1 value2 = (output952, value418, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  try dsimp only
  rw [child951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output42_skip, output951_skip]
  kernel_rfl

theorem node953_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value32 value1 value2 = (output41, value34, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value34 value1 value2 = (output952, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value32 value1 value2 = (output953, value418, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  try dsimp only
  rw [child952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output41_skip, output952_skip]
  kernel_rfl

theorem node954_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value31 value1 value2 = (output38, value32, value1))
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value32 value1 value2 = (output953, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input954 value31 value1 value2 = (output954, value418, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output953_skip]
  kernel_rfl

theorem node955_cond_eq
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value29 value1 value2 = (output37, value31, value1))
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value31 value1 value2 = (output954, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input955 value29 value1 value2 = (output955, value418, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child37]
  try dsimp only
  rw [child954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output37_skip, output954_skip]
  kernel_rfl

theorem node956_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value28 value1 value2 = (output34, value29, value1))
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value29 value1 value2 = (output955, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input956 value28 value1 value2 = (output956, value418, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output955_skip]
  kernel_rfl

theorem node957_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value26 value1 value2 = (output33, value28, value1))
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value28 value1 value2 = (output956, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input957 value26 value1 value2 = (output957, value418, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output956_skip]
  kernel_rfl

theorem node958_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value25 value1 value2 = (output30, value26, value1))
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value26 value1 value2 = (output957, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input958 value25 value1 value2 = (output958, value418, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output957_skip]
  kernel_rfl

theorem node959_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value23 value1 value2 = (output29, value25, value1))
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value25 value1 value2 = (output958, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input959 value23 value1 value2 = (output959, value418, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output958_skip]
  kernel_rfl

theorem node960_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value21 value1 value2 = (output26, value23, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value23 value1 value2 = (output959, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value21 value1 value2 = (output960, value418, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output959_skip]
  kernel_rfl

theorem node961_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value20 value1 value2 = (output23, value21, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value21 value1 value2 = (output960, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value20 value1 value2 = (output961, value418, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output960_skip]
  kernel_rfl

theorem node962_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value19 value1 value2 = (output22, value20, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value20 value1 value2 = (output961, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value19 value1 value2 = (output962, value418, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output961_skip]
  kernel_rfl

theorem node963_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value18 value1 value2 = (output21, value19, value1))
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value19 value1 value2 = (output962, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input963 value18 value1 value2 = (output963, value418, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output962_skip]
  kernel_rfl

theorem node964_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value17 value1 value2 = (output20, value18, value1))
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value18 value1 value2 = (output963, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input964 value17 value1 value2 = (output964, value418, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output963_skip]
  kernel_rfl

theorem node965_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value17 value1 value2 = (output964, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value16 value1 value2 = (output965, value418, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output964_skip]
  kernel_rfl

theorem node966_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1))
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value16 value1 value2 = (output965, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input966 value14 value1 value2 = (output966, value418, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output965_skip]
  kernel_rfl

theorem node967_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1))
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value14 value1 value2 = (output966, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input967 value13 value1 value2 = (output967, value418, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output966_skip]
  kernel_rfl

theorem node968_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1))
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value13 value1 value2 = (output967, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input968 value11 value1 value2 = (output968, value418, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output967_skip]
  kernel_rfl

theorem node969_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1))
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value11 value1 value2 = (output968, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input969 value10 value1 value2 = (output969, value418, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output968_skip]
  kernel_rfl

theorem node970_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1))
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value10 value1 value2 = (output969, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input970 value8 value1 value2 = (output970, value418, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output969_skip]
  kernel_rfl

theorem node971_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value8 value1 value2 = (output970, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input971 value7 value1 value2 = (output971, value418, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output970_skip]
  kernel_rfl

theorem node972_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value7 value1 value2 = (output971, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value5 value1 value2 = (output972, value418, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output971_skip]
  kernel_rfl

theorem node973_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value5 value1 value2 = (output972, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value4 value1 value2 = (output973, value418, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output972_skip]
  kernel_rfl

theorem node974_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value4 value1 value2 = (output973, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value0 value1 value2 = (output974, value418, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output973_skip]
  kernel_rfl

theorem node975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input975 value418 value1 value2 = (output975, value419, value1) := by
  rw [input975_def, output975_def]
  kernel_rfl

theorem node976_cond_eq
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value0 value1 value2 = (output974, value418, value1))
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value418 value1 value2 = (output975, value419, value1)) : Flapjack.WordAlloc.removeDeadStructural input976 value0 value1 value2 = (output976, value419, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child974]
  try dsimp only
  rw [child975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output974_skip, output975_skip]
  kernel_rfl

#print axioms node976_cond_eq
end InitECandidate.Proofs.DeadStages652.Parallel
