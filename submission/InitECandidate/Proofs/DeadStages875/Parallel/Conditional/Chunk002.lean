import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node512_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value24 value1 value2 = (output500, value24, value1))
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value24 value1 value2 = (output511, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input512 value24 value1 value2 = (output512, value24, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output511_skip]
  kernel_rfl

theorem node513_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value24 value1 value2 = (output499, value24, value1))
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value24 value1 value2 = (output512, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input513 value24 value1 value2 = (output513, value24, value1) := by
  rw [input513_def, output513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output512_skip]
  kernel_rfl

theorem node514_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value24 value1 value2 = (output498, value24, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value24 value1 value2 = (output513, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value24 value1 value2 = (output514, value24, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value24 value1 value2 = (output497, value24, value1))
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value24 value1 value2 = (output514, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input515 value24 value1 value2 = (output515, value24, value1) := by
  rw [input515_def, output515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output514_skip]
  kernel_rfl

theorem node516_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value24 value1 value2 = (output496, value24, value1))
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value24 value1 value2 = (output515, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input516 value24 value1 value2 = (output516, value24, value1) := by
  rw [input516_def, output516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output515_skip]
  kernel_rfl

theorem node517_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value24 value1 value2 = (output495, value24, value1))
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value24 value1 value2 = (output516, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input517 value24 value1 value2 = (output517, value24, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output516_skip]
  kernel_rfl

theorem node518_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value24 value1 value2 = (output494, value24, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value24 value1 value2 = (output517, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value24 value1 value2 = (output518, value24, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value24 value1 value2 = (output493, value24, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value24 value1 value2 = (output518, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value24 value1 value2 = (output519, value24, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value24 value1 value2 = (output492, value24, value1))
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value24 value1 value2 = (output519, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input520 value24 value1 value2 = (output520, value24, value1) := by
  rw [input520_def, output520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output519_skip]
  kernel_rfl

theorem node521_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value24 value1 value2 = (output491, value24, value1))
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value24 value1 value2 = (output520, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input521 value24 value1 value2 = (output521, value24, value1) := by
  rw [input521_def, output521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output520_skip]
  kernel_rfl

theorem node522_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value24 value1 value2 = (output490, value24, value1))
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value24 value1 value2 = (output521, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input522 value24 value1 value2 = (output522, value24, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output521_skip]
  kernel_rfl

theorem node523_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value24 value1 value2 = (output489, value24, value1))
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value24 value1 value2 = (output522, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input523 value24 value1 value2 = (output523, value24, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output522_skip]
  kernel_rfl

theorem node524_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value24 value1 value2 = (output488, value24, value1))
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value24 value1 value2 = (output523, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input524 value24 value1 value2 = (output524, value24, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output523_skip]
  kernel_rfl

theorem node525_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value24 value1 value2 = (output487, value24, value1))
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value24 value1 value2 = (output524, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input525 value24 value1 value2 = (output525, value24, value1) := by
  rw [input525_def, output525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output524_skip]
  kernel_rfl

theorem node526_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value24 value1 value2 = (output486, value24, value1))
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value24 value1 value2 = (output525, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input526 value24 value1 value2 = (output526, value24, value1) := by
  rw [input526_def, output526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output525_skip]
  kernel_rfl

theorem node527_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value24 value1 value2 = (output485, value24, value1))
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value24 value1 value2 = (output526, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input527 value24 value1 value2 = (output527, value24, value1) := by
  rw [input527_def, output527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output526_skip]
  kernel_rfl

theorem node528_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value24 value1 value2 = (output484, value24, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value24 value1 value2 = (output527, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value24 value1 value2 = (output528, value24, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output527_skip]
  kernel_rfl

theorem node529_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value24 value1 value2 = (output483, value24, value1))
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value24 value1 value2 = (output528, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input529 value24 value1 value2 = (output529, value24, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output528_skip]
  kernel_rfl

theorem node530_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value24 value1 value2 = (output482, value24, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value24 value1 value2 = (output529, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value24 value1 value2 = (output530, value24, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value24 value1 value2 = (output481, value24, value1))
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value24 value1 value2 = (output530, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input531 value24 value1 value2 = (output531, value24, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child481]
  try dsimp only
  rw [child530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output481_skip, output530_skip]
  kernel_rfl

theorem node532_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value24 value1 value2 = (output480, value24, value1))
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value24 value1 value2 = (output531, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input532 value24 value1 value2 = (output532, value24, value1) := by
  rw [input532_def, output532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output531_skip]
  kernel_rfl

theorem node533_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value24 value1 value2 = (output479, value24, value1))
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value24 value1 value2 = (output532, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input533 value24 value1 value2 = (output533, value24, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output532_skip]
  kernel_rfl

theorem node534_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value24 value1 value2 = (output478, value24, value1))
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value24 value1 value2 = (output533, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input534 value24 value1 value2 = (output534, value24, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output533_skip]
  kernel_rfl

theorem node535_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value24 value1 value2 = (output477, value24, value1))
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value24 value1 value2 = (output534, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input535 value24 value1 value2 = (output535, value24, value1) := by
  rw [input535_def, output535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output534_skip]
  kernel_rfl

theorem node536_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value24 value1 value2 = (output476, value24, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value24 value1 value2 = (output535, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value24 value1 value2 = (output536, value24, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output535_skip]
  kernel_rfl

theorem node537_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value24 value1 value2 = (output475, value24, value1))
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value24 value1 value2 = (output536, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input537 value24 value1 value2 = (output537, value24, value1) := by
  rw [input537_def, output537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output536_skip]
  kernel_rfl

theorem node538_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value24 value1 value2 = (output474, value24, value1))
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value24 value1 value2 = (output537, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input538 value24 value1 value2 = (output538, value24, value1) := by
  rw [input538_def, output538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output537_skip]
  kernel_rfl

theorem node539_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value24 value1 value2 = (output473, value24, value1))
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value24 value1 value2 = (output538, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input539 value24 value1 value2 = (output539, value24, value1) := by
  rw [input539_def, output539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output538_skip]
  kernel_rfl

theorem node540_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value24 value1 value2 = (output472, value24, value1))
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value24 value1 value2 = (output539, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input540 value24 value1 value2 = (output540, value24, value1) := by
  rw [input540_def, output540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output539_skip]
  kernel_rfl

theorem node541_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value24 value1 value2 = (output471, value24, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value24 value1 value2 = (output540, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value24 value1 value2 = (output541, value24, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value24 value1 value2 = (output470, value24, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value24 value1 value2 = (output541, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value24 value1 value2 = (output542, value24, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output541_skip]
  kernel_rfl

theorem node543_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value24 value1 value2 = (output469, value24, value1))
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value24 value1 value2 = (output542, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input543 value24 value1 value2 = (output543, value24, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output542_skip]
  kernel_rfl

theorem node544_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value24 value1 value2 = (output468, value24, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value24 value1 value2 = (output543, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value24 value1 value2 = (output544, value24, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value24 value1 value2 = (output467, value24, value1))
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value24 value1 value2 = (output544, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input545 value24 value1 value2 = (output545, value24, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output544_skip]
  kernel_rfl

theorem node546_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value24 value1 value2 = (output466, value24, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value24 value1 value2 = (output545, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value24 value1 value2 = (output546, value24, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value24 value1 value2 = (output465, value24, value1))
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value24 value1 value2 = (output546, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input547 value24 value1 value2 = (output547, value24, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output546_skip]
  kernel_rfl

theorem node548_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value24 value1 value2 = (output464, value24, value1))
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value24 value1 value2 = (output547, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input548 value24 value1 value2 = (output548, value24, value1) := by
  rw [input548_def, output548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output547_skip]
  kernel_rfl

theorem node549_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value24 value1 value2 = (output463, value24, value1))
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value24 value1 value2 = (output548, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input549 value24 value1 value2 = (output549, value24, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output548_skip]
  kernel_rfl

theorem node550_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value24 value1 value2 = (output462, value24, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value24 value1 value2 = (output549, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value24 value1 value2 = (output550, value24, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value24 value1 value2 = (output461, value24, value1))
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value24 value1 value2 = (output550, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input551 value24 value1 value2 = (output551, value24, value1) := by
  rw [input551_def, output551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output550_skip]
  kernel_rfl

theorem node552_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value24 value1 value2 = (output460, value24, value1))
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value24 value1 value2 = (output551, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input552 value24 value1 value2 = (output552, value24, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output551_skip]
  kernel_rfl

theorem node553_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value24 value1 value2 = (output459, value24, value1))
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value24 value1 value2 = (output552, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input553 value24 value1 value2 = (output553, value24, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output552_skip]
  kernel_rfl

theorem node554_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value24 value1 value2 = (output458, value24, value1))
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value24 value1 value2 = (output553, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input554 value24 value1 value2 = (output554, value24, value1) := by
  rw [input554_def, output554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output553_skip]
  kernel_rfl

theorem node555_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value24 value1 value2 = (output457, value24, value1))
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value24 value1 value2 = (output554, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input555 value24 value1 value2 = (output555, value24, value1) := by
  rw [input555_def, output555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output554_skip]
  kernel_rfl

theorem node556_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value24 value1 value2 = (output456, value24, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value24 value1 value2 = (output555, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value24 value1 value2 = (output556, value24, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value24 value1 value2 = (output455, value24, value1))
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value24 value1 value2 = (output556, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input557 value24 value1 value2 = (output557, value24, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output556_skip]
  kernel_rfl

theorem node558_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value24 value1 value2 = (output454, value24, value1))
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value24 value1 value2 = (output557, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input558 value24 value1 value2 = (output558, value24, value1) := by
  rw [input558_def, output558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output557_skip]
  kernel_rfl

theorem node559_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value24 value1 value2 = (output453, value24, value1))
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value24 value1 value2 = (output558, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input559 value24 value1 value2 = (output559, value24, value1) := by
  rw [input559_def, output559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output558_skip]
  kernel_rfl

theorem node560_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value24 value1 value2 = (output452, value24, value1))
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value24 value1 value2 = (output559, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input560 value24 value1 value2 = (output560, value24, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output559_skip]
  kernel_rfl

theorem node561_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value24 value1 value2 = (output451, value24, value1))
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value24 value1 value2 = (output560, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input561 value24 value1 value2 = (output561, value24, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output560_skip]
  kernel_rfl

theorem node562_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value24 value1 value2 = (output450, value24, value1))
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value24 value1 value2 = (output561, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input562 value24 value1 value2 = (output562, value24, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output561_skip]
  kernel_rfl

theorem node563_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value24 value1 value2 = (output449, value24, value1))
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value24 value1 value2 = (output562, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input563 value24 value1 value2 = (output563, value24, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output562_skip]
  kernel_rfl

theorem node564_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value24 value1 value2 = (output448, value24, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value24 value1 value2 = (output563, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value24 value1 value2 = (output564, value24, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value24 value1 value2 = (output447, value24, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value24 value1 value2 = (output564, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value24 value1 value2 = (output565, value24, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value24 value1 value2 = (output446, value24, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value24 value1 value2 = (output565, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value24 value1 value2 = (output566, value24, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value24 value1 value2 = (output445, value24, value1))
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value24 value1 value2 = (output566, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input567 value24 value1 value2 = (output567, value24, value1) := by
  rw [input567_def, output567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child445]
  try dsimp only
  rw [child566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output445_skip, output566_skip]
  kernel_rfl

theorem node568_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value24 value1 value2 = (output444, value24, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value24 value1 value2 = (output567, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value24 value1 value2 = (output568, value24, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value24 value1 value2 = (output443, value24, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value24 value1 value2 = (output568, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value24 value1 value2 = (output569, value24, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value24 value1 value2 = (output442, value24, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value24 value1 value2 = (output569, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value24 value1 value2 = (output570, value24, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value24 value1 value2 = (output441, value24, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value24 value1 value2 = (output570, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value24 value1 value2 = (output571, value24, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value24 value1 value2 = (output440, value24, value1))
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value24 value1 value2 = (output571, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input572 value24 value1 value2 = (output572, value24, value1) := by
  rw [input572_def, output572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output571_skip]
  kernel_rfl

theorem node573_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value24 value1 value2 = (output439, value24, value1))
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value24 value1 value2 = (output572, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input573 value24 value1 value2 = (output573, value24, value1) := by
  rw [input573_def, output573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output572_skip]
  kernel_rfl

theorem node574_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value24 value1 value2 = (output438, value24, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value24 value1 value2 = (output573, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value24 value1 value2 = (output574, value24, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value24 value1 value2 = (output437, value24, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value24 value1 value2 = (output574, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value24 value1 value2 = (output575, value24, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value24 value1 value2 = (output436, value24, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value24 value1 value2 = (output575, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value24 value1 value2 = (output576, value24, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value24 value1 value2 = (output435, value24, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value24 value1 value2 = (output576, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value24 value1 value2 = (output577, value24, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value24 value1 value2 = (output434, value24, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value24 value1 value2 = (output577, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value24 value1 value2 = (output578, value24, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value24 value1 value2 = (output433, value24, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value24 value1 value2 = (output578, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value24 value1 value2 = (output579, value24, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value24 value1 value2 = (output432, value24, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value24 value1 value2 = (output579, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value24 value1 value2 = (output580, value24, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value24 value1 value2 = (output431, value24, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value24 value1 value2 = (output580, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value24 value1 value2 = (output581, value24, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child431]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output431_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value24 value1 value2 = (output430, value24, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value24 value1 value2 = (output581, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value24 value1 value2 = (output582, value24, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value24 value1 value2 = (output429, value24, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value24 value1 value2 = (output582, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value24 value1 value2 = (output583, value24, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output429_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value24 value1 value2 = (output428, value24, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value24 value1 value2 = (output583, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value24 value1 value2 = (output584, value24, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value24 value1 value2 = (output427, value24, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value24 value1 value2 = (output584, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value24 value1 value2 = (output585, value24, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value24 value1 value2 = (output426, value24, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value24 value1 value2 = (output585, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value24 value1 value2 = (output586, value24, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value24 value1 value2 = (output425, value24, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value24 value1 value2 = (output586, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value24 value1 value2 = (output587, value24, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child425]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output425_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value24 value1 value2 = (output424, value24, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value24 value1 value2 = (output587, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value24 value1 value2 = (output588, value24, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output587_skip]
  kernel_rfl

theorem node589_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value24 value1 value2 = (output423, value24, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value24 value1 value2 = (output588, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value24 value1 value2 = (output589, value24, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value24 value1 value2 = (output422, value24, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value24 value1 value2 = (output589, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value24 value1 value2 = (output590, value24, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  try dsimp only
  rw [child589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output422_skip, output589_skip]
  kernel_rfl

theorem node591_cond_eq
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value24 value1 value2 = (output421, value24, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value24 value1 value2 = (output590, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value24 value1 value2 = (output591, value24, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child421]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output421_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value24 value1 value2 = (output420, value24, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value24 value1 value2 = (output591, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value24 value1 value2 = (output592, value24, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child420]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output420_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value24 value1 value2 = (output419, value24, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value24 value1 value2 = (output592, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value24 value1 value2 = (output593, value24, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child419]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output419_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value24 value1 value2 = (output418, value24, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value24 value1 value2 = (output593, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value24 value1 value2 = (output594, value24, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child418]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output418_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value24 value1 value2 = (output417, value24, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value24 value1 value2 = (output594, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value24 value1 value2 = (output595, value24, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output417_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value24 value1 value2 = (output416, value24, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value24 value1 value2 = (output595, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value24 value1 value2 = (output596, value24, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output416_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value24 value1 value2 = (output415, value24, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value24 value1 value2 = (output596, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value24 value1 value2 = (output597, value24, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value24 value1 value2 = (output414, value24, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value24 value1 value2 = (output597, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value24 value1 value2 = (output598, value24, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output597_skip]
  kernel_rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value24 value1 value2 = (output599, value55, value1) := by
  rw [input599_def, output599_def]
  kernel_rfl

theorem node600_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value24 value1 value2 = (output598, value24, value1))
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value24 value1 value2 = (output599, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input600 value24 value1 value2 = (output600, value55, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output599_skip]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value55 value1 value2 = (output601, value55, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value55 value1 value2 = (output602, value55, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input603 value55 value1 value2 = (output603, value55, value1) := by
  rw [input603_def, output603_def]
  kernel_rfl

theorem node604_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value55 value1 value2 = (output602, value55, value1))
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value55 value1 value2 = (output603, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input604 value55 value1 value2 = (output604, value55, value1) := by
  rw [input604_def, output604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output603_skip]
  kernel_rfl

theorem node605_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value55 value1 value2 = (output601, value55, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value55 value1 value2 = (output604, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value55 value1 value2 = (output605, value55, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output604_skip]
  kernel_rfl

theorem node606_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value24 value1 value2 = (output600, value55, value1))
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value55 value1 value2 = (output605, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input606 value24 value1 value2 = (output606, value55, value1) := by
  rw [input606_def, output606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output605_skip]
  kernel_rfl

theorem node607_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value24 value1 value2 = (output413, value54, value1))
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value24 value1 value2 = (output606, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input607 value24 value1 value2 = (output607, value57, value1) := by
  rw [input607_def, output607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child413]
  try dsimp only
  rw [child606]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output606_skip]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value57 value1 value2 = (output608, value54, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value54 value1 value2 = (output609, value58, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value58 value1 value2 = (output610, value59, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value59 value1 value2 = (output611, value60, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value58 value1 value2 = (output610, value59, value1))
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value59 value1 value2 = (output611, value60, value1)) : Flapjack.WordAlloc.removeDeadStructural input612 value58 value1 value2 = (output612, value60, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output611_skip]
  kernel_rfl

theorem node613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input613 value60 value1 value2 = (output613, value61, value1) := by
  rw [input613_def, output613_def]
  kernel_rfl

theorem node614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input614 value61 value1 value2 = (output614, value62, value1) := by
  rw [input614_def, output614_def]
  kernel_rfl

theorem node615_cond_eq
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value60 value1 value2 = (output613, value61, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value61 value1 value2 = (output614, value62, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value60 value1 value2 = (output615, value62, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child613]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output613_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value62 value1 value2 = (output616, value60, value1) := by
  rw [input616_def, output616_def]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value60 value1 value2 = (output617, value63, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value63 value1 value2 = (output618, value64, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value64 value1 value2 = (output619, value64, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value64 value1 value2 = (output620, value65, value1) := by
  rw [input620_def, output620_def]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value65 value1 value2 = (output621, value66, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value64 value1 value2 = (output620, value65, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value65 value1 value2 = (output621, value66, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value64 value1 value2 = (output622, value66, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output621_skip]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value66 value1 value2 = (output623, value67, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value64 value1 value2 = (output622, value66, value1))
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value66 value1 value2 = (output623, value67, value1)) : Flapjack.WordAlloc.removeDeadStructural input624 value64 value1 value2 = (output624, value67, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output623_skip]
  kernel_rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value67 value1 value2 = (output625, value68, value1) := by
  rw [input625_def, output625_def]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value68 value1 value2 = (output626, value68, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value68 value1 value2 = (output627, value69, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value69 value1 value2 = (output628, value70, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value70 value1 value2 = (output629, value71, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value71 value1 value2 = (output630, value72, value1) := by
  rw [input630_def, output630_def]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value72 value1 value2 = (output631, value73, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value71 value1 value2 = (output630, value72, value1))
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value72 value1 value2 = (output631, value73, value1)) : Flapjack.WordAlloc.removeDeadStructural input632 value71 value1 value2 = (output632, value73, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output631_skip]
  kernel_rfl

theorem node633_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value70 value1 value2 = (output629, value71, value1))
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value71 value1 value2 = (output632, value73, value1)) : Flapjack.WordAlloc.removeDeadStructural input633 value70 value1 value2 = (output633, value73, value1) := by
  rw [input633_def, output633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output632_skip]
  kernel_rfl

theorem node634_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value69 value1 value2 = (output628, value70, value1))
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value70 value1 value2 = (output633, value73, value1)) : Flapjack.WordAlloc.removeDeadStructural input634 value69 value1 value2 = (output634, value73, value1) := by
  rw [input634_def, output634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output633_skip]
  kernel_rfl

theorem node635_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value68 value1 value2 = (output627, value69, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value69 value1 value2 = (output634, value73, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value68 value1 value2 = (output635, value73, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value73 value1 value2 = (output636, value73, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value74 value1 value75 = (output637, value76, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value76 value1 value75 = (output638, value76, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value76 value1 value75 = (output639, value76, value1) := by
  rw [input639_def, output639_def]
  kernel_rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value76 value1 value75 = (output640, value76, value1) := by
  rw [input640_def, output640_def]
  kernel_rfl

theorem node641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input641 value76 value1 value75 = (output641, value76, value1) := by
  rw [input641_def, output641_def]
  kernel_rfl

theorem node642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input642 value76 value1 value75 = (output642, value76, value1) := by
  rw [input642_def, output642_def]
  kernel_rfl

theorem node643_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value76 value1 value75 = (output641, value76, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value76 value1 value75 = (output642, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value76 value1 value75 = (output643, value76, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value76 value1 value75 = (output640, value76, value1))
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value76 value1 value75 = (output643, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input644 value76 value1 value75 = (output644, value76, value1) := by
  rw [input644_def, output644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child640]
  try dsimp only
  rw [child643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output640_skip, output643_skip]
  kernel_rfl

theorem node645_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value76 value1 value75 = (output639, value76, value1))
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value76 value1 value75 = (output644, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input645 value76 value1 value75 = (output645, value76, value1) := by
  rw [input645_def, output645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output644_skip]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value76 value1 value75 = (output646, value77, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value76 value1 value75 = (output645, value76, value1))
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value76 value1 value75 = (output646, value77, value1)) : Flapjack.WordAlloc.removeDeadStructural input647 value76 value1 value75 = (output647, value77, value1) := by
  rw [input647_def, output647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output646_skip]
  kernel_rfl

theorem node648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input648 value77 value1 value75 = (output648, value74, value1) := by
  rw [input648_def, output648_def]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value74 value1 value75 = (output649, value77, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value77 value1 value75 = (output648, value74, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value74 value1 value75 = (output649, value77, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value77 value1 value75 = (output650, value77, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input651 value77 value1 value75 = (output651, value78, value1) := by
  rw [input651_def, output651_def]
  kernel_rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value78 value1 value75 = (output652, value79, value1) := by
  rw [input652_def, output652_def]
  kernel_rfl

theorem node653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input653 value79 value1 value75 = (output653, value80, value1) := by
  rw [input653_def, output653_def]
  kernel_rfl

theorem node654_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value78 value1 value75 = (output652, value79, value1))
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value79 value1 value75 = (output653, value80, value1)) : Flapjack.WordAlloc.removeDeadStructural input654 value78 value1 value75 = (output654, value80, value1) := by
  rw [input654_def, output654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output653_skip]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value80 value1 value75 = (output655, value81, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value81 value1 value75 = (output656, value82, value1) := by
  rw [input656_def, output656_def]
  kernel_rfl

theorem node657_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value80 value1 value75 = (output655, value81, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value81 value1 value75 = (output656, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value80 value1 value75 = (output657, value82, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value82 value1 value75 = (output658, value83, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value83 value1 value75 = (output659, value84, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value84 value1 value75 = (output660, value85, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value85 value1 value75 = (output661, value86, value1) := by
  rw [input661_def, output661_def]
  kernel_rfl

theorem node662_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value84 value1 value75 = (output660, value85, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value85 value1 value75 = (output661, value86, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value84 value1 value75 = (output662, value86, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output661_skip]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value86 value1 value75 = (output663, value87, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value87 value1 value75 = (output664, value88, value1) := by
  rw [input664_def, output664_def]
  kernel_rfl

theorem node665_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value86 value1 value75 = (output663, value87, value1))
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value87 value1 value75 = (output664, value88, value1)) : Flapjack.WordAlloc.removeDeadStructural input665 value86 value1 value75 = (output665, value88, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output664_skip]
  kernel_rfl

theorem node666_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value84 value1 value75 = (output662, value86, value1))
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value86 value1 value75 = (output665, value88, value1)) : Flapjack.WordAlloc.removeDeadStructural input666 value84 value1 value75 = (output666, value88, value1) := by
  rw [input666_def, output666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output665_skip]
  kernel_rfl

theorem node667_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value83 value1 value75 = (output659, value84, value1))
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value84 value1 value75 = (output666, value88, value1)) : Flapjack.WordAlloc.removeDeadStructural input667 value83 value1 value75 = (output667, value88, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output666_skip]
  kernel_rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value88 value1 value75 = (output668, value89, value1) := by
  rw [input668_def, output668_def]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value89 value1 value75 = (output669, value90, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value88 value1 value75 = (output668, value89, value1))
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value89 value1 value75 = (output669, value90, value1)) : Flapjack.WordAlloc.removeDeadStructural input670 value88 value1 value75 = (output670, value90, value1) := by
  rw [input670_def, output670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output669_skip]
  kernel_rfl

theorem node671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input671 value90 value1 value75 = (output671, value91, value1) := by
  rw [input671_def, output671_def]
  kernel_rfl

theorem node672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input672 value91 value1 value75 = (output672, value92, value1) := by
  rw [input672_def, output672_def]
  kernel_rfl

theorem node673_cond_eq
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value90 value1 value75 = (output671, value91, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value91 value1 value75 = (output672, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value90 value1 value75 = (output673, value92, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child671]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output671_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value88 value1 value75 = (output670, value90, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value90 value1 value75 = (output673, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value88 value1 value75 = (output674, value92, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output670_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value92 value1 value75 = (output675, value92, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input676 value92 value1 value75 = (output676, value92, value1) := by
  rw [input676_def, output676_def]
  kernel_rfl

theorem node677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input677 value92 value1 value75 = (output677, value92, value1) := by
  rw [input677_def, output677_def]
  kernel_rfl

theorem node678_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value92 value1 value75 = (output676, value92, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value92 value1 value75 = (output677, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value92 value1 value75 = (output678, value92, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value92 value1 value75 = (output675, value92, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value92 value1 value75 = (output678, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value92 value1 value75 = (output679, value92, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value88 value1 value75 = (output674, value92, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value92 value1 value75 = (output679, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value88 value1 value75 = (output680, value92, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value83 value1 value75 = (output667, value88, value1))
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value88 value1 value75 = (output680, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input681 value83 value1 value75 = (output681, value92, value1) := by
  rw [input681_def, output681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output680_skip]
  kernel_rfl

theorem node682_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value82 value1 value75 = (output658, value83, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value83 value1 value75 = (output681, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value82 value1 value75 = (output682, value92, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value80 value1 value75 = (output657, value82, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value82 value1 value75 = (output682, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value80 value1 value75 = (output683, value92, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value78 value1 value75 = (output654, value80, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value80 value1 value75 = (output683, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value78 value1 value75 = (output684, value92, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value77 value1 value75 = (output651, value78, value1))
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value78 value1 value75 = (output684, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input685 value77 value1 value75 = (output685, value92, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output684_skip]
  kernel_rfl

theorem node686_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value77 value1 value75 = (output650, value77, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value77 value1 value75 = (output685, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value77 value1 value75 = (output686, value92, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value76 value1 value75 = (output647, value77, value1))
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value77 value1 value75 = (output686, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input687 value76 value1 value75 = (output687, value92, value1) := by
  rw [input687_def, output687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output686_skip]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value76 value1 value75 = (output688, value76, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value76 value1 value75 = (output689, value76, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value76 value1 value75 = (output690, value76, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value76 value1 value75 = (output691, value76, value1) := by
  rw [input691_def, output691_def]
  kernel_rfl

theorem node692_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value76 value1 value75 = (output690, value76, value1))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value76 value1 value75 = (output691, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input692 value76 value1 value75 = (output692, value76, value1) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output691_skip]
  kernel_rfl

theorem node693_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value76 value1 value75 = (output689, value76, value1))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value76 value1 value75 = (output692, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input693 value76 value1 value75 = (output693, value76, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output692_skip]
  kernel_rfl

theorem node694_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value76 value1 value75 = (output688, value76, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value76 value1 value75 = (output693, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value76 value1 value75 = (output694, value76, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value76 value1 value75 = (output695, value92, value1) := by
  rw [input695_def, output695_def]
  kernel_rfl

theorem node696_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value76 value1 value75 = (output694, value76, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value76 value1 value75 = (output695, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input696 value76 value1 value75 = (output696, value92, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output695_skip]
  kernel_rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value92 value1 value75 = (output697, value73, value1) := by
  rw [input697_def, output697_def]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value73 value1 value75 = (output698, value93, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value92 value1 value75 = (output697, value73, value1))
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value73 value1 value75 = (output698, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input699 value92 value1 value75 = (output699, value93, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  try dsimp only
  rw [child698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output698_skip]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value93 value1 value75 = (output700, value93, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value93 value1 value75 = (output701, value93, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value93 value1 value75 = (output702, value93, value1) := by
  rw [input702_def, output702_def]
  kernel_rfl

theorem node703_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value93 value1 value75 = (output701, value93, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value93 value1 value75 = (output702, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value93 value1 value75 = (output703, value93, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value93 value1 value75 = (output700, value93, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value93 value1 value75 = (output703, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value93 value1 value75 = (output704, value93, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value92 value1 value75 = (output699, value93, value1))
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value93 value1 value75 = (output704, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input705 value92 value1 value75 = (output705, value93, value1) := by
  rw [input705_def, output705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output704_skip]
  kernel_rfl

theorem node706_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value76 value1 value75 = (output696, value92, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value92 value1 value75 = (output705, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value76 value1 value75 = (output706, value93, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output696_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value76 value1 value75 = (output687, value92, value1))
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value76 value1 value75 = (output706, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input707 value76 value1 value75 = (output707, value92, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child687]
  try dsimp only
  rw [child706]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output706_skip]
  kernel_rfl

theorem node708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input708 value92 value1 value75 = (output708, value95, value1) := by
  rw [input708_def, output708_def]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value95 value1 value75 = (output709, value74, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value92 value1 value75 = (output708, value95, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value95 value1 value75 = (output709, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value92 value1 value75 = (output710, value74, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value76 value1 value75 = (output707, value92, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value92 value1 value75 = (output710, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value76 value1 value75 = (output711, value74, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value76 value1 value75 = (output638, value76, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value76 value1 value75 = (output711, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value76 value1 value75 = (output712, value74, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value74 value1 value75 = (output637, value76, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value76 value1 value75 = (output712, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value74 value1 value75 = (output713, value74, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output712_skip]
  kernel_rfl

theorem node714_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value74 value1 value75 = (output713, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input714 value73 value1 value2 = (output714, value74, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value75 = (value74, value73) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child713
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value74 value1 value2 = (output715, value96, value1) := by
  rw [input715_def, output715_def]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value96 value1 value2 = (output716, value96, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value74 value1 value2 = (output715, value96, value1))
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value96 value1 value2 = (output716, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input717 value74 value1 value2 = (output717, value96, value1) := by
  rw [input717_def, output717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output716_skip]
  kernel_rfl

theorem node718_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value73 value1 value2 = (output714, value74, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value74 value1 value2 = (output717, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value73 value1 value2 = (output718, value96, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value96 value1 value2 = (output719, value96, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input720 value96 value1 value2 = (output720, value97, value1) := by
  rw [input720_def, output720_def]
  kernel_rfl

theorem node721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input721 value97 value1 value2 = (output721, value98, value1) := by
  rw [input721_def, output721_def]
  kernel_rfl

theorem node722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input722 value98 value1 value2 = (output722, value99, value1) := by
  rw [input722_def, output722_def]
  kernel_rfl

theorem node723_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value97 value1 value2 = (output721, value98, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value98 value1 value2 = (output722, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value97 value1 value2 = (output723, value99, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value99 value1 value2 = (output724, value100, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value100 value1 value2 = (output725, value101, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value99 value1 value2 = (output724, value100, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value100 value1 value2 = (output725, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value99 value1 value2 = (output726, value101, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value101 value1 value2 = (output727, value102, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value102 value1 value2 = (output728, value103, value1) := by
  rw [input728_def, output728_def]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value103 value1 value2 = (output729, value104, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input730 value104 value1 value2 = (output730, value105, value1) := by
  rw [input730_def, output730_def]
  kernel_rfl

theorem node731_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value103 value1 value2 = (output729, value104, value1))
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value104 value1 value2 = (output730, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input731 value103 value1 value2 = (output731, value105, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  try dsimp only
  rw [child730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output729_skip, output730_skip]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value105 value1 value2 = (output732, value105, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value105 value1 value2 = (output733, value106, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value106 value1 value2 = (output734, value107, value1) := by
  rw [input734_def, output734_def]
  kernel_rfl

theorem node735_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value105 value1 value2 = (output733, value106, value1))
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value106 value1 value2 = (output734, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input735 value105 value1 value2 = (output735, value107, value1) := by
  rw [input735_def, output735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  try dsimp only
  rw [child734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output734_skip]
  kernel_rfl

theorem node736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input736 value107 value1 value2 = (output736, value108, value1) := by
  rw [input736_def, output736_def]
  kernel_rfl

theorem node737_cond_eq
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value105 value1 value2 = (output735, value107, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value107 value1 value2 = (output736, value108, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value105 value1 value2 = (output737, value108, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child735]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output735_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input738 value108 value1 value2 = (output738, value109, value1) := by
  rw [input738_def, output738_def]
  kernel_rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value109 value1 value2 = (output739, value110, value1) := by
  rw [input739_def, output739_def]
  kernel_rfl

theorem node740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input740 value110 value1 value2 = (output740, value110, value1) := by
  rw [input740_def, output740_def]
  kernel_rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value110 value1 value2 = (output741, value110, value1) := by
  rw [input741_def, output741_def]
  kernel_rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value110 value1 value2 = (output742, value110, value1) := by
  rw [input742_def, output742_def]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value110 value1 value2 = (output743, value111, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value110 value1 value2 = (output742, value110, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value110 value1 value2 = (output743, value111, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value110 value1 value2 = (output744, value111, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output743_skip]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value111 value1 value2 = (output745, value112, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value112 value1 value2 = (output746, value112, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value112 value1 value2 = (output747, value112, value1) := by
  rw [input747_def, output747_def]
  kernel_rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value112 value1 value2 = (output748, value112, value1) := by
  rw [input748_def, output748_def]
  kernel_rfl

theorem node749_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value112 value1 value2 = (output747, value112, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value112 value1 value2 = (output748, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value112 value1 value2 = (output749, value112, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output748_skip]
  kernel_rfl

theorem node750_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value112 value1 value2 = (output746, value112, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value112 value1 value2 = (output749, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value112 value1 value2 = (output750, value112, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value111 value1 value2 = (output745, value112, value1))
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value112 value1 value2 = (output750, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input751 value111 value1 value2 = (output751, value112, value1) := by
  rw [input751_def, output751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output750_skip]
  kernel_rfl

theorem node752_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value110 value1 value2 = (output744, value111, value1))
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value111 value1 value2 = (output751, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input752 value110 value1 value2 = (output752, value112, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output751_skip]
  kernel_rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value110 value1 value2 = (output753, value110, value1) := by
  rw [input753_def, output753_def]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value110 value1 value2 = (output754, value113, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value110 value1 value2 = (output753, value110, value1))
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value110 value1 value2 = (output754, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input755 value110 value1 value2 = (output755, value113, value1) := by
  rw [input755_def, output755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output754_skip]
  kernel_rfl

theorem node756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input756 value113 value1 value2 = (output756, value113, value1) := by
  rw [input756_def, output756_def]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value113 value1 value2 = (output757, value113, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value113 value1 value2 = (output758, value113, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value113 value1 value2 = (output757, value113, value1))
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value113 value1 value2 = (output758, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input759 value113 value1 value2 = (output759, value113, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output758_skip]
  kernel_rfl

theorem node760_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value113 value1 value2 = (output756, value113, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value113 value1 value2 = (output759, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value113 value1 value2 = (output760, value113, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value110 value1 value2 = (output755, value113, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value113 value1 value2 = (output760, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value110 value1 value2 = (output761, value113, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value110 value1 value2 = (output752, value112, value1))
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value110 value1 value2 = (output761, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input762 value110 value1 value2 = (output762, value116, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child752]
  try dsimp only
  rw [child761]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output761_skip]
  kernel_rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value116 value1 value2 = (output763, value113, value1) := by
  rw [input763_def, output763_def]
  kernel_rfl

theorem node764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input764 value113 value1 value2 = (output764, value112, value1) := by
  rw [input764_def, output764_def]
  kernel_rfl

theorem node765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input765 value112 value1 value2 = (output765, value117, value1) := by
  rw [input765_def, output765_def]
  kernel_rfl

theorem node766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input766 value117 value1 value2 = (output766, value117, value1) := by
  rw [input766_def, output766_def]
  kernel_rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value118 value1 value119 = (output767, value120, value1) := by
  rw [input767_def, output767_def]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
