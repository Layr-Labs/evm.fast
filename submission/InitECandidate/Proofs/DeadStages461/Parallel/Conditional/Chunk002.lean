import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages461.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages461.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value242 value1 value205 = (output512, value243, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value243 value1 value205 = (output513, value244, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value244 value1 value205 = (output514, value245, value1) := by
  rw [input514_def, output514_def]
  kernel_rfl

theorem node515_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value243 value1 value205 = (output513, value244, value1))
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value244 value1 value205 = (output514, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input515 value243 value1 value205 = (output515, value245, value1) := by
  rw [input515_def, output515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output514_skip]
  kernel_rfl

theorem node516_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value242 value1 value205 = (output512, value243, value1))
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value243 value1 value205 = (output515, value245, value1)) : Flapjack.WordAlloc.removeDeadStructural input516 value242 value1 value205 = (output516, value245, value1) := by
  rw [input516_def, output516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output515_skip]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value245 value1 value205 = (output517, value246, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value242 value1 value205 = (output516, value245, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value245 value1 value205 = (output517, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value242 value1 value205 = (output518, value246, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value246 value1 value205 = (output519, value247, value1) := by
  rw [input519_def, output519_def]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value247 value1 value205 = (output520, value248, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value248 value1 value205 = (output521, value249, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value247 value1 value205 = (output520, value248, value1))
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value248 value1 value205 = (output521, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input522 value247 value1 value205 = (output522, value249, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output521_skip]
  kernel_rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value249 value1 value205 = (output523, value250, value1) := by
  rw [input523_def, output523_def]
  kernel_rfl

theorem node524_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value247 value1 value205 = (output522, value249, value1))
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value249 value1 value205 = (output523, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input524 value247 value1 value205 = (output524, value250, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output523_skip]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value250 value1 value205 = (output525, value250, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value250 value1 value205 = (output526, value251, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value251 value1 value205 = (output527, value252, value1) := by
  rw [input527_def, output527_def]
  kernel_rfl

theorem node528_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value250 value1 value205 = (output526, value251, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value251 value1 value205 = (output527, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value250 value1 value205 = (output528, value252, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output527_skip]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value252 value1 value205 = (output529, value253, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value250 value1 value205 = (output528, value252, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value252 value1 value205 = (output529, value253, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value250 value1 value205 = (output530, value253, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value253 value1 value205 = (output531, value254, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value254 value1 value205 = (output532, value255, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value253 value1 value205 = (output531, value254, value1))
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value254 value1 value205 = (output532, value255, value1)) : Flapjack.WordAlloc.removeDeadStructural input533 value253 value1 value205 = (output533, value255, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output532_skip]
  kernel_rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value255 value1 value205 = (output534, value256, value1) := by
  rw [input534_def, output534_def]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value256 value1 value205 = (output535, value257, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value257 value1 value205 = (output536, value258, value1) := by
  rw [input536_def, output536_def]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value258 value1 value205 = (output537, value259, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value257 value1 value205 = (output536, value258, value1))
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value258 value1 value205 = (output537, value259, value1)) : Flapjack.WordAlloc.removeDeadStructural input538 value257 value1 value205 = (output538, value259, value1) := by
  rw [input538_def, output538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output537_skip]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value259 value1 value205 = (output539, value260, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value257 value1 value205 = (output538, value259, value1))
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value259 value1 value205 = (output539, value260, value1)) : Flapjack.WordAlloc.removeDeadStructural input540 value257 value1 value205 = (output540, value260, value1) := by
  rw [input540_def, output540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output539_skip]
  kernel_rfl

theorem node541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input541 value260 value1 value205 = (output541, value260, value1) := by
  rw [input541_def, output541_def]
  kernel_rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value260 value1 value205 = (output542, value261, value1) := by
  rw [input542_def, output542_def]
  kernel_rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value261 value1 value205 = (output543, value262, value1) := by
  rw [input543_def, output543_def]
  kernel_rfl

theorem node544_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value260 value1 value205 = (output542, value261, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value261 value1 value205 = (output543, value262, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value260 value1 value205 = (output544, value262, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value262 value1 value205 = (output545, value263, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value260 value1 value205 = (output544, value262, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value262 value1 value205 = (output545, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value260 value1 value205 = (output546, value263, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value263 value1 value205 = (output547, value264, value1) := by
  rw [input547_def, output547_def]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value264 value1 value205 = (output548, value265, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value263 value1 value205 = (output547, value264, value1))
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value264 value1 value205 = (output548, value265, value1)) : Flapjack.WordAlloc.removeDeadStructural input549 value263 value1 value205 = (output549, value265, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output548_skip]
  kernel_rfl

theorem node550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input550 value265 value1 value205 = (output550, value266, value1) := by
  rw [input550_def, output550_def]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value266 value1 value205 = (output551, value267, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value267 value1 value205 = (output552, value268, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value266 value1 value205 = (output551, value267, value1))
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value267 value1 value205 = (output552, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input553 value266 value1 value205 = (output553, value268, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output552_skip]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value268 value1 value205 = (output554, value269, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value269 value1 value205 = (output555, value270, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value268 value1 value205 = (output554, value269, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value269 value1 value205 = (output555, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value268 value1 value205 = (output556, value270, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value270 value1 value205 = (output557, value271, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value271 value1 value205 = (output558, value272, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value270 value1 value205 = (output557, value271, value1))
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value271 value1 value205 = (output558, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input559 value270 value1 value205 = (output559, value272, value1) := by
  rw [input559_def, output559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output558_skip]
  kernel_rfl

theorem node560_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value268 value1 value205 = (output556, value270, value1))
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value270 value1 value205 = (output559, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input560 value268 value1 value205 = (output560, value272, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output559_skip]
  kernel_rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value272 value1 value205 = (output561, value272, value1) := by
  rw [input561_def, output561_def]
  kernel_rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value272 value1 value205 = (output562, value272, value1) := by
  rw [input562_def, output562_def]
  kernel_rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value272 value1 value205 = (output563, value272, value1) := by
  rw [input563_def, output563_def]
  kernel_rfl

theorem node564_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value272 value1 value205 = (output562, value272, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value272 value1 value205 = (output563, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value272 value1 value205 = (output564, value272, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value272 value1 value205 = (output561, value272, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value272 value1 value205 = (output564, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value272 value1 value205 = (output565, value272, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value268 value1 value205 = (output560, value272, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value272 value1 value205 = (output565, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value268 value1 value205 = (output566, value272, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value266 value1 value205 = (output553, value268, value1))
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value268 value1 value205 = (output566, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input567 value266 value1 value205 = (output567, value272, value1) := by
  rw [input567_def, output567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output566_skip]
  kernel_rfl

theorem node568_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value265 value1 value205 = (output550, value266, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value266 value1 value205 = (output567, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value265 value1 value205 = (output568, value272, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value263 value1 value205 = (output549, value265, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value265 value1 value205 = (output568, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value263 value1 value205 = (output569, value272, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value260 value1 value205 = (output546, value263, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value263 value1 value205 = (output569, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value260 value1 value205 = (output570, value272, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value260 value1 value205 = (output541, value260, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value260 value1 value205 = (output570, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value260 value1 value205 = (output571, value272, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value257 value1 value205 = (output540, value260, value1))
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value260 value1 value205 = (output571, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input572 value257 value1 value205 = (output572, value272, value1) := by
  rw [input572_def, output572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output571_skip]
  kernel_rfl

theorem node573_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value256 value1 value205 = (output535, value257, value1))
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value257 value1 value205 = (output572, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input573 value256 value1 value205 = (output573, value272, value1) := by
  rw [input573_def, output573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output572_skip]
  kernel_rfl

theorem node574_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value255 value1 value205 = (output534, value256, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value256 value1 value205 = (output573, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value255 value1 value205 = (output574, value272, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value253 value1 value205 = (output533, value255, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value255 value1 value205 = (output574, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value253 value1 value205 = (output575, value272, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value250 value1 value205 = (output530, value253, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value253 value1 value205 = (output575, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value250 value1 value205 = (output576, value272, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value250 value1 value205 = (output525, value250, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value250 value1 value205 = (output576, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value250 value1 value205 = (output577, value272, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value247 value1 value205 = (output524, value250, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value250 value1 value205 = (output577, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value247 value1 value205 = (output578, value272, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value246 value1 value205 = (output519, value247, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value247 value1 value205 = (output578, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value246 value1 value205 = (output579, value272, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value242 value1 value205 = (output518, value246, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value246 value1 value205 = (output579, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value242 value1 value205 = (output580, value272, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value239 value1 value205 = (output511, value242, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value242 value1 value205 = (output580, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value239 value1 value205 = (output581, value272, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value239 value1 value205 = (output506, value239, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value239 value1 value205 = (output581, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value239 value1 value205 = (output582, value272, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value236 value1 value205 = (output505, value239, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value239 value1 value205 = (output582, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value236 value1 value205 = (output583, value272, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value234 value1 value205 = (output500, value236, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value236 value1 value205 = (output583, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value234 value1 value205 = (output584, value272, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value230 value1 value205 = (output497, value234, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value234 value1 value205 = (output584, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value230 value1 value205 = (output585, value272, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value227 value1 value205 = (output490, value230, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value230 value1 value205 = (output585, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value227 value1 value205 = (output586, value272, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value227 value1 value205 = (output485, value227, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value227 value1 value205 = (output586, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value227 value1 value205 = (output587, value272, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value226 value1 value205 = (output484, value227, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value227 value1 value205 = (output587, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value226 value1 value205 = (output588, value272, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output587_skip]
  kernel_rfl

theorem node589_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value222 value1 value205 = (output483, value226, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value226 value1 value205 = (output588, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value222 value1 value205 = (output589, value272, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value219 value1 value205 = (output476, value222, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value222 value1 value205 = (output589, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value219 value1 value205 = (output590, value272, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output589_skip]
  kernel_rfl

theorem node591_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value219 value1 value205 = (output471, value219, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value219 value1 value205 = (output590, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value219 value1 value205 = (output591, value272, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value211 value1 value205 = (output470, value219, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value219 value1 value205 = (output591, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value211 value1 value205 = (output592, value272, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value210 value1 value205 = (output455, value211, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value211 value1 value205 = (output592, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value210 value1 value205 = (output593, value272, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value208 value1 value205 = (output454, value210, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value210 value1 value205 = (output593, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value208 value1 value205 = (output594, value272, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value207 value1 value205 = (output451, value208, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value208 value1 value205 = (output594, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value207 value1 value205 = (output595, value272, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value207 value1 value205 = (output450, value207, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value207 value1 value205 = (output595, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value207 value1 value205 = (output596, value272, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value206 value1 value205 = (output447, value207, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value207 value1 value205 = (output596, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value206 value1 value205 = (output597, value272, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value206 value1 value205 = (output598, value206, value1) := by
  rw [input598_def, output598_def]
  kernel_rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value206 value1 value205 = (output599, value206, value1) := by
  rw [input599_def, output599_def]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value206 value1 value205 = (output600, value206, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value206 value1 value205 = (output601, value206, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value206 value1 value205 = (output600, value206, value1))
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value206 value1 value205 = (output601, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input602 value206 value1 value205 = (output602, value206, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output601_skip]
  kernel_rfl

theorem node603_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value206 value1 value205 = (output599, value206, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value206 value1 value205 = (output602, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value206 value1 value205 = (output603, value206, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value206 value1 value205 = (output598, value206, value1))
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value206 value1 value205 = (output603, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input604 value206 value1 value205 = (output604, value206, value1) := by
  rw [input604_def, output604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output603_skip]
  kernel_rfl

theorem node605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input605 value206 value1 value205 = (output605, value273, value1) := by
  rw [input605_def, output605_def]
  kernel_rfl

theorem node606_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value206 value1 value205 = (output604, value206, value1))
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value206 value1 value205 = (output605, value273, value1)) : Flapjack.WordAlloc.removeDeadStructural input606 value206 value1 value205 = (output606, value273, value1) := by
  rw [input606_def, output606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output605_skip]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value273 value1 value205 = (output607, value203, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value203 value1 value205 = (output608, value274, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value273 value1 value205 = (output607, value203, value1))
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value203 value1 value205 = (output608, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input609 value273 value1 value205 = (output609, value274, value1) := by
  rw [input609_def, output609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output608_skip]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value274 value1 value205 = (output610, value274, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value274 value1 value205 = (output611, value274, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value274 value1 value205 = (output612, value274, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value274 value1 value205 = (output611, value274, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value274 value1 value205 = (output612, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value274 value1 value205 = (output613, value274, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value274 value1 value205 = (output610, value274, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value274 value1 value205 = (output613, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value274 value1 value205 = (output614, value274, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value273 value1 value205 = (output609, value274, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value274 value1 value205 = (output614, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value273 value1 value205 = (output615, value274, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value206 value1 value205 = (output606, value273, value1))
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value273 value1 value205 = (output615, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input616 value206 value1 value205 = (output616, value274, value1) := by
  rw [input616_def, output616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output615_skip]
  kernel_rfl

theorem node617_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value206 value1 value205 = (output597, value272, value1))
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value206 value1 value205 = (output616, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input617 value206 value1 value205 = (output617, value273, value1) := by
  rw [input617_def, output617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child597]
  try dsimp only
  rw [child616]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output616_skip]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value273 value1 value205 = (output618, value276, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value276 value1 value205 = (output619, value204, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value273 value1 value205 = (output618, value276, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value276 value1 value205 = (output619, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value273 value1 value205 = (output620, value204, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value206 value1 value205 = (output617, value273, value1))
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value273 value1 value205 = (output620, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input621 value206 value1 value205 = (output621, value204, value1) := by
  rw [input621_def, output621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output620_skip]
  kernel_rfl

theorem node622_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value206 value1 value205 = (output438, value206, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value206 value1 value205 = (output621, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value206 value1 value205 = (output622, value204, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output621_skip]
  kernel_rfl

theorem node623_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value204 value1 value205 = (output437, value206, value1))
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value206 value1 value205 = (output622, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input623 value204 value1 value205 = (output623, value204, value1) := by
  rw [input623_def, output623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output622_skip]
  kernel_rfl

theorem node624_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value204 value1 value205 = (output623, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input624 value203 value1 value2 = (output624, value204, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value205 = (value204, value203) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child623
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value204 value1 value2 = (output625, value277, value1) := by
  rw [input625_def, output625_def]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value277 value1 value2 = (output626, value277, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value204 value1 value2 = (output625, value277, value1))
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value277 value1 value2 = (output626, value277, value1)) : Flapjack.WordAlloc.removeDeadStructural input627 value204 value1 value2 = (output627, value277, value1) := by
  rw [input627_def, output627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output626_skip]
  kernel_rfl

theorem node628_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value203 value1 value2 = (output624, value204, value1))
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value204 value1 value2 = (output627, value277, value1)) : Flapjack.WordAlloc.removeDeadStructural input628 value203 value1 value2 = (output628, value277, value1) := by
  rw [input628_def, output628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output627_skip]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value277 value1 value2 = (output629, value277, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value277 value1 value2 = (output630, value278, value1) := by
  rw [input630_def, output630_def]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value278 value1 value2 = (output631, value279, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value279 value1 value2 = (output632, value280, value1) := by
  rw [input632_def, output632_def]
  kernel_rfl

theorem node633_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value278 value1 value2 = (output631, value279, value1))
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value279 value1 value2 = (output632, value280, value1)) : Flapjack.WordAlloc.removeDeadStructural input633 value278 value1 value2 = (output633, value280, value1) := by
  rw [input633_def, output633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output632_skip]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value280 value1 value2 = (output634, value280, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input635 value280 value1 value2 = (output635, value281, value1) := by
  rw [input635_def, output635_def]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value281 value1 value2 = (output636, value282, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value280 value1 value2 = (output635, value281, value1))
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value281 value1 value2 = (output636, value282, value1)) : Flapjack.WordAlloc.removeDeadStructural input637 value280 value1 value2 = (output637, value282, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output636_skip]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value282 value1 value2 = (output638, value283, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value280 value1 value2 = (output637, value282, value1))
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value282 value1 value2 = (output638, value283, value1)) : Flapjack.WordAlloc.removeDeadStructural input639 value280 value1 value2 = (output639, value283, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output638_skip]
  kernel_rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value283 value1 value2 = (output640, value284, value1) := by
  rw [input640_def, output640_def]
  kernel_rfl

theorem node641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input641 value284 value1 value2 = (output641, value285, value1) := by
  rw [input641_def, output641_def]
  kernel_rfl

theorem node642_cond_eq
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value283 value1 value2 = (output640, value284, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value284 value1 value2 = (output641, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value283 value1 value2 = (output642, value285, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child640]
  try dsimp only
  rw [child641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output640_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value280 value1 value2 = (output639, value283, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value283 value1 value2 = (output642, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value280 value1 value2 = (output643, value285, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value285 value1 value2 = (output644, value286, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value286 value1 value2 = (output645, value286, value1) := by
  rw [input645_def, output645_def]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value286 value1 value2 = (output646, value286, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value286 value1 value2 = (output647, value287, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input648 value287 value1 value2 = (output648, value288, value1) := by
  rw [input648_def, output648_def]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value288 value1 value2 = (output649, value289, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input650 value289 value1 value2 = (output650, value290, value1) := by
  rw [input650_def, output650_def]
  kernel_rfl

theorem node651_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value288 value1 value2 = (output649, value289, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value289 value1 value2 = (output650, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value288 value1 value2 = (output651, value290, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value290 value1 value2 = (output652, value291, value1) := by
  rw [input652_def, output652_def]
  kernel_rfl

theorem node653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input653 value291 value1 value2 = (output653, value292, value1) := by
  rw [input653_def, output653_def]
  kernel_rfl

theorem node654_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value290 value1 value2 = (output652, value291, value1))
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value291 value1 value2 = (output653, value292, value1)) : Flapjack.WordAlloc.removeDeadStructural input654 value290 value1 value2 = (output654, value292, value1) := by
  rw [input654_def, output654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output653_skip]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value292 value1 value2 = (output655, value293, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value293 value1 value2 = (output656, value294, value1) := by
  rw [input656_def, output656_def]
  kernel_rfl

theorem node657_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value292 value1 value2 = (output655, value293, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value293 value1 value2 = (output656, value294, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value292 value1 value2 = (output657, value294, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value294 value1 value2 = (output658, value295, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value295 value1 value2 = (output659, value296, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value296 value1 value2 = (output660, value297, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value295 value1 value2 = (output659, value296, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value296 value1 value2 = (output660, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value295 value1 value2 = (output661, value297, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output660_skip]
  kernel_rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value297 value1 value2 = (output662, value298, value1) := by
  rw [input662_def, output662_def]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value298 value1 value2 = (output663, value299, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value297 value1 value2 = (output662, value298, value1))
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value298 value1 value2 = (output663, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input664 value297 value1 value2 = (output664, value299, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output663_skip]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value299 value1 value2 = (output665, value300, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value300 value1 value2 = (output666, value301, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value301 value1 value2 = (output667, value302, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value300 value1 value2 = (output666, value301, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value301 value1 value2 = (output667, value302, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value300 value1 value2 = (output668, value302, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value299 value1 value2 = (output665, value300, value1))
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value300 value1 value2 = (output668, value302, value1)) : Flapjack.WordAlloc.removeDeadStructural input669 value299 value1 value2 = (output669, value302, value1) := by
  rw [input669_def, output669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output668_skip]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value302 value1 value2 = (output670, value303, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value299 value1 value2 = (output669, value302, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value302 value1 value2 = (output670, value303, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value299 value1 value2 = (output671, value303, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value297 value1 value2 = (output664, value299, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value299 value1 value2 = (output671, value303, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value297 value1 value2 = (output672, value303, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value295 value1 value2 = (output661, value297, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value297 value1 value2 = (output672, value303, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value295 value1 value2 = (output673, value303, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input674 value303 value1 value2 = (output674, value303, value1) := by
  rw [input674_def, output674_def]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value303 value1 value2 = (output675, value304, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input676 value304 value1 value2 = (output676, value305, value1) := by
  rw [input676_def, output676_def]
  kernel_rfl

theorem node677_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value303 value1 value2 = (output675, value304, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value304 value1 value2 = (output676, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value303 value1 value2 = (output677, value305, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output676_skip]
  kernel_rfl

theorem node678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input678 value305 value1 value2 = (output678, value306, value1) := by
  rw [input678_def, output678_def]
  kernel_rfl

theorem node679_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value303 value1 value2 = (output677, value305, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value305 value1 value2 = (output678, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value303 value1 value2 = (output679, value306, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input680 value306 value1 value2 = (output680, value307, value1) := by
  rw [input680_def, output680_def]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value307 value1 value2 = (output681, value308, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value308 value1 value2 = (output682, value309, value1) := by
  rw [input682_def, output682_def]
  kernel_rfl

theorem node683_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value307 value1 value2 = (output681, value308, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value308 value1 value2 = (output682, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value307 value1 value2 = (output683, value309, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  try dsimp only
  rw [child682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output681_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value306 value1 value2 = (output680, value307, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value307 value1 value2 = (output683, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value306 value1 value2 = (output684, value309, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value309 value1 value2 = (output685, value310, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value306 value1 value2 = (output684, value309, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value309 value1 value2 = (output685, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value306 value1 value2 = (output686, value310, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value310 value1 value2 = (output687, value311, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value311 value1 value2 = (output688, value311, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value311 value1 value2 = (output689, value312, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value312 value1 value2 = (output690, value313, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value311 value1 value2 = (output689, value312, value1))
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value312 value1 value2 = (output690, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input691 value311 value1 value2 = (output691, value313, value1) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output690_skip]
  kernel_rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value313 value1 value2 = (output692, value314, value1) := by
  rw [input692_def, output692_def]
  kernel_rfl

theorem node693_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value311 value1 value2 = (output691, value313, value1))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value313 value1 value2 = (output692, value314, value1)) : Flapjack.WordAlloc.removeDeadStructural input693 value311 value1 value2 = (output693, value314, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output692_skip]
  kernel_rfl

theorem node694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input694 value314 value1 value2 = (output694, value315, value1) := by
  rw [input694_def, output694_def]
  kernel_rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value315 value1 value2 = (output695, value316, value1) := by
  rw [input695_def, output695_def]
  kernel_rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value316 value1 value2 = (output696, value317, value1) := by
  rw [input696_def, output696_def]
  kernel_rfl

theorem node697_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value315 value1 value2 = (output695, value316, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value316 value1 value2 = (output696, value317, value1)) : Flapjack.WordAlloc.removeDeadStructural input697 value315 value1 value2 = (output697, value317, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output696_skip]
  kernel_rfl

theorem node698_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value314 value1 value2 = (output694, value315, value1))
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value315 value1 value2 = (output697, value317, value1)) : Flapjack.WordAlloc.removeDeadStructural input698 value314 value1 value2 = (output698, value317, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output697_skip]
  kernel_rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value317 value1 value2 = (output699, value318, value1) := by
  rw [input699_def, output699_def]
  kernel_rfl

theorem node700_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value314 value1 value2 = (output698, value317, value1))
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value317 value1 value2 = (output699, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input700 value314 value1 value2 = (output700, value318, value1) := by
  rw [input700_def, output700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output699_skip]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value318 value1 value2 = (output701, value319, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value319 value1 value2 = (output702, value320, value1) := by
  rw [input702_def, output702_def]
  kernel_rfl

theorem node703_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value318 value1 value2 = (output701, value319, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value319 value1 value2 = (output702, value320, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value318 value1 value2 = (output703, value320, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input704 value320 value1 value2 = (output704, value321, value1) := by
  rw [input704_def, output704_def]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value321 value1 value2 = (output705, value322, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value320 value1 value2 = (output704, value321, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value321 value1 value2 = (output705, value322, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value320 value1 value2 = (output706, value322, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value322 value1 value2 = (output707, value323, value1) := by
  rw [input707_def, output707_def]
  kernel_rfl

theorem node708_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value320 value1 value2 = (output706, value322, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value322 value1 value2 = (output707, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value320 value1 value2 = (output708, value323, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value323 value1 value2 = (output709, value323, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input710 value323 value1 value2 = (output710, value324, value1) := by
  rw [input710_def, output710_def]
  kernel_rfl

theorem node711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input711 value324 value1 value2 = (output711, value325, value1) := by
  rw [input711_def, output711_def]
  kernel_rfl

theorem node712_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value323 value1 value2 = (output710, value324, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value324 value1 value2 = (output711, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value323 value1 value2 = (output712, value325, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value325 value1 value2 = (output713, value326, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value323 value1 value2 = (output712, value325, value1))
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value325 value1 value2 = (output713, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input714 value323 value1 value2 = (output714, value326, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output713_skip]
  kernel_rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value326 value1 value2 = (output715, value327, value1) := by
  rw [input715_def, output715_def]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value327 value1 value2 = (output716, value328, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value328 value1 value2 = (output717, value329, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value327 value1 value2 = (output716, value328, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value328 value1 value2 = (output717, value329, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value327 value1 value2 = (output718, value329, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value326 value1 value2 = (output715, value327, value1))
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value327 value1 value2 = (output718, value329, value1)) : Flapjack.WordAlloc.removeDeadStructural input719 value326 value1 value2 = (output719, value329, value1) := by
  rw [input719_def, output719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output718_skip]
  kernel_rfl

theorem node720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input720 value329 value1 value2 = (output720, value330, value1) := by
  rw [input720_def, output720_def]
  kernel_rfl

theorem node721_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value326 value1 value2 = (output719, value329, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value329 value1 value2 = (output720, value330, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value326 value1 value2 = (output721, value330, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input722 value330 value1 value2 = (output722, value330, value1) := by
  rw [input722_def, output722_def]
  kernel_rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value331 value1 value332 = (output723, value333, value1) := by
  rw [input723_def, output723_def]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value333 value1 value332 = (output724, value333, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value333 value1 value332 = (output725, value333, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input726 value333 value1 value332 = (output726, value333, value1) := by
  rw [input726_def, output726_def]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value333 value1 value332 = (output727, value333, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value333 value1 value332 = (output728, value333, value1) := by
  rw [input728_def, output728_def]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value333 value1 value332 = (output729, value333, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input730 value333 value1 value332 = (output730, value333, value1) := by
  rw [input730_def, output730_def]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value333 value1 value332 = (output731, value333, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value333 value1 value332 = (output732, value333, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value333 value1 value332 = (output733, value333, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value333 value1 value332 = (output734, value333, value1) := by
  rw [input734_def, output734_def]
  kernel_rfl

theorem node735_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value333 value1 value332 = (output733, value333, value1))
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value333 value1 value332 = (output734, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input735 value333 value1 value332 = (output735, value333, value1) := by
  rw [input735_def, output735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  try dsimp only
  rw [child734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output734_skip]
  kernel_rfl

theorem node736_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value333 value1 value332 = (output732, value333, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value333 value1 value332 = (output735, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value333 value1 value332 = (output736, value333, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value333 value1 value332 = (output731, value333, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value333 value1 value332 = (output736, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value333 value1 value332 = (output737, value333, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value333 value1 value332 = (output730, value333, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value333 value1 value332 = (output737, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value333 value1 value332 = (output738, value333, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value333 value1 value332 = (output729, value333, value1))
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value333 value1 value332 = (output738, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input739 value333 value1 value332 = (output739, value333, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  try dsimp only
  rw [child738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output729_skip, output738_skip]
  kernel_rfl

theorem node740_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value333 value1 value332 = (output728, value333, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value333 value1 value332 = (output739, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value333 value1 value332 = (output740, value333, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value333 value1 value332 = (output727, value333, value1))
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value333 value1 value332 = (output740, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input741 value333 value1 value332 = (output741, value333, value1) := by
  rw [input741_def, output741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output740_skip]
  kernel_rfl

theorem node742_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value333 value1 value332 = (output726, value333, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value333 value1 value332 = (output741, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value333 value1 value332 = (output742, value333, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value333 value1 value332 = (output725, value333, value1))
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value333 value1 value332 = (output742, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input743 value333 value1 value332 = (output743, value333, value1) := by
  rw [input743_def, output743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output742_skip]
  kernel_rfl

theorem node744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input744 value333 value1 value332 = (output744, value334, value1) := by
  rw [input744_def, output744_def]
  kernel_rfl

theorem node745_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value333 value1 value332 = (output743, value333, value1))
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value333 value1 value332 = (output744, value334, value1)) : Flapjack.WordAlloc.removeDeadStructural input745 value333 value1 value332 = (output745, value334, value1) := by
  rw [input745_def, output745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output744_skip]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value334 value1 value332 = (output746, value331, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value331 value1 value332 = (output747, value334, value1) := by
  rw [input747_def, output747_def]
  kernel_rfl

theorem node748_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value334 value1 value332 = (output746, value331, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value331 value1 value332 = (output747, value334, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value334 value1 value332 = (output748, value334, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output747_skip]
  kernel_rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value334 value1 value332 = (output749, value335, value1) := by
  rw [input749_def, output749_def]
  kernel_rfl

theorem node750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input750 value335 value1 value332 = (output750, value336, value1) := by
  rw [input750_def, output750_def]
  kernel_rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value336 value1 value332 = (output751, value337, value1) := by
  rw [input751_def, output751_def]
  kernel_rfl

theorem node752_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value335 value1 value332 = (output750, value336, value1))
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value336 value1 value332 = (output751, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input752 value335 value1 value332 = (output752, value337, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output751_skip]
  kernel_rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value337 value1 value332 = (output753, value338, value1) := by
  rw [input753_def, output753_def]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value338 value1 value332 = (output754, value339, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value339 value1 value332 = (output755, value340, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value338 value1 value332 = (output754, value339, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value339 value1 value332 = (output755, value340, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value338 value1 value332 = (output756, value340, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output755_skip]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value340 value1 value332 = (output757, value341, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value341 value1 value332 = (output758, value342, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value340 value1 value332 = (output757, value341, value1))
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value341 value1 value332 = (output758, value342, value1)) : Flapjack.WordAlloc.removeDeadStructural input759 value340 value1 value332 = (output759, value342, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output758_skip]
  kernel_rfl

theorem node760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input760 value342 value1 value332 = (output760, value343, value1) := by
  rw [input760_def, output760_def]
  kernel_rfl

theorem node761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input761 value343 value1 value332 = (output761, value344, value1) := by
  rw [input761_def, output761_def]
  kernel_rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value344 value1 value332 = (output762, value345, value1) := by
  rw [input762_def, output762_def]
  kernel_rfl

theorem node763_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value343 value1 value332 = (output761, value344, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value344 value1 value332 = (output762, value345, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value343 value1 value332 = (output763, value345, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value342 value1 value332 = (output760, value343, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value343 value1 value332 = (output763, value345, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value342 value1 value332 = (output764, value345, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output760_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input765 value345 value1 value332 = (output765, value346, value1) := by
  rw [input765_def, output765_def]
  kernel_rfl

theorem node766_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value342 value1 value332 = (output764, value345, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value345 value1 value332 = (output765, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value342 value1 value332 = (output766, value346, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value340 value1 value332 = (output759, value342, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value342 value1 value332 = (output766, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value340 value1 value332 = (output767, value346, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output766_skip]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages461.Parallel
