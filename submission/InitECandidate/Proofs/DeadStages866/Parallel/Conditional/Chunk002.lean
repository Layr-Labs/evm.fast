import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages866.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages866.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value268 value1 value2 = (output512, value269, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value269 value1 value2 = (output513, value270, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value268 value1 value2 = (output512, value269, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value269 value1 value2 = (output513, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value268 value1 value2 = (output514, value270, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value270 value1 value2 = (output515, value271, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value271 value1 value2 = (output516, value272, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value272 value1 value2 = (output517, value273, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value271 value1 value2 = (output516, value272, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value272 value1 value2 = (output517, value273, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value271 value1 value2 = (output518, value273, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value273 value1 value2 = (output519, value274, value1) := by
  rw [input519_def, output519_def]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value274 value1 value2 = (output520, value275, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value275 value1 value2 = (output521, value276, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value274 value1 value2 = (output520, value275, value1))
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value275 value1 value2 = (output521, value276, value1)) : Flapjack.WordAlloc.removeDeadStructural input522 value274 value1 value2 = (output522, value276, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output521_skip]
  kernel_rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value276 value1 value2 = (output523, value277, value1) := by
  rw [input523_def, output523_def]
  kernel_rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value277 value1 value2 = (output524, value278, value1) := by
  rw [input524_def, output524_def]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value278 value1 value2 = (output525, value279, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value277 value1 value2 = (output524, value278, value1))
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value278 value1 value2 = (output525, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input526 value277 value1 value2 = (output526, value279, value1) := by
  rw [input526_def, output526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output525_skip]
  kernel_rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value279 value1 value2 = (output527, value280, value1) := by
  rw [input527_def, output527_def]
  kernel_rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value280 value1 value2 = (output528, value281, value1) := by
  rw [input528_def, output528_def]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value281 value1 value2 = (output529, value282, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value280 value1 value2 = (output528, value281, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value281 value1 value2 = (output529, value282, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value280 value1 value2 = (output530, value282, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value282 value1 value2 = (output531, value283, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value283 value1 value2 = (output532, value284, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value284 value1 value2 = (output533, value285, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value283 value1 value2 = (output532, value284, value1))
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value284 value1 value2 = (output533, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input534 value283 value1 value2 = (output534, value285, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output533_skip]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value285 value1 value2 = (output535, value286, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value286 value1 value2 = (output536, value287, value1) := by
  rw [input536_def, output536_def]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value287 value1 value2 = (output537, value288, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value286 value1 value2 = (output536, value287, value1))
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value287 value1 value2 = (output537, value288, value1)) : Flapjack.WordAlloc.removeDeadStructural input538 value286 value1 value2 = (output538, value288, value1) := by
  rw [input538_def, output538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output537_skip]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value288 value1 value2 = (output539, value289, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value289 value1 value2 = (output540, value290, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value288 value1 value2 = (output539, value289, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value289 value1 value2 = (output540, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value288 value1 value2 = (output541, value290, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value290 value1 value2 = (output542, value291, value1) := by
  rw [input542_def, output542_def]
  kernel_rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value291 value1 value2 = (output543, value292, value1) := by
  rw [input543_def, output543_def]
  kernel_rfl

theorem node544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input544 value292 value1 value2 = (output544, value293, value1) := by
  rw [input544_def, output544_def]
  kernel_rfl

theorem node545_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value291 value1 value2 = (output543, value292, value1))
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value292 value1 value2 = (output544, value293, value1)) : Flapjack.WordAlloc.removeDeadStructural input545 value291 value1 value2 = (output545, value293, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output544_skip]
  kernel_rfl

theorem node546_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value290 value1 value2 = (output542, value291, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value291 value1 value2 = (output545, value293, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value290 value1 value2 = (output546, value293, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value293 value1 value2 = (output547, value294, value1) := by
  rw [input547_def, output547_def]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value294 value1 value2 = (output548, value295, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value295 value1 value2 = (output549, value296, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value294 value1 value2 = (output548, value295, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value295 value1 value2 = (output549, value296, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value294 value1 value2 = (output550, value296, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value293 value1 value2 = (output547, value294, value1))
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value294 value1 value2 = (output550, value296, value1)) : Flapjack.WordAlloc.removeDeadStructural input551 value293 value1 value2 = (output551, value296, value1) := by
  rw [input551_def, output551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output550_skip]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value296 value1 value2 = (output552, value297, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value297 value1 value2 = (output553, value298, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value298 value1 value2 = (output554, value299, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value297 value1 value2 = (output553, value298, value1))
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value298 value1 value2 = (output554, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input555 value297 value1 value2 = (output555, value299, value1) := by
  rw [input555_def, output555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output554_skip]
  kernel_rfl

theorem node556_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value296 value1 value2 = (output552, value297, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value297 value1 value2 = (output555, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value296 value1 value2 = (output556, value299, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value299 value1 value2 = (output557, value300, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value300 value1 value2 = (output558, value301, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value301 value1 value2 = (output559, value302, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value300 value1 value2 = (output558, value301, value1))
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value301 value1 value2 = (output559, value302, value1)) : Flapjack.WordAlloc.removeDeadStructural input560 value300 value1 value2 = (output560, value302, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output559_skip]
  kernel_rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value302 value1 value2 = (output561, value303, value1) := by
  rw [input561_def, output561_def]
  kernel_rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value303 value1 value2 = (output562, value304, value1) := by
  rw [input562_def, output562_def]
  kernel_rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value304 value1 value2 = (output563, value305, value1) := by
  rw [input563_def, output563_def]
  kernel_rfl

theorem node564_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value303 value1 value2 = (output562, value304, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value304 value1 value2 = (output563, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value303 value1 value2 = (output564, value305, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value302 value1 value2 = (output561, value303, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value303 value1 value2 = (output564, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value302 value1 value2 = (output565, value305, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input566 value305 value1 value2 = (output566, value306, value1) := by
  rw [input566_def, output566_def]
  kernel_rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value306 value1 value2 = (output567, value307, value1) := by
  rw [input567_def, output567_def]
  kernel_rfl

theorem node568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input568 value307 value1 value2 = (output568, value308, value1) := by
  rw [input568_def, output568_def]
  kernel_rfl

theorem node569_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value306 value1 value2 = (output567, value307, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value307 value1 value2 = (output568, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value306 value1 value2 = (output569, value308, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value305 value1 value2 = (output566, value306, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value306 value1 value2 = (output569, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value305 value1 value2 = (output570, value308, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value308 value1 value2 = (output571, value309, value1) := by
  rw [input571_def, output571_def]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value309 value1 value2 = (output572, value310, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value308 value1 value2 = (output571, value309, value1))
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value309 value1 value2 = (output572, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input573 value308 value1 value2 = (output573, value310, value1) := by
  rw [input573_def, output573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output572_skip]
  kernel_rfl

theorem node574_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value305 value1 value2 = (output570, value308, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value308 value1 value2 = (output573, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value305 value1 value2 = (output574, value310, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output570_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value302 value1 value2 = (output565, value305, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value305 value1 value2 = (output574, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value302 value1 value2 = (output575, value310, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output565_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value300 value1 value2 = (output560, value302, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value302 value1 value2 = (output575, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value300 value1 value2 = (output576, value310, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value299 value1 value2 = (output557, value300, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value300 value1 value2 = (output576, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value299 value1 value2 = (output577, value310, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value296 value1 value2 = (output556, value299, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value299 value1 value2 = (output577, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value296 value1 value2 = (output578, value310, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value293 value1 value2 = (output551, value296, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value296 value1 value2 = (output578, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value293 value1 value2 = (output579, value310, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value290 value1 value2 = (output546, value293, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value293 value1 value2 = (output579, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value290 value1 value2 = (output580, value310, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value288 value1 value2 = (output541, value290, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value290 value1 value2 = (output580, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value288 value1 value2 = (output581, value310, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input582 value310 value1 value2 = (output582, value311, value1) := by
  rw [input582_def, output582_def]
  kernel_rfl

theorem node583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input583 value311 value1 value2 = (output583, value312, value1) := by
  rw [input583_def, output583_def]
  kernel_rfl

theorem node584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input584 value312 value1 value2 = (output584, value313, value1) := by
  rw [input584_def, output584_def]
  kernel_rfl

theorem node585_cond_eq
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value311 value1 value2 = (output583, value312, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value312 value1 value2 = (output584, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value311 value1 value2 = (output585, value313, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child583]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output583_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input586 value313 value1 value2 = (output586, value314, value1) := by
  rw [input586_def, output586_def]
  kernel_rfl

theorem node587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input587 value314 value1 value2 = (output587, value315, value1) := by
  rw [input587_def, output587_def]
  kernel_rfl

theorem node588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input588 value315 value1 value2 = (output588, value316, value1) := by
  rw [input588_def, output588_def]
  kernel_rfl

theorem node589_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value314 value1 value2 = (output587, value315, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value315 value1 value2 = (output588, value316, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value314 value1 value2 = (output589, value316, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value316 value1 value2 = (output590, value317, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input591 value317 value1 value2 = (output591, value318, value1) := by
  rw [input591_def, output591_def]
  kernel_rfl

theorem node592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input592 value318 value1 value2 = (output592, value319, value1) := by
  rw [input592_def, output592_def]
  kernel_rfl

theorem node593_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value317 value1 value2 = (output591, value318, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value318 value1 value2 = (output592, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value317 value1 value2 = (output593, value319, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output591_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input594 value319 value1 value2 = (output594, value320, value1) := by
  rw [input594_def, output594_def]
  kernel_rfl

theorem node595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input595 value320 value1 value2 = (output595, value321, value1) := by
  rw [input595_def, output595_def]
  kernel_rfl

theorem node596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input596 value321 value1 value2 = (output596, value322, value1) := by
  rw [input596_def, output596_def]
  kernel_rfl

theorem node597_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value320 value1 value2 = (output595, value321, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value321 value1 value2 = (output596, value322, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value320 value1 value2 = (output597, value322, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value322 value1 value2 = (output598, value323, value1) := by
  rw [input598_def, output598_def]
  kernel_rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value323 value1 value2 = (output599, value324, value1) := by
  rw [input599_def, output599_def]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value324 value1 value2 = (output600, value325, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value323 value1 value2 = (output599, value324, value1))
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value324 value1 value2 = (output600, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input601 value323 value1 value2 = (output601, value325, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output600_skip]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value325 value1 value2 = (output602, value326, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input603 value326 value1 value2 = (output603, value327, value1) := by
  rw [input603_def, output603_def]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value327 value1 value2 = (output604, value328, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value326 value1 value2 = (output603, value327, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value327 value1 value2 = (output604, value328, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value326 value1 value2 = (output605, value328, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output604_skip]
  kernel_rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value328 value1 value2 = (output606, value329, value1) := by
  rw [input606_def, output606_def]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value329 value1 value2 = (output607, value330, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value330 value1 value2 = (output608, value331, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value329 value1 value2 = (output607, value330, value1))
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value330 value1 value2 = (output608, value331, value1)) : Flapjack.WordAlloc.removeDeadStructural input609 value329 value1 value2 = (output609, value331, value1) := by
  rw [input609_def, output609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output608_skip]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value331 value1 value2 = (output610, value332, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value332 value1 value2 = (output611, value333, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value333 value1 value2 = (output612, value334, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value332 value1 value2 = (output611, value333, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value333 value1 value2 = (output612, value334, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value332 value1 value2 = (output613, value334, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input614 value334 value1 value2 = (output614, value335, value1) := by
  rw [input614_def, output614_def]
  kernel_rfl

theorem node615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input615 value335 value1 value2 = (output615, value336, value1) := by
  rw [input615_def, output615_def]
  kernel_rfl

theorem node616_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value334 value1 value2 = (output614, value335, value1))
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value335 value1 value2 = (output615, value336, value1)) : Flapjack.WordAlloc.removeDeadStructural input616 value334 value1 value2 = (output616, value336, value1) := by
  rw [input616_def, output616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output615_skip]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value336 value1 value2 = (output617, value337, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value337 value1 value2 = (output618, value338, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value338 value1 value2 = (output619, value339, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value337 value1 value2 = (output618, value338, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value338 value1 value2 = (output619, value339, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value337 value1 value2 = (output620, value339, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value336 value1 value2 = (output617, value337, value1))
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value337 value1 value2 = (output620, value339, value1)) : Flapjack.WordAlloc.removeDeadStructural input621 value336 value1 value2 = (output621, value339, value1) := by
  rw [input621_def, output621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output620_skip]
  kernel_rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value339 value1 value2 = (output622, value340, value1) := by
  rw [input622_def, output622_def]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value340 value1 value2 = (output623, value341, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value341 value1 value2 = (output624, value342, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value340 value1 value2 = (output623, value341, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value341 value1 value2 = (output624, value342, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value340 value1 value2 = (output625, value342, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output624_skip]
  kernel_rfl

theorem node626_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value339 value1 value2 = (output622, value340, value1))
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value340 value1 value2 = (output625, value342, value1)) : Flapjack.WordAlloc.removeDeadStructural input626 value339 value1 value2 = (output626, value342, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output625_skip]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value342 value1 value2 = (output627, value343, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value343 value1 value2 = (output628, value344, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value344 value1 value2 = (output629, value345, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value343 value1 value2 = (output628, value344, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value344 value1 value2 = (output629, value345, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value343 value1 value2 = (output630, value345, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output629_skip]
  kernel_rfl

theorem node631_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value342 value1 value2 = (output627, value343, value1))
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value343 value1 value2 = (output630, value345, value1)) : Flapjack.WordAlloc.removeDeadStructural input631 value342 value1 value2 = (output631, value345, value1) := by
  rw [input631_def, output631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output630_skip]
  kernel_rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value345 value1 value2 = (output632, value346, value1) := by
  rw [input632_def, output632_def]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value346 value1 value2 = (output633, value347, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value347 value1 value2 = (output634, value348, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value346 value1 value2 = (output633, value347, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value347 value1 value2 = (output634, value348, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value346 value1 value2 = (output635, value348, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value348 value1 value2 = (output636, value349, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value349 value1 value2 = (output637, value350, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value350 value1 value2 = (output638, value351, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value349 value1 value2 = (output637, value350, value1))
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value350 value1 value2 = (output638, value351, value1)) : Flapjack.WordAlloc.removeDeadStructural input639 value349 value1 value2 = (output639, value351, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output638_skip]
  kernel_rfl

theorem node640_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value348 value1 value2 = (output636, value349, value1))
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value349 value1 value2 = (output639, value351, value1)) : Flapjack.WordAlloc.removeDeadStructural input640 value348 value1 value2 = (output640, value351, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output639_skip]
  kernel_rfl

theorem node641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input641 value351 value1 value2 = (output641, value352, value1) := by
  rw [input641_def, output641_def]
  kernel_rfl

theorem node642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input642 value352 value1 value2 = (output642, value353, value1) := by
  rw [input642_def, output642_def]
  kernel_rfl

theorem node643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input643 value353 value1 value2 = (output643, value354, value1) := by
  rw [input643_def, output643_def]
  kernel_rfl

theorem node644_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value352 value1 value2 = (output642, value353, value1))
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value353 value1 value2 = (output643, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input644 value352 value1 value2 = (output644, value354, value1) := by
  rw [input644_def, output644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output643_skip]
  kernel_rfl

theorem node645_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value351 value1 value2 = (output641, value352, value1))
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value352 value1 value2 = (output644, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input645 value351 value1 value2 = (output645, value354, value1) := by
  rw [input645_def, output645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output644_skip]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value354 value1 value2 = (output646, value355, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value355 value1 value2 = (output647, value356, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value354 value1 value2 = (output646, value355, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value355 value1 value2 = (output647, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value354 value1 value2 = (output648, value356, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value351 value1 value2 = (output645, value354, value1))
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value354 value1 value2 = (output648, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input649 value351 value1 value2 = (output649, value356, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output648_skip]
  kernel_rfl

theorem node650_cond_eq
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value348 value1 value2 = (output640, value351, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value351 value1 value2 = (output649, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value348 value1 value2 = (output650, value356, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child640]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output640_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value346 value1 value2 = (output635, value348, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value348 value1 value2 = (output650, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value346 value1 value2 = (output651, value356, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value345 value1 value2 = (output632, value346, value1))
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value346 value1 value2 = (output651, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input652 value345 value1 value2 = (output652, value356, value1) := by
  rw [input652_def, output652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output651_skip]
  kernel_rfl

theorem node653_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value342 value1 value2 = (output631, value345, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value345 value1 value2 = (output652, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value342 value1 value2 = (output653, value356, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value339 value1 value2 = (output626, value342, value1))
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value342 value1 value2 = (output653, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input654 value339 value1 value2 = (output654, value356, value1) := by
  rw [input654_def, output654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output653_skip]
  kernel_rfl

theorem node655_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value336 value1 value2 = (output621, value339, value1))
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value339 value1 value2 = (output654, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input655 value336 value1 value2 = (output655, value356, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  try dsimp only
  rw [child654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output654_skip]
  kernel_rfl

theorem node656_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value334 value1 value2 = (output616, value336, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value336 value1 value2 = (output655, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value334 value1 value2 = (output656, value356, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value356 value1 value2 = (output657, value357, value1) := by
  rw [input657_def, output657_def]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value357 value1 value2 = (output658, value358, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value358 value1 value2 = (output659, value359, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value357 value1 value2 = (output658, value358, value1))
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value358 value1 value2 = (output659, value359, value1)) : Flapjack.WordAlloc.removeDeadStructural input660 value357 value1 value2 = (output660, value359, value1) := by
  rw [input660_def, output660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output659_skip]
  kernel_rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value359 value1 value2 = (output661, value360, value1) := by
  rw [input661_def, output661_def]
  kernel_rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value360 value1 value2 = (output662, value361, value1) := by
  rw [input662_def, output662_def]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value361 value1 value2 = (output663, value362, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value360 value1 value2 = (output662, value361, value1))
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value361 value1 value2 = (output663, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input664 value360 value1 value2 = (output664, value362, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output663_skip]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value362 value1 value2 = (output665, value363, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value363 value1 value2 = (output666, value364, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value364 value1 value2 = (output667, value365, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value363 value1 value2 = (output666, value364, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value364 value1 value2 = (output667, value365, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value363 value1 value2 = (output668, value365, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value365 value1 value2 = (output669, value366, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value366 value1 value2 = (output670, value367, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input671 value367 value1 value2 = (output671, value368, value1) := by
  rw [input671_def, output671_def]
  kernel_rfl

theorem node672_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value366 value1 value2 = (output670, value367, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value367 value1 value2 = (output671, value368, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value366 value1 value2 = (output672, value368, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output670_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input673 value368 value1 value2 = (output673, value369, value1) := by
  rw [input673_def, output673_def]
  kernel_rfl

theorem node674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input674 value369 value1 value2 = (output674, value370, value1) := by
  rw [input674_def, output674_def]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value370 value1 value2 = (output675, value371, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value369 value1 value2 = (output674, value370, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value370 value1 value2 = (output675, value371, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value369 value1 value2 = (output676, value371, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input677 value371 value1 value2 = (output677, value372, value1) := by
  rw [input677_def, output677_def]
  kernel_rfl

theorem node678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input678 value372 value1 value2 = (output678, value373, value1) := by
  rw [input678_def, output678_def]
  kernel_rfl

theorem node679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input679 value373 value1 value2 = (output679, value374, value1) := by
  rw [input679_def, output679_def]
  kernel_rfl

theorem node680_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value372 value1 value2 = (output678, value373, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value373 value1 value2 = (output679, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value372 value1 value2 = (output680, value374, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value374 value1 value2 = (output681, value375, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value375 value1 value2 = (output682, value376, value1) := by
  rw [input682_def, output682_def]
  kernel_rfl

theorem node683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input683 value376 value1 value2 = (output683, value377, value1) := by
  rw [input683_def, output683_def]
  kernel_rfl

theorem node684_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value375 value1 value2 = (output682, value376, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value376 value1 value2 = (output683, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value375 value1 value2 = (output684, value377, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output682_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value377 value1 value2 = (output685, value378, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input686 value378 value1 value2 = (output686, value379, value1) := by
  rw [input686_def, output686_def]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value379 value1 value2 = (output687, value380, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value378 value1 value2 = (output686, value379, value1))
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value379 value1 value2 = (output687, value380, value1)) : Flapjack.WordAlloc.removeDeadStructural input688 value378 value1 value2 = (output688, value380, value1) := by
  rw [input688_def, output688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output687_skip]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value380 value1 value2 = (output689, value381, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value381 value1 value2 = (output690, value382, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value380 value1 value2 = (output689, value381, value1))
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value381 value1 value2 = (output690, value382, value1)) : Flapjack.WordAlloc.removeDeadStructural input691 value380 value1 value2 = (output691, value382, value1) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output690_skip]
  kernel_rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value382 value1 value2 = (output692, value383, value1) := by
  rw [input692_def, output692_def]
  kernel_rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value383 value1 value2 = (output693, value384, value1) := by
  rw [input693_def, output693_def]
  kernel_rfl

theorem node694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input694 value384 value1 value2 = (output694, value385, value1) := by
  rw [input694_def, output694_def]
  kernel_rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value385 value1 value2 = (output695, value386, value1) := by
  rw [input695_def, output695_def]
  kernel_rfl

theorem node696_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value384 value1 value2 = (output694, value385, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value385 value1 value2 = (output695, value386, value1)) : Flapjack.WordAlloc.removeDeadStructural input696 value384 value1 value2 = (output696, value386, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output695_skip]
  kernel_rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value386 value1 value2 = (output697, value386, value1) := by
  rw [input697_def, output697_def]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value386 value1 value2 = (output698, value387, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value387 value1 value2 = (output699, value388, value1) := by
  rw [input699_def, output699_def]
  kernel_rfl

theorem node700_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value386 value1 value2 = (output698, value387, value1))
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value387 value1 value2 = (output699, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input700 value386 value1 value2 = (output700, value388, value1) := by
  rw [input700_def, output700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output699_skip]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value388 value1 value2 = (output701, value389, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value386 value1 value2 = (output700, value388, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value388 value1 value2 = (output701, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value386 value1 value2 = (output702, value389, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output701_skip]
  kernel_rfl

theorem node703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input703 value389 value1 value2 = (output703, value390, value1) := by
  rw [input703_def, output703_def]
  kernel_rfl

theorem node704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input704 value390 value1 value2 = (output704, value390, value1) := by
  rw [input704_def, output704_def]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value390 value1 value2 = (output705, value391, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value391 value1 value2 = (output706, value391, value1) := by
  rw [input706_def, output706_def]
  kernel_rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value391 value1 value2 = (output707, value392, value1) := by
  rw [input707_def, output707_def]
  kernel_rfl

theorem node708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input708 value392 value1 value2 = (output708, value393, value1) := by
  rw [input708_def, output708_def]
  kernel_rfl

theorem node709_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value391 value1 value2 = (output707, value392, value1))
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value392 value1 value2 = (output708, value393, value1)) : Flapjack.WordAlloc.removeDeadStructural input709 value391 value1 value2 = (output709, value393, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output708_skip]
  kernel_rfl

theorem node710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input710 value393 value1 value2 = (output710, value394, value1) := by
  rw [input710_def, output710_def]
  kernel_rfl

theorem node711_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value391 value1 value2 = (output709, value393, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value393 value1 value2 = (output710, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value391 value1 value2 = (output711, value394, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input712 value394 value1 value2 = (output712, value395, value1) := by
  rw [input712_def, output712_def]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value395 value1 value2 = (output713, value395, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value395 value1 value2 = (output714, value396, value1) := by
  rw [input714_def, output714_def]
  kernel_rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value396 value1 value2 = (output715, value397, value1) := by
  rw [input715_def, output715_def]
  kernel_rfl

theorem node716_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value395 value1 value2 = (output714, value396, value1))
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value396 value1 value2 = (output715, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input716 value395 value1 value2 = (output716, value397, value1) := by
  rw [input716_def, output716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output715_skip]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value397 value1 value2 = (output717, value398, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input718 value398 value1 value2 = (output718, value399, value1) := by
  rw [input718_def, output718_def]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value399 value1 value2 = (output719, value400, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value398 value1 value2 = (output718, value399, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value399 value1 value2 = (output719, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value398 value1 value2 = (output720, value400, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output719_skip]
  kernel_rfl

theorem node721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input721 value400 value1 value2 = (output721, value401, value1) := by
  rw [input721_def, output721_def]
  kernel_rfl

theorem node722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input722 value401 value1 value2 = (output722, value402, value1) := by
  rw [input722_def, output722_def]
  kernel_rfl

theorem node723_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value400 value1 value2 = (output721, value401, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value401 value1 value2 = (output722, value402, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value400 value1 value2 = (output723, value402, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value402 value1 value2 = (output724, value403, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value403 value1 value2 = (output725, value404, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value402 value1 value2 = (output724, value403, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value403 value1 value2 = (output725, value404, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value402 value1 value2 = (output726, value404, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value404 value1 value2 = (output727, value405, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value405 value1 value2 = (output728, value406, value1) := by
  rw [input728_def, output728_def]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value406 value1 value2 = (output729, value407, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value405 value1 value2 = (output728, value406, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value406 value1 value2 = (output729, value407, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value405 value1 value2 = (output730, value407, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value407 value1 value2 = (output731, value408, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value408 value1 value2 = (output732, value409, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value407 value1 value2 = (output731, value408, value1))
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value408 value1 value2 = (output732, value409, value1)) : Flapjack.WordAlloc.removeDeadStructural input733 value407 value1 value2 = (output733, value409, value1) := by
  rw [input733_def, output733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output732_skip]
  kernel_rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value409 value1 value2 = (output734, value410, value1) := by
  rw [input734_def, output734_def]
  kernel_rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value410 value1 value2 = (output735, value411, value1) := by
  rw [input735_def, output735_def]
  kernel_rfl

theorem node736_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value409 value1 value2 = (output734, value410, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value410 value1 value2 = (output735, value411, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value409 value1 value2 = (output736, value411, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input737 value411 value1 value2 = (output737, value412, value1) := by
  rw [input737_def, output737_def]
  kernel_rfl

theorem node738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input738 value412 value1 value2 = (output738, value413, value1) := by
  rw [input738_def, output738_def]
  kernel_rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value413 value1 value2 = (output739, value414, value1) := by
  rw [input739_def, output739_def]
  kernel_rfl

theorem node740_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value412 value1 value2 = (output738, value413, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value413 value1 value2 = (output739, value414, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value412 value1 value2 = (output740, value414, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output738_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value414 value1 value2 = (output741, value415, value1) := by
  rw [input741_def, output741_def]
  kernel_rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value415 value1 value2 = (output742, value416, value1) := by
  rw [input742_def, output742_def]
  kernel_rfl

theorem node743_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value414 value1 value2 = (output741, value415, value1))
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value415 value1 value2 = (output742, value416, value1)) : Flapjack.WordAlloc.removeDeadStructural input743 value414 value1 value2 = (output743, value416, value1) := by
  rw [input743_def, output743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output742_skip]
  kernel_rfl

theorem node744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input744 value416 value1 value2 = (output744, value417, value1) := by
  rw [input744_def, output744_def]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value417 value1 value2 = (output745, value418, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value416 value1 value2 = (output744, value417, value1))
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value417 value1 value2 = (output745, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input746 value416 value1 value2 = (output746, value418, value1) := by
  rw [input746_def, output746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output745_skip]
  kernel_rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value418 value1 value2 = (output747, value419, value1) := by
  rw [input747_def, output747_def]
  kernel_rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value419 value1 value2 = (output748, value420, value1) := by
  rw [input748_def, output748_def]
  kernel_rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value420 value1 value2 = (output749, value421, value1) := by
  rw [input749_def, output749_def]
  kernel_rfl

theorem node750_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value419 value1 value2 = (output748, value420, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value420 value1 value2 = (output749, value421, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value419 value1 value2 = (output750, value421, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value421 value1 value2 = (output751, value422, value1) := by
  rw [input751_def, output751_def]
  kernel_rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value422 value1 value2 = (output752, value423, value1) := by
  rw [input752_def, output752_def]
  kernel_rfl

theorem node753_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value421 value1 value2 = (output751, value422, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value422 value1 value2 = (output752, value423, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value421 value1 value2 = (output753, value423, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value423 value1 value2 = (output754, value424, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value424 value1 value2 = (output755, value425, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value423 value1 value2 = (output754, value424, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value424 value1 value2 = (output755, value425, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value423 value1 value2 = (output756, value425, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output755_skip]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value425 value1 value2 = (output757, value426, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value426 value1 value2 = (output758, value427, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value427 value1 value2 = (output759, value428, value1) := by
  rw [input759_def, output759_def]
  kernel_rfl

theorem node760_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value426 value1 value2 = (output758, value427, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value427 value1 value2 = (output759, value428, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value426 value1 value2 = (output760, value428, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input761 value428 value1 value2 = (output761, value429, value1) := by
  rw [input761_def, output761_def]
  kernel_rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value429 value1 value2 = (output762, value430, value1) := by
  rw [input762_def, output762_def]
  kernel_rfl

theorem node763_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value428 value1 value2 = (output761, value429, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value429 value1 value2 = (output762, value430, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value428 value1 value2 = (output763, value430, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input764 value430 value1 value2 = (output764, value431, value1) := by
  rw [input764_def, output764_def]
  kernel_rfl

theorem node765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input765 value431 value1 value2 = (output765, value432, value1) := by
  rw [input765_def, output765_def]
  kernel_rfl

theorem node766_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value430 value1 value2 = (output764, value431, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value431 value1 value2 = (output765, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value430 value1 value2 = (output766, value432, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value432 value1 value2 = (output767, value433, value1) := by
  rw [input767_def, output767_def]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages866.Parallel
