import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages874.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages874.Parallel
theorem node512_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value141 value1 value2 = (output510, value141, value1))
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value141 value1 value2 = (output511, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input512 value141 value1 value2 = (output512, value150, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output511_skip]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value150 value1 value2 = (output513, value150, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value150 value1 value2 = (output514, value150, value1) := by
  rw [input514_def, output514_def]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value150 value1 value2 = (output515, value150, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value150 value1 value2 = (output514, value150, value1))
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value150 value1 value2 = (output515, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input516 value150 value1 value2 = (output516, value150, value1) := by
  rw [input516_def, output516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output515_skip]
  kernel_rfl

theorem node517_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value150 value1 value2 = (output513, value150, value1))
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value150 value1 value2 = (output516, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input517 value150 value1 value2 = (output517, value150, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output516_skip]
  kernel_rfl

theorem node518_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value141 value1 value2 = (output512, value150, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value150 value1 value2 = (output517, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value141 value1 value2 = (output518, value150, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value141 value1 value2 = (output505, value150, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value141 value1 value2 = (output518, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value141 value1 value2 = (output519, value152, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child505]
  try dsimp only
  rw [child518]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value152 value1 value2 = (output520, value153, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value153 value1 value2 = (output521, value154, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value154 value1 value2 = (output522, value154, value1) := by
  rw [input522_def, output522_def]
  kernel_rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value154 value1 value2 = (output523, value154, value1) := by
  rw [input523_def, output523_def]
  kernel_rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value154 value1 value2 = (output524, value154, value1) := by
  rw [input524_def, output524_def]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value154 value1 value2 = (output525, value154, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value154 value1 value2 = (output526, value154, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value154 value1 value2 = (output527, value154, value1) := by
  rw [input527_def, output527_def]
  kernel_rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value154 value1 value2 = (output528, value154, value1) := by
  rw [input528_def, output528_def]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value154 value1 value2 = (output529, value154, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input530 value154 value1 value2 = (output530, value154, value1) := by
  rw [input530_def, output530_def]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value154 value1 value2 = (output531, value154, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value154 value1 value2 = (output532, value154, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value154 value1 value2 = (output533, value154, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value154 value1 value2 = (output534, value154, value1) := by
  rw [input534_def, output534_def]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value154 value1 value2 = (output535, value154, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value154 value1 value2 = (output536, value154, value1) := by
  rw [input536_def, output536_def]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value154 value1 value2 = (output537, value154, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value154 value1 value2 = (output538, value154, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value154 value1 value2 = (output539, value154, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value154 value1 value2 = (output540, value154, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input541 value154 value1 value2 = (output541, value154, value1) := by
  rw [input541_def, output541_def]
  kernel_rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value154 value1 value2 = (output542, value154, value1) := by
  rw [input542_def, output542_def]
  kernel_rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value154 value1 value2 = (output543, value154, value1) := by
  rw [input543_def, output543_def]
  kernel_rfl

theorem node544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input544 value154 value1 value2 = (output544, value154, value1) := by
  rw [input544_def, output544_def]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value154 value1 value2 = (output545, value154, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value154 value1 value2 = (output546, value154, value1) := by
  rw [input546_def, output546_def]
  kernel_rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value154 value1 value2 = (output547, value154, value1) := by
  rw [input547_def, output547_def]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value154 value1 value2 = (output548, value154, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value154 value1 value2 = (output549, value154, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input550 value154 value1 value2 = (output550, value154, value1) := by
  rw [input550_def, output550_def]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value154 value1 value2 = (output551, value154, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value154 value1 value2 = (output552, value154, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value154 value1 value2 = (output553, value154, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value154 value1 value2 = (output554, value154, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value154 value1 value2 = (output555, value154, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value154 value1 value2 = (output554, value154, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value154 value1 value2 = (output555, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value154 value1 value2 = (output556, value154, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value154 value1 value2 = (output553, value154, value1))
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value154 value1 value2 = (output556, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input557 value154 value1 value2 = (output557, value154, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output556_skip]
  kernel_rfl

theorem node558_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value154 value1 value2 = (output552, value154, value1))
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value154 value1 value2 = (output557, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input558 value154 value1 value2 = (output558, value154, value1) := by
  rw [input558_def, output558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output557_skip]
  kernel_rfl

theorem node559_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value154 value1 value2 = (output551, value154, value1))
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value154 value1 value2 = (output558, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input559 value154 value1 value2 = (output559, value154, value1) := by
  rw [input559_def, output559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output558_skip]
  kernel_rfl

theorem node560_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value154 value1 value2 = (output550, value154, value1))
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value154 value1 value2 = (output559, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input560 value154 value1 value2 = (output560, value154, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output559_skip]
  kernel_rfl

theorem node561_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value154 value1 value2 = (output549, value154, value1))
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value154 value1 value2 = (output560, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input561 value154 value1 value2 = (output561, value154, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output560_skip]
  kernel_rfl

theorem node562_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value154 value1 value2 = (output548, value154, value1))
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value154 value1 value2 = (output561, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input562 value154 value1 value2 = (output562, value154, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output561_skip]
  kernel_rfl

theorem node563_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value154 value1 value2 = (output547, value154, value1))
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value154 value1 value2 = (output562, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input563 value154 value1 value2 = (output563, value154, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output562_skip]
  kernel_rfl

theorem node564_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value154 value1 value2 = (output546, value154, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value154 value1 value2 = (output563, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value154 value1 value2 = (output564, value154, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value154 value1 value2 = (output545, value154, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value154 value1 value2 = (output564, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value154 value1 value2 = (output565, value154, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value154 value1 value2 = (output544, value154, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value154 value1 value2 = (output565, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value154 value1 value2 = (output566, value154, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value154 value1 value2 = (output543, value154, value1))
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value154 value1 value2 = (output566, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input567 value154 value1 value2 = (output567, value154, value1) := by
  rw [input567_def, output567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output566_skip]
  kernel_rfl

theorem node568_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value154 value1 value2 = (output542, value154, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value154 value1 value2 = (output567, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value154 value1 value2 = (output568, value154, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value154 value1 value2 = (output541, value154, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value154 value1 value2 = (output568, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value154 value1 value2 = (output569, value154, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value154 value1 value2 = (output540, value154, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value154 value1 value2 = (output569, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value154 value1 value2 = (output570, value154, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value154 value1 value2 = (output539, value154, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value154 value1 value2 = (output570, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value154 value1 value2 = (output571, value154, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value154 value1 value2 = (output538, value154, value1))
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value154 value1 value2 = (output571, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input572 value154 value1 value2 = (output572, value154, value1) := by
  rw [input572_def, output572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output571_skip]
  kernel_rfl

theorem node573_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value154 value1 value2 = (output537, value154, value1))
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value154 value1 value2 = (output572, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input573 value154 value1 value2 = (output573, value154, value1) := by
  rw [input573_def, output573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output572_skip]
  kernel_rfl

theorem node574_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value154 value1 value2 = (output536, value154, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value154 value1 value2 = (output573, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value154 value1 value2 = (output574, value154, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value154 value1 value2 = (output535, value154, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value154 value1 value2 = (output574, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value154 value1 value2 = (output575, value154, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value154 value1 value2 = (output534, value154, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value154 value1 value2 = (output575, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value154 value1 value2 = (output576, value154, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value154 value1 value2 = (output533, value154, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value154 value1 value2 = (output576, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value154 value1 value2 = (output577, value154, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value154 value1 value2 = (output532, value154, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value154 value1 value2 = (output577, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value154 value1 value2 = (output578, value154, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value154 value1 value2 = (output531, value154, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value154 value1 value2 = (output578, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value154 value1 value2 = (output579, value154, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value154 value1 value2 = (output530, value154, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value154 value1 value2 = (output579, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value154 value1 value2 = (output580, value154, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value154 value1 value2 = (output529, value154, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value154 value1 value2 = (output580, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value154 value1 value2 = (output581, value154, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value154 value1 value2 = (output528, value154, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value154 value1 value2 = (output581, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value154 value1 value2 = (output582, value154, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value154 value1 value2 = (output527, value154, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value154 value1 value2 = (output582, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value154 value1 value2 = (output583, value154, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value154 value1 value2 = (output526, value154, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value154 value1 value2 = (output583, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value154 value1 value2 = (output584, value154, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value154 value1 value2 = (output525, value154, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value154 value1 value2 = (output584, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value154 value1 value2 = (output585, value154, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value154 value1 value2 = (output524, value154, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value154 value1 value2 = (output585, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value154 value1 value2 = (output586, value154, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value154 value1 value2 = (output523, value154, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value154 value1 value2 = (output586, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value154 value1 value2 = (output587, value154, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input588 value154 value1 value2 = (output588, value155, value1) := by
  rw [input588_def, output588_def]
  kernel_rfl

theorem node589_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value154 value1 value2 = (output587, value154, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value154 value1 value2 = (output588, value155, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value154 value1 value2 = (output589, value155, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value155 value1 value2 = (output590, value156, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input591 value156 value1 value2 = (output591, value157, value1) := by
  rw [input591_def, output591_def]
  kernel_rfl

theorem node592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input592 value157 value1 value2 = (output592, value158, value1) := by
  rw [input592_def, output592_def]
  kernel_rfl

theorem node593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input593 value158 value1 value2 = (output593, value159, value1) := by
  rw [input593_def, output593_def]
  kernel_rfl

theorem node594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input594 value159 value1 value2 = (output594, value159, value1) := by
  rw [input594_def, output594_def]
  kernel_rfl

theorem node595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input595 value159 value1 value2 = (output595, value159, value1) := by
  rw [input595_def, output595_def]
  kernel_rfl

theorem node596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input596 value159 value1 value2 = (output596, value160, value1) := by
  rw [input596_def, output596_def]
  kernel_rfl

theorem node597_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value159 value1 value2 = (output595, value159, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value159 value1 value2 = (output596, value160, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value159 value1 value2 = (output597, value160, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value160 value1 value2 = (output598, value161, value1) := by
  rw [input598_def, output598_def]
  kernel_rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value161 value1 value2 = (output599, value161, value1) := by
  rw [input599_def, output599_def]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value161 value1 value2 = (output600, value161, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value161 value1 value2 = (output601, value161, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value161 value1 value2 = (output600, value161, value1))
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value161 value1 value2 = (output601, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input602 value161 value1 value2 = (output602, value161, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output601_skip]
  kernel_rfl

theorem node603_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value161 value1 value2 = (output599, value161, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value161 value1 value2 = (output602, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value161 value1 value2 = (output603, value161, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value160 value1 value2 = (output598, value161, value1))
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value161 value1 value2 = (output603, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input604 value160 value1 value2 = (output604, value161, value1) := by
  rw [input604_def, output604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output603_skip]
  kernel_rfl

theorem node605_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value159 value1 value2 = (output597, value160, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value160 value1 value2 = (output604, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value159 value1 value2 = (output605, value161, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output604_skip]
  kernel_rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value159 value1 value2 = (output606, value159, value1) := by
  rw [input606_def, output606_def]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value159 value1 value2 = (output607, value162, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value159 value1 value2 = (output606, value159, value1))
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value159 value1 value2 = (output607, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input608 value159 value1 value2 = (output608, value162, value1) := by
  rw [input608_def, output608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output607_skip]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value162 value1 value2 = (output609, value162, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value162 value1 value2 = (output610, value162, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value162 value1 value2 = (output611, value162, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value162 value1 value2 = (output610, value162, value1))
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value162 value1 value2 = (output611, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input612 value162 value1 value2 = (output612, value162, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output611_skip]
  kernel_rfl

theorem node613_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value162 value1 value2 = (output609, value162, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value162 value1 value2 = (output612, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value162 value1 value2 = (output613, value162, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value159 value1 value2 = (output608, value162, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value162 value1 value2 = (output613, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value159 value1 value2 = (output614, value162, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value159 value1 value2 = (output605, value161, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value159 value1 value2 = (output614, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value159 value1 value2 = (output615, value164, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child605]
  try dsimp only
  rw [child614]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value164 value1 value2 = (output616, value165, value1) := by
  rw [input616_def, output616_def]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value165 value1 value2 = (output617, value166, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value166 value1 value2 = (output618, value166, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value166 value1 value2 = (output619, value167, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value167 value1 value2 = (output620, value168, value1) := by
  rw [input620_def, output620_def]
  kernel_rfl

theorem node621_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value166 value1 value2 = (output619, value167, value1))
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value167 value1 value2 = (output620, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input621 value166 value1 value2 = (output621, value168, value1) := by
  rw [input621_def, output621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output620_skip]
  kernel_rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value168 value1 value2 = (output622, value169, value1) := by
  rw [input622_def, output622_def]
  kernel_rfl

theorem node623_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value166 value1 value2 = (output621, value168, value1))
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value168 value1 value2 = (output622, value169, value1)) : Flapjack.WordAlloc.removeDeadStructural input623 value166 value1 value2 = (output623, value169, value1) := by
  rw [input623_def, output623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  try dsimp only
  rw [child622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output622_skip]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value169 value1 value2 = (output624, value170, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value170 value1 value2 = (output625, value171, value1) := by
  rw [input625_def, output625_def]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value171 value1 value2 = (output626, value172, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value172 value1 value2 = (output627, value173, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value173 value1 value2 = (output628, value174, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value174 value1 value2 = (output629, value175, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value175 value1 value2 = (output630, value176, value1) := by
  rw [input630_def, output630_def]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value176 value1 value2 = (output631, value177, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value177 value1 value2 = (output632, value177, value1) := by
  rw [input632_def, output632_def]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value177 value1 value2 = (output633, value177, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value177 value1 value2 = (output634, value178, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value177 value1 value2 = (output633, value177, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value177 value1 value2 = (output634, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value177 value1 value2 = (output635, value178, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value178 value1 value2 = (output636, value179, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value179 value1 value2 = (output637, value179, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value179 value1 value2 = (output638, value179, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value179 value1 value2 = (output639, value179, value1) := by
  rw [input639_def, output639_def]
  kernel_rfl

theorem node640_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value179 value1 value2 = (output638, value179, value1))
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value179 value1 value2 = (output639, value179, value1)) : Flapjack.WordAlloc.removeDeadStructural input640 value179 value1 value2 = (output640, value179, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output639_skip]
  kernel_rfl

theorem node641_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value179 value1 value2 = (output637, value179, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value179 value1 value2 = (output640, value179, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value179 value1 value2 = (output641, value179, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value178 value1 value2 = (output636, value179, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value179 value1 value2 = (output641, value179, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value178 value1 value2 = (output642, value179, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value177 value1 value2 = (output635, value178, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value178 value1 value2 = (output642, value179, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value177 value1 value2 = (output643, value179, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value177 value1 value2 = (output644, value177, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value177 value1 value2 = (output645, value180, value1) := by
  rw [input645_def, output645_def]
  kernel_rfl

theorem node646_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value177 value1 value2 = (output644, value177, value1))
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value177 value1 value2 = (output645, value180, value1)) : Flapjack.WordAlloc.removeDeadStructural input646 value177 value1 value2 = (output646, value180, value1) := by
  rw [input646_def, output646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output645_skip]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value180 value1 value2 = (output647, value180, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input648 value180 value1 value2 = (output648, value180, value1) := by
  rw [input648_def, output648_def]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value180 value1 value2 = (output649, value180, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value180 value1 value2 = (output648, value180, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value180 value1 value2 = (output649, value180, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value180 value1 value2 = (output650, value180, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value180 value1 value2 = (output647, value180, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value180 value1 value2 = (output650, value180, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value180 value1 value2 = (output651, value180, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value177 value1 value2 = (output646, value180, value1))
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value180 value1 value2 = (output651, value180, value1)) : Flapjack.WordAlloc.removeDeadStructural input652 value177 value1 value2 = (output652, value180, value1) := by
  rw [input652_def, output652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output651_skip]
  kernel_rfl

theorem node653_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value177 value1 value2 = (output643, value179, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value177 value1 value2 = (output652, value180, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value177 value1 value2 = (output653, value182, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child643]
  try dsimp only
  rw [child652]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value182 value1 value2 = (output654, value183, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value183 value1 value2 = (output655, value184, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value184 value1 value2 = (output656, value184, value1) := by
  rw [input656_def, output656_def]
  kernel_rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value184 value1 value2 = (output657, value185, value1) := by
  rw [input657_def, output657_def]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value185 value1 value2 = (output658, value186, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value184 value1 value2 = (output657, value185, value1))
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value185 value1 value2 = (output658, value186, value1)) : Flapjack.WordAlloc.removeDeadStructural input659 value184 value1 value2 = (output659, value186, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output658_skip]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value186 value1 value2 = (output660, value187, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value184 value1 value2 = (output659, value186, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value186 value1 value2 = (output660, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value184 value1 value2 = (output661, value187, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output660_skip]
  kernel_rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value187 value1 value2 = (output662, value188, value1) := by
  rw [input662_def, output662_def]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value188 value1 value2 = (output663, value189, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value189 value1 value2 = (output664, value190, value1) := by
  rw [input664_def, output664_def]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value190 value1 value2 = (output665, value191, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value191 value1 value2 = (output666, value192, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value192 value1 value2 = (output667, value192, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value192 value1 value2 = (output668, value192, value1) := by
  rw [input668_def, output668_def]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value192 value1 value2 = (output669, value192, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value192 value1 value2 = (output670, value192, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value192 value1 value2 = (output669, value192, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value192 value1 value2 = (output670, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value192 value1 value2 = (output671, value192, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value192 value1 value2 = (output668, value192, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value192 value1 value2 = (output671, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value192 value1 value2 = (output672, value192, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input673 value192 value1 value2 = (output673, value192, value1) := by
  rw [input673_def, output673_def]
  kernel_rfl

theorem node674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input674 value192 value1 value2 = (output674, value192, value1) := by
  rw [input674_def, output674_def]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value192 value1 value2 = (output675, value192, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value192 value1 value2 = (output674, value192, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value192 value1 value2 = (output675, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value192 value1 value2 = (output676, value192, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value192 value1 value2 = (output673, value192, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value192 value1 value2 = (output676, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value192 value1 value2 = (output677, value192, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child673]
  try dsimp only
  rw [child676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output673_skip, output676_skip]
  kernel_rfl

theorem node678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input678 value192 value1 value2 = (output678, value192, value1) := by
  rw [input678_def, output678_def]
  kernel_rfl

theorem node679_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value192 value1 value2 = (output677, value192, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value192 value1 value2 = (output678, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value192 value1 value2 = (output679, value192, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input680 value192 value1 value2 = (output680, value193, value1) := by
  rw [input680_def, output680_def]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value193 value1 value2 = (output681, value194, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value192 value1 value2 = (output680, value193, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value193 value1 value2 = (output681, value194, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value192 value1 value2 = (output682, value194, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input683 value194 value1 value2 = (output683, value192, value1) := by
  rw [input683_def, output683_def]
  kernel_rfl

theorem node684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input684 value192 value1 value2 = (output684, value195, value13) := by
  rw [input684_def, output684_def]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value195 value13 value2 = (output685, value196, value13) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value192 value1 value2 = (output684, value195, value13))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value195 value13 value2 = (output685, value196, value13)) : Flapjack.WordAlloc.removeDeadStructural input686 value192 value1 value2 = (output686, value196, value13) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value196 value13 value2 = (output687, value192, value13) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value192 value13 value2 = (output688, value192, value13) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value192 value13 value2 = (output689, value192, value13) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value192 value13 value2 = (output690, value192, value13) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value192 value13 value2 = (output689, value192, value13))
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value192 value13 value2 = (output690, value192, value13)) : Flapjack.WordAlloc.removeDeadStructural input691 value192 value13 value2 = (output691, value192, value13) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output690_skip]
  kernel_rfl

theorem node692_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value192 value13 value2 = (output688, value192, value13))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value192 value13 value2 = (output691, value192, value13)) : Flapjack.WordAlloc.removeDeadStructural input692 value192 value13 value2 = (output692, value192, value13) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output691_skip]
  kernel_rfl

theorem node693_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value196 value13 value2 = (output687, value192, value13))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value192 value13 value2 = (output692, value192, value13)) : Flapjack.WordAlloc.removeDeadStructural input693 value196 value13 value2 = (output693, value192, value13) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output692_skip]
  kernel_rfl

theorem node694_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value192 value1 value2 = (output686, value196, value13))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value196 value13 value2 = (output693, value192, value13)) : Flapjack.WordAlloc.removeDeadStructural input694 value192 value1 value2 = (output694, value192, value13) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value194 value1 value2 = (output683, value192, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value192 value1 value2 = (output694, value192, value13)) : Flapjack.WordAlloc.removeDeadStructural input695 value194 value1 value2 = (output695, value192, value13) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child683]
  try dsimp only
  rw [child694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output683_skip, output694_skip]
  kernel_rfl

theorem node696_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value192 value1 value2 = (output682, value194, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value194 value1 value2 = (output695, value192, value13)) : Flapjack.WordAlloc.removeDeadStructural input696 value192 value1 value2 = (output696, value192, value13) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  try dsimp only
  rw [child695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output682_skip, output695_skip]
  kernel_rfl

theorem node697_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value192 value1 value2 = (output679, value192, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value192 value1 value2 = (output696, value192, value13)) : Flapjack.WordAlloc.removeDeadStructural input697 value192 value1 value2 = (output697, value192, value13) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output696_skip]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value192 value1 value2 = (output698, value192, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value192 value1 value2 = (output699, value192, value1) := by
  rw [input699_def, output699_def]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value192 value1 value2 = (output700, value192, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value192 value1 value2 = (output699, value192, value1))
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value192 value1 value2 = (output700, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input701 value192 value1 value2 = (output701, value192, value1) := by
  rw [input701_def, output701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output700_skip]
  kernel_rfl

theorem node702_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value192 value1 value2 = (output698, value192, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value192 value1 value2 = (output701, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value192 value1 value2 = (output702, value192, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output701_skip]
  kernel_rfl

theorem node703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input703 value192 value1 value2 = (output703, value192, value1) := by
  rw [input703_def, output703_def]
  kernel_rfl

theorem node704_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value192 value1 value2 = (output702, value192, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value192 value1 value2 = (output703, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value192 value1 value2 = (output704, value192, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value192 value1 value2 = (output705, value192, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value192 value1 value2 = (output704, value192, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value192 value1 value2 = (output705, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value192 value1 value2 = (output706, value192, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value192 value1 value2 = (output697, value192, value13))
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value192 value1 value2 = (output706, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input707 value192 value1 value2 = (output707, value198, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child697]
  try dsimp only
  rw [child706]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output706_skip]
  kernel_rfl

theorem node708_cond_eq
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value192 value1 value2 = (output672, value192, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value192 value1 value2 = (output707, value198, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value192 value1 value2 = (output708, value198, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child672]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output672_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value198 value1 value2 = (output709, value199, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input710 value199 value1 value2 = (output710, value200, value1) := by
  rw [input710_def, output710_def]
  kernel_rfl

theorem node711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input711 value200 value1 value2 = (output711, value200, value1) := by
  rw [input711_def, output711_def]
  kernel_rfl

theorem node712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input712 value200 value1 value2 = (output712, value201, value1) := by
  rw [input712_def, output712_def]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value201 value1 value2 = (output713, value202, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value200 value1 value2 = (output712, value201, value1))
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value201 value1 value2 = (output713, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input714 value200 value1 value2 = (output714, value202, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output713_skip]
  kernel_rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value202 value1 value2 = (output715, value203, value1) := by
  rw [input715_def, output715_def]
  kernel_rfl

theorem node716_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value200 value1 value2 = (output714, value202, value1))
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value202 value1 value2 = (output715, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input716 value200 value1 value2 = (output716, value203, value1) := by
  rw [input716_def, output716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output715_skip]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value203 value1 value2 = (output717, value204, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input718 value204 value1 value2 = (output718, value205, value1) := by
  rw [input718_def, output718_def]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value205 value1 value2 = (output719, value206, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input720 value206 value1 value2 = (output720, value207, value1) := by
  rw [input720_def, output720_def]
  kernel_rfl

theorem node721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input721 value207 value1 value2 = (output721, value208, value1) := by
  rw [input721_def, output721_def]
  kernel_rfl

theorem node722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input722 value208 value1 value2 = (output722, value209, value1) := by
  rw [input722_def, output722_def]
  kernel_rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value209 value1 value2 = (output723, value210, value1) := by
  rw [input723_def, output723_def]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value210 value1 value2 = (output724, value211, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value211 value1 value2 = (output725, value212, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input726 value212 value1 value2 = (output726, value213, value1) := by
  rw [input726_def, output726_def]
  kernel_rfl

theorem node727_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value211 value1 value2 = (output725, value212, value1))
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value212 value1 value2 = (output726, value213, value1)) : Flapjack.WordAlloc.removeDeadStructural input727 value211 value1 value2 = (output727, value213, value1) := by
  rw [input727_def, output727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output726_skip]
  kernel_rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value213 value1 value2 = (output728, value214, value1) := by
  rw [input728_def, output728_def]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value214 value1 value2 = (output729, value215, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value213 value1 value2 = (output728, value214, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value214 value1 value2 = (output729, value215, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value213 value1 value2 = (output730, value215, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value215 value1 value2 = (output731, value216, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value216 value1 value2 = (output732, value217, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value215 value1 value2 = (output731, value216, value1))
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value216 value1 value2 = (output732, value217, value1)) : Flapjack.WordAlloc.removeDeadStructural input733 value215 value1 value2 = (output733, value217, value1) := by
  rw [input733_def, output733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output732_skip]
  kernel_rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value217 value1 value2 = (output734, value218, value1) := by
  rw [input734_def, output734_def]
  kernel_rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value218 value1 value2 = (output735, value219, value1) := by
  rw [input735_def, output735_def]
  kernel_rfl

theorem node736_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value217 value1 value2 = (output734, value218, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value218 value1 value2 = (output735, value219, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value217 value1 value2 = (output736, value219, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input737 value219 value1 value2 = (output737, value219, value1) := by
  rw [input737_def, output737_def]
  kernel_rfl

theorem node738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input738 value219 value1 value2 = (output738, value220, value1) := by
  rw [input738_def, output738_def]
  kernel_rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value220 value1 value2 = (output739, value221, value1) := by
  rw [input739_def, output739_def]
  kernel_rfl

theorem node740_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value219 value1 value2 = (output738, value220, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value220 value1 value2 = (output739, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value219 value1 value2 = (output740, value221, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output738_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value221 value1 value2 = (output741, value222, value1) := by
  rw [input741_def, output741_def]
  kernel_rfl

theorem node742_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value219 value1 value2 = (output740, value221, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value221 value1 value2 = (output741, value222, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value219 value1 value2 = (output742, value222, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value222 value1 value2 = (output743, value223, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input744 value223 value1 value2 = (output744, value224, value1) := by
  rw [input744_def, output744_def]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value224 value1 value2 = (output745, value225, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value225 value1 value2 = (output746, value226, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value226 value1 value2 = (output747, value227, value1) := by
  rw [input747_def, output747_def]
  kernel_rfl

theorem node748_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value225 value1 value2 = (output746, value226, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value226 value1 value2 = (output747, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value225 value1 value2 = (output748, value227, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output747_skip]
  kernel_rfl

theorem node749_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value224 value1 value2 = (output745, value225, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value225 value1 value2 = (output748, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value224 value1 value2 = (output749, value227, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output748_skip]
  kernel_rfl

theorem node750_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value223 value1 value2 = (output744, value224, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value224 value1 value2 = (output749, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value223 value1 value2 = (output750, value227, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value222 value1 value2 = (output743, value223, value1))
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value223 value1 value2 = (output750, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input751 value222 value1 value2 = (output751, value227, value1) := by
  rw [input751_def, output751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output750_skip]
  kernel_rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value227 value1 value2 = (output752, value227, value1) := by
  rw [input752_def, output752_def]
  kernel_rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value228 value1 value229 = (output753, value230, value1) := by
  rw [input753_def, output753_def]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value230 value1 value229 = (output754, value230, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value230 value1 value229 = (output755, value230, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input756 value230 value1 value229 = (output756, value230, value1) := by
  rw [input756_def, output756_def]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value230 value1 value229 = (output757, value230, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value230 value1 value229 = (output758, value230, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value230 value1 value229 = (output759, value230, value1) := by
  rw [input759_def, output759_def]
  kernel_rfl

theorem node760_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value230 value1 value229 = (output758, value230, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value230 value1 value229 = (output759, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value230 value1 value229 = (output760, value230, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value230 value1 value229 = (output757, value230, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value230 value1 value229 = (output760, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value230 value1 value229 = (output761, value230, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value230 value1 value229 = (output756, value230, value1))
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value230 value1 value229 = (output761, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input762 value230 value1 value229 = (output762, value230, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output761_skip]
  kernel_rfl

theorem node763_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value230 value1 value229 = (output755, value230, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value230 value1 value229 = (output762, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value230 value1 value229 = (output763, value230, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input764 value230 value1 value229 = (output764, value231, value1) := by
  rw [input764_def, output764_def]
  kernel_rfl

theorem node765_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value230 value1 value229 = (output763, value230, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value230 value1 value229 = (output764, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value230 value1 value229 = (output765, value231, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input766 value231 value1 value229 = (output766, value228, value1) := by
  rw [input766_def, output766_def]
  kernel_rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value228 value1 value229 = (output767, value231, value1) := by
  rw [input767_def, output767_def]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages874.Parallel
