import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node512_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value99 value1 value2 = (output504, value99, value1))
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value99 value1 value2 = (output511, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input512 value99 value1 value2 = (output512, value94, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output511_skip]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value94 value1 value2 = (output513, value100, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value99 value1 value2 = (output512, value94, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value94 value1 value2 = (output513, value100, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value99 value1 value2 = (output514, value100, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value100 value1 value2 = (output515, value101, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value101 value1 value2 = (output516, value102, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value100 value1 value2 = (output515, value101, value1))
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value101 value1 value2 = (output516, value102, value1)) : Flapjack.WordAlloc.removeDeadStructural input517 value100 value1 value2 = (output517, value102, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output516_skip]
  kernel_rfl

theorem node518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input518 value102 value1 value2 = (output518, value100, value1) := by
  rw [input518_def, output518_def]
  kernel_rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value100 value1 value2 = (output519, value100, value1) := by
  rw [input519_def, output519_def]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value100 value1 value2 = (output520, value103, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value103 value1 value2 = (output521, value103, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value100 value1 value2 = (output520, value103, value1))
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value103 value1 value2 = (output521, value103, value1)) : Flapjack.WordAlloc.removeDeadStructural input522 value100 value1 value2 = (output522, value103, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output521_skip]
  kernel_rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value103 value1 value2 = (output523, value104, value1) := by
  rw [input523_def, output523_def]
  kernel_rfl

theorem node524_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value100 value1 value2 = (output522, value103, value1))
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value103 value1 value2 = (output523, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input524 value100 value1 value2 = (output524, value104, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output523_skip]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value104 value1 value2 = (output525, value104, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value104 value1 value2 = (output526, value104, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value104 value1 value2 = (output527, value104, value1) := by
  rw [input527_def, output527_def]
  kernel_rfl

theorem node528_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value104 value1 value2 = (output526, value104, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value104 value1 value2 = (output527, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value104 value1 value2 = (output528, value104, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output527_skip]
  kernel_rfl

theorem node529_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value104 value1 value2 = (output525, value104, value1))
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value104 value1 value2 = (output528, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input529 value104 value1 value2 = (output529, value104, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output528_skip]
  kernel_rfl

theorem node530_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value100 value1 value2 = (output524, value104, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value104 value1 value2 = (output529, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value100 value1 value2 = (output530, value104, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value100 value1 value2 = (output519, value100, value1))
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value100 value1 value2 = (output530, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input531 value100 value1 value2 = (output531, value104, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output530_skip]
  kernel_rfl

theorem node532_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value102 value1 value2 = (output518, value100, value1))
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value100 value1 value2 = (output531, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input532 value102 value1 value2 = (output532, value104, value1) := by
  rw [input532_def, output532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output531_skip]
  kernel_rfl

theorem node533_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value100 value1 value2 = (output517, value102, value1))
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value102 value1 value2 = (output532, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input533 value100 value1 value2 = (output533, value104, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output532_skip]
  kernel_rfl

theorem node534_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value99 value1 value2 = (output514, value100, value1))
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value100 value1 value2 = (output533, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input534 value99 value1 value2 = (output534, value104, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output533_skip]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value99 value1 value2 = (output535, value99, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value99 value1 value2 = (output536, value99, value1) := by
  rw [input536_def, output536_def]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value99 value1 value2 = (output537, value99, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value99 value1 value2 = (output538, value105, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value105 value1 value2 = (output539, value105, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value99 value1 value2 = (output538, value105, value1))
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value105 value1 value2 = (output539, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input540 value99 value1 value2 = (output540, value105, value1) := by
  rw [input540_def, output540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output539_skip]
  kernel_rfl

theorem node541_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value99 value1 value2 = (output537, value99, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value99 value1 value2 = (output540, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value99 value1 value2 = (output541, value105, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value99 value1 value2 = (output536, value99, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value99 value1 value2 = (output541, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value99 value1 value2 = (output542, value105, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output541_skip]
  kernel_rfl

theorem node543_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value99 value1 value2 = (output535, value99, value1))
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value99 value1 value2 = (output542, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input543 value99 value1 value2 = (output543, value105, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output542_skip]
  kernel_rfl

theorem node544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input544 value105 value1 value2 = (output544, value106, value1) := by
  rw [input544_def, output544_def]
  kernel_rfl

theorem node545_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value99 value1 value2 = (output543, value105, value1))
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value105 value1 value2 = (output544, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input545 value99 value1 value2 = (output545, value106, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output544_skip]
  kernel_rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value106 value1 value2 = (output546, value106, value1) := by
  rw [input546_def, output546_def]
  kernel_rfl

theorem node547_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value99 value1 value2 = (output545, value106, value1))
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value106 value1 value2 = (output546, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input547 value99 value1 value2 = (output547, value106, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output546_skip]
  kernel_rfl

theorem node548_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value99 value1 value2 = (output534, value104, value1))
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value99 value1 value2 = (output547, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input548 value99 value1 value2 = (output548, value108, value1) := by
  rw [input548_def, output548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child534]
  try dsimp only
  rw [child547]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output547_skip]
  kernel_rfl

theorem node549_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value99 value1 value2 = (output503, value99, value1))
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value99 value1 value2 = (output548, value108, value1)) : Flapjack.WordAlloc.removeDeadStructural input549 value99 value1 value2 = (output549, value108, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output548_skip]
  kernel_rfl

theorem node550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input550 value108 value1 value2 = (output550, value106, value1) := by
  rw [input550_def, output550_def]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value106 value1 value2 = (output551, value109, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value109 value1 value2 = (output552, value109, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value109 value1 value2 = (output553, value109, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value109 value1 value2 = (output554, value109, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value109 value1 value2 = (output555, value109, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value109 value1 value2 = (output554, value109, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value109 value1 value2 = (output555, value109, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value109 value1 value2 = (output556, value109, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value109 value1 value2 = (output553, value109, value1))
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value109 value1 value2 = (output556, value109, value1)) : Flapjack.WordAlloc.removeDeadStructural input557 value109 value1 value2 = (output557, value109, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output556_skip]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value109 value1 value2 = (output558, value109, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value109 value1 value2 = (output559, value109, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value109 value1 value2 = (output560, value109, value1) := by
  rw [input560_def, output560_def]
  kernel_rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value109 value1 value2 = (output561, value104, value1) := by
  rw [input561_def, output561_def]
  kernel_rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value104 value1 value2 = (output562, value104, value1) := by
  rw [input562_def, output562_def]
  kernel_rfl

theorem node563_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value109 value1 value2 = (output561, value104, value1))
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value104 value1 value2 = (output562, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input563 value109 value1 value2 = (output563, value104, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output562_skip]
  kernel_rfl

theorem node564_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value109 value1 value2 = (output560, value109, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value109 value1 value2 = (output563, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value109 value1 value2 = (output564, value104, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value109 value1 value2 = (output559, value109, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value109 value1 value2 = (output564, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value109 value1 value2 = (output565, value104, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value109 value1 value2 = (output558, value109, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value109 value1 value2 = (output565, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value109 value1 value2 = (output566, value104, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value104 value1 value2 = (output567, value110, value1) := by
  rw [input567_def, output567_def]
  kernel_rfl

theorem node568_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value109 value1 value2 = (output566, value104, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value104 value1 value2 = (output567, value110, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value109 value1 value2 = (output568, value110, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input569 value110 value1 value2 = (output569, value111, value1) := by
  rw [input569_def, output569_def]
  kernel_rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value111 value1 value2 = (output570, value112, value1) := by
  rw [input570_def, output570_def]
  kernel_rfl

theorem node571_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value110 value1 value2 = (output569, value111, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value111 value1 value2 = (output570, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value110 value1 value2 = (output571, value112, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value112 value1 value2 = (output572, value110, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value110 value1 value2 = (output573, value110, value1) := by
  rw [input573_def, output573_def]
  kernel_rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value110 value1 value2 = (output574, value113, value1) := by
  rw [input574_def, output574_def]
  kernel_rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value113 value1 value2 = (output575, value113, value1) := by
  rw [input575_def, output575_def]
  kernel_rfl

theorem node576_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value110 value1 value2 = (output574, value113, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value113 value1 value2 = (output575, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value110 value1 value2 = (output576, value113, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input577 value113 value1 value2 = (output577, value114, value1) := by
  rw [input577_def, output577_def]
  kernel_rfl

theorem node578_cond_eq
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value110 value1 value2 = (output576, value113, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value113 value1 value2 = (output577, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value110 value1 value2 = (output578, value114, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child576]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output576_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input579 value114 value1 value2 = (output579, value114, value1) := by
  rw [input579_def, output579_def]
  kernel_rfl

theorem node580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input580 value114 value1 value2 = (output580, value114, value1) := by
  rw [input580_def, output580_def]
  kernel_rfl

theorem node581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input581 value114 value1 value2 = (output581, value114, value1) := by
  rw [input581_def, output581_def]
  kernel_rfl

theorem node582_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value114 value1 value2 = (output580, value114, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value114 value1 value2 = (output581, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value114 value1 value2 = (output582, value114, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value114 value1 value2 = (output579, value114, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value114 value1 value2 = (output582, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value114 value1 value2 = (output583, value114, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child579]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output579_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value110 value1 value2 = (output578, value114, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value114 value1 value2 = (output583, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value110 value1 value2 = (output584, value114, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child578]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output578_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value110 value1 value2 = (output573, value110, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value110 value1 value2 = (output584, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value110 value1 value2 = (output585, value114, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value112 value1 value2 = (output572, value110, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value110 value1 value2 = (output585, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value112 value1 value2 = (output586, value114, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value110 value1 value2 = (output571, value112, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value112 value1 value2 = (output586, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value110 value1 value2 = (output587, value114, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value109 value1 value2 = (output568, value110, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value110 value1 value2 = (output587, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value109 value1 value2 = (output588, value114, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output587_skip]
  kernel_rfl

theorem node589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input589 value109 value1 value2 = (output589, value109, value1) := by
  rw [input589_def, output589_def]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value109 value1 value2 = (output590, value109, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input591 value109 value1 value2 = (output591, value109, value1) := by
  rw [input591_def, output591_def]
  kernel_rfl

theorem node592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input592 value109 value1 value2 = (output592, value115, value1) := by
  rw [input592_def, output592_def]
  kernel_rfl

theorem node593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input593 value115 value1 value2 = (output593, value115, value1) := by
  rw [input593_def, output593_def]
  kernel_rfl

theorem node594_cond_eq
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value109 value1 value2 = (output592, value115, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value115 value1 value2 = (output593, value115, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value109 value1 value2 = (output594, value115, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child592]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output592_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value109 value1 value2 = (output591, value109, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value109 value1 value2 = (output594, value115, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value109 value1 value2 = (output595, value115, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output591_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value109 value1 value2 = (output590, value109, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value109 value1 value2 = (output595, value115, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value109 value1 value2 = (output596, value115, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value109 value1 value2 = (output589, value109, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value109 value1 value2 = (output596, value115, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value109 value1 value2 = (output597, value115, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value115 value1 value2 = (output598, value116, value1) := by
  rw [input598_def, output598_def]
  kernel_rfl

theorem node599_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value109 value1 value2 = (output597, value115, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value115 value1 value2 = (output598, value116, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value109 value1 value2 = (output599, value116, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output598_skip]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value116 value1 value2 = (output600, value116, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value109 value1 value2 = (output599, value116, value1))
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value116 value1 value2 = (output600, value116, value1)) : Flapjack.WordAlloc.removeDeadStructural input601 value109 value1 value2 = (output601, value116, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output600_skip]
  kernel_rfl

theorem node602_cond_eq
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value109 value1 value2 = (output588, value114, value1))
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value109 value1 value2 = (output601, value116, value1)) : Flapjack.WordAlloc.removeDeadStructural input602 value109 value1 value2 = (output602, value118, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child588]
  try dsimp only
  rw [child601]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output588_skip, output601_skip]
  kernel_rfl

theorem node603_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value109 value1 value2 = (output557, value109, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value109 value1 value2 = (output602, value118, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value109 value1 value2 = (output603, value118, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value118 value1 value2 = (output604, value116, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input605 value116 value1 value2 = (output605, value119, value1) := by
  rw [input605_def, output605_def]
  kernel_rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value119 value1 value2 = (output606, value119, value1) := by
  rw [input606_def, output606_def]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value119 value1 value2 = (output607, value119, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value119 value1 value2 = (output608, value119, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value119 value1 value2 = (output609, value119, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value119 value1 value2 = (output608, value119, value1))
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value119 value1 value2 = (output609, value119, value1)) : Flapjack.WordAlloc.removeDeadStructural input610 value119 value1 value2 = (output610, value119, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output609_skip]
  kernel_rfl

theorem node611_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value119 value1 value2 = (output607, value119, value1))
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value119 value1 value2 = (output610, value119, value1)) : Flapjack.WordAlloc.removeDeadStructural input611 value119 value1 value2 = (output611, value119, value1) := by
  rw [input611_def, output611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output610_skip]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value119 value1 value2 = (output612, value119, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input613 value119 value1 value2 = (output613, value119, value1) := by
  rw [input613_def, output613_def]
  kernel_rfl

theorem node614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input614 value119 value1 value2 = (output614, value119, value1) := by
  rw [input614_def, output614_def]
  kernel_rfl

theorem node615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input615 value119 value1 value2 = (output615, value114, value1) := by
  rw [input615_def, output615_def]
  kernel_rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value114 value1 value2 = (output616, value114, value1) := by
  rw [input616_def, output616_def]
  kernel_rfl

theorem node617_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value119 value1 value2 = (output615, value114, value1))
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value114 value1 value2 = (output616, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input617 value119 value1 value2 = (output617, value114, value1) := by
  rw [input617_def, output617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output616_skip]
  kernel_rfl

theorem node618_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value119 value1 value2 = (output614, value119, value1))
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value119 value1 value2 = (output617, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input618 value119 value1 value2 = (output618, value114, value1) := by
  rw [input618_def, output618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output617_skip]
  kernel_rfl

theorem node619_cond_eq
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value119 value1 value2 = (output613, value119, value1))
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value119 value1 value2 = (output618, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input619 value119 value1 value2 = (output619, value114, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child613]
  try dsimp only
  rw [child618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output613_skip, output618_skip]
  kernel_rfl

theorem node620_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value119 value1 value2 = (output612, value119, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value119 value1 value2 = (output619, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value119 value1 value2 = (output620, value114, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value114 value1 value2 = (output621, value120, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value119 value1 value2 = (output620, value114, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value114 value1 value2 = (output621, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value119 value1 value2 = (output622, value120, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output621_skip]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value120 value1 value2 = (output623, value121, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value121 value1 value2 = (output624, value122, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value120 value1 value2 = (output623, value121, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value121 value1 value2 = (output624, value122, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value120 value1 value2 = (output625, value122, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output624_skip]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value122 value1 value2 = (output626, value120, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value120 value1 value2 = (output627, value120, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value120 value1 value2 = (output628, value123, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value123 value1 value2 = (output629, value123, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value120 value1 value2 = (output628, value123, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value123 value1 value2 = (output629, value123, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value120 value1 value2 = (output630, value123, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output629_skip]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value123 value1 value2 = (output631, value124, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value120 value1 value2 = (output630, value123, value1))
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value123 value1 value2 = (output631, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input632 value120 value1 value2 = (output632, value124, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output631_skip]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value124 value1 value2 = (output633, value124, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value124 value1 value2 = (output634, value124, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input635 value124 value1 value2 = (output635, value124, value1) := by
  rw [input635_def, output635_def]
  kernel_rfl

theorem node636_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value124 value1 value2 = (output634, value124, value1))
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value124 value1 value2 = (output635, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input636 value124 value1 value2 = (output636, value124, value1) := by
  rw [input636_def, output636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output635_skip]
  kernel_rfl

theorem node637_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value124 value1 value2 = (output633, value124, value1))
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value124 value1 value2 = (output636, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input637 value124 value1 value2 = (output637, value124, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output636_skip]
  kernel_rfl

theorem node638_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value120 value1 value2 = (output632, value124, value1))
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value124 value1 value2 = (output637, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input638 value120 value1 value2 = (output638, value124, value1) := by
  rw [input638_def, output638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output637_skip]
  kernel_rfl

theorem node639_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value120 value1 value2 = (output627, value120, value1))
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value120 value1 value2 = (output638, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input639 value120 value1 value2 = (output639, value124, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output638_skip]
  kernel_rfl

theorem node640_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value122 value1 value2 = (output626, value120, value1))
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value120 value1 value2 = (output639, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input640 value122 value1 value2 = (output640, value124, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output639_skip]
  kernel_rfl

theorem node641_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value120 value1 value2 = (output625, value122, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value122 value1 value2 = (output640, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value120 value1 value2 = (output641, value124, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value119 value1 value2 = (output622, value120, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value120 value1 value2 = (output641, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value119 value1 value2 = (output642, value124, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input643 value119 value1 value2 = (output643, value119, value1) := by
  rw [input643_def, output643_def]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value119 value1 value2 = (output644, value119, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value119 value1 value2 = (output645, value119, value1) := by
  rw [input645_def, output645_def]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value119 value1 value2 = (output646, value125, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value125 value1 value2 = (output647, value125, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value119 value1 value2 = (output646, value125, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value125 value1 value2 = (output647, value125, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value119 value1 value2 = (output648, value125, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value119 value1 value2 = (output645, value119, value1))
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value119 value1 value2 = (output648, value125, value1)) : Flapjack.WordAlloc.removeDeadStructural input649 value119 value1 value2 = (output649, value125, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output648_skip]
  kernel_rfl

theorem node650_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value119 value1 value2 = (output644, value119, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value119 value1 value2 = (output649, value125, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value119 value1 value2 = (output650, value125, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value119 value1 value2 = (output643, value119, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value119 value1 value2 = (output650, value125, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value119 value1 value2 = (output651, value125, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value125 value1 value2 = (output652, value126, value1) := by
  rw [input652_def, output652_def]
  kernel_rfl

theorem node653_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value119 value1 value2 = (output651, value125, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value125 value1 value2 = (output652, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value119 value1 value2 = (output653, value126, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value126 value1 value2 = (output654, value126, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value119 value1 value2 = (output653, value126, value1))
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value126 value1 value2 = (output654, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input655 value119 value1 value2 = (output655, value126, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output654_skip]
  kernel_rfl

theorem node656_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value119 value1 value2 = (output642, value124, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value119 value1 value2 = (output655, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value119 value1 value2 = (output656, value128, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child642]
  try dsimp only
  rw [child655]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value119 value1 value2 = (output611, value119, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value119 value1 value2 = (output656, value128, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value119 value1 value2 = (output657, value128, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value128 value1 value2 = (output658, value126, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value126 value1 value2 = (output659, value129, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value129 value1 value2 = (output660, value129, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value129 value1 value2 = (output661, value129, value1) := by
  rw [input661_def, output661_def]
  kernel_rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value129 value1 value2 = (output662, value129, value1) := by
  rw [input662_def, output662_def]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value129 value1 value2 = (output663, value129, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value129 value1 value2 = (output662, value129, value1))
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value129 value1 value2 = (output663, value129, value1)) : Flapjack.WordAlloc.removeDeadStructural input664 value129 value1 value2 = (output664, value129, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output663_skip]
  kernel_rfl

theorem node665_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value129 value1 value2 = (output661, value129, value1))
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value129 value1 value2 = (output664, value129, value1)) : Flapjack.WordAlloc.removeDeadStructural input665 value129 value1 value2 = (output665, value129, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output664_skip]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value129 value1 value2 = (output666, value129, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value129 value1 value2 = (output667, value129, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value129 value1 value2 = (output668, value129, value1) := by
  rw [input668_def, output668_def]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value129 value1 value2 = (output669, value124, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value124 value1 value2 = (output670, value124, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value129 value1 value2 = (output669, value124, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value124 value1 value2 = (output670, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value129 value1 value2 = (output671, value124, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value129 value1 value2 = (output668, value129, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value129 value1 value2 = (output671, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value129 value1 value2 = (output672, value124, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value129 value1 value2 = (output667, value129, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value129 value1 value2 = (output672, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value129 value1 value2 = (output673, value124, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value129 value1 value2 = (output666, value129, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value129 value1 value2 = (output673, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value129 value1 value2 = (output674, value124, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value124 value1 value2 = (output675, value130, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value129 value1 value2 = (output674, value124, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value124 value1 value2 = (output675, value130, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value129 value1 value2 = (output676, value130, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input677 value130 value1 value2 = (output677, value131, value1) := by
  rw [input677_def, output677_def]
  kernel_rfl

theorem node678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input678 value131 value1 value2 = (output678, value132, value1) := by
  rw [input678_def, output678_def]
  kernel_rfl

theorem node679_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value130 value1 value2 = (output677, value131, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value131 value1 value2 = (output678, value132, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value130 value1 value2 = (output679, value132, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input680 value132 value1 value2 = (output680, value130, value1) := by
  rw [input680_def, output680_def]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value130 value1 value2 = (output681, value130, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value130 value1 value2 = (output682, value133, value1) := by
  rw [input682_def, output682_def]
  kernel_rfl

theorem node683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input683 value133 value1 value2 = (output683, value134, value1) := by
  rw [input683_def, output683_def]
  kernel_rfl

theorem node684_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value130 value1 value2 = (output682, value133, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value133 value1 value2 = (output683, value134, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value130 value1 value2 = (output684, value134, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output682_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value134 value1 value2 = (output685, value135, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value130 value1 value2 = (output684, value134, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value134 value1 value2 = (output685, value135, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value130 value1 value2 = (output686, value135, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value135 value1 value2 = (output687, value136, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value136 value1 value2 = (output688, value137, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value135 value1 value2 = (output687, value136, value1))
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value136 value1 value2 = (output688, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input689 value135 value1 value2 = (output689, value137, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output688_skip]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value137 value1 value2 = (output690, value137, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value137 value1 value2 = (output691, value137, value1) := by
  rw [input691_def, output691_def]
  kernel_rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value137 value1 value2 = (output692, value137, value1) := by
  rw [input692_def, output692_def]
  kernel_rfl

theorem node693_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value137 value1 value2 = (output691, value137, value1))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value137 value1 value2 = (output692, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input693 value137 value1 value2 = (output693, value137, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output692_skip]
  kernel_rfl

theorem node694_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value137 value1 value2 = (output690, value137, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value137 value1 value2 = (output693, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value137 value1 value2 = (output694, value137, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value135 value1 value2 = (output689, value137, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value137 value1 value2 = (output694, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input695 value135 value1 value2 = (output695, value137, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output694_skip]
  kernel_rfl

theorem node696_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value130 value1 value2 = (output686, value135, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value135 value1 value2 = (output695, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input696 value130 value1 value2 = (output696, value137, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output695_skip]
  kernel_rfl

theorem node697_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value130 value1 value2 = (output681, value130, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value130 value1 value2 = (output696, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input697 value130 value1 value2 = (output697, value137, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  try dsimp only
  rw [child696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output681_skip, output696_skip]
  kernel_rfl

theorem node698_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value132 value1 value2 = (output680, value130, value1))
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value130 value1 value2 = (output697, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input698 value132 value1 value2 = (output698, value137, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output697_skip]
  kernel_rfl

theorem node699_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value130 value1 value2 = (output679, value132, value1))
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value132 value1 value2 = (output698, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input699 value130 value1 value2 = (output699, value137, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output698_skip]
  kernel_rfl

theorem node700_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value129 value1 value2 = (output676, value130, value1))
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value130 value1 value2 = (output699, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input700 value129 value1 value2 = (output700, value137, value1) := by
  rw [input700_def, output700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output699_skip]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value129 value1 value2 = (output701, value129, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value129 value1 value2 = (output702, value129, value1) := by
  rw [input702_def, output702_def]
  kernel_rfl

theorem node703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input703 value129 value1 value2 = (output703, value129, value1) := by
  rw [input703_def, output703_def]
  kernel_rfl

theorem node704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input704 value129 value1 value2 = (output704, value138, value1) := by
  rw [input704_def, output704_def]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value138 value1 value2 = (output705, value138, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value129 value1 value2 = (output704, value138, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value138 value1 value2 = (output705, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value129 value1 value2 = (output706, value138, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value129 value1 value2 = (output703, value129, value1))
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value129 value1 value2 = (output706, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input707 value129 value1 value2 = (output707, value138, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output706_skip]
  kernel_rfl

theorem node708_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value129 value1 value2 = (output702, value129, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value129 value1 value2 = (output707, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value129 value1 value2 = (output708, value138, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value129 value1 value2 = (output701, value129, value1))
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value129 value1 value2 = (output708, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input709 value129 value1 value2 = (output709, value138, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output708_skip]
  kernel_rfl

theorem node710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input710 value138 value1 value2 = (output710, value137, value1) := by
  rw [input710_def, output710_def]
  kernel_rfl

theorem node711_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value129 value1 value2 = (output709, value138, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value138 value1 value2 = (output710, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value129 value1 value2 = (output711, value137, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input712 value137 value1 value2 = (output712, value137, value1) := by
  rw [input712_def, output712_def]
  kernel_rfl

theorem node713_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value129 value1 value2 = (output711, value137, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value137 value1 value2 = (output712, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value129 value1 value2 = (output713, value137, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child711]
  try dsimp only
  rw [child712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output711_skip, output712_skip]
  kernel_rfl

theorem node714_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value129 value1 value2 = (output700, value137, value1))
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value129 value1 value2 = (output713, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input714 value129 value1 value2 = (output714, value141, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child700]
  try dsimp only
  rw [child713]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output713_skip]
  kernel_rfl

theorem node715_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value129 value1 value2 = (output665, value129, value1))
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value129 value1 value2 = (output714, value141, value1)) : Flapjack.WordAlloc.removeDeadStructural input715 value129 value1 value2 = (output715, value141, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output714_skip]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value141 value1 value2 = (output716, value137, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value137 value1 value2 = (output717, value142, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input718 value142 value1 value2 = (output718, value142, value1) := by
  rw [input718_def, output718_def]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value142 value1 value2 = (output719, value142, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input720 value142 value1 value2 = (output720, value142, value1) := by
  rw [input720_def, output720_def]
  kernel_rfl

theorem node721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input721 value142 value1 value2 = (output721, value142, value1) := by
  rw [input721_def, output721_def]
  kernel_rfl

theorem node722_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value142 value1 value2 = (output720, value142, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value142 value1 value2 = (output721, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value142 value1 value2 = (output722, value142, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output721_skip]
  kernel_rfl

theorem node723_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value142 value1 value2 = (output719, value142, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value142 value1 value2 = (output722, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value142 value1 value2 = (output723, value142, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value142 value1 value2 = (output724, value142, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value142 value1 value2 = (output725, value142, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input726 value142 value1 value2 = (output726, value142, value1) := by
  rw [input726_def, output726_def]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value142 value1 value2 = (output727, value143, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value143 value1 value2 = (output728, value143, value1) := by
  rw [input728_def, output728_def]
  kernel_rfl

theorem node729_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value142 value1 value2 = (output727, value143, value1))
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value143 value1 value2 = (output728, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input729 value142 value1 value2 = (output729, value143, value1) := by
  rw [input729_def, output729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output728_skip]
  kernel_rfl

theorem node730_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value142 value1 value2 = (output726, value142, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value142 value1 value2 = (output729, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value142 value1 value2 = (output730, value143, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value142 value1 value2 = (output725, value142, value1))
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value142 value1 value2 = (output730, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input731 value142 value1 value2 = (output731, value143, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output730_skip]
  kernel_rfl

theorem node732_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value142 value1 value2 = (output724, value142, value1))
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value142 value1 value2 = (output731, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input732 value142 value1 value2 = (output732, value143, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output731_skip]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value143 value1 value2 = (output733, value144, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value142 value1 value2 = (output732, value143, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value143 value1 value2 = (output733, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value142 value1 value2 = (output734, value144, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output733_skip]
  kernel_rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value144 value1 value2 = (output735, value145, value1) := by
  rw [input735_def, output735_def]
  kernel_rfl

theorem node736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input736 value145 value1 value2 = (output736, value146, value1) := by
  rw [input736_def, output736_def]
  kernel_rfl

theorem node737_cond_eq
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value144 value1 value2 = (output735, value145, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value145 value1 value2 = (output736, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value144 value1 value2 = (output737, value146, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child735]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output735_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input738 value146 value1 value2 = (output738, value144, value1) := by
  rw [input738_def, output738_def]
  kernel_rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value144 value1 value2 = (output739, value144, value1) := by
  rw [input739_def, output739_def]
  kernel_rfl

theorem node740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input740 value144 value1 value2 = (output740, value147, value1) := by
  rw [input740_def, output740_def]
  kernel_rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value147 value1 value2 = (output741, value148, value1) := by
  rw [input741_def, output741_def]
  kernel_rfl

theorem node742_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value144 value1 value2 = (output740, value147, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value147 value1 value2 = (output741, value148, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value144 value1 value2 = (output742, value148, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value148 value1 value2 = (output743, value149, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value144 value1 value2 = (output742, value148, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value148 value1 value2 = (output743, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value144 value1 value2 = (output744, value149, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output743_skip]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value149 value1 value2 = (output745, value150, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value150 value1 value2 = (output746, value151, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value149 value1 value2 = (output745, value150, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value150 value1 value2 = (output746, value151, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value149 value1 value2 = (output747, value151, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value151 value1 value2 = (output748, value151, value1) := by
  rw [input748_def, output748_def]
  kernel_rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value151 value1 value2 = (output749, value151, value1) := by
  rw [input749_def, output749_def]
  kernel_rfl

theorem node750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input750 value151 value1 value2 = (output750, value151, value1) := by
  rw [input750_def, output750_def]
  kernel_rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value151 value1 value2 = (output751, value151, value1) := by
  rw [input751_def, output751_def]
  kernel_rfl

theorem node752_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value151 value1 value2 = (output750, value151, value1))
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value151 value1 value2 = (output751, value151, value1)) : Flapjack.WordAlloc.removeDeadStructural input752 value151 value1 value2 = (output752, value151, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output751_skip]
  kernel_rfl

theorem node753_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value151 value1 value2 = (output749, value151, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value151 value1 value2 = (output752, value151, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value151 value1 value2 = (output753, value151, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  try dsimp only
  rw [child752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value151 value1 value2 = (output754, value151, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value151 value1 value2 = (output755, value151, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input756 value151 value1 value2 = (output756, value151, value1) := by
  rw [input756_def, output756_def]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value151 value1 value2 = (output757, value152, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value152 value1 value2 = (output758, value152, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value151 value1 value2 = (output757, value152, value1))
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value152 value1 value2 = (output758, value152, value1)) : Flapjack.WordAlloc.removeDeadStructural input759 value151 value1 value2 = (output759, value152, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output758_skip]
  kernel_rfl

theorem node760_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value151 value1 value2 = (output756, value151, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value151 value1 value2 = (output759, value152, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value151 value1 value2 = (output760, value152, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value151 value1 value2 = (output755, value151, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value151 value1 value2 = (output760, value152, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value151 value1 value2 = (output761, value152, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value151 value1 value2 = (output754, value151, value1))
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value151 value1 value2 = (output761, value152, value1)) : Flapjack.WordAlloc.removeDeadStructural input762 value151 value1 value2 = (output762, value152, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output761_skip]
  kernel_rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value152 value1 value2 = (output763, value153, value1) := by
  rw [input763_def, output763_def]
  kernel_rfl

theorem node764_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value151 value1 value2 = (output762, value152, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value152 value1 value2 = (output763, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value151 value1 value2 = (output764, value153, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input765 value153 value1 value2 = (output765, value154, value1) := by
  rw [input765_def, output765_def]
  kernel_rfl

theorem node766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input766 value154 value1 value2 = (output766, value155, value1) := by
  rw [input766_def, output766_def]
  kernel_rfl

theorem node767_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value153 value1 value2 = (output765, value154, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value154 value1 value2 = (output766, value155, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value153 value1 value2 = (output767, value155, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  try dsimp only
  rw [child766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output766_skip]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
