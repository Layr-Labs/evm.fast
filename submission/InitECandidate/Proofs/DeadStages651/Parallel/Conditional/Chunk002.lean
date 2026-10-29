import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages651.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages651.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value356 value1 value2 = (output512, value356, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value356 value1 value2 = (output511, value356, value1))
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value356 value1 value2 = (output512, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input513 value356 value1 value2 = (output513, value356, value1) := by
  rw [input513_def, output513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output512_skip]
  kernel_rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value356 value1 value2 = (output514, value356, value1) := by
  rw [input514_def, output514_def]
  kernel_rfl

theorem node515_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value356 value1 value2 = (output513, value356, value1))
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value356 value1 value2 = (output514, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input515 value356 value1 value2 = (output515, value356, value1) := by
  rw [input515_def, output515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output514_skip]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value356 value1 value2 = (output516, value357, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value357 value1 value2 = (output517, value358, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value356 value1 value2 = (output516, value357, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value357 value1 value2 = (output517, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value356 value1 value2 = (output518, value358, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value358 value1 value2 = (output519, value356, value1) := by
  rw [input519_def, output519_def]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value356 value1 value2 = (output520, value356, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value356 value1 value2 = (output521, value356, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value356 value1 value2 = (output522, value356, value1) := by
  rw [input522_def, output522_def]
  kernel_rfl

theorem node523_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value356 value1 value2 = (output521, value356, value1))
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value356 value1 value2 = (output522, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input523 value356 value1 value2 = (output523, value356, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output522_skip]
  kernel_rfl

theorem node524_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value356 value1 value2 = (output520, value356, value1))
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value356 value1 value2 = (output523, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input524 value356 value1 value2 = (output524, value356, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output523_skip]
  kernel_rfl

theorem node525_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value358 value1 value2 = (output519, value356, value1))
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value356 value1 value2 = (output524, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input525 value358 value1 value2 = (output525, value356, value1) := by
  rw [input525_def, output525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output524_skip]
  kernel_rfl

theorem node526_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value356 value1 value2 = (output518, value358, value1))
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value358 value1 value2 = (output525, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input526 value356 value1 value2 = (output526, value356, value1) := by
  rw [input526_def, output526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output525_skip]
  kernel_rfl

theorem node527_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value356 value1 value2 = (output515, value356, value1))
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value356 value1 value2 = (output526, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input527 value356 value1 value2 = (output527, value356, value1) := by
  rw [input527_def, output527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output526_skip]
  kernel_rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value356 value1 value2 = (output528, value356, value1) := by
  rw [input528_def, output528_def]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value356 value1 value2 = (output529, value356, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value356 value1 value2 = (output528, value356, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value356 value1 value2 = (output529, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value356 value1 value2 = (output530, value356, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value356 value1 value2 = (output531, value356, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value356 value1 value2 = (output530, value356, value1))
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value356 value1 value2 = (output531, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input532 value356 value1 value2 = (output532, value356, value1) := by
  rw [input532_def, output532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output531_skip]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value356 value1 value2 = (output533, value356, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value356 value1 value2 = (output532, value356, value1))
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value356 value1 value2 = (output533, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input534 value356 value1 value2 = (output534, value356, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output533_skip]
  kernel_rfl

theorem node535_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value356 value1 value2 = (output527, value356, value1))
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value356 value1 value2 = (output534, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input535 value356 value1 value2 = (output535, value360, value1) := by
  rw [input535_def, output535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child527]
  try dsimp only
  rw [child534]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output534_skip]
  kernel_rfl

theorem node536_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value356 value1 value2 = (output510, value356, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value356 value1 value2 = (output535, value360, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value356 value1 value2 = (output536, value360, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output535_skip]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value360 value1 value2 = (output537, value361, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value361 value1 value2 = (output538, value362, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value362 value1 value2 = (output539, value362, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value362 value1 value2 = (output540, value363, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input541 value363 value1 value2 = (output541, value364, value1) := by
  rw [input541_def, output541_def]
  kernel_rfl

theorem node542_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value362 value1 value2 = (output540, value363, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value363 value1 value2 = (output541, value364, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value362 value1 value2 = (output542, value364, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output541_skip]
  kernel_rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value364 value1 value2 = (output543, value365, value1) := by
  rw [input543_def, output543_def]
  kernel_rfl

theorem node544_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value362 value1 value2 = (output542, value364, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value364 value1 value2 = (output543, value365, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value362 value1 value2 = (output544, value365, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value365 value1 value2 = (output545, value366, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value366 value1 value2 = (output546, value367, value1) := by
  rw [input546_def, output546_def]
  kernel_rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value367 value1 value2 = (output547, value368, value1) := by
  rw [input547_def, output547_def]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value368 value1 value2 = (output548, value369, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value369 value1 value2 = (output549, value370, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input550 value370 value1 value2 = (output550, value371, value1) := by
  rw [input550_def, output550_def]
  kernel_rfl

theorem node551_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value369 value1 value2 = (output549, value370, value1))
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value370 value1 value2 = (output550, value371, value1)) : Flapjack.WordAlloc.removeDeadStructural input551 value369 value1 value2 = (output551, value371, value1) := by
  rw [input551_def, output551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output550_skip]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value371 value1 value2 = (output552, value372, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value372 value1 value2 = (output553, value373, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value371 value1 value2 = (output552, value372, value1))
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value372 value1 value2 = (output553, value373, value1)) : Flapjack.WordAlloc.removeDeadStructural input554 value371 value1 value2 = (output554, value373, value1) := by
  rw [input554_def, output554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output553_skip]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value373 value1 value2 = (output555, value374, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value374 value1 value2 = (output556, value375, value1) := by
  rw [input556_def, output556_def]
  kernel_rfl

theorem node557_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value373 value1 value2 = (output555, value374, value1))
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value374 value1 value2 = (output556, value375, value1)) : Flapjack.WordAlloc.removeDeadStructural input557 value373 value1 value2 = (output557, value375, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output556_skip]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value375 value1 value2 = (output558, value376, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value376 value1 value2 = (output559, value377, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value375 value1 value2 = (output558, value376, value1))
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value376 value1 value2 = (output559, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input560 value375 value1 value2 = (output560, value377, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output559_skip]
  kernel_rfl

theorem node561_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value373 value1 value2 = (output557, value375, value1))
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value375 value1 value2 = (output560, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input561 value373 value1 value2 = (output561, value377, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output560_skip]
  kernel_rfl

theorem node562_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value371 value1 value2 = (output554, value373, value1))
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value373 value1 value2 = (output561, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input562 value371 value1 value2 = (output562, value377, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output561_skip]
  kernel_rfl

theorem node563_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value369 value1 value2 = (output551, value371, value1))
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value371 value1 value2 = (output562, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input563 value369 value1 value2 = (output563, value377, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output562_skip]
  kernel_rfl

theorem node564_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value368 value1 value2 = (output548, value369, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value369 value1 value2 = (output563, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value368 value1 value2 = (output564, value377, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value367 value1 value2 = (output547, value368, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value368 value1 value2 = (output564, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value367 value1 value2 = (output565, value377, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value366 value1 value2 = (output546, value367, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value367 value1 value2 = (output565, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value366 value1 value2 = (output566, value377, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value365 value1 value2 = (output545, value366, value1))
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value366 value1 value2 = (output566, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input567 value365 value1 value2 = (output567, value377, value1) := by
  rw [input567_def, output567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output566_skip]
  kernel_rfl

theorem node568_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value362 value1 value2 = (output544, value365, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value365 value1 value2 = (output567, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value362 value1 value2 = (output568, value377, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value362 value1 value2 = (output539, value362, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value362 value1 value2 = (output568, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value362 value1 value2 = (output569, value377, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value361 value1 value2 = (output538, value362, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value362 value1 value2 = (output569, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value361 value1 value2 = (output570, value377, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value360 value1 value2 = (output537, value361, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value361 value1 value2 = (output570, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value360 value1 value2 = (output571, value377, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value356 value1 value2 = (output536, value360, value1))
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value360 value1 value2 = (output571, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input572 value356 value1 value2 = (output572, value377, value1) := by
  rw [input572_def, output572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output571_skip]
  kernel_rfl

theorem node573_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value356 value1 value2 = (output505, value356, value1))
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value356 value1 value2 = (output572, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input573 value356 value1 value2 = (output573, value377, value1) := by
  rw [input573_def, output573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output572_skip]
  kernel_rfl

theorem node574_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value354 value1 value2 = (output504, value356, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value356 value1 value2 = (output573, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value354 value1 value2 = (output574, value377, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value352 value1 value2 = (output501, value354, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value354 value1 value2 = (output574, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value352 value1 value2 = (output575, value377, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value350 value1 value2 = (output498, value352, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value352 value1 value2 = (output575, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value350 value1 value2 = (output576, value377, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value348 value1 value2 = (output495, value350, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value350 value1 value2 = (output576, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value348 value1 value2 = (output577, value377, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value347 value1 value2 = (output492, value348, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value348 value1 value2 = (output577, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value347 value1 value2 = (output578, value377, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value346 value1 value2 = (output491, value347, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value347 value1 value2 = (output578, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value346 value1 value2 = (output579, value377, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value345 value1 value2 = (output490, value346, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value346 value1 value2 = (output579, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value345 value1 value2 = (output580, value377, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value344 value1 value2 = (output489, value345, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value345 value1 value2 = (output580, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value344 value1 value2 = (output581, value377, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value341 value1 value2 = (output488, value344, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value344 value1 value2 = (output581, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value341 value1 value2 = (output582, value377, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value341 value1 value2 = (output483, value341, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value341 value1 value2 = (output582, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value341 value1 value2 = (output583, value377, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value340 value1 value2 = (output482, value341, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value341 value1 value2 = (output583, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value340 value1 value2 = (output584, value377, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value339 value1 value2 = (output481, value340, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value340 value1 value2 = (output584, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value339 value1 value2 = (output585, value377, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child481]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output481_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value310 value1 value2 = (output480, value339, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value339 value1 value2 = (output585, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value310 value1 value2 = (output586, value377, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value310 value1 value2 = (output399, value310, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value310 value1 value2 = (output586, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value310 value1 value2 = (output587, value377, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value308 value1 value2 = (output398, value310, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value310 value1 value2 = (output587, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value308 value1 value2 = (output588, value377, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output587_skip]
  kernel_rfl

theorem node589_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value306 value1 value2 = (output395, value308, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value308 value1 value2 = (output588, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value306 value1 value2 = (output589, value377, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value304 value1 value2 = (output392, value306, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value306 value1 value2 = (output589, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value304 value1 value2 = (output590, value377, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output589_skip]
  kernel_rfl

theorem node591_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value302 value1 value2 = (output389, value304, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value304 value1 value2 = (output590, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value302 value1 value2 = (output591, value377, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value301 value1 value2 = (output386, value302, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value302 value1 value2 = (output591, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value301 value1 value2 = (output592, value377, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value300 value1 value2 = (output385, value301, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value301 value1 value2 = (output592, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value300 value1 value2 = (output593, value377, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value299 value1 value2 = (output384, value300, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value300 value1 value2 = (output593, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value299 value1 value2 = (output594, value377, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value298 value1 value2 = (output383, value299, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value299 value1 value2 = (output594, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value298 value1 value2 = (output595, value377, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value295 value1 value2 = (output382, value298, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value298 value1 value2 = (output595, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value295 value1 value2 = (output596, value377, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value295 value1 value2 = (output377, value295, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value295 value1 value2 = (output596, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value295 value1 value2 = (output597, value377, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value294 value1 value2 = (output376, value295, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value295 value1 value2 = (output597, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value294 value1 value2 = (output598, value377, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output597_skip]
  kernel_rfl

theorem node599_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value293 value1 value2 = (output375, value294, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value294 value1 value2 = (output598, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value293 value1 value2 = (output599, value377, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output598_skip]
  kernel_rfl

theorem node600_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value292 value1 value2 = (output374, value293, value1))
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value293 value1 value2 = (output599, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input600 value292 value1 value2 = (output600, value377, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output599_skip]
  kernel_rfl

theorem node601_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value291 value1 value2 = (output373, value292, value1))
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value292 value1 value2 = (output600, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input601 value291 value1 value2 = (output601, value377, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output600_skip]
  kernel_rfl

theorem node602_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value288 value1 value2 = (output372, value291, value1))
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value291 value1 value2 = (output601, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input602 value288 value1 value2 = (output602, value377, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output601_skip]
  kernel_rfl

theorem node603_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value288 value1 value2 = (output367, value288, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value288 value1 value2 = (output602, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value288 value1 value2 = (output603, value377, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value287 value1 value2 = (output366, value288, value1))
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value288 value1 value2 = (output603, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input604 value287 value1 value2 = (output604, value377, value1) := by
  rw [input604_def, output604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output603_skip]
  kernel_rfl

theorem node605_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value286 value1 value2 = (output365, value287, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value287 value1 value2 = (output604, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value286 value1 value2 = (output605, value377, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output604_skip]
  kernel_rfl

theorem node606_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value285 value1 value2 = (output364, value286, value1))
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value286 value1 value2 = (output605, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input606 value285 value1 value2 = (output606, value377, value1) := by
  rw [input606_def, output606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output605_skip]
  kernel_rfl

theorem node607_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value284 value1 value2 = (output363, value285, value1))
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value285 value1 value2 = (output606, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input607 value284 value1 value2 = (output607, value377, value1) := by
  rw [input607_def, output607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output606_skip]
  kernel_rfl

theorem node608_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value283 value1 value2 = (output362, value284, value1))
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value284 value1 value2 = (output607, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input608 value283 value1 value2 = (output608, value377, value1) := by
  rw [input608_def, output608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output607_skip]
  kernel_rfl

theorem node609_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value282 value1 value2 = (output361, value283, value1))
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value283 value1 value2 = (output608, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input609 value282 value1 value2 = (output609, value377, value1) := by
  rw [input609_def, output609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output608_skip]
  kernel_rfl

theorem node610_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value281 value1 value2 = (output360, value282, value1))
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value282 value1 value2 = (output609, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input610 value281 value1 value2 = (output610, value377, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output609_skip]
  kernel_rfl

theorem node611_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value280 value1 value2 = (output359, value281, value1))
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value281 value1 value2 = (output610, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input611 value280 value1 value2 = (output611, value377, value1) := by
  rw [input611_def, output611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output610_skip]
  kernel_rfl

theorem node612_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value277 value1 value2 = (output358, value280, value1))
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value280 value1 value2 = (output611, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input612 value277 value1 value2 = (output612, value377, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output611_skip]
  kernel_rfl

theorem node613_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value277 value1 value2 = (output353, value277, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value277 value1 value2 = (output612, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value277 value1 value2 = (output613, value377, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value276 value1 value2 = (output352, value277, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value277 value1 value2 = (output613, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value276 value1 value2 = (output614, value377, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value275 value1 value2 = (output351, value276, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value276 value1 value2 = (output614, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value275 value1 value2 = (output615, value377, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value274 value1 value2 = (output350, value275, value1))
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value275 value1 value2 = (output615, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input616 value274 value1 value2 = (output616, value377, value1) := by
  rw [input616_def, output616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output615_skip]
  kernel_rfl

theorem node617_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value273 value1 value2 = (output349, value274, value1))
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value274 value1 value2 = (output616, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input617 value273 value1 value2 = (output617, value377, value1) := by
  rw [input617_def, output617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child349]
  try dsimp only
  rw [child616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output616_skip]
  kernel_rfl

theorem node618_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value272 value1 value2 = (output348, value273, value1))
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value273 value1 value2 = (output617, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input618 value272 value1 value2 = (output618, value377, value1) := by
  rw [input618_def, output618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output617_skip]
  kernel_rfl

theorem node619_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value271 value1 value2 = (output347, value272, value1))
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value272 value1 value2 = (output618, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input619 value271 value1 value2 = (output619, value377, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output618_skip]
  kernel_rfl

theorem node620_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value270 value1 value2 = (output346, value271, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value271 value1 value2 = (output619, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value270 value1 value2 = (output620, value377, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value269 value1 value2 = (output345, value270, value1))
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value270 value1 value2 = (output620, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input621 value269 value1 value2 = (output621, value377, value1) := by
  rw [input621_def, output621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output620_skip]
  kernel_rfl

theorem node622_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value266 value1 value2 = (output344, value269, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value269 value1 value2 = (output621, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value266 value1 value2 = (output622, value377, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output621_skip]
  kernel_rfl

theorem node623_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value266 value1 value2 = (output339, value266, value1))
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value266 value1 value2 = (output622, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input623 value266 value1 value2 = (output623, value377, value1) := by
  rw [input623_def, output623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output622_skip]
  kernel_rfl

theorem node624_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value265 value1 value2 = (output338, value266, value1))
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value266 value1 value2 = (output623, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input624 value265 value1 value2 = (output624, value377, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output623_skip]
  kernel_rfl

theorem node625_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value264 value1 value2 = (output337, value265, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value265 value1 value2 = (output624, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value264 value1 value2 = (output625, value377, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output624_skip]
  kernel_rfl

theorem node626_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value263 value1 value2 = (output336, value264, value1))
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value264 value1 value2 = (output625, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input626 value263 value1 value2 = (output626, value377, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output625_skip]
  kernel_rfl

theorem node627_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value262 value1 value2 = (output335, value263, value1))
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value263 value1 value2 = (output626, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input627 value262 value1 value2 = (output627, value377, value1) := by
  rw [input627_def, output627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output626_skip]
  kernel_rfl

theorem node628_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value261 value1 value2 = (output334, value262, value1))
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value262 value1 value2 = (output627, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input628 value261 value1 value2 = (output628, value377, value1) := by
  rw [input628_def, output628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output627_skip]
  kernel_rfl

theorem node629_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value260 value1 value2 = (output333, value261, value1))
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value261 value1 value2 = (output628, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input629 value260 value1 value2 = (output629, value377, value1) := by
  rw [input629_def, output629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output628_skip]
  kernel_rfl

theorem node630_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value259 value1 value2 = (output332, value260, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value260 value1 value2 = (output629, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value259 value1 value2 = (output630, value377, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output629_skip]
  kernel_rfl

theorem node631_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value258 value1 value2 = (output331, value259, value1))
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value259 value1 value2 = (output630, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input631 value258 value1 value2 = (output631, value377, value1) := by
  rw [input631_def, output631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output630_skip]
  kernel_rfl

theorem node632_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value255 value1 value2 = (output330, value258, value1))
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value258 value1 value2 = (output631, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input632 value255 value1 value2 = (output632, value377, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output631_skip]
  kernel_rfl

theorem node633_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value255 value1 value2 = (output325, value255, value1))
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value255 value1 value2 = (output632, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input633 value255 value1 value2 = (output633, value377, value1) := by
  rw [input633_def, output633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output632_skip]
  kernel_rfl

theorem node634_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value254 value1 value2 = (output324, value255, value1))
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value255 value1 value2 = (output633, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input634 value254 value1 value2 = (output634, value377, value1) := by
  rw [input634_def, output634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output633_skip]
  kernel_rfl

theorem node635_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value253 value1 value2 = (output323, value254, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value254 value1 value2 = (output634, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value253 value1 value2 = (output635, value377, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value252 value1 value2 = (output322, value253, value1))
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value253 value1 value2 = (output635, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input636 value252 value1 value2 = (output636, value377, value1) := by
  rw [input636_def, output636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output635_skip]
  kernel_rfl

theorem node637_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value251 value1 value2 = (output321, value252, value1))
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value252 value1 value2 = (output636, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input637 value251 value1 value2 = (output637, value377, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output636_skip]
  kernel_rfl

theorem node638_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value250 value1 value2 = (output320, value251, value1))
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value251 value1 value2 = (output637, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input638 value250 value1 value2 = (output638, value377, value1) := by
  rw [input638_def, output638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output637_skip]
  kernel_rfl

theorem node639_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value249 value1 value2 = (output319, value250, value1))
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value250 value1 value2 = (output638, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input639 value249 value1 value2 = (output639, value377, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output638_skip]
  kernel_rfl

theorem node640_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value248 value1 value2 = (output318, value249, value1))
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value249 value1 value2 = (output639, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input640 value248 value1 value2 = (output640, value377, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output639_skip]
  kernel_rfl

theorem node641_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value247 value1 value2 = (output317, value248, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value248 value1 value2 = (output640, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value247 value1 value2 = (output641, value377, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value244 value1 value2 = (output316, value247, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value247 value1 value2 = (output641, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value244 value1 value2 = (output642, value377, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value244 value1 value2 = (output311, value244, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value244 value1 value2 = (output642, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value244 value1 value2 = (output643, value377, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value243 value1 value2 = (output310, value244, value1))
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value244 value1 value2 = (output643, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input644 value243 value1 value2 = (output644, value377, value1) := by
  rw [input644_def, output644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output643_skip]
  kernel_rfl

theorem node645_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value242 value1 value2 = (output309, value243, value1))
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value243 value1 value2 = (output644, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input645 value242 value1 value2 = (output645, value377, value1) := by
  rw [input645_def, output645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output644_skip]
  kernel_rfl

theorem node646_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value241 value1 value2 = (output308, value242, value1))
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value242 value1 value2 = (output645, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input646 value241 value1 value2 = (output646, value377, value1) := by
  rw [input646_def, output646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output645_skip]
  kernel_rfl

theorem node647_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value240 value1 value2 = (output307, value241, value1))
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value241 value1 value2 = (output646, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input647 value240 value1 value2 = (output647, value377, value1) := by
  rw [input647_def, output647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output646_skip]
  kernel_rfl

theorem node648_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value239 value1 value2 = (output306, value240, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value240 value1 value2 = (output647, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value239 value1 value2 = (output648, value377, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value238 value1 value2 = (output305, value239, value1))
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value239 value1 value2 = (output648, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input649 value238 value1 value2 = (output649, value377, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output648_skip]
  kernel_rfl

theorem node650_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value237 value1 value2 = (output304, value238, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value238 value1 value2 = (output649, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value237 value1 value2 = (output650, value377, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value236 value1 value2 = (output303, value237, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value237 value1 value2 = (output650, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value236 value1 value2 = (output651, value377, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value233 value1 value2 = (output302, value236, value1))
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value236 value1 value2 = (output651, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input652 value233 value1 value2 = (output652, value377, value1) := by
  rw [input652_def, output652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output651_skip]
  kernel_rfl

theorem node653_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value233 value1 value2 = (output297, value233, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value233 value1 value2 = (output652, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value233 value1 value2 = (output653, value377, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value232 value1 value2 = (output296, value233, value1))
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value233 value1 value2 = (output653, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input654 value232 value1 value2 = (output654, value377, value1) := by
  rw [input654_def, output654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output653_skip]
  kernel_rfl

theorem node655_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value231 value1 value2 = (output295, value232, value1))
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value232 value1 value2 = (output654, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input655 value231 value1 value2 = (output655, value377, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output654_skip]
  kernel_rfl

theorem node656_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value230 value1 value2 = (output294, value231, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value231 value1 value2 = (output655, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value230 value1 value2 = (output656, value377, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value229 value1 value2 = (output293, value230, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value230 value1 value2 = (output656, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value229 value1 value2 = (output657, value377, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value228 value1 value2 = (output292, value229, value1))
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value229 value1 value2 = (output657, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input658 value228 value1 value2 = (output658, value377, value1) := by
  rw [input658_def, output658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output657_skip]
  kernel_rfl

theorem node659_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value227 value1 value2 = (output291, value228, value1))
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value228 value1 value2 = (output658, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input659 value227 value1 value2 = (output659, value377, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output658_skip]
  kernel_rfl

theorem node660_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value226 value1 value2 = (output290, value227, value1))
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value227 value1 value2 = (output659, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input660 value226 value1 value2 = (output660, value377, value1) := by
  rw [input660_def, output660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output659_skip]
  kernel_rfl

theorem node661_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value225 value1 value2 = (output289, value226, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value226 value1 value2 = (output660, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value225 value1 value2 = (output661, value377, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output660_skip]
  kernel_rfl

theorem node662_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value222 value1 value2 = (output288, value225, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value225 value1 value2 = (output661, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value222 value1 value2 = (output662, value377, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output661_skip]
  kernel_rfl

theorem node663_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value222 value1 value2 = (output283, value222, value1))
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value222 value1 value2 = (output662, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input663 value222 value1 value2 = (output663, value377, value1) := by
  rw [input663_def, output663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output662_skip]
  kernel_rfl

theorem node664_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value221 value1 value2 = (output282, value222, value1))
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value222 value1 value2 = (output663, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input664 value221 value1 value2 = (output664, value377, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output663_skip]
  kernel_rfl

theorem node665_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value220 value1 value2 = (output281, value221, value1))
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value221 value1 value2 = (output664, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input665 value220 value1 value2 = (output665, value377, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output664_skip]
  kernel_rfl

theorem node666_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value219 value1 value2 = (output280, value220, value1))
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value220 value1 value2 = (output665, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input666 value219 value1 value2 = (output666, value377, value1) := by
  rw [input666_def, output666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output665_skip]
  kernel_rfl

theorem node667_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value218 value1 value2 = (output279, value219, value1))
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value219 value1 value2 = (output666, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input667 value218 value1 value2 = (output667, value377, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output666_skip]
  kernel_rfl

theorem node668_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value215 value1 value2 = (output278, value218, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value218 value1 value2 = (output667, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value215 value1 value2 = (output668, value377, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value215 value1 value2 = (output273, value215, value1))
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value215 value1 value2 = (output668, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input669 value215 value1 value2 = (output669, value377, value1) := by
  rw [input669_def, output669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output668_skip]
  kernel_rfl

theorem node670_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value214 value1 value2 = (output272, value215, value1))
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value215 value1 value2 = (output669, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input670 value214 value1 value2 = (output670, value377, value1) := by
  rw [input670_def, output670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output669_skip]
  kernel_rfl

theorem node671_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value213 value1 value2 = (output271, value214, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value214 value1 value2 = (output670, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value213 value1 value2 = (output671, value377, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value212 value1 value2 = (output270, value213, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value213 value1 value2 = (output671, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value212 value1 value2 = (output672, value377, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value211 value1 value2 = (output269, value212, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value212 value1 value2 = (output672, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value211 value1 value2 = (output673, value377, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value210 value1 value2 = (output268, value211, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value211 value1 value2 = (output673, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value210 value1 value2 = (output674, value377, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value209 value1 value2 = (output267, value210, value1))
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value210 value1 value2 = (output674, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input675 value209 value1 value2 = (output675, value377, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output674_skip]
  kernel_rfl

theorem node676_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value208 value1 value2 = (output266, value209, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value209 value1 value2 = (output675, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value208 value1 value2 = (output676, value377, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value207 value1 value2 = (output265, value208, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value208 value1 value2 = (output676, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value207 value1 value2 = (output677, value377, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output676_skip]
  kernel_rfl

theorem node678_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value204 value1 value2 = (output264, value207, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value207 value1 value2 = (output677, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value204 value1 value2 = (output678, value377, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value204 value1 value2 = (output259, value204, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value204 value1 value2 = (output678, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value204 value1 value2 = (output679, value377, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value203 value1 value2 = (output258, value204, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value204 value1 value2 = (output679, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value203 value1 value2 = (output680, value377, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value202 value1 value2 = (output257, value203, value1))
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value203 value1 value2 = (output680, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input681 value202 value1 value2 = (output681, value377, value1) := by
  rw [input681_def, output681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output680_skip]
  kernel_rfl

theorem node682_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value201 value1 value2 = (output256, value202, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value202 value1 value2 = (output681, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value201 value1 value2 = (output682, value377, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value200 value1 value2 = (output255, value201, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value201 value1 value2 = (output682, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value200 value1 value2 = (output683, value377, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value199 value1 value2 = (output254, value200, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value200 value1 value2 = (output683, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value199 value1 value2 = (output684, value377, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value198 value1 value2 = (output253, value199, value1))
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value199 value1 value2 = (output684, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input685 value198 value1 value2 = (output685, value377, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output684_skip]
  kernel_rfl

theorem node686_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value197 value1 value2 = (output252, value198, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value198 value1 value2 = (output685, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value197 value1 value2 = (output686, value377, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value196 value1 value2 = (output251, value197, value1))
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value197 value1 value2 = (output686, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input687 value196 value1 value2 = (output687, value377, value1) := by
  rw [input687_def, output687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output686_skip]
  kernel_rfl

theorem node688_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value193 value1 value2 = (output250, value196, value1))
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value196 value1 value2 = (output687, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input688 value193 value1 value2 = (output688, value377, value1) := by
  rw [input688_def, output688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output687_skip]
  kernel_rfl

theorem node689_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value193 value1 value2 = (output245, value193, value1))
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value193 value1 value2 = (output688, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input689 value193 value1 value2 = (output689, value377, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output688_skip]
  kernel_rfl

theorem node690_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value192 value1 value2 = (output244, value193, value1))
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value193 value1 value2 = (output689, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input690 value192 value1 value2 = (output690, value377, value1) := by
  rw [input690_def, output690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output689_skip]
  kernel_rfl

theorem node691_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value191 value1 value2 = (output243, value192, value1))
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value192 value1 value2 = (output690, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input691 value191 value1 value2 = (output691, value377, value1) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output690_skip]
  kernel_rfl

theorem node692_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value190 value1 value2 = (output242, value191, value1))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value191 value1 value2 = (output691, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input692 value190 value1 value2 = (output692, value377, value1) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output691_skip]
  kernel_rfl

theorem node693_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value189 value1 value2 = (output241, value190, value1))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value190 value1 value2 = (output692, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input693 value189 value1 value2 = (output693, value377, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output692_skip]
  kernel_rfl

theorem node694_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value188 value1 value2 = (output240, value189, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value189 value1 value2 = (output693, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value188 value1 value2 = (output694, value377, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value187 value1 value2 = (output239, value188, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value188 value1 value2 = (output694, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input695 value187 value1 value2 = (output695, value377, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output694_skip]
  kernel_rfl

theorem node696_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value186 value1 value2 = (output238, value187, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value187 value1 value2 = (output695, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input696 value186 value1 value2 = (output696, value377, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output695_skip]
  kernel_rfl

theorem node697_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value185 value1 value2 = (output237, value186, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value186 value1 value2 = (output696, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input697 value185 value1 value2 = (output697, value377, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output696_skip]
  kernel_rfl

theorem node698_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value182 value1 value2 = (output236, value185, value1))
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value185 value1 value2 = (output697, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input698 value182 value1 value2 = (output698, value377, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  try dsimp only
  rw [child697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output697_skip]
  kernel_rfl

theorem node699_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value182 value1 value2 = (output231, value182, value1))
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value182 value1 value2 = (output698, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input699 value182 value1 value2 = (output699, value377, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output698_skip]
  kernel_rfl

theorem node700_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value181 value1 value2 = (output230, value182, value1))
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value182 value1 value2 = (output699, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input700 value181 value1 value2 = (output700, value377, value1) := by
  rw [input700_def, output700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output699_skip]
  kernel_rfl

theorem node701_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value180 value1 value2 = (output229, value181, value1))
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value181 value1 value2 = (output700, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input701 value180 value1 value2 = (output701, value377, value1) := by
  rw [input701_def, output701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output700_skip]
  kernel_rfl

theorem node702_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value179 value1 value2 = (output228, value180, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value180 value1 value2 = (output701, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value179 value1 value2 = (output702, value377, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output701_skip]
  kernel_rfl

theorem node703_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value178 value1 value2 = (output227, value179, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value179 value1 value2 = (output702, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value178 value1 value2 = (output703, value377, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value177 value1 value2 = (output226, value178, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value178 value1 value2 = (output703, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value177 value1 value2 = (output704, value377, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value176 value1 value2 = (output225, value177, value1))
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value177 value1 value2 = (output704, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input705 value176 value1 value2 = (output705, value377, value1) := by
  rw [input705_def, output705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output704_skip]
  kernel_rfl

theorem node706_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value175 value1 value2 = (output224, value176, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value176 value1 value2 = (output705, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value175 value1 value2 = (output706, value377, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value174 value1 value2 = (output223, value175, value1))
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value175 value1 value2 = (output706, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input707 value174 value1 value2 = (output707, value377, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output706_skip]
  kernel_rfl

theorem node708_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value171 value1 value2 = (output222, value174, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value174 value1 value2 = (output707, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value171 value1 value2 = (output708, value377, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value171 value1 value2 = (output217, value171, value1))
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value171 value1 value2 = (output708, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input709 value171 value1 value2 = (output709, value377, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output708_skip]
  kernel_rfl

theorem node710_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value170 value1 value2 = (output216, value171, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value171 value1 value2 = (output709, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value170 value1 value2 = (output710, value377, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value169 value1 value2 = (output215, value170, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value170 value1 value2 = (output710, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value169 value1 value2 = (output711, value377, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value168 value1 value2 = (output214, value169, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value169 value1 value2 = (output711, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value168 value1 value2 = (output712, value377, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value167 value1 value2 = (output213, value168, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value168 value1 value2 = (output712, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value167 value1 value2 = (output713, value377, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output712_skip]
  kernel_rfl

theorem node714_cond_eq
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value166 value1 value2 = (output212, value167, value1))
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value167 value1 value2 = (output713, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input714 value166 value1 value2 = (output714, value377, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child212]
  try dsimp only
  rw [child713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output212_skip, output713_skip]
  kernel_rfl

theorem node715_cond_eq
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value165 value1 value2 = (output211, value166, value1))
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value166 value1 value2 = (output714, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input715 value165 value1 value2 = (output715, value377, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child211]
  try dsimp only
  rw [child714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output211_skip, output714_skip]
  kernel_rfl

theorem node716_cond_eq
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value164 value1 value2 = (output210, value165, value1))
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value165 value1 value2 = (output715, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input716 value164 value1 value2 = (output716, value377, value1) := by
  rw [input716_def, output716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child210]
  try dsimp only
  rw [child715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output210_skip, output715_skip]
  kernel_rfl

theorem node717_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value163 value1 value2 = (output209, value164, value1))
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value164 value1 value2 = (output716, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input717 value163 value1 value2 = (output717, value377, value1) := by
  rw [input717_def, output717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output209_skip, output716_skip]
  kernel_rfl

theorem node718_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value160 value1 value2 = (output208, value163, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value163 value1 value2 = (output717, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value160 value1 value2 = (output718, value377, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value160 value1 value2 = (output203, value160, value1))
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value160 value1 value2 = (output718, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input719 value160 value1 value2 = (output719, value377, value1) := by
  rw [input719_def, output719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output718_skip]
  kernel_rfl

theorem node720_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value159 value1 value2 = (output202, value160, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value160 value1 value2 = (output719, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value159 value1 value2 = (output720, value377, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output719_skip]
  kernel_rfl

theorem node721_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value158 value1 value2 = (output201, value159, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value159 value1 value2 = (output720, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value158 value1 value2 = (output721, value377, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value157 value1 value2 = (output200, value158, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value158 value1 value2 = (output721, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value157 value1 value2 = (output722, value377, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output721_skip]
  kernel_rfl

theorem node723_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value156 value1 value2 = (output199, value157, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value157 value1 value2 = (output722, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value156 value1 value2 = (output723, value377, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value153 value1 value2 = (output198, value156, value1))
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value156 value1 value2 = (output723, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input724 value153 value1 value2 = (output724, value377, value1) := by
  rw [input724_def, output724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output723_skip]
  kernel_rfl

theorem node725_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value153 value1 value2 = (output193, value153, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value153 value1 value2 = (output724, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value153 value1 value2 = (output725, value377, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output724_skip]
  kernel_rfl

theorem node726_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value152 value1 value2 = (output192, value153, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value153 value1 value2 = (output725, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value152 value1 value2 = (output726, value377, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value151 value1 value2 = (output191, value152, value1))
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value152 value1 value2 = (output726, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input727 value151 value1 value2 = (output727, value377, value1) := by
  rw [input727_def, output727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output726_skip]
  kernel_rfl

theorem node728_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value150 value1 value2 = (output190, value151, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value151 value1 value2 = (output727, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value150 value1 value2 = (output728, value377, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output727_skip]
  kernel_rfl

theorem node729_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value149 value1 value2 = (output189, value150, value1))
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value150 value1 value2 = (output728, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input729 value149 value1 value2 = (output729, value377, value1) := by
  rw [input729_def, output729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output728_skip]
  kernel_rfl

theorem node730_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value148 value1 value2 = (output188, value149, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value149 value1 value2 = (output729, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value148 value1 value2 = (output730, value377, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value147 value1 value2 = (output187, value148, value1))
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value148 value1 value2 = (output730, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input731 value147 value1 value2 = (output731, value377, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output730_skip]
  kernel_rfl

theorem node732_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value146 value1 value2 = (output186, value147, value1))
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value147 value1 value2 = (output731, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input732 value146 value1 value2 = (output732, value377, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output731_skip]
  kernel_rfl

theorem node733_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value145 value1 value2 = (output185, value146, value1))
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value146 value1 value2 = (output732, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input733 value145 value1 value2 = (output733, value377, value1) := by
  rw [input733_def, output733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output732_skip]
  kernel_rfl

theorem node734_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value142 value1 value2 = (output184, value145, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value145 value1 value2 = (output733, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value142 value1 value2 = (output734, value377, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output733_skip]
  kernel_rfl

theorem node735_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value142 value1 value2 = (output179, value142, value1))
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value142 value1 value2 = (output734, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input735 value142 value1 value2 = (output735, value377, value1) := by
  rw [input735_def, output735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output734_skip]
  kernel_rfl

theorem node736_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value141 value1 value2 = (output178, value142, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value142 value1 value2 = (output735, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value141 value1 value2 = (output736, value377, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value140 value1 value2 = (output177, value141, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value141 value1 value2 = (output736, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value140 value1 value2 = (output737, value377, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value139 value1 value2 = (output176, value140, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value140 value1 value2 = (output737, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value139 value1 value2 = (output738, value377, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value138 value1 value2 = (output175, value139, value1))
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value139 value1 value2 = (output738, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input739 value138 value1 value2 = (output739, value377, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output738_skip]
  kernel_rfl

theorem node740_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value137 value1 value2 = (output174, value138, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value138 value1 value2 = (output739, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value137 value1 value2 = (output740, value377, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value136 value1 value2 = (output173, value137, value1))
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value137 value1 value2 = (output740, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input741 value136 value1 value2 = (output741, value377, value1) := by
  rw [input741_def, output741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output740_skip]
  kernel_rfl

theorem node742_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value135 value1 value2 = (output172, value136, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value136 value1 value2 = (output741, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value135 value1 value2 = (output742, value377, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value134 value1 value2 = (output171, value135, value1))
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value135 value1 value2 = (output742, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input743 value134 value1 value2 = (output743, value377, value1) := by
  rw [input743_def, output743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output742_skip]
  kernel_rfl

theorem node744_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value131 value1 value2 = (output170, value134, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value134 value1 value2 = (output743, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value131 value1 value2 = (output744, value377, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  try dsimp only
  rw [child743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output170_skip, output743_skip]
  kernel_rfl

theorem node745_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value131 value1 value2 = (output165, value131, value1))
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value131 value1 value2 = (output744, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input745 value131 value1 value2 = (output745, value377, value1) := by
  rw [input745_def, output745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output744_skip]
  kernel_rfl

theorem node746_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value130 value1 value2 = (output164, value131, value1))
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value131 value1 value2 = (output745, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input746 value130 value1 value2 = (output746, value377, value1) := by
  rw [input746_def, output746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output745_skip]
  kernel_rfl

theorem node747_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value129 value1 value2 = (output163, value130, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value130 value1 value2 = (output746, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value129 value1 value2 = (output747, value377, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value128 value1 value2 = (output162, value129, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value129 value1 value2 = (output747, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value128 value1 value2 = (output748, value377, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output747_skip]
  kernel_rfl

theorem node749_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value127 value1 value2 = (output161, value128, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value128 value1 value2 = (output748, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value127 value1 value2 = (output749, value377, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output748_skip]
  kernel_rfl

theorem node750_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value126 value1 value2 = (output160, value127, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value127 value1 value2 = (output749, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value126 value1 value2 = (output750, value377, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value125 value1 value2 = (output159, value126, value1))
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value126 value1 value2 = (output750, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input751 value125 value1 value2 = (output751, value377, value1) := by
  rw [input751_def, output751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  try dsimp only
  rw [child750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output750_skip]
  kernel_rfl

theorem node752_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value124 value1 value2 = (output158, value125, value1))
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value125 value1 value2 = (output751, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input752 value124 value1 value2 = (output752, value377, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output751_skip]
  kernel_rfl

theorem node753_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value123 value1 value2 = (output157, value124, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value124 value1 value2 = (output752, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value123 value1 value2 = (output753, value377, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value120 value1 value2 = (output156, value123, value1))
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value123 value1 value2 = (output753, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input754 value120 value1 value2 = (output754, value377, value1) := by
  rw [input754_def, output754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output753_skip]
  kernel_rfl

theorem node755_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value120 value1 value2 = (output151, value120, value1))
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value120 value1 value2 = (output754, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input755 value120 value1 value2 = (output755, value377, value1) := by
  rw [input755_def, output755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output754_skip]
  kernel_rfl

theorem node756_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value119 value1 value2 = (output150, value120, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value120 value1 value2 = (output755, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value119 value1 value2 = (output756, value377, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output755_skip]
  kernel_rfl

theorem node757_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value118 value1 value2 = (output149, value119, value1))
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value119 value1 value2 = (output756, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input757 value118 value1 value2 = (output757, value377, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output756_skip]
  kernel_rfl

theorem node758_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value117 value1 value2 = (output148, value118, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value118 value1 value2 = (output757, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value117 value1 value2 = (output758, value377, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output757_skip]
  kernel_rfl

theorem node759_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value116 value1 value2 = (output147, value117, value1))
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value117 value1 value2 = (output758, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input759 value116 value1 value2 = (output759, value377, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output758_skip]
  kernel_rfl

theorem node760_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value115 value1 value2 = (output146, value116, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value116 value1 value2 = (output759, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value115 value1 value2 = (output760, value377, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value114 value1 value2 = (output145, value115, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value115 value1 value2 = (output760, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value114 value1 value2 = (output761, value377, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output145_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value113 value1 value2 = (output144, value114, value1))
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value114 value1 value2 = (output761, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input762 value113 value1 value2 = (output762, value377, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output761_skip]
  kernel_rfl

theorem node763_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value112 value1 value2 = (output143, value113, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value113 value1 value2 = (output762, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value112 value1 value2 = (output763, value377, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value109 value1 value2 = (output142, value112, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value112 value1 value2 = (output763, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value109 value1 value2 = (output764, value377, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value109 value1 value2 = (output137, value109, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value109 value1 value2 = (output764, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value109 value1 value2 = (output765, value377, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value108 value1 value2 = (output136, value109, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value109 value1 value2 = (output765, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value108 value1 value2 = (output766, value377, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value107 value1 value2 = (output135, value108, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value108 value1 value2 = (output766, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value107 value1 value2 = (output767, value377, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output766_skip]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages651.Parallel
