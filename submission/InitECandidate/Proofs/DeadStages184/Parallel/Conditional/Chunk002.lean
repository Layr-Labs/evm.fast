import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages184.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages184.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value206 value1 value2 = (output512, value207, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value205 value1 value2 = (output511, value206, value1))
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value206 value1 value2 = (output512, value207, value1)) : Flapjack.WordAlloc.removeDeadStructural input513 value205 value1 value2 = (output513, value207, value1) := by
  rw [input513_def, output513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output512_skip]
  kernel_rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value207 value1 value2 = (output514, value208, value1) := by
  rw [input514_def, output514_def]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value208 value1 value2 = (output515, value209, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value207 value1 value2 = (output514, value208, value1))
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value208 value1 value2 = (output515, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input516 value207 value1 value2 = (output516, value209, value1) := by
  rw [input516_def, output516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output515_skip]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value209 value1 value2 = (output517, value210, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input518 value210 value1 value2 = (output518, value211, value1) := by
  rw [input518_def, output518_def]
  kernel_rfl

theorem node519_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value209 value1 value2 = (output517, value210, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value210 value1 value2 = (output518, value211, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value209 value1 value2 = (output519, value211, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value207 value1 value2 = (output516, value209, value1))
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value209 value1 value2 = (output519, value211, value1)) : Flapjack.WordAlloc.removeDeadStructural input520 value207 value1 value2 = (output520, value211, value1) := by
  rw [input520_def, output520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output519_skip]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value211 value1 value2 = (output521, value212, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value212 value1 value2 = (output522, value213, value1) := by
  rw [input522_def, output522_def]
  kernel_rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value213 value1 value2 = (output523, value214, value1) := by
  rw [input523_def, output523_def]
  kernel_rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value214 value1 value2 = (output524, value215, value1) := by
  rw [input524_def, output524_def]
  kernel_rfl

theorem node525_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value213 value1 value2 = (output523, value214, value1))
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value214 value1 value2 = (output524, value215, value1)) : Flapjack.WordAlloc.removeDeadStructural input525 value213 value1 value2 = (output525, value215, value1) := by
  rw [input525_def, output525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output524_skip]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value215 value1 value2 = (output526, value216, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value213 value1 value2 = (output525, value215, value1))
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value215 value1 value2 = (output526, value216, value1)) : Flapjack.WordAlloc.removeDeadStructural input527 value213 value1 value2 = (output527, value216, value1) := by
  rw [input527_def, output527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output526_skip]
  kernel_rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value216 value1 value2 = (output528, value217, value1) := by
  rw [input528_def, output528_def]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value217 value1 value2 = (output529, value218, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input530 value218 value1 value2 = (output530, value219, value1) := by
  rw [input530_def, output530_def]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value219 value1 value2 = (output531, value220, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value220 value1 value2 = (output532, value221, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value219 value1 value2 = (output531, value220, value1))
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value220 value1 value2 = (output532, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input533 value219 value1 value2 = (output533, value221, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output532_skip]
  kernel_rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value221 value1 value2 = (output534, value222, value1) := by
  rw [input534_def, output534_def]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value222 value1 value2 = (output535, value223, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value221 value1 value2 = (output534, value222, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value222 value1 value2 = (output535, value223, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value221 value1 value2 = (output536, value223, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output535_skip]
  kernel_rfl

theorem node537_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value219 value1 value2 = (output533, value221, value1))
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value221 value1 value2 = (output536, value223, value1)) : Flapjack.WordAlloc.removeDeadStructural input537 value219 value1 value2 = (output537, value223, value1) := by
  rw [input537_def, output537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output536_skip]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value223 value1 value2 = (output538, value224, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value224 value1 value2 = (output539, value225, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value225 value1 value2 = (output540, value226, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value224 value1 value2 = (output539, value225, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value225 value1 value2 = (output540, value226, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value224 value1 value2 = (output541, value226, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value226 value1 value2 = (output542, value227, value1) := by
  rw [input542_def, output542_def]
  kernel_rfl

theorem node543_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value224 value1 value2 = (output541, value226, value1))
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value226 value1 value2 = (output542, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input543 value224 value1 value2 = (output543, value227, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output542_skip]
  kernel_rfl

theorem node544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input544 value227 value1 value2 = (output544, value228, value1) := by
  rw [input544_def, output544_def]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value228 value1 value2 = (output545, value229, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value227 value1 value2 = (output544, value228, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value228 value1 value2 = (output545, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value227 value1 value2 = (output546, value229, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value229 value1 value2 = (output547, value230, value1) := by
  rw [input547_def, output547_def]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value230 value1 value2 = (output548, value231, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value231 value1 value2 = (output549, value232, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value230 value1 value2 = (output548, value231, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value231 value1 value2 = (output549, value232, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value230 value1 value2 = (output550, value232, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value232 value1 value2 = (output551, value233, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value230 value1 value2 = (output550, value232, value1))
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value232 value1 value2 = (output551, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input552 value230 value1 value2 = (output552, value233, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output551_skip]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value233 value1 value2 = (output553, value234, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value234 value1 value2 = (output554, value235, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value233 value1 value2 = (output553, value234, value1))
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value234 value1 value2 = (output554, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input555 value233 value1 value2 = (output555, value235, value1) := by
  rw [input555_def, output555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output554_skip]
  kernel_rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value235 value1 value2 = (output556, value236, value1) := by
  rw [input556_def, output556_def]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value236 value1 value2 = (output557, value237, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value237 value1 value2 = (output558, value238, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value236 value1 value2 = (output557, value237, value1))
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value237 value1 value2 = (output558, value238, value1)) : Flapjack.WordAlloc.removeDeadStructural input559 value236 value1 value2 = (output559, value238, value1) := by
  rw [input559_def, output559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output558_skip]
  kernel_rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value238 value1 value2 = (output560, value239, value1) := by
  rw [input560_def, output560_def]
  kernel_rfl

theorem node561_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value236 value1 value2 = (output559, value238, value1))
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value238 value1 value2 = (output560, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input561 value236 value1 value2 = (output561, value239, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output560_skip]
  kernel_rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value239 value1 value2 = (output562, value240, value1) := by
  rw [input562_def, output562_def]
  kernel_rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value240 value1 value2 = (output563, value241, value1) := by
  rw [input563_def, output563_def]
  kernel_rfl

theorem node564_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value239 value1 value2 = (output562, value240, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value240 value1 value2 = (output563, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value239 value1 value2 = (output564, value241, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input565 value241 value1 value2 = (output565, value242, value1) := by
  rw [input565_def, output565_def]
  kernel_rfl

theorem node566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input566 value242 value1 value2 = (output566, value243, value1) := by
  rw [input566_def, output566_def]
  kernel_rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value243 value1 value2 = (output567, value244, value1) := by
  rw [input567_def, output567_def]
  kernel_rfl

theorem node568_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value242 value1 value2 = (output566, value243, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value243 value1 value2 = (output567, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value242 value1 value2 = (output568, value244, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input569 value244 value1 value2 = (output569, value245, value1) := by
  rw [input569_def, output569_def]
  kernel_rfl

theorem node570_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value242 value1 value2 = (output568, value244, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value244 value1 value2 = (output569, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value242 value1 value2 = (output570, value245, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value245 value1 value2 = (output571, value246, value1) := by
  rw [input571_def, output571_def]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value246 value1 value2 = (output572, value247, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value245 value1 value2 = (output571, value246, value1))
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value246 value1 value2 = (output572, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input573 value245 value1 value2 = (output573, value247, value1) := by
  rw [input573_def, output573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output572_skip]
  kernel_rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value247 value1 value2 = (output574, value247, value1) := by
  rw [input574_def, output574_def]
  kernel_rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value247 value1 value2 = (output575, value247, value1) := by
  rw [input575_def, output575_def]
  kernel_rfl

theorem node576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input576 value247 value1 value2 = (output576, value247, value1) := by
  rw [input576_def, output576_def]
  kernel_rfl

theorem node577_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value247 value1 value2 = (output575, value247, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value247 value1 value2 = (output576, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value247 value1 value2 = (output577, value247, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output575_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value247 value1 value2 = (output574, value247, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value247 value1 value2 = (output577, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value247 value1 value2 = (output578, value247, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value245 value1 value2 = (output573, value247, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value247 value1 value2 = (output578, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value245 value1 value2 = (output579, value247, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value242 value1 value2 = (output570, value245, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value245 value1 value2 = (output579, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value242 value1 value2 = (output580, value247, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output570_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value241 value1 value2 = (output565, value242, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value242 value1 value2 = (output580, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value241 value1 value2 = (output581, value247, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output565_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value239 value1 value2 = (output564, value241, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value241 value1 value2 = (output581, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value239 value1 value2 = (output582, value247, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output564_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value236 value1 value2 = (output561, value239, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value239 value1 value2 = (output582, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value236 value1 value2 = (output583, value247, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value235 value1 value2 = (output556, value236, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value236 value1 value2 = (output583, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value235 value1 value2 = (output584, value247, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value233 value1 value2 = (output555, value235, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value235 value1 value2 = (output584, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value233 value1 value2 = (output585, value247, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value230 value1 value2 = (output552, value233, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value233 value1 value2 = (output585, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value230 value1 value2 = (output586, value247, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value229 value1 value2 = (output547, value230, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value230 value1 value2 = (output586, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value229 value1 value2 = (output587, value247, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value227 value1 value2 = (output546, value229, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value229 value1 value2 = (output587, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value227 value1 value2 = (output588, value247, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output587_skip]
  kernel_rfl

theorem node589_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value224 value1 value2 = (output543, value227, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value227 value1 value2 = (output588, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value224 value1 value2 = (output589, value247, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value223 value1 value2 = (output538, value224, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value224 value1 value2 = (output589, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value223 value1 value2 = (output590, value247, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output589_skip]
  kernel_rfl

theorem node591_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value219 value1 value2 = (output537, value223, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value223 value1 value2 = (output590, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value219 value1 value2 = (output591, value247, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value218 value1 value2 = (output530, value219, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value219 value1 value2 = (output591, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value218 value1 value2 = (output592, value247, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value217 value1 value2 = (output529, value218, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value218 value1 value2 = (output592, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value217 value1 value2 = (output593, value247, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value216 value1 value2 = (output528, value217, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value217 value1 value2 = (output593, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value216 value1 value2 = (output594, value247, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value213 value1 value2 = (output527, value216, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value216 value1 value2 = (output594, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value213 value1 value2 = (output595, value247, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value212 value1 value2 = (output522, value213, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value213 value1 value2 = (output595, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value212 value1 value2 = (output596, value247, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value211 value1 value2 = (output521, value212, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value212 value1 value2 = (output596, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value211 value1 value2 = (output597, value247, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value207 value1 value2 = (output520, value211, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value211 value1 value2 = (output597, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value207 value1 value2 = (output598, value247, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output597_skip]
  kernel_rfl

theorem node599_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value205 value1 value2 = (output513, value207, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value207 value1 value2 = (output598, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value205 value1 value2 = (output599, value247, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output598_skip]
  kernel_rfl

theorem node600_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value204 value1 value2 = (output510, value205, value1))
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value205 value1 value2 = (output599, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input600 value204 value1 value2 = (output600, value247, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output599_skip]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value204 value1 value2 = (output601, value204, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value204 value1 value2 = (output602, value248, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value204 value1 value2 = (output601, value204, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value204 value1 value2 = (output602, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value204 value1 value2 = (output603, value248, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value248 value1 value2 = (output604, value248, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value204 value1 value2 = (output603, value248, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value248 value1 value2 = (output604, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value204 value1 value2 = (output605, value248, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output604_skip]
  kernel_rfl

theorem node606_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value204 value1 value2 = (output600, value247, value1))
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value204 value1 value2 = (output605, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input606 value204 value1 value2 = (output606, value250, value1) := by
  rw [input606_def, output606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child600]
  try dsimp only
  rw [child605]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output605_skip]
  kernel_rfl

theorem node607_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value204 value1 value2 = (output507, value204, value1))
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value204 value1 value2 = (output606, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input607 value204 value1 value2 = (output607, value250, value1) := by
  rw [input607_def, output607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output606_skip]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value250 value1 value2 = (output608, value248, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value248 value1 value2 = (output609, value251, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value251 value1 value2 = (output610, value251, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value251 value1 value2 = (output611, value251, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value251 value1 value2 = (output612, value251, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input613 value251 value1 value2 = (output613, value251, value1) := by
  rw [input613_def, output613_def]
  kernel_rfl

theorem node614_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value251 value1 value2 = (output612, value251, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value251 value1 value2 = (output613, value251, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value251 value1 value2 = (output614, value251, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value251 value1 value2 = (output611, value251, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value251 value1 value2 = (output614, value251, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value251 value1 value2 = (output615, value251, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value251 value1 value2 = (output616, value251, value1) := by
  rw [input616_def, output616_def]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value251 value1 value2 = (output617, value251, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value251 value1 value2 = (output618, value251, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value251 value1 value2 = (output617, value251, value1))
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value251 value1 value2 = (output618, value251, value1)) : Flapjack.WordAlloc.removeDeadStructural input619 value251 value1 value2 = (output619, value251, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output618_skip]
  kernel_rfl

theorem node620_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value251 value1 value2 = (output616, value251, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value251 value1 value2 = (output619, value251, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value251 value1 value2 = (output620, value251, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value251 value1 value2 = (output621, value252, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value251 value1 value2 = (output620, value251, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value251 value1 value2 = (output621, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value251 value1 value2 = (output622, value252, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output621_skip]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value252 value1 value2 = (output623, value253, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value253 value1 value2 = (output624, value254, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value252 value1 value2 = (output623, value253, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value253 value1 value2 = (output624, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value252 value1 value2 = (output625, value254, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output624_skip]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value254 value1 value2 = (output626, value255, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value255 value1 value2 = (output627, value256, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value254 value1 value2 = (output626, value255, value1))
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value255 value1 value2 = (output627, value256, value1)) : Flapjack.WordAlloc.removeDeadStructural input628 value254 value1 value2 = (output628, value256, value1) := by
  rw [input628_def, output628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output627_skip]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value256 value1 value2 = (output629, value257, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value257 value1 value2 = (output630, value258, value1) := by
  rw [input630_def, output630_def]
  kernel_rfl

theorem node631_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value256 value1 value2 = (output629, value257, value1))
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value257 value1 value2 = (output630, value258, value1)) : Flapjack.WordAlloc.removeDeadStructural input631 value256 value1 value2 = (output631, value258, value1) := by
  rw [input631_def, output631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output630_skip]
  kernel_rfl

theorem node632_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value254 value1 value2 = (output628, value256, value1))
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value256 value1 value2 = (output631, value258, value1)) : Flapjack.WordAlloc.removeDeadStructural input632 value254 value1 value2 = (output632, value258, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output631_skip]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value258 value1 value2 = (output633, value259, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value259 value1 value2 = (output634, value260, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input635 value260 value1 value2 = (output635, value261, value1) := by
  rw [input635_def, output635_def]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value261 value1 value2 = (output636, value262, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value260 value1 value2 = (output635, value261, value1))
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value261 value1 value2 = (output636, value262, value1)) : Flapjack.WordAlloc.removeDeadStructural input637 value260 value1 value2 = (output637, value262, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output636_skip]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value262 value1 value2 = (output638, value263, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value260 value1 value2 = (output637, value262, value1))
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value262 value1 value2 = (output638, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input639 value260 value1 value2 = (output639, value263, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output638_skip]
  kernel_rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value263 value1 value2 = (output640, value264, value1) := by
  rw [input640_def, output640_def]
  kernel_rfl

theorem node641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input641 value264 value1 value2 = (output641, value265, value1) := by
  rw [input641_def, output641_def]
  kernel_rfl

theorem node642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input642 value265 value1 value2 = (output642, value266, value1) := by
  rw [input642_def, output642_def]
  kernel_rfl

theorem node643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input643 value266 value1 value2 = (output643, value267, value1) := by
  rw [input643_def, output643_def]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value267 value1 value2 = (output644, value268, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value266 value1 value2 = (output643, value267, value1))
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value267 value1 value2 = (output644, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input645 value266 value1 value2 = (output645, value268, value1) := by
  rw [input645_def, output645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output644_skip]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value268 value1 value2 = (output646, value269, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value269 value1 value2 = (output647, value270, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value268 value1 value2 = (output646, value269, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value269 value1 value2 = (output647, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value268 value1 value2 = (output648, value270, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value266 value1 value2 = (output645, value268, value1))
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value268 value1 value2 = (output648, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input649 value266 value1 value2 = (output649, value270, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output648_skip]
  kernel_rfl

theorem node650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input650 value270 value1 value2 = (output650, value271, value1) := by
  rw [input650_def, output650_def]
  kernel_rfl

theorem node651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input651 value271 value1 value2 = (output651, value272, value1) := by
  rw [input651_def, output651_def]
  kernel_rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value272 value1 value2 = (output652, value273, value1) := by
  rw [input652_def, output652_def]
  kernel_rfl

theorem node653_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value271 value1 value2 = (output651, value272, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value272 value1 value2 = (output652, value273, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value271 value1 value2 = (output653, value273, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value273 value1 value2 = (output654, value274, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value271 value1 value2 = (output653, value273, value1))
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value273 value1 value2 = (output654, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input655 value271 value1 value2 = (output655, value274, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output654_skip]
  kernel_rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value274 value1 value2 = (output656, value275, value1) := by
  rw [input656_def, output656_def]
  kernel_rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value275 value1 value2 = (output657, value276, value1) := by
  rw [input657_def, output657_def]
  kernel_rfl

theorem node658_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value274 value1 value2 = (output656, value275, value1))
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value275 value1 value2 = (output657, value276, value1)) : Flapjack.WordAlloc.removeDeadStructural input658 value274 value1 value2 = (output658, value276, value1) := by
  rw [input658_def, output658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output657_skip]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value276 value1 value2 = (output659, value277, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value277 value1 value2 = (output660, value278, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value278 value1 value2 = (output661, value279, value1) := by
  rw [input661_def, output661_def]
  kernel_rfl

theorem node662_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value277 value1 value2 = (output660, value278, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value278 value1 value2 = (output661, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value277 value1 value2 = (output662, value279, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output661_skip]
  kernel_rfl

theorem node663_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value276 value1 value2 = (output659, value277, value1))
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value277 value1 value2 = (output662, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input663 value276 value1 value2 = (output663, value279, value1) := by
  rw [input663_def, output663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output662_skip]
  kernel_rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value279 value1 value2 = (output664, value280, value1) := by
  rw [input664_def, output664_def]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value280 value1 value2 = (output665, value281, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value281 value1 value2 = (output666, value282, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value280 value1 value2 = (output665, value281, value1))
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value281 value1 value2 = (output666, value282, value1)) : Flapjack.WordAlloc.removeDeadStructural input667 value280 value1 value2 = (output667, value282, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output666_skip]
  kernel_rfl

theorem node668_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value279 value1 value2 = (output664, value280, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value280 value1 value2 = (output667, value282, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value279 value1 value2 = (output668, value282, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value282 value1 value2 = (output669, value283, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value283 value1 value2 = (output670, value284, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value282 value1 value2 = (output669, value283, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value283 value1 value2 = (output670, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value282 value1 value2 = (output671, value284, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value279 value1 value2 = (output668, value282, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value282 value1 value2 = (output671, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value279 value1 value2 = (output672, value284, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value276 value1 value2 = (output663, value279, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value279 value1 value2 = (output672, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value276 value1 value2 = (output673, value284, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value274 value1 value2 = (output658, value276, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value276 value1 value2 = (output673, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value274 value1 value2 = (output674, value284, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value284 value1 value2 = (output675, value285, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input676 value285 value1 value2 = (output676, value286, value1) := by
  rw [input676_def, output676_def]
  kernel_rfl

theorem node677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input677 value286 value1 value2 = (output677, value287, value1) := by
  rw [input677_def, output677_def]
  kernel_rfl

theorem node678_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value285 value1 value2 = (output676, value286, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value286 value1 value2 = (output677, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value285 value1 value2 = (output678, value287, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input679 value287 value1 value2 = (output679, value288, value1) := by
  rw [input679_def, output679_def]
  kernel_rfl

theorem node680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input680 value288 value1 value2 = (output680, value289, value1) := by
  rw [input680_def, output680_def]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value289 value1 value2 = (output681, value290, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value288 value1 value2 = (output680, value289, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value289 value1 value2 = (output681, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value288 value1 value2 = (output682, value290, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input683 value290 value1 value2 = (output683, value291, value1) := by
  rw [input683_def, output683_def]
  kernel_rfl

theorem node684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input684 value291 value1 value2 = (output684, value292, value1) := by
  rw [input684_def, output684_def]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value292 value1 value2 = (output685, value293, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value291 value1 value2 = (output684, value292, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value292 value1 value2 = (output685, value293, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value291 value1 value2 = (output686, value293, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value293 value1 value2 = (output687, value294, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value294 value1 value2 = (output688, value295, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value295 value1 value2 = (output689, value296, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value294 value1 value2 = (output688, value295, value1))
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value295 value1 value2 = (output689, value296, value1)) : Flapjack.WordAlloc.removeDeadStructural input690 value294 value1 value2 = (output690, value296, value1) := by
  rw [input690_def, output690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output689_skip]
  kernel_rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value296 value1 value2 = (output691, value297, value1) := by
  rw [input691_def, output691_def]
  kernel_rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value297 value1 value2 = (output692, value298, value1) := by
  rw [input692_def, output692_def]
  kernel_rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value298 value1 value2 = (output693, value299, value1) := by
  rw [input693_def, output693_def]
  kernel_rfl

theorem node694_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value297 value1 value2 = (output692, value298, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value298 value1 value2 = (output693, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value297 value1 value2 = (output694, value299, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value299 value1 value2 = (output695, value300, value1) := by
  rw [input695_def, output695_def]
  kernel_rfl

theorem node696_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value297 value1 value2 = (output694, value299, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value299 value1 value2 = (output695, value300, value1)) : Flapjack.WordAlloc.removeDeadStructural input696 value297 value1 value2 = (output696, value300, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output695_skip]
  kernel_rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value300 value1 value2 = (output697, value301, value1) := by
  rw [input697_def, output697_def]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value301 value1 value2 = (output698, value302, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value300 value1 value2 = (output697, value301, value1))
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value301 value1 value2 = (output698, value302, value1)) : Flapjack.WordAlloc.removeDeadStructural input699 value300 value1 value2 = (output699, value302, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  try dsimp only
  rw [child698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output698_skip]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value302 value1 value2 = (output700, value303, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value303 value1 value2 = (output701, value304, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value304 value1 value2 = (output702, value305, value1) := by
  rw [input702_def, output702_def]
  kernel_rfl

theorem node703_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value303 value1 value2 = (output701, value304, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value304 value1 value2 = (output702, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value303 value1 value2 = (output703, value305, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input704 value305 value1 value2 = (output704, value306, value1) := by
  rw [input704_def, output704_def]
  kernel_rfl

theorem node705_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value303 value1 value2 = (output703, value305, value1))
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value305 value1 value2 = (output704, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input705 value303 value1 value2 = (output705, value306, value1) := by
  rw [input705_def, output705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output704_skip]
  kernel_rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value306 value1 value2 = (output706, value307, value1) := by
  rw [input706_def, output706_def]
  kernel_rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value307 value1 value2 = (output707, value308, value1) := by
  rw [input707_def, output707_def]
  kernel_rfl

theorem node708_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value306 value1 value2 = (output706, value307, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value307 value1 value2 = (output707, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value306 value1 value2 = (output708, value308, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value308 value1 value2 = (output709, value308, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input710 value308 value1 value2 = (output710, value308, value1) := by
  rw [input710_def, output710_def]
  kernel_rfl

theorem node711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input711 value308 value1 value2 = (output711, value308, value1) := by
  rw [input711_def, output711_def]
  kernel_rfl

theorem node712_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value308 value1 value2 = (output710, value308, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value308 value1 value2 = (output711, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value308 value1 value2 = (output712, value308, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value308 value1 value2 = (output709, value308, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value308 value1 value2 = (output712, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value308 value1 value2 = (output713, value308, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output712_skip]
  kernel_rfl

theorem node714_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value306 value1 value2 = (output708, value308, value1))
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value308 value1 value2 = (output713, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input714 value306 value1 value2 = (output714, value308, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output713_skip]
  kernel_rfl

theorem node715_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value303 value1 value2 = (output705, value306, value1))
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value306 value1 value2 = (output714, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input715 value303 value1 value2 = (output715, value308, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output714_skip]
  kernel_rfl

theorem node716_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value302 value1 value2 = (output700, value303, value1))
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value303 value1 value2 = (output715, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input716 value302 value1 value2 = (output716, value308, value1) := by
  rw [input716_def, output716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output715_skip]
  kernel_rfl

theorem node717_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value300 value1 value2 = (output699, value302, value1))
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value302 value1 value2 = (output716, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input717 value300 value1 value2 = (output717, value308, value1) := by
  rw [input717_def, output717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output716_skip]
  kernel_rfl

theorem node718_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value297 value1 value2 = (output696, value300, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value300 value1 value2 = (output717, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value297 value1 value2 = (output718, value308, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output696_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value296 value1 value2 = (output691, value297, value1))
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value297 value1 value2 = (output718, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input719 value296 value1 value2 = (output719, value308, value1) := by
  rw [input719_def, output719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output718_skip]
  kernel_rfl

theorem node720_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value294 value1 value2 = (output690, value296, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value296 value1 value2 = (output719, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value294 value1 value2 = (output720, value308, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output719_skip]
  kernel_rfl

theorem node721_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value293 value1 value2 = (output687, value294, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value294 value1 value2 = (output720, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value293 value1 value2 = (output721, value308, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value291 value1 value2 = (output686, value293, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value293 value1 value2 = (output721, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value291 value1 value2 = (output722, value308, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output721_skip]
  kernel_rfl

theorem node723_cond_eq
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value290 value1 value2 = (output683, value291, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value291 value1 value2 = (output722, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value290 value1 value2 = (output723, value308, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child683]
  try dsimp only
  rw [child722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output683_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value288 value1 value2 = (output682, value290, value1))
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value290 value1 value2 = (output723, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input724 value288 value1 value2 = (output724, value308, value1) := by
  rw [input724_def, output724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  try dsimp only
  rw [child723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output682_skip, output723_skip]
  kernel_rfl

theorem node725_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value287 value1 value2 = (output679, value288, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value288 value1 value2 = (output724, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value287 value1 value2 = (output725, value308, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output724_skip]
  kernel_rfl

theorem node726_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value285 value1 value2 = (output678, value287, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value287 value1 value2 = (output725, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value285 value1 value2 = (output726, value308, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value284 value1 value2 = (output675, value285, value1))
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value285 value1 value2 = (output726, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input727 value284 value1 value2 = (output727, value308, value1) := by
  rw [input727_def, output727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output726_skip]
  kernel_rfl

theorem node728_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value274 value1 value2 = (output674, value284, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value284 value1 value2 = (output727, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value274 value1 value2 = (output728, value308, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output727_skip]
  kernel_rfl

theorem node729_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value271 value1 value2 = (output655, value274, value1))
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value274 value1 value2 = (output728, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input729 value271 value1 value2 = (output729, value308, value1) := by
  rw [input729_def, output729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output728_skip]
  kernel_rfl

theorem node730_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value270 value1 value2 = (output650, value271, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value271 value1 value2 = (output729, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value270 value1 value2 = (output730, value308, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value266 value1 value2 = (output649, value270, value1))
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value270 value1 value2 = (output730, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input731 value266 value1 value2 = (output731, value308, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output730_skip]
  kernel_rfl

theorem node732_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value265 value1 value2 = (output642, value266, value1))
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value266 value1 value2 = (output731, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input732 value265 value1 value2 = (output732, value308, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output731_skip]
  kernel_rfl

theorem node733_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value264 value1 value2 = (output641, value265, value1))
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value265 value1 value2 = (output732, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input733 value264 value1 value2 = (output733, value308, value1) := by
  rw [input733_def, output733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output732_skip]
  kernel_rfl

theorem node734_cond_eq
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value263 value1 value2 = (output640, value264, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value264 value1 value2 = (output733, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value263 value1 value2 = (output734, value308, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child640]
  try dsimp only
  rw [child733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output640_skip, output733_skip]
  kernel_rfl

theorem node735_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value260 value1 value2 = (output639, value263, value1))
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value263 value1 value2 = (output734, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input735 value260 value1 value2 = (output735, value308, value1) := by
  rw [input735_def, output735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output734_skip]
  kernel_rfl

theorem node736_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value259 value1 value2 = (output634, value260, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value260 value1 value2 = (output735, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value259 value1 value2 = (output736, value308, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value258 value1 value2 = (output633, value259, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value259 value1 value2 = (output736, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value258 value1 value2 = (output737, value308, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value254 value1 value2 = (output632, value258, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value258 value1 value2 = (output737, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value254 value1 value2 = (output738, value308, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value252 value1 value2 = (output625, value254, value1))
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value254 value1 value2 = (output738, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input739 value252 value1 value2 = (output739, value308, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output738_skip]
  kernel_rfl

theorem node740_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value251 value1 value2 = (output622, value252, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value252 value1 value2 = (output739, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value251 value1 value2 = (output740, value308, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value251 value1 value2 = (output741, value251, value1) := by
  rw [input741_def, output741_def]
  kernel_rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value251 value1 value2 = (output742, value251, value1) := by
  rw [input742_def, output742_def]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value251 value1 value2 = (output743, value251, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value251 value1 value2 = (output742, value251, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value251 value1 value2 = (output743, value251, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value251 value1 value2 = (output744, value251, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output743_skip]
  kernel_rfl

theorem node745_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value251 value1 value2 = (output741, value251, value1))
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value251 value1 value2 = (output744, value251, value1)) : Flapjack.WordAlloc.removeDeadStructural input745 value251 value1 value2 = (output745, value251, value1) := by
  rw [input745_def, output745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output744_skip]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value251 value1 value2 = (output746, value309, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value251 value1 value2 = (output745, value251, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value251 value1 value2 = (output746, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value251 value1 value2 = (output747, value309, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value309 value1 value2 = (output748, value309, value1) := by
  rw [input748_def, output748_def]
  kernel_rfl

theorem node749_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value251 value1 value2 = (output747, value309, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value309 value1 value2 = (output748, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value251 value1 value2 = (output749, value309, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output748_skip]
  kernel_rfl

theorem node750_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value251 value1 value2 = (output740, value308, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value251 value1 value2 = (output749, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value251 value1 value2 = (output750, value311, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child740]
  try dsimp only
  rw [child749]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value251 value1 value2 = (output615, value251, value1))
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value251 value1 value2 = (output750, value311, value1)) : Flapjack.WordAlloc.removeDeadStructural input751 value251 value1 value2 = (output751, value311, value1) := by
  rw [input751_def, output751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output750_skip]
  kernel_rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value311 value1 value2 = (output752, value309, value1) := by
  rw [input752_def, output752_def]
  kernel_rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value309 value1 value2 = (output753, value312, value1) := by
  rw [input753_def, output753_def]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value312 value1 value2 = (output754, value312, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value312 value1 value2 = (output755, value312, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input756 value312 value1 value2 = (output756, value312, value1) := by
  rw [input756_def, output756_def]
  kernel_rfl

theorem node757_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value312 value1 value2 = (output755, value312, value1))
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value312 value1 value2 = (output756, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input757 value312 value1 value2 = (output757, value312, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output756_skip]
  kernel_rfl

theorem node758_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value312 value1 value2 = (output754, value312, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value312 value1 value2 = (output757, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value312 value1 value2 = (output758, value312, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output757_skip]
  kernel_rfl

theorem node759_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value309 value1 value2 = (output753, value312, value1))
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value312 value1 value2 = (output758, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input759 value309 value1 value2 = (output759, value312, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output758_skip]
  kernel_rfl

theorem node760_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value311 value1 value2 = (output752, value309, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value309 value1 value2 = (output759, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value311 value1 value2 = (output760, value312, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value251 value1 value2 = (output751, value311, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value311 value1 value2 = (output760, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value251 value1 value2 = (output761, value312, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value251 value1 value2 = (output610, value251, value1))
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value251 value1 value2 = (output761, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input762 value251 value1 value2 = (output762, value312, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output761_skip]
  kernel_rfl

theorem node763_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value248 value1 value2 = (output609, value251, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value251 value1 value2 = (output762, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value248 value1 value2 = (output763, value312, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value250 value1 value2 = (output608, value248, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value248 value1 value2 = (output763, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value250 value1 value2 = (output764, value312, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value204 value1 value2 = (output607, value250, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value250 value1 value2 = (output764, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value204 value1 value2 = (output765, value312, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value204 value1 value2 = (output502, value204, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value204 value1 value2 = (output765, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value204 value1 value2 = (output766, value312, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value200 value1 value2 = (output501, value204, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value204 value1 value2 = (output766, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value200 value1 value2 = (output767, value312, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output766_skip]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages184.Parallel
