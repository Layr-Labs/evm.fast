import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages862.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages862.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value127 value1 value100 = (output512, value128, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value128 value1 value100 = (output513, value129, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value127 value1 value100 = (output512, value128, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value128 value1 value100 = (output513, value129, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value127 value1 value100 = (output514, value129, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value129 value1 value100 = (output515, value130, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value130 value1 value100 = (output516, value131, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value129 value1 value100 = (output515, value130, value1))
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value130 value1 value100 = (output516, value131, value1)) : Flapjack.WordAlloc.removeDeadStructural input517 value129 value1 value100 = (output517, value131, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output516_skip]
  kernel_rfl

theorem node518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input518 value131 value1 value100 = (output518, value132, value1) := by
  rw [input518_def, output518_def]
  kernel_rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value132 value1 value100 = (output519, value133, value1) := by
  rw [input519_def, output519_def]
  kernel_rfl

theorem node520_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value131 value1 value100 = (output518, value132, value1))
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value132 value1 value100 = (output519, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input520 value131 value1 value100 = (output520, value133, value1) := by
  rw [input520_def, output520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output519_skip]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value133 value1 value100 = (output521, value133, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value133 value1 value100 = (output522, value134, value1) := by
  rw [input522_def, output522_def]
  kernel_rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value134 value1 value100 = (output523, value135, value1) := by
  rw [input523_def, output523_def]
  kernel_rfl

theorem node524_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value133 value1 value100 = (output522, value134, value1))
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value134 value1 value100 = (output523, value135, value1)) : Flapjack.WordAlloc.removeDeadStructural input524 value133 value1 value100 = (output524, value135, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output523_skip]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value135 value1 value100 = (output525, value136, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value133 value1 value100 = (output524, value135, value1))
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value135 value1 value100 = (output525, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input526 value133 value1 value100 = (output526, value136, value1) := by
  rw [input526_def, output526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output525_skip]
  kernel_rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value136 value1 value100 = (output527, value137, value1) := by
  rw [input527_def, output527_def]
  kernel_rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value137 value1 value100 = (output528, value137, value1) := by
  rw [input528_def, output528_def]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value137 value1 value100 = (output529, value137, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input530 value137 value1 value100 = (output530, value137, value1) := by
  rw [input530_def, output530_def]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value137 value1 value100 = (output531, value137, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value137 value1 value100 = (output532, value137, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value137 value1 value100 = (output533, value137, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value137 value1 value100 = (output534, value137, value1) := by
  rw [input534_def, output534_def]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value137 value1 value100 = (output535, value138, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value137 value1 value100 = (output534, value137, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value137 value1 value100 = (output535, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value137 value1 value100 = (output536, value138, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output535_skip]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value138 value1 value100 = (output537, value139, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value139 value1 value100 = (output538, value139, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value139 value1 value100 = (output539, value139, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value139 value1 value100 = (output540, value139, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value139 value1 value100 = (output539, value139, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value139 value1 value100 = (output540, value139, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value139 value1 value100 = (output541, value139, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value139 value1 value100 = (output538, value139, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value139 value1 value100 = (output541, value139, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value139 value1 value100 = (output542, value139, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output541_skip]
  kernel_rfl

theorem node543_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value138 value1 value100 = (output537, value139, value1))
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value139 value1 value100 = (output542, value139, value1)) : Flapjack.WordAlloc.removeDeadStructural input543 value138 value1 value100 = (output543, value139, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output542_skip]
  kernel_rfl

theorem node544_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value137 value1 value100 = (output536, value138, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value138 value1 value100 = (output543, value139, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value137 value1 value100 = (output544, value139, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value137 value1 value100 = (output545, value137, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value137 value1 value100 = (output546, value140, value1) := by
  rw [input546_def, output546_def]
  kernel_rfl

theorem node547_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value137 value1 value100 = (output545, value137, value1))
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value137 value1 value100 = (output546, value140, value1)) : Flapjack.WordAlloc.removeDeadStructural input547 value137 value1 value100 = (output547, value140, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output546_skip]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value140 value1 value100 = (output548, value140, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value140 value1 value100 = (output549, value140, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input550 value140 value1 value100 = (output550, value140, value1) := by
  rw [input550_def, output550_def]
  kernel_rfl

theorem node551_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value140 value1 value100 = (output549, value140, value1))
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value140 value1 value100 = (output550, value140, value1)) : Flapjack.WordAlloc.removeDeadStructural input551 value140 value1 value100 = (output551, value140, value1) := by
  rw [input551_def, output551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output550_skip]
  kernel_rfl

theorem node552_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value140 value1 value100 = (output548, value140, value1))
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value140 value1 value100 = (output551, value140, value1)) : Flapjack.WordAlloc.removeDeadStructural input552 value140 value1 value100 = (output552, value140, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output551_skip]
  kernel_rfl

theorem node553_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value137 value1 value100 = (output547, value140, value1))
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value140 value1 value100 = (output552, value140, value1)) : Flapjack.WordAlloc.removeDeadStructural input553 value137 value1 value100 = (output553, value140, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output552_skip]
  kernel_rfl

theorem node554_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value137 value1 value100 = (output544, value139, value1))
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value137 value1 value100 = (output553, value140, value1)) : Flapjack.WordAlloc.removeDeadStructural input554 value137 value1 value100 = (output554, value142, value1) := by
  rw [input554_def, output554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child544]
  try dsimp only
  rw [child553]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output553_skip]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value142 value1 value100 = (output555, value143, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value143 value1 value100 = (output556, value144, value1) := by
  rw [input556_def, output556_def]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value144 value1 value100 = (output557, value145, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value145 value1 value100 = (output558, value146, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value146 value1 value100 = (output559, value147, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value147 value1 value100 = (output560, value148, value1) := by
  rw [input560_def, output560_def]
  kernel_rfl

theorem node561_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value146 value1 value100 = (output559, value147, value1))
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value147 value1 value100 = (output560, value148, value1)) : Flapjack.WordAlloc.removeDeadStructural input561 value146 value1 value100 = (output561, value148, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output560_skip]
  kernel_rfl

theorem node562_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value145 value1 value100 = (output558, value146, value1))
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value146 value1 value100 = (output561, value148, value1)) : Flapjack.WordAlloc.removeDeadStructural input562 value145 value1 value100 = (output562, value148, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output561_skip]
  kernel_rfl

theorem node563_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value144 value1 value100 = (output557, value145, value1))
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value145 value1 value100 = (output562, value148, value1)) : Flapjack.WordAlloc.removeDeadStructural input563 value144 value1 value100 = (output563, value148, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output562_skip]
  kernel_rfl

theorem node564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input564 value148 value1 value100 = (output564, value148, value1) := by
  rw [input564_def, output564_def]
  kernel_rfl

theorem node565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input565 value148 value1 value100 = (output565, value149, value1) := by
  rw [input565_def, output565_def]
  kernel_rfl

theorem node566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input566 value149 value1 value100 = (output566, value150, value1) := by
  rw [input566_def, output566_def]
  kernel_rfl

theorem node567_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value148 value1 value100 = (output565, value149, value1))
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value149 value1 value100 = (output566, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input567 value148 value1 value100 = (output567, value150, value1) := by
  rw [input567_def, output567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output565_skip, output566_skip]
  kernel_rfl

theorem node568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input568 value150 value1 value100 = (output568, value151, value1) := by
  rw [input568_def, output568_def]
  kernel_rfl

theorem node569_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value148 value1 value100 = (output567, value150, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value150 value1 value100 = (output568, value151, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value148 value1 value100 = (output569, value151, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value151 value1 value100 = (output570, value152, value1) := by
  rw [input570_def, output570_def]
  kernel_rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value152 value1 value100 = (output571, value153, value1) := by
  rw [input571_def, output571_def]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value153 value1 value100 = (output572, value153, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value153 value1 value100 = (output573, value153, value1) := by
  rw [input573_def, output573_def]
  kernel_rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value153 value1 value100 = (output574, value153, value1) := by
  rw [input574_def, output574_def]
  kernel_rfl

theorem node575_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value153 value1 value100 = (output573, value153, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value153 value1 value100 = (output574, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value153 value1 value100 = (output575, value153, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value153 value1 value100 = (output572, value153, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value153 value1 value100 = (output575, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value153 value1 value100 = (output576, value153, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value152 value1 value100 = (output571, value153, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value153 value1 value100 = (output576, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value152 value1 value100 = (output577, value153, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value151 value1 value100 = (output570, value152, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value152 value1 value100 = (output577, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value151 value1 value100 = (output578, value153, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output570_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value148 value1 value100 = (output569, value151, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value151 value1 value100 = (output578, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value148 value1 value100 = (output579, value153, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value148 value1 value100 = (output564, value148, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value148 value1 value100 = (output579, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value148 value1 value100 = (output580, value153, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output564_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value144 value1 value100 = (output563, value148, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value148 value1 value100 = (output580, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value144 value1 value100 = (output581, value153, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value143 value1 value100 = (output556, value144, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value144 value1 value100 = (output581, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value143 value1 value100 = (output582, value153, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value142 value1 value100 = (output555, value143, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value143 value1 value100 = (output582, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value142 value1 value100 = (output583, value153, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value137 value1 value100 = (output554, value142, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value142 value1 value100 = (output583, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value137 value1 value100 = (output584, value153, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value137 value1 value100 = (output533, value137, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value137 value1 value100 = (output584, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value137 value1 value100 = (output585, value153, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value137 value1 value100 = (output532, value137, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value137 value1 value100 = (output585, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value137 value1 value100 = (output586, value153, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value137 value1 value100 = (output531, value137, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value137 value1 value100 = (output586, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value137 value1 value100 = (output587, value153, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value137 value1 value100 = (output530, value137, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value137 value1 value100 = (output587, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value137 value1 value100 = (output588, value153, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output587_skip]
  kernel_rfl

theorem node589_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value137 value1 value100 = (output529, value137, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value137 value1 value100 = (output588, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value137 value1 value100 = (output589, value153, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value137 value1 value100 = (output528, value137, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value137 value1 value100 = (output589, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value137 value1 value100 = (output590, value153, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output589_skip]
  kernel_rfl

theorem node591_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value136 value1 value100 = (output527, value137, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value137 value1 value100 = (output590, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value136 value1 value100 = (output591, value153, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value133 value1 value100 = (output526, value136, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value136 value1 value100 = (output591, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value133 value1 value100 = (output592, value153, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value133 value1 value100 = (output521, value133, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value133 value1 value100 = (output592, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value133 value1 value100 = (output593, value153, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value131 value1 value100 = (output520, value133, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value133 value1 value100 = (output593, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value131 value1 value100 = (output594, value153, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value129 value1 value100 = (output517, value131, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value131 value1 value100 = (output594, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value129 value1 value100 = (output595, value153, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value127 value1 value100 = (output514, value129, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value129 value1 value100 = (output595, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value127 value1 value100 = (output596, value153, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value125 value1 value100 = (output511, value127, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value127 value1 value100 = (output596, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value125 value1 value100 = (output597, value153, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value123 value1 value100 = (output508, value125, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value125 value1 value100 = (output597, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value123 value1 value100 = (output598, value153, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output597_skip]
  kernel_rfl

theorem node599_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value122 value1 value100 = (output505, value123, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value123 value1 value100 = (output598, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value122 value1 value100 = (output599, value153, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output598_skip]
  kernel_rfl

theorem node600_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value120 value1 value100 = (output504, value122, value1))
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value122 value1 value100 = (output599, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input600 value120 value1 value100 = (output600, value153, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output599_skip]
  kernel_rfl

theorem node601_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value119 value1 value100 = (output501, value120, value1))
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value120 value1 value100 = (output600, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input601 value119 value1 value100 = (output601, value153, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output600_skip]
  kernel_rfl

theorem node602_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value116 value1 value100 = (output500, value119, value1))
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value119 value1 value100 = (output601, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input602 value116 value1 value100 = (output602, value153, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output601_skip]
  kernel_rfl

theorem node603_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value116 value1 value100 = (output495, value116, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value116 value1 value100 = (output602, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value116 value1 value100 = (output603, value153, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value115 value1 value100 = (output494, value116, value1))
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value116 value1 value100 = (output603, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input604 value115 value1 value100 = (output604, value153, value1) := by
  rw [input604_def, output604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output603_skip]
  kernel_rfl

theorem node605_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value114 value1 value100 = (output493, value115, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value115 value1 value100 = (output604, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value114 value1 value100 = (output605, value153, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output604_skip]
  kernel_rfl

theorem node606_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value114 value1 value100 = (output492, value114, value1))
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value114 value1 value100 = (output605, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input606 value114 value1 value100 = (output606, value153, value1) := by
  rw [input606_def, output606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output605_skip]
  kernel_rfl

theorem node607_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value113 value1 value100 = (output491, value114, value1))
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value114 value1 value100 = (output606, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input607 value113 value1 value100 = (output607, value153, value1) := by
  rw [input607_def, output607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output606_skip]
  kernel_rfl

theorem node608_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value112 value1 value100 = (output490, value113, value1))
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value113 value1 value100 = (output607, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input608 value112 value1 value100 = (output608, value153, value1) := by
  rw [input608_def, output608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output607_skip]
  kernel_rfl

theorem node609_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value112 value1 value100 = (output489, value112, value1))
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value112 value1 value100 = (output608, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input609 value112 value1 value100 = (output609, value153, value1) := by
  rw [input609_def, output609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output608_skip]
  kernel_rfl

theorem node610_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value112 value1 value100 = (output488, value112, value1))
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value112 value1 value100 = (output609, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input610 value112 value1 value100 = (output610, value153, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output609_skip]
  kernel_rfl

theorem node611_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value112 value1 value100 = (output487, value112, value1))
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value112 value1 value100 = (output610, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input611 value112 value1 value100 = (output611, value153, value1) := by
  rw [input611_def, output611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output610_skip]
  kernel_rfl

theorem node612_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value112 value1 value100 = (output486, value112, value1))
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value112 value1 value100 = (output611, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input612 value112 value1 value100 = (output612, value153, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output611_skip]
  kernel_rfl

theorem node613_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value111 value1 value100 = (output485, value112, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value112 value1 value100 = (output612, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value111 value1 value100 = (output613, value153, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value108 value1 value100 = (output484, value111, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value111 value1 value100 = (output613, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value108 value1 value100 = (output614, value153, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value108 value1 value100 = (output479, value108, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value108 value1 value100 = (output614, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value108 value1 value100 = (output615, value153, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value107 value1 value100 = (output478, value108, value1))
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value108 value1 value100 = (output615, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input616 value107 value1 value100 = (output616, value153, value1) := by
  rw [input616_def, output616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output615_skip]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value107 value1 value100 = (output617, value107, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value107 value1 value100 = (output618, value107, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value107 value1 value100 = (output619, value107, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value107 value1 value100 = (output620, value107, value1) := by
  rw [input620_def, output620_def]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value107 value1 value100 = (output621, value107, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value107 value1 value100 = (output622, value107, value1) := by
  rw [input622_def, output622_def]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value107 value1 value100 = (output623, value107, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value107 value1 value100 = (output624, value107, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value107 value1 value100 = (output625, value107, value1) := by
  rw [input625_def, output625_def]
  kernel_rfl

theorem node626_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value107 value1 value100 = (output624, value107, value1))
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value107 value1 value100 = (output625, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input626 value107 value1 value100 = (output626, value107, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output625_skip]
  kernel_rfl

theorem node627_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value107 value1 value100 = (output623, value107, value1))
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value107 value1 value100 = (output626, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input627 value107 value1 value100 = (output627, value107, value1) := by
  rw [input627_def, output627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output626_skip]
  kernel_rfl

theorem node628_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value107 value1 value100 = (output622, value107, value1))
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value107 value1 value100 = (output627, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input628 value107 value1 value100 = (output628, value107, value1) := by
  rw [input628_def, output628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output627_skip]
  kernel_rfl

theorem node629_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value107 value1 value100 = (output621, value107, value1))
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value107 value1 value100 = (output628, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input629 value107 value1 value100 = (output629, value107, value1) := by
  rw [input629_def, output629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  try dsimp only
  rw [child628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output628_skip]
  kernel_rfl

theorem node630_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value107 value1 value100 = (output620, value107, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value107 value1 value100 = (output629, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value107 value1 value100 = (output630, value107, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output629_skip]
  kernel_rfl

theorem node631_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value107 value1 value100 = (output619, value107, value1))
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value107 value1 value100 = (output630, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input631 value107 value1 value100 = (output631, value107, value1) := by
  rw [input631_def, output631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output630_skip]
  kernel_rfl

theorem node632_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value107 value1 value100 = (output618, value107, value1))
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value107 value1 value100 = (output631, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input632 value107 value1 value100 = (output632, value107, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output631_skip]
  kernel_rfl

theorem node633_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value107 value1 value100 = (output617, value107, value1))
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value107 value1 value100 = (output632, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input633 value107 value1 value100 = (output633, value107, value1) := by
  rw [input633_def, output633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output632_skip]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value107 value1 value100 = (output634, value154, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value107 value1 value100 = (output633, value107, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value107 value1 value100 = (output634, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value107 value1 value100 = (output635, value154, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value154 value1 value100 = (output636, value154, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value154 value1 value100 = (output637, value154, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value154 value1 value100 = (output638, value154, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value154 value1 value100 = (output637, value154, value1))
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value154 value1 value100 = (output638, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input639 value154 value1 value100 = (output639, value154, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output638_skip]
  kernel_rfl

theorem node640_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value154 value1 value100 = (output636, value154, value1))
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value154 value1 value100 = (output639, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input640 value154 value1 value100 = (output640, value154, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output639_skip]
  kernel_rfl

theorem node641_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value107 value1 value100 = (output635, value154, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value154 value1 value100 = (output640, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value107 value1 value100 = (output641, value154, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value107 value1 value100 = (output616, value153, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value107 value1 value100 = (output641, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value107 value1 value100 = (output642, value156, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child616]
  try dsimp only
  rw [child641]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input643 value156 value1 value100 = (output643, value153, value1) := by
  rw [input643_def, output643_def]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value153 value1 value100 = (output644, value157, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value157 value1 value100 = (output645, value157, value1) := by
  rw [input645_def, output645_def]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value157 value1 value100 = (output646, value158, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value158 value1 value100 = (output647, value159, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value157 value1 value100 = (output646, value158, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value158 value1 value100 = (output647, value159, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value157 value1 value100 = (output648, value159, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value159 value1 value100 = (output649, value160, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value157 value1 value100 = (output648, value159, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value159 value1 value100 = (output649, value160, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value157 value1 value100 = (output650, value160, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input651 value160 value1 value100 = (output651, value161, value1) := by
  rw [input651_def, output651_def]
  kernel_rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value161 value1 value100 = (output652, value161, value1) := by
  rw [input652_def, output652_def]
  kernel_rfl

theorem node653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input653 value161 value1 value100 = (output653, value161, value1) := by
  rw [input653_def, output653_def]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value161 value1 value100 = (output654, value161, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value161 value1 value100 = (output655, value161, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value161 value1 value100 = (output656, value162, value1) := by
  rw [input656_def, output656_def]
  kernel_rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value162 value1 value100 = (output657, value163, value1) := by
  rw [input657_def, output657_def]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value163 value1 value100 = (output658, value163, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value163 value1 value100 = (output659, value164, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value164 value1 value100 = (output660, value165, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value163 value1 value100 = (output659, value164, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value164 value1 value100 = (output660, value165, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value163 value1 value100 = (output661, value165, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output660_skip]
  kernel_rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value165 value1 value100 = (output662, value166, value1) := by
  rw [input662_def, output662_def]
  kernel_rfl

theorem node663_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value163 value1 value100 = (output661, value165, value1))
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value165 value1 value100 = (output662, value166, value1)) : Flapjack.WordAlloc.removeDeadStructural input663 value163 value1 value100 = (output663, value166, value1) := by
  rw [input663_def, output663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output662_skip]
  kernel_rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value166 value1 value100 = (output664, value167, value1) := by
  rw [input664_def, output664_def]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value167 value1 value100 = (output665, value167, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value167 value1 value100 = (output666, value167, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value167 value1 value100 = (output667, value167, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value167 value1 value100 = (output666, value167, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value167 value1 value100 = (output667, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value167 value1 value100 = (output668, value167, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value167 value1 value100 = (output665, value167, value1))
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value167 value1 value100 = (output668, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input669 value167 value1 value100 = (output669, value167, value1) := by
  rw [input669_def, output669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output668_skip]
  kernel_rfl

theorem node670_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value166 value1 value100 = (output664, value167, value1))
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value167 value1 value100 = (output669, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input670 value166 value1 value100 = (output670, value167, value1) := by
  rw [input670_def, output670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output669_skip]
  kernel_rfl

theorem node671_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value163 value1 value100 = (output663, value166, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value166 value1 value100 = (output670, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value163 value1 value100 = (output671, value167, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value163 value1 value100 = (output658, value163, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value163 value1 value100 = (output671, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value163 value1 value100 = (output672, value167, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value162 value1 value100 = (output657, value163, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value163 value1 value100 = (output672, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value162 value1 value100 = (output673, value167, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value161 value1 value100 = (output656, value162, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value162 value1 value100 = (output673, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value161 value1 value100 = (output674, value167, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value161 value1 value100 = (output655, value161, value1))
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value161 value1 value100 = (output674, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input675 value161 value1 value100 = (output675, value167, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output674_skip]
  kernel_rfl

theorem node676_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value161 value1 value100 = (output654, value161, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value161 value1 value100 = (output675, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value161 value1 value100 = (output676, value167, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value161 value1 value100 = (output653, value161, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value161 value1 value100 = (output676, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value161 value1 value100 = (output677, value167, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output676_skip]
  kernel_rfl

theorem node678_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value161 value1 value100 = (output652, value161, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value161 value1 value100 = (output677, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value161 value1 value100 = (output678, value167, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value160 value1 value100 = (output651, value161, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value161 value1 value100 = (output678, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value160 value1 value100 = (output679, value167, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value157 value1 value100 = (output650, value160, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value160 value1 value100 = (output679, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value157 value1 value100 = (output680, value167, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value157 value1 value100 = (output645, value157, value1))
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value157 value1 value100 = (output680, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input681 value157 value1 value100 = (output681, value167, value1) := by
  rw [input681_def, output681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output680_skip]
  kernel_rfl

theorem node682_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value153 value1 value100 = (output644, value157, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value157 value1 value100 = (output681, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value153 value1 value100 = (output682, value167, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value156 value1 value100 = (output643, value153, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value153 value1 value100 = (output682, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value156 value1 value100 = (output683, value167, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value107 value1 value100 = (output642, value156, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value156 value1 value100 = (output683, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value107 value1 value100 = (output684, value167, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value107 value1 value100 = (output459, value107, value1))
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value107 value1 value100 = (output684, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input685 value107 value1 value100 = (output685, value167, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output684_skip]
  kernel_rfl

theorem node686_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value106 value1 value100 = (output458, value107, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value107 value1 value100 = (output685, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value106 value1 value100 = (output686, value167, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value106 value1 value100 = (output687, value106, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value106 value1 value100 = (output688, value106, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value106 value1 value100 = (output689, value106, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value106 value1 value100 = (output690, value106, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value106 value1 value100 = (output691, value106, value1) := by
  rw [input691_def, output691_def]
  kernel_rfl

theorem node692_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value106 value1 value100 = (output690, value106, value1))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value106 value1 value100 = (output691, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input692 value106 value1 value100 = (output692, value106, value1) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output691_skip]
  kernel_rfl

theorem node693_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value106 value1 value100 = (output689, value106, value1))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value106 value1 value100 = (output692, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input693 value106 value1 value100 = (output693, value106, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output692_skip]
  kernel_rfl

theorem node694_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value106 value1 value100 = (output688, value106, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value106 value1 value100 = (output693, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value106 value1 value100 = (output694, value106, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value106 value1 value100 = (output687, value106, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value106 value1 value100 = (output694, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input695 value106 value1 value100 = (output695, value106, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output694_skip]
  kernel_rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value106 value1 value100 = (output696, value168, value1) := by
  rw [input696_def, output696_def]
  kernel_rfl

theorem node697_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value106 value1 value100 = (output695, value106, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value106 value1 value100 = (output696, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input697 value106 value1 value100 = (output697, value168, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output696_skip]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value168 value1 value100 = (output698, value168, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value168 value1 value100 = (output699, value168, value1) := by
  rw [input699_def, output699_def]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value168 value1 value100 = (output700, value168, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value168 value1 value100 = (output699, value168, value1))
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value168 value1 value100 = (output700, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input701 value168 value1 value100 = (output701, value168, value1) := by
  rw [input701_def, output701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output700_skip]
  kernel_rfl

theorem node702_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value168 value1 value100 = (output698, value168, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value168 value1 value100 = (output701, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value168 value1 value100 = (output702, value168, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output701_skip]
  kernel_rfl

theorem node703_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value106 value1 value100 = (output697, value168, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value168 value1 value100 = (output702, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value106 value1 value100 = (output703, value168, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value106 value1 value100 = (output686, value167, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value106 value1 value100 = (output703, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value106 value1 value100 = (output704, value170, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child686]
  try dsimp only
  rw [child703]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value170 value1 value100 = (output705, value171, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value171 value1 value100 = (output706, value172, value1) := by
  rw [input706_def, output706_def]
  kernel_rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value172 value1 value100 = (output707, value172, value1) := by
  rw [input707_def, output707_def]
  kernel_rfl

theorem node708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input708 value172 value1 value100 = (output708, value173, value1) := by
  rw [input708_def, output708_def]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value173 value1 value100 = (output709, value174, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value172 value1 value100 = (output708, value173, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value173 value1 value100 = (output709, value174, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value172 value1 value100 = (output710, value174, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input711 value174 value1 value100 = (output711, value175, value1) := by
  rw [input711_def, output711_def]
  kernel_rfl

theorem node712_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value172 value1 value100 = (output710, value174, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value174 value1 value100 = (output711, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value172 value1 value100 = (output712, value175, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value175 value1 value100 = (output713, value176, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value176 value1 value100 = (output714, value177, value1) := by
  rw [input714_def, output714_def]
  kernel_rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value177 value1 value100 = (output715, value177, value1) := by
  rw [input715_def, output715_def]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value177 value1 value100 = (output716, value177, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value177 value1 value100 = (output717, value177, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value177 value1 value100 = (output716, value177, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value177 value1 value100 = (output717, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value177 value1 value100 = (output718, value177, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value177 value1 value100 = (output715, value177, value1))
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value177 value1 value100 = (output718, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input719 value177 value1 value100 = (output719, value177, value1) := by
  rw [input719_def, output719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output718_skip]
  kernel_rfl

theorem node720_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value176 value1 value100 = (output714, value177, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value177 value1 value100 = (output719, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value176 value1 value100 = (output720, value177, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output719_skip]
  kernel_rfl

theorem node721_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value175 value1 value100 = (output713, value176, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value176 value1 value100 = (output720, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value175 value1 value100 = (output721, value177, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value172 value1 value100 = (output712, value175, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value175 value1 value100 = (output721, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value172 value1 value100 = (output722, value177, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output721_skip]
  kernel_rfl

theorem node723_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value172 value1 value100 = (output707, value172, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value172 value1 value100 = (output722, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value172 value1 value100 = (output723, value177, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value171 value1 value100 = (output706, value172, value1))
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value172 value1 value100 = (output723, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input724 value171 value1 value100 = (output724, value177, value1) := by
  rw [input724_def, output724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output723_skip]
  kernel_rfl

theorem node725_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value170 value1 value100 = (output705, value171, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value171 value1 value100 = (output724, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value170 value1 value100 = (output725, value177, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output724_skip]
  kernel_rfl

theorem node726_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value106 value1 value100 = (output704, value170, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value170 value1 value100 = (output725, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value106 value1 value100 = (output726, value177, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value106 value1 value100 = (output447, value106, value1))
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value106 value1 value100 = (output726, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input727 value106 value1 value100 = (output727, value177, value1) := by
  rw [input727_def, output727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output726_skip]
  kernel_rfl

theorem node728_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value105 value1 value100 = (output446, value106, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value106 value1 value100 = (output727, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value105 value1 value100 = (output728, value177, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output727_skip]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value105 value1 value100 = (output729, value105, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input730 value105 value1 value100 = (output730, value105, value1) := by
  rw [input730_def, output730_def]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value105 value1 value100 = (output731, value105, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value105 value1 value100 = (output732, value105, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value105 value1 value100 = (output733, value105, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value105 value1 value100 = (output734, value105, value1) := by
  rw [input734_def, output734_def]
  kernel_rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value105 value1 value100 = (output735, value105, value1) := by
  rw [input735_def, output735_def]
  kernel_rfl

theorem node736_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value105 value1 value100 = (output734, value105, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value105 value1 value100 = (output735, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value105 value1 value100 = (output736, value105, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value105 value1 value100 = (output733, value105, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value105 value1 value100 = (output736, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value105 value1 value100 = (output737, value105, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value105 value1 value100 = (output732, value105, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value105 value1 value100 = (output737, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value105 value1 value100 = (output738, value105, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value105 value1 value100 = (output731, value105, value1))
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value105 value1 value100 = (output738, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input739 value105 value1 value100 = (output739, value105, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output738_skip]
  kernel_rfl

theorem node740_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value105 value1 value100 = (output730, value105, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value105 value1 value100 = (output739, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value105 value1 value100 = (output740, value105, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value105 value1 value100 = (output729, value105, value1))
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value105 value1 value100 = (output740, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input741 value105 value1 value100 = (output741, value105, value1) := by
  rw [input741_def, output741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  try dsimp only
  rw [child740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output729_skip, output740_skip]
  kernel_rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value105 value1 value100 = (output742, value178, value1) := by
  rw [input742_def, output742_def]
  kernel_rfl

theorem node743_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value105 value1 value100 = (output741, value105, value1))
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value105 value1 value100 = (output742, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input743 value105 value1 value100 = (output743, value178, value1) := by
  rw [input743_def, output743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output742_skip]
  kernel_rfl

theorem node744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input744 value178 value1 value100 = (output744, value178, value1) := by
  rw [input744_def, output744_def]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value178 value1 value100 = (output745, value178, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value178 value1 value100 = (output746, value178, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value178 value1 value100 = (output745, value178, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value178 value1 value100 = (output746, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value178 value1 value100 = (output747, value178, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value178 value1 value100 = (output744, value178, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value178 value1 value100 = (output747, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value178 value1 value100 = (output748, value178, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output747_skip]
  kernel_rfl

theorem node749_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value105 value1 value100 = (output743, value178, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value178 value1 value100 = (output748, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value105 value1 value100 = (output749, value178, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output748_skip]
  kernel_rfl

theorem node750_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value105 value1 value100 = (output728, value177, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value105 value1 value100 = (output749, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value105 value1 value100 = (output750, value180, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child728]
  try dsimp only
  rw [child749]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value180 value1 value100 = (output751, value181, value1) := by
  rw [input751_def, output751_def]
  kernel_rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value181 value1 value100 = (output752, value182, value1) := by
  rw [input752_def, output752_def]
  kernel_rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value182 value1 value100 = (output753, value182, value1) := by
  rw [input753_def, output753_def]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value182 value1 value100 = (output754, value183, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value183 value1 value100 = (output755, value184, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value182 value1 value100 = (output754, value183, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value183 value1 value100 = (output755, value184, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value182 value1 value100 = (output756, value184, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output755_skip]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value184 value1 value100 = (output757, value185, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value182 value1 value100 = (output756, value184, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value184 value1 value100 = (output757, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value182 value1 value100 = (output758, value185, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output757_skip]
  kernel_rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value185 value1 value100 = (output759, value186, value1) := by
  rw [input759_def, output759_def]
  kernel_rfl

theorem node760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input760 value186 value1 value100 = (output760, value187, value1) := by
  rw [input760_def, output760_def]
  kernel_rfl

theorem node761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input761 value187 value1 value100 = (output761, value187, value1) := by
  rw [input761_def, output761_def]
  kernel_rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value187 value1 value100 = (output762, value187, value1) := by
  rw [input762_def, output762_def]
  kernel_rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value187 value1 value100 = (output763, value187, value1) := by
  rw [input763_def, output763_def]
  kernel_rfl

theorem node764_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value187 value1 value100 = (output762, value187, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value187 value1 value100 = (output763, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value187 value1 value100 = (output764, value187, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value187 value1 value100 = (output761, value187, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value187 value1 value100 = (output764, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value187 value1 value100 = (output765, value187, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value186 value1 value100 = (output760, value187, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value187 value1 value100 = (output765, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value186 value1 value100 = (output766, value187, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output760_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value185 value1 value100 = (output759, value186, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value186 value1 value100 = (output766, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value185 value1 value100 = (output767, value187, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output766_skip]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages862.Parallel
