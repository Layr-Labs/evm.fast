import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages700.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages700.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value189 value1 value148 = (output512, value190, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value186 value1 value148 = (output511, value189, value1))
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value189 value1 value148 = (output512, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input513 value186 value1 value148 = (output513, value190, value1) := by
  rw [input513_def, output513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output512_skip]
  kernel_rfl

theorem node514_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value185 value1 value148 = (output506, value186, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value186 value1 value148 = (output513, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value185 value1 value148 = (output514, value190, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value190 value1 value148 = (output515, value191, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value191 value1 value148 = (output516, value192, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value192 value1 value148 = (output517, value193, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input518 value193 value1 value148 = (output518, value194, value1) := by
  rw [input518_def, output518_def]
  kernel_rfl

theorem node519_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value192 value1 value148 = (output517, value193, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value193 value1 value148 = (output518, value194, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value192 value1 value148 = (output519, value194, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value191 value1 value148 = (output516, value192, value1))
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value192 value1 value148 = (output519, value194, value1)) : Flapjack.WordAlloc.removeDeadStructural input520 value191 value1 value148 = (output520, value194, value1) := by
  rw [input520_def, output520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output519_skip]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value194 value1 value148 = (output521, value195, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value191 value1 value148 = (output520, value194, value1))
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value194 value1 value148 = (output521, value195, value1)) : Flapjack.WordAlloc.removeDeadStructural input522 value191 value1 value148 = (output522, value195, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output521_skip]
  kernel_rfl

theorem node523_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value190 value1 value148 = (output515, value191, value1))
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value191 value1 value148 = (output522, value195, value1)) : Flapjack.WordAlloc.removeDeadStructural input523 value190 value1 value148 = (output523, value195, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output522_skip]
  kernel_rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value195 value1 value148 = (output524, value196, value1) := by
  rw [input524_def, output524_def]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value196 value1 value148 = (output525, value197, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value197 value1 value148 = (output526, value198, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value196 value1 value148 = (output525, value197, value1))
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value197 value1 value148 = (output526, value198, value1)) : Flapjack.WordAlloc.removeDeadStructural input527 value196 value1 value148 = (output527, value198, value1) := by
  rw [input527_def, output527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output526_skip]
  kernel_rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value198 value1 value148 = (output528, value199, value1) := by
  rw [input528_def, output528_def]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value199 value1 value148 = (output529, value200, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value198 value1 value148 = (output528, value199, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value199 value1 value148 = (output529, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value198 value1 value148 = (output530, value200, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value196 value1 value148 = (output527, value198, value1))
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value198 value1 value148 = (output530, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input531 value196 value1 value148 = (output531, value200, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output530_skip]
  kernel_rfl

theorem node532_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value195 value1 value148 = (output524, value196, value1))
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value196 value1 value148 = (output531, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input532 value195 value1 value148 = (output532, value200, value1) := by
  rw [input532_def, output532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output531_skip]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value200 value1 value148 = (output533, value200, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value200 value1 value148 = (output534, value200, value1) := by
  rw [input534_def, output534_def]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value200 value1 value148 = (output535, value200, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value200 value1 value148 = (output534, value200, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value200 value1 value148 = (output535, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value200 value1 value148 = (output536, value200, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output535_skip]
  kernel_rfl

theorem node537_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value200 value1 value148 = (output533, value200, value1))
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value200 value1 value148 = (output536, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input537 value200 value1 value148 = (output537, value200, value1) := by
  rw [input537_def, output537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output536_skip]
  kernel_rfl

theorem node538_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value195 value1 value148 = (output532, value200, value1))
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value200 value1 value148 = (output537, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input538 value195 value1 value148 = (output538, value200, value1) := by
  rw [input538_def, output538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output537_skip]
  kernel_rfl

theorem node539_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value190 value1 value148 = (output523, value195, value1))
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value195 value1 value148 = (output538, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input539 value190 value1 value148 = (output539, value200, value1) := by
  rw [input539_def, output539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output538_skip]
  kernel_rfl

theorem node540_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value185 value1 value148 = (output514, value190, value1))
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value190 value1 value148 = (output539, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input540 value185 value1 value148 = (output540, value200, value1) := by
  rw [input540_def, output540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output539_skip]
  kernel_rfl

theorem node541_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value180 value1 value148 = (output505, value185, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value185 value1 value148 = (output540, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value180 value1 value148 = (output541, value200, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value179 value1 value148 = (output496, value180, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value180 value1 value148 = (output541, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value179 value1 value148 = (output542, value200, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output541_skip]
  kernel_rfl

theorem node543_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value178 value1 value148 = (output495, value179, value1))
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value179 value1 value148 = (output542, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input543 value178 value1 value148 = (output543, value200, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output542_skip]
  kernel_rfl

theorem node544_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value177 value1 value148 = (output494, value178, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value178 value1 value148 = (output543, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value177 value1 value148 = (output544, value200, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value176 value1 value148 = (output493, value177, value1))
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value177 value1 value148 = (output544, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input545 value176 value1 value148 = (output545, value200, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output544_skip]
  kernel_rfl

theorem node546_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value173 value1 value148 = (output492, value176, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value176 value1 value148 = (output545, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value173 value1 value148 = (output546, value200, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value173 value1 value148 = (output487, value173, value1))
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value173 value1 value148 = (output546, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input547 value173 value1 value148 = (output547, value200, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output546_skip]
  kernel_rfl

theorem node548_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value172 value1 value148 = (output486, value173, value1))
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value173 value1 value148 = (output547, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input548 value172 value1 value148 = (output548, value200, value1) := by
  rw [input548_def, output548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output547_skip]
  kernel_rfl

theorem node549_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value171 value1 value148 = (output485, value172, value1))
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value172 value1 value148 = (output548, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input549 value171 value1 value148 = (output549, value200, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output548_skip]
  kernel_rfl

theorem node550_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value153 value1 value148 = (output484, value171, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value171 value1 value148 = (output549, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value153 value1 value148 = (output550, value200, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value153 value1 value148 = (output409, value153, value1))
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value153 value1 value148 = (output550, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input551 value153 value1 value148 = (output551, value200, value1) := by
  rw [input551_def, output551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output550_skip]
  kernel_rfl

theorem node552_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value151 value1 value148 = (output408, value153, value1))
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value153 value1 value148 = (output551, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input552 value151 value1 value148 = (output552, value200, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output551_skip]
  kernel_rfl

theorem node553_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value150 value1 value148 = (output405, value151, value1))
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value151 value1 value148 = (output552, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input553 value150 value1 value148 = (output553, value200, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output552_skip]
  kernel_rfl

theorem node554_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value150 value1 value148 = (output404, value150, value1))
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value150 value1 value148 = (output553, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input554 value150 value1 value148 = (output554, value200, value1) := by
  rw [input554_def, output554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output553_skip]
  kernel_rfl

theorem node555_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value149 value1 value148 = (output401, value150, value1))
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value150 value1 value148 = (output554, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input555 value149 value1 value148 = (output555, value200, value1) := by
  rw [input555_def, output555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  try dsimp only
  rw [child554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output401_skip, output554_skip]
  kernel_rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value149 value1 value148 = (output556, value149, value1) := by
  rw [input556_def, output556_def]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value149 value1 value148 = (output557, value149, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value149 value1 value148 = (output558, value149, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value149 value1 value148 = (output559, value149, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value149 value1 value148 = (output560, value149, value1) := by
  rw [input560_def, output560_def]
  kernel_rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value149 value1 value148 = (output561, value149, value1) := by
  rw [input561_def, output561_def]
  kernel_rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value149 value1 value148 = (output562, value149, value1) := by
  rw [input562_def, output562_def]
  kernel_rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value149 value1 value148 = (output563, value149, value1) := by
  rw [input563_def, output563_def]
  kernel_rfl

theorem node564_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value149 value1 value148 = (output562, value149, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value149 value1 value148 = (output563, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value149 value1 value148 = (output564, value149, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value149 value1 value148 = (output561, value149, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value149 value1 value148 = (output564, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value149 value1 value148 = (output565, value149, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value149 value1 value148 = (output560, value149, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value149 value1 value148 = (output565, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value149 value1 value148 = (output566, value149, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value149 value1 value148 = (output559, value149, value1))
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value149 value1 value148 = (output566, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input567 value149 value1 value148 = (output567, value149, value1) := by
  rw [input567_def, output567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output566_skip]
  kernel_rfl

theorem node568_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value149 value1 value148 = (output558, value149, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value149 value1 value148 = (output567, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value149 value1 value148 = (output568, value149, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value149 value1 value148 = (output557, value149, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value149 value1 value148 = (output568, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value149 value1 value148 = (output569, value149, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value149 value1 value148 = (output556, value149, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value149 value1 value148 = (output569, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value149 value1 value148 = (output570, value149, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value149 value1 value148 = (output571, value200, value1) := by
  rw [input571_def, output571_def]
  kernel_rfl

theorem node572_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value149 value1 value148 = (output570, value149, value1))
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value149 value1 value148 = (output571, value200, value1)) : Flapjack.WordAlloc.removeDeadStructural input572 value149 value1 value148 = (output572, value200, value1) := by
  rw [input572_def, output572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output570_skip, output571_skip]
  kernel_rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value200 value1 value148 = (output573, value146, value1) := by
  rw [input573_def, output573_def]
  kernel_rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value146 value1 value148 = (output574, value146, value1) := by
  rw [input574_def, output574_def]
  kernel_rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value146 value1 value148 = (output575, value146, value1) := by
  rw [input575_def, output575_def]
  kernel_rfl

theorem node576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input576 value146 value1 value148 = (output576, value146, value1) := by
  rw [input576_def, output576_def]
  kernel_rfl

theorem node577_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value146 value1 value148 = (output575, value146, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value146 value1 value148 = (output576, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value146 value1 value148 = (output577, value146, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output575_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value146 value1 value148 = (output574, value146, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value146 value1 value148 = (output577, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value146 value1 value148 = (output578, value146, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value200 value1 value148 = (output573, value146, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value146 value1 value148 = (output578, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value200 value1 value148 = (output579, value146, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value149 value1 value148 = (output572, value200, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value200 value1 value148 = (output579, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value149 value1 value148 = (output580, value146, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value149 value1 value148 = (output555, value200, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value149 value1 value148 = (output580, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value149 value1 value148 = (output581, value202, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child555]
  try dsimp only
  rw [child580]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input582 value202 value1 value148 = (output582, value200, value1) := by
  rw [input582_def, output582_def]
  kernel_rfl

theorem node583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input583 value200 value1 value148 = (output583, value147, value1) := by
  rw [input583_def, output583_def]
  kernel_rfl

theorem node584_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value202 value1 value148 = (output582, value200, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value200 value1 value148 = (output583, value147, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value202 value1 value148 = (output584, value147, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value149 value1 value148 = (output581, value202, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value202 value1 value148 = (output584, value147, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value149 value1 value148 = (output585, value147, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value149 value1 value148 = (output384, value149, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value149 value1 value148 = (output585, value147, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value149 value1 value148 = (output586, value147, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value147 value1 value148 = (output383, value149, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value149 value1 value148 = (output586, value147, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value147 value1 value148 = (output587, value147, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value147 value1 value148 = (output587, value147, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value146 value1 value138 = (output588, value147, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value148 = (value147, value146) :: value138 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child587
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input589 value147 value1 value138 = (output589, value203, value1) := by
  rw [input589_def, output589_def]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value203 value1 value138 = (output590, value203, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value147 value1 value138 = (output589, value203, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value203 value1 value138 = (output590, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value147 value1 value138 = (output591, value203, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value146 value1 value138 = (output588, value147, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value147 value1 value138 = (output591, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value146 value1 value138 = (output592, value203, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child588]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output588_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input593 value203 value1 value138 = (output593, value203, value1) := by
  rw [input593_def, output593_def]
  kernel_rfl

theorem node594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input594 value203 value1 value138 = (output594, value204, value1) := by
  rw [input594_def, output594_def]
  kernel_rfl

theorem node595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input595 value204 value1 value138 = (output595, value204, value1) := by
  rw [input595_def, output595_def]
  kernel_rfl

theorem node596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input596 value204 value1 value138 = (output596, value205, value1) := by
  rw [input596_def, output596_def]
  kernel_rfl

theorem node597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input597 value205 value1 value138 = (output597, value206, value1) := by
  rw [input597_def, output597_def]
  kernel_rfl

theorem node598_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value204 value1 value138 = (output596, value205, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value205 value1 value138 = (output597, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value204 value1 value138 = (output598, value206, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output597_skip]
  kernel_rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value206 value1 value138 = (output599, value207, value1) := by
  rw [input599_def, output599_def]
  kernel_rfl

theorem node600_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value204 value1 value138 = (output598, value206, value1))
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value206 value1 value138 = (output599, value207, value1)) : Flapjack.WordAlloc.removeDeadStructural input600 value204 value1 value138 = (output600, value207, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output599_skip]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value207 value1 value138 = (output601, value208, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value208 value1 value138 = (output602, value208, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input603 value208 value1 value138 = (output603, value209, value1) := by
  rw [input603_def, output603_def]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value209 value1 value138 = (output604, value210, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input605 value210 value1 value138 = (output605, value210, value1) := by
  rw [input605_def, output605_def]
  kernel_rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value210 value1 value211 = (output606, value212, value1) := by
  rw [input606_def, output606_def]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value212 value1 value211 = (output607, value212, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value212 value1 value211 = (output608, value212, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value212 value1 value211 = (output609, value212, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value212 value1 value211 = (output610, value212, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value212 value1 value211 = (output611, value212, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value212 value1 value211 = (output612, value212, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value212 value1 value211 = (output611, value212, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value212 value1 value211 = (output612, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value212 value1 value211 = (output613, value212, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value212 value1 value211 = (output610, value212, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value212 value1 value211 = (output613, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value212 value1 value211 = (output614, value212, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value212 value1 value211 = (output609, value212, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value212 value1 value211 = (output614, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value212 value1 value211 = (output615, value212, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value212 value1 value211 = (output608, value212, value1))
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value212 value1 value211 = (output615, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input616 value212 value1 value211 = (output616, value212, value1) := by
  rw [input616_def, output616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output615_skip]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value212 value1 value211 = (output617, value213, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value212 value1 value211 = (output616, value212, value1))
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value212 value1 value211 = (output617, value213, value1)) : Flapjack.WordAlloc.removeDeadStructural input618 value212 value1 value211 = (output618, value213, value1) := by
  rw [input618_def, output618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output617_skip]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value213 value1 value211 = (output619, value210, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value210 value1 value211 = (output620, value213, value1) := by
  rw [input620_def, output620_def]
  kernel_rfl

theorem node621_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value213 value1 value211 = (output619, value210, value1))
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value210 value1 value211 = (output620, value213, value1)) : Flapjack.WordAlloc.removeDeadStructural input621 value213 value1 value211 = (output621, value213, value1) := by
  rw [input621_def, output621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output620_skip]
  kernel_rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value213 value1 value211 = (output622, value213, value1) := by
  rw [input622_def, output622_def]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value213 value1 value211 = (output623, value214, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value214 value1 value211 = (output624, value215, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value213 value1 value211 = (output623, value214, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value214 value1 value211 = (output624, value215, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value213 value1 value211 = (output625, value215, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output624_skip]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value215 value1 value211 = (output626, value216, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value213 value1 value211 = (output625, value215, value1))
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value215 value1 value211 = (output626, value216, value1)) : Flapjack.WordAlloc.removeDeadStructural input627 value213 value1 value211 = (output627, value216, value1) := by
  rw [input627_def, output627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output626_skip]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value216 value1 value211 = (output628, value217, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value217 value1 value211 = (output629, value217, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value217 value1 value211 = (output630, value217, value1) := by
  rw [input630_def, output630_def]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value217 value1 value211 = (output631, value218, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value218 value1 value211 = (output632, value218, value1) := by
  rw [input632_def, output632_def]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value218 value1 value211 = (output633, value219, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value219 value1 value211 = (output634, value220, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value218 value1 value211 = (output633, value219, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value219 value1 value211 = (output634, value220, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value218 value1 value211 = (output635, value220, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value220 value1 value211 = (output636, value221, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value218 value1 value211 = (output635, value220, value1))
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value220 value1 value211 = (output636, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input637 value218 value1 value211 = (output637, value221, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output636_skip]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value221 value1 value211 = (output638, value222, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value222 value1 value211 = (output639, value223, value1) := by
  rw [input639_def, output639_def]
  kernel_rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value223 value1 value211 = (output640, value224, value1) := by
  rw [input640_def, output640_def]
  kernel_rfl

theorem node641_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value222 value1 value211 = (output639, value223, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value223 value1 value211 = (output640, value224, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value222 value1 value211 = (output641, value224, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input642 value224 value1 value211 = (output642, value225, value1) := by
  rw [input642_def, output642_def]
  kernel_rfl

theorem node643_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value222 value1 value211 = (output641, value224, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value224 value1 value211 = (output642, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value222 value1 value211 = (output643, value225, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value225 value1 value211 = (output644, value226, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value226 value1 value211 = (output645, value227, value1) := by
  rw [input645_def, output645_def]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value227 value1 value211 = (output646, value228, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value228 value1 value211 = (output647, value229, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input648 value229 value1 value211 = (output648, value230, value1) := by
  rw [input648_def, output648_def]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value230 value1 value211 = (output649, value231, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input650 value231 value1 value211 = (output650, value232, value1) := by
  rw [input650_def, output650_def]
  kernel_rfl

theorem node651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input651 value232 value1 value211 = (output651, value233, value1) := by
  rw [input651_def, output651_def]
  kernel_rfl

theorem node652_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value231 value1 value211 = (output650, value232, value1))
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value232 value1 value211 = (output651, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input652 value231 value1 value211 = (output652, value233, value1) := by
  rw [input652_def, output652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output651_skip]
  kernel_rfl

theorem node653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input653 value233 value1 value211 = (output653, value234, value1) := by
  rw [input653_def, output653_def]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value234 value1 value211 = (output654, value235, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value235 value1 value211 = (output655, value236, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value234 value1 value211 = (output654, value235, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value235 value1 value211 = (output655, value236, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value234 value1 value211 = (output656, value236, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value236 value1 value211 = (output657, value237, value1) := by
  rw [input657_def, output657_def]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value237 value1 value211 = (output658, value238, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value238 value1 value211 = (output659, value239, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value237 value1 value211 = (output658, value238, value1))
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value238 value1 value211 = (output659, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input660 value237 value1 value211 = (output660, value239, value1) := by
  rw [input660_def, output660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output659_skip]
  kernel_rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value239 value1 value211 = (output661, value240, value1) := by
  rw [input661_def, output661_def]
  kernel_rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value240 value1 value211 = (output662, value241, value1) := by
  rw [input662_def, output662_def]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value241 value1 value211 = (output663, value242, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value240 value1 value211 = (output662, value241, value1))
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value241 value1 value211 = (output663, value242, value1)) : Flapjack.WordAlloc.removeDeadStructural input664 value240 value1 value211 = (output664, value242, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output663_skip]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value242 value1 value211 = (output665, value243, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value243 value1 value211 = (output666, value244, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value244 value1 value211 = (output667, value245, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value245 value1 value211 = (output668, value246, value1) := by
  rw [input668_def, output668_def]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value246 value1 value211 = (output669, value247, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value247 value1 value211 = (output670, value248, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input671 value248 value1 value211 = (output671, value249, value1) := by
  rw [input671_def, output671_def]
  kernel_rfl

theorem node672_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value247 value1 value211 = (output670, value248, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value248 value1 value211 = (output671, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value247 value1 value211 = (output672, value249, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output670_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input673 value249 value1 value211 = (output673, value250, value1) := by
  rw [input673_def, output673_def]
  kernel_rfl

theorem node674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input674 value250 value1 value211 = (output674, value251, value1) := by
  rw [input674_def, output674_def]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value251 value1 value211 = (output675, value252, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value250 value1 value211 = (output674, value251, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value251 value1 value211 = (output675, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value250 value1 value211 = (output676, value252, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input677 value252 value1 value211 = (output677, value253, value1) := by
  rw [input677_def, output677_def]
  kernel_rfl

theorem node678_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value250 value1 value211 = (output676, value252, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value252 value1 value211 = (output677, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value250 value1 value211 = (output678, value253, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value249 value1 value211 = (output673, value250, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value250 value1 value211 = (output678, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value249 value1 value211 = (output679, value253, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child673]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output673_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value247 value1 value211 = (output672, value249, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value249 value1 value211 = (output679, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value247 value1 value211 = (output680, value253, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child672]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output672_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value253 value1 value211 = (output681, value253, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value253 value1 value211 = (output682, value254, value1) := by
  rw [input682_def, output682_def]
  kernel_rfl

theorem node683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input683 value254 value1 value211 = (output683, value255, value1) := by
  rw [input683_def, output683_def]
  kernel_rfl

theorem node684_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value253 value1 value211 = (output682, value254, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value254 value1 value211 = (output683, value255, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value253 value1 value211 = (output684, value255, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output682_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value255 value1 value211 = (output685, value256, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value253 value1 value211 = (output684, value255, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value255 value1 value211 = (output685, value256, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value253 value1 value211 = (output686, value256, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value256 value1 value211 = (output687, value257, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value257 value1 value211 = (output688, value258, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value258 value1 value211 = (output689, value259, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value259 value1 value211 = (output690, value260, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value260 value1 value211 = (output691, value261, value1) := by
  rw [input691_def, output691_def]
  kernel_rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value261 value1 value211 = (output692, value262, value1) := by
  rw [input692_def, output692_def]
  kernel_rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value262 value1 value211 = (output693, value263, value1) := by
  rw [input693_def, output693_def]
  kernel_rfl

theorem node694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input694 value263 value1 value211 = (output694, value264, value1) := by
  rw [input694_def, output694_def]
  kernel_rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value264 value1 value211 = (output695, value265, value1) := by
  rw [input695_def, output695_def]
  kernel_rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value265 value1 value211 = (output696, value266, value1) := by
  rw [input696_def, output696_def]
  kernel_rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value266 value1 value211 = (output697, value267, value1) := by
  rw [input697_def, output697_def]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value267 value1 value211 = (output698, value268, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value266 value1 value211 = (output697, value267, value1))
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value267 value1 value211 = (output698, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input699 value266 value1 value211 = (output699, value268, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  try dsimp only
  rw [child698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output698_skip]
  kernel_rfl

theorem node700_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value265 value1 value211 = (output696, value266, value1))
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value266 value1 value211 = (output699, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input700 value265 value1 value211 = (output700, value268, value1) := by
  rw [input700_def, output700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output696_skip, output699_skip]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value268 value1 value211 = (output701, value269, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value265 value1 value211 = (output700, value268, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value268 value1 value211 = (output701, value269, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value265 value1 value211 = (output702, value269, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output701_skip]
  kernel_rfl

theorem node703_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value264 value1 value211 = (output695, value265, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value265 value1 value211 = (output702, value269, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value264 value1 value211 = (output703, value269, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input704 value269 value1 value211 = (output704, value270, value1) := by
  rw [input704_def, output704_def]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value270 value1 value211 = (output705, value271, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value271 value1 value211 = (output706, value272, value1) := by
  rw [input706_def, output706_def]
  kernel_rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value272 value1 value211 = (output707, value273, value1) := by
  rw [input707_def, output707_def]
  kernel_rfl

theorem node708_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value271 value1 value211 = (output706, value272, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value272 value1 value211 = (output707, value273, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value271 value1 value211 = (output708, value273, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value270 value1 value211 = (output705, value271, value1))
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value271 value1 value211 = (output708, value273, value1)) : Flapjack.WordAlloc.removeDeadStructural input709 value270 value1 value211 = (output709, value273, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output708_skip]
  kernel_rfl

theorem node710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input710 value273 value1 value211 = (output710, value274, value1) := by
  rw [input710_def, output710_def]
  kernel_rfl

theorem node711_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value270 value1 value211 = (output709, value273, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value273 value1 value211 = (output710, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value270 value1 value211 = (output711, value274, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value269 value1 value211 = (output704, value270, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value270 value1 value211 = (output711, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value269 value1 value211 = (output712, value274, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value274 value1 value211 = (output713, value275, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value275 value1 value211 = (output714, value276, value1) := by
  rw [input714_def, output714_def]
  kernel_rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value276 value1 value211 = (output715, value277, value1) := by
  rw [input715_def, output715_def]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value277 value1 value211 = (output716, value278, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value276 value1 value211 = (output715, value277, value1))
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value277 value1 value211 = (output716, value278, value1)) : Flapjack.WordAlloc.removeDeadStructural input717 value276 value1 value211 = (output717, value278, value1) := by
  rw [input717_def, output717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output716_skip]
  kernel_rfl

theorem node718_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value275 value1 value211 = (output714, value276, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value276 value1 value211 = (output717, value278, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value275 value1 value211 = (output718, value278, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value278 value1 value211 = (output719, value279, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value275 value1 value211 = (output718, value278, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value278 value1 value211 = (output719, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value275 value1 value211 = (output720, value279, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output719_skip]
  kernel_rfl

theorem node721_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value274 value1 value211 = (output713, value275, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value275 value1 value211 = (output720, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value274 value1 value211 = (output721, value279, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input722 value279 value1 value211 = (output722, value280, value1) := by
  rw [input722_def, output722_def]
  kernel_rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value280 value1 value211 = (output723, value281, value1) := by
  rw [input723_def, output723_def]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value281 value1 value211 = (output724, value282, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value280 value1 value211 = (output723, value281, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value281 value1 value211 = (output724, value282, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value280 value1 value211 = (output725, value282, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output724_skip]
  kernel_rfl

theorem node726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input726 value282 value1 value211 = (output726, value283, value1) := by
  rw [input726_def, output726_def]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value283 value1 value211 = (output727, value284, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value282 value1 value211 = (output726, value283, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value283 value1 value211 = (output727, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value282 value1 value211 = (output728, value284, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output727_skip]
  kernel_rfl

theorem node729_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value280 value1 value211 = (output725, value282, value1))
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value282 value1 value211 = (output728, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input729 value280 value1 value211 = (output729, value284, value1) := by
  rw [input729_def, output729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output728_skip]
  kernel_rfl

theorem node730_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value279 value1 value211 = (output722, value280, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value280 value1 value211 = (output729, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value279 value1 value211 = (output730, value284, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value284 value1 value211 = (output731, value284, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value284 value1 value211 = (output732, value284, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value284 value1 value211 = (output733, value284, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value284 value1 value211 = (output732, value284, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value284 value1 value211 = (output733, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value284 value1 value211 = (output734, value284, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output733_skip]
  kernel_rfl

theorem node735_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value284 value1 value211 = (output731, value284, value1))
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value284 value1 value211 = (output734, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input735 value284 value1 value211 = (output735, value284, value1) := by
  rw [input735_def, output735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output734_skip]
  kernel_rfl

theorem node736_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value279 value1 value211 = (output730, value284, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value284 value1 value211 = (output735, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value279 value1 value211 = (output736, value284, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value274 value1 value211 = (output721, value279, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value279 value1 value211 = (output736, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value274 value1 value211 = (output737, value284, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value269 value1 value211 = (output712, value274, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value274 value1 value211 = (output737, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value269 value1 value211 = (output738, value284, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value264 value1 value211 = (output703, value269, value1))
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value269 value1 value211 = (output738, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input739 value264 value1 value211 = (output739, value284, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output738_skip]
  kernel_rfl

theorem node740_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value263 value1 value211 = (output694, value264, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value264 value1 value211 = (output739, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value263 value1 value211 = (output740, value284, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value262 value1 value211 = (output693, value263, value1))
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value263 value1 value211 = (output740, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input741 value262 value1 value211 = (output741, value284, value1) := by
  rw [input741_def, output741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output740_skip]
  kernel_rfl

theorem node742_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value261 value1 value211 = (output692, value262, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value262 value1 value211 = (output741, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value261 value1 value211 = (output742, value284, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value260 value1 value211 = (output691, value261, value1))
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value261 value1 value211 = (output742, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input743 value260 value1 value211 = (output743, value284, value1) := by
  rw [input743_def, output743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output742_skip]
  kernel_rfl

theorem node744_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value259 value1 value211 = (output690, value260, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value260 value1 value211 = (output743, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value259 value1 value211 = (output744, value284, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output743_skip]
  kernel_rfl

theorem node745_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value258 value1 value211 = (output689, value259, value1))
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value259 value1 value211 = (output744, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input745 value258 value1 value211 = (output745, value284, value1) := by
  rw [input745_def, output745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output744_skip]
  kernel_rfl

theorem node746_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value257 value1 value211 = (output688, value258, value1))
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value258 value1 value211 = (output745, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input746 value257 value1 value211 = (output746, value284, value1) := by
  rw [input746_def, output746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output745_skip]
  kernel_rfl

theorem node747_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value256 value1 value211 = (output687, value257, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value257 value1 value211 = (output746, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value256 value1 value211 = (output747, value284, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value253 value1 value211 = (output686, value256, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value256 value1 value211 = (output747, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value253 value1 value211 = (output748, value284, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output747_skip]
  kernel_rfl

theorem node749_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value253 value1 value211 = (output681, value253, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value253 value1 value211 = (output748, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value253 value1 value211 = (output749, value284, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  try dsimp only
  rw [child748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output681_skip, output748_skip]
  kernel_rfl

theorem node750_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value247 value1 value211 = (output680, value253, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value253 value1 value211 = (output749, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value247 value1 value211 = (output750, value284, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value246 value1 value211 = (output669, value247, value1))
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value247 value1 value211 = (output750, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input751 value246 value1 value211 = (output751, value284, value1) := by
  rw [input751_def, output751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output750_skip]
  kernel_rfl

theorem node752_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value245 value1 value211 = (output668, value246, value1))
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value246 value1 value211 = (output751, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input752 value245 value1 value211 = (output752, value284, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output751_skip]
  kernel_rfl

theorem node753_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value244 value1 value211 = (output667, value245, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value245 value1 value211 = (output752, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value244 value1 value211 = (output753, value284, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value243 value1 value211 = (output666, value244, value1))
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value244 value1 value211 = (output753, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input754 value243 value1 value211 = (output754, value284, value1) := by
  rw [input754_def, output754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output753_skip]
  kernel_rfl

theorem node755_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value242 value1 value211 = (output665, value243, value1))
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value243 value1 value211 = (output754, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input755 value242 value1 value211 = (output755, value284, value1) := by
  rw [input755_def, output755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output754_skip]
  kernel_rfl

theorem node756_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value240 value1 value211 = (output664, value242, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value242 value1 value211 = (output755, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value240 value1 value211 = (output756, value284, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output755_skip]
  kernel_rfl

theorem node757_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value239 value1 value211 = (output661, value240, value1))
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value240 value1 value211 = (output756, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input757 value239 value1 value211 = (output757, value284, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output756_skip]
  kernel_rfl

theorem node758_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value237 value1 value211 = (output660, value239, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value239 value1 value211 = (output757, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value237 value1 value211 = (output758, value284, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output757_skip]
  kernel_rfl

theorem node759_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value236 value1 value211 = (output657, value237, value1))
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value237 value1 value211 = (output758, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input759 value236 value1 value211 = (output759, value284, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output758_skip]
  kernel_rfl

theorem node760_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value234 value1 value211 = (output656, value236, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value236 value1 value211 = (output759, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value234 value1 value211 = (output760, value284, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value233 value1 value211 = (output653, value234, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value234 value1 value211 = (output760, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value233 value1 value211 = (output761, value284, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value231 value1 value211 = (output652, value233, value1))
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value233 value1 value211 = (output761, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input762 value231 value1 value211 = (output762, value284, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output761_skip]
  kernel_rfl

theorem node763_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value230 value1 value211 = (output649, value231, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value231 value1 value211 = (output762, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value230 value1 value211 = (output763, value284, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value229 value1 value211 = (output648, value230, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value230 value1 value211 = (output763, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value229 value1 value211 = (output764, value284, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value228 value1 value211 = (output647, value229, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value229 value1 value211 = (output764, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value228 value1 value211 = (output765, value284, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value227 value1 value211 = (output646, value228, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value228 value1 value211 = (output765, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value227 value1 value211 = (output766, value284, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value226 value1 value211 = (output645, value227, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value227 value1 value211 = (output766, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value226 value1 value211 = (output767, value284, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output766_skip]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages700.Parallel
