import InitECandidate.Proofs.DeadStages64.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages64.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value259 value1 value2 = (output512, value260, value1) := by
  rw [input512_def, output512_def]
  try (conv => lhs; cbv)
  try rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value260 value1 value2 = (output513, value261, value1) := by
  rw [input513_def, output513_def]
  try (conv => lhs; cbv)
  try rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value261 value1 value2 = (output514, value262, value1) := by
  rw [input514_def, output514_def]
  try (conv => lhs; cbv)
  try rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value262 value1 value2 = (output515, value4, value1) := by
  rw [input515_def, output515_def]
  try (conv => lhs; cbv)
  try rfl

theorem node516_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value261 value1 value2 = (output514, value262, value1))
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value262 value1 value2 = (output515, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input516 value261 value1 value2 = (output516, value4, value1) := by
  rw [input516_def, output516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  dsimp only
  rw [child515]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node517_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value260 value1 value2 = (output513, value261, value1))
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value261 value1 value2 = (output516, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input517 value260 value1 value2 = (output517, value4, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  dsimp only
  rw [child516]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node518_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value259 value1 value2 = (output512, value260, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value260 value1 value2 = (output517, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value259 value1 value2 = (output518, value4, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  dsimp only
  rw [child517]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value4 value1 value2 = (output519, value263, value1) := by
  rw [input519_def, output519_def]
  try (conv => lhs; cbv)
  try rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value263 value1 value2 = (output520, value264, value1) := by
  rw [input520_def, output520_def]
  try (conv => lhs; cbv)
  try rfl

theorem node521_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value4 value1 value2 = (output519, value263, value1))
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value263 value1 value2 = (output520, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input521 value4 value1 value2 = (output521, value264, value1) := by
  rw [input521_def, output521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  dsimp only
  rw [child520]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value264 value1 value2 = (output522, value265, value1) := by
  rw [input522_def, output522_def]
  try (conv => lhs; cbv)
  try rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value265 value1 value2 = (output523, value265, value1) := by
  rw [input523_def, output523_def]
  try (conv => lhs; cbv)
  try rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value265 value1 value2 = (output524, value266, value1) := by
  rw [input524_def, output524_def]
  try (conv => lhs; cbv)
  try rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value266 value1 value2 = (output525, value267, value1) := by
  rw [input525_def, output525_def]
  try (conv => lhs; cbv)
  try rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value267 value1 value2 = (output526, value268, value1) := by
  rw [input526_def, output526_def]
  try (conv => lhs; cbv)
  try rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value268 value1 value2 = (output527, value4, value1) := by
  rw [input527_def, output527_def]
  try (conv => lhs; cbv)
  try rfl

theorem node528_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value267 value1 value2 = (output526, value268, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value268 value1 value2 = (output527, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value267 value1 value2 = (output528, value4, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  dsimp only
  rw [child527]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node529_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value266 value1 value2 = (output525, value267, value1))
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value267 value1 value2 = (output528, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input529 value266 value1 value2 = (output529, value4, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  dsimp only
  rw [child528]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node530_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value265 value1 value2 = (output524, value266, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value266 value1 value2 = (output529, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value265 value1 value2 = (output530, value4, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  dsimp only
  rw [child529]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value4 value1 value2 = (output531, value269, value1) := by
  rw [input531_def, output531_def]
  try (conv => lhs; cbv)
  try rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value269 value1 value2 = (output532, value270, value1) := by
  rw [input532_def, output532_def]
  try (conv => lhs; cbv)
  try rfl

theorem node533_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value4 value1 value2 = (output531, value269, value1))
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value269 value1 value2 = (output532, value270, value1)) : Flapjack.WordAlloc.removeDeadStructural input533 value4 value1 value2 = (output533, value270, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  dsimp only
  rw [child532]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value270 value1 value2 = (output534, value271, value1) := by
  rw [input534_def, output534_def]
  try (conv => lhs; cbv)
  try rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value271 value1 value2 = (output535, value271, value1) := by
  rw [input535_def, output535_def]
  try (conv => lhs; cbv)
  try rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value271 value1 value2 = (output536, value272, value1) := by
  rw [input536_def, output536_def]
  try (conv => lhs; cbv)
  try rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value272 value1 value2 = (output537, value273, value1) := by
  rw [input537_def, output537_def]
  try (conv => lhs; cbv)
  try rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value273 value1 value2 = (output538, value274, value1) := by
  rw [input538_def, output538_def]
  try (conv => lhs; cbv)
  try rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value274 value1 value2 = (output539, value4, value1) := by
  rw [input539_def, output539_def]
  try (conv => lhs; cbv)
  try rfl

theorem node540_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value273 value1 value2 = (output538, value274, value1))
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value274 value1 value2 = (output539, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input540 value273 value1 value2 = (output540, value4, value1) := by
  rw [input540_def, output540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  dsimp only
  rw [child539]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node541_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value272 value1 value2 = (output537, value273, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value273 value1 value2 = (output540, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value272 value1 value2 = (output541, value4, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  dsimp only
  rw [child540]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node542_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value271 value1 value2 = (output536, value272, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value272 value1 value2 = (output541, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value271 value1 value2 = (output542, value4, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  dsimp only
  rw [child541]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value4 value1 value2 = (output543, value275, value1) := by
  rw [input543_def, output543_def]
  try (conv => lhs; cbv)
  try rfl

theorem node544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input544 value275 value1 value2 = (output544, value276, value1) := by
  rw [input544_def, output544_def]
  try (conv => lhs; cbv)
  try rfl

theorem node545_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value4 value1 value2 = (output543, value275, value1))
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value275 value1 value2 = (output544, value276, value1)) : Flapjack.WordAlloc.removeDeadStructural input545 value4 value1 value2 = (output545, value276, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  dsimp only
  rw [child544]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value276 value1 value2 = (output546, value277, value1) := by
  rw [input546_def, output546_def]
  try (conv => lhs; cbv)
  try rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value277 value1 value2 = (output547, value277, value1) := by
  rw [input547_def, output547_def]
  try (conv => lhs; cbv)
  try rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value277 value1 value2 = (output548, value278, value1) := by
  rw [input548_def, output548_def]
  try (conv => lhs; cbv)
  try rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value278 value1 value2 = (output549, value279, value1) := by
  rw [input549_def, output549_def]
  try (conv => lhs; cbv)
  try rfl

theorem node550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input550 value279 value1 value2 = (output550, value280, value1) := by
  rw [input550_def, output550_def]
  try (conv => lhs; cbv)
  try rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value280 value1 value2 = (output551, value4, value1) := by
  rw [input551_def, output551_def]
  try (conv => lhs; cbv)
  try rfl

theorem node552_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value279 value1 value2 = (output550, value280, value1))
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value280 value1 value2 = (output551, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input552 value279 value1 value2 = (output552, value4, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  dsimp only
  rw [child551]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node553_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value278 value1 value2 = (output549, value279, value1))
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value279 value1 value2 = (output552, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input553 value278 value1 value2 = (output553, value4, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  dsimp only
  rw [child552]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node554_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value277 value1 value2 = (output548, value278, value1))
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value278 value1 value2 = (output553, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input554 value277 value1 value2 = (output554, value4, value1) := by
  rw [input554_def, output554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  dsimp only
  rw [child553]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value4 value1 value2 = (output555, value281, value1) := by
  rw [input555_def, output555_def]
  try (conv => lhs; cbv)
  try rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value281 value1 value2 = (output556, value282, value1) := by
  rw [input556_def, output556_def]
  try (conv => lhs; cbv)
  try rfl

theorem node557_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value4 value1 value2 = (output555, value281, value1))
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value281 value1 value2 = (output556, value282, value1)) : Flapjack.WordAlloc.removeDeadStructural input557 value4 value1 value2 = (output557, value282, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  dsimp only
  rw [child556]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value282 value1 value2 = (output558, value283, value1) := by
  rw [input558_def, output558_def]
  try (conv => lhs; cbv)
  try rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value283 value1 value2 = (output559, value283, value1) := by
  rw [input559_def, output559_def]
  try (conv => lhs; cbv)
  try rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value283 value1 value2 = (output560, value284, value1) := by
  rw [input560_def, output560_def]
  try (conv => lhs; cbv)
  try rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value284 value1 value2 = (output561, value285, value1) := by
  rw [input561_def, output561_def]
  try (conv => lhs; cbv)
  try rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value285 value1 value2 = (output562, value286, value1) := by
  rw [input562_def, output562_def]
  try (conv => lhs; cbv)
  try rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value286 value1 value2 = (output563, value4, value1) := by
  rw [input563_def, output563_def]
  try (conv => lhs; cbv)
  try rfl

theorem node564_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value285 value1 value2 = (output562, value286, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value286 value1 value2 = (output563, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value285 value1 value2 = (output564, value4, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  dsimp only
  rw [child563]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node565_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value284 value1 value2 = (output561, value285, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value285 value1 value2 = (output564, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value284 value1 value2 = (output565, value4, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  dsimp only
  rw [child564]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node566_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value283 value1 value2 = (output560, value284, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value284 value1 value2 = (output565, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value283 value1 value2 = (output566, value4, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  dsimp only
  rw [child565]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value4 value1 value2 = (output567, value287, value1) := by
  rw [input567_def, output567_def]
  try (conv => lhs; cbv)
  try rfl

theorem node568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input568 value287 value1 value2 = (output568, value288, value1) := by
  rw [input568_def, output568_def]
  try (conv => lhs; cbv)
  try rfl

theorem node569_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value4 value1 value2 = (output567, value287, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value287 value1 value2 = (output568, value288, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value4 value1 value2 = (output569, value288, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  dsimp only
  rw [child568]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value288 value1 value2 = (output570, value289, value1) := by
  rw [input570_def, output570_def]
  try (conv => lhs; cbv)
  try rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value289 value1 value2 = (output571, value289, value1) := by
  rw [input571_def, output571_def]
  try (conv => lhs; cbv)
  try rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value289 value1 value2 = (output572, value290, value1) := by
  rw [input572_def, output572_def]
  try (conv => lhs; cbv)
  try rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value290 value1 value2 = (output573, value291, value1) := by
  rw [input573_def, output573_def]
  try (conv => lhs; cbv)
  try rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value291 value1 value2 = (output574, value292, value1) := by
  rw [input574_def, output574_def]
  try (conv => lhs; cbv)
  try rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value292 value1 value2 = (output575, value4, value1) := by
  rw [input575_def, output575_def]
  try (conv => lhs; cbv)
  try rfl

theorem node576_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value291 value1 value2 = (output574, value292, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value292 value1 value2 = (output575, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value291 value1 value2 = (output576, value4, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  dsimp only
  rw [child575]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node577_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value290 value1 value2 = (output573, value291, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value291 value1 value2 = (output576, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value290 value1 value2 = (output577, value4, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  dsimp only
  rw [child576]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node578_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value289 value1 value2 = (output572, value290, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value290 value1 value2 = (output577, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value289 value1 value2 = (output578, value4, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  dsimp only
  rw [child577]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input579 value4 value1 value2 = (output579, value293, value1) := by
  rw [input579_def, output579_def]
  try (conv => lhs; cbv)
  try rfl

theorem node580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input580 value293 value1 value2 = (output580, value294, value1) := by
  rw [input580_def, output580_def]
  try (conv => lhs; cbv)
  try rfl

theorem node581_cond_eq
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value4 value1 value2 = (output579, value293, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value293 value1 value2 = (output580, value294, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value4 value1 value2 = (output581, value294, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child579]
  dsimp only
  rw [child580]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input582 value294 value1 value2 = (output582, value295, value1) := by
  rw [input582_def, output582_def]
  try (conv => lhs; cbv)
  try rfl

theorem node583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input583 value295 value1 value2 = (output583, value295, value1) := by
  rw [input583_def, output583_def]
  try (conv => lhs; cbv)
  try rfl

theorem node584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input584 value295 value1 value2 = (output584, value296, value1) := by
  rw [input584_def, output584_def]
  try (conv => lhs; cbv)
  try rfl

theorem node585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input585 value296 value1 value2 = (output585, value297, value1) := by
  rw [input585_def, output585_def]
  try (conv => lhs; cbv)
  try rfl

theorem node586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input586 value297 value1 value2 = (output586, value298, value1) := by
  rw [input586_def, output586_def]
  try (conv => lhs; cbv)
  try rfl

theorem node587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input587 value298 value1 value2 = (output587, value4, value1) := by
  rw [input587_def, output587_def]
  try (conv => lhs; cbv)
  try rfl

theorem node588_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value297 value1 value2 = (output586, value298, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value298 value1 value2 = (output587, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value297 value1 value2 = (output588, value4, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  dsimp only
  rw [child587]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node589_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value296 value1 value2 = (output585, value297, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value297 value1 value2 = (output588, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value296 value1 value2 = (output589, value4, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  dsimp only
  rw [child588]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node590_cond_eq
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value295 value1 value2 = (output584, value296, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value296 value1 value2 = (output589, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value295 value1 value2 = (output590, value4, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child584]
  dsimp only
  rw [child589]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input591 value4 value1 value2 = (output591, value299, value1) := by
  rw [input591_def, output591_def]
  try (conv => lhs; cbv)
  try rfl

theorem node592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input592 value299 value1 value2 = (output592, value300, value1) := by
  rw [input592_def, output592_def]
  try (conv => lhs; cbv)
  try rfl

theorem node593_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value4 value1 value2 = (output591, value299, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value299 value1 value2 = (output592, value300, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value4 value1 value2 = (output593, value300, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  dsimp only
  rw [child592]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input594 value300 value1 value2 = (output594, value301, value1) := by
  rw [input594_def, output594_def]
  try (conv => lhs; cbv)
  try rfl

theorem node595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input595 value301 value1 value2 = (output595, value301, value1) := by
  rw [input595_def, output595_def]
  try (conv => lhs; cbv)
  try rfl

theorem node596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input596 value301 value1 value2 = (output596, value302, value1) := by
  rw [input596_def, output596_def]
  try (conv => lhs; cbv)
  try rfl

theorem node597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input597 value302 value1 value2 = (output597, value303, value1) := by
  rw [input597_def, output597_def]
  try (conv => lhs; cbv)
  try rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value303 value1 value2 = (output598, value304, value1) := by
  rw [input598_def, output598_def]
  try (conv => lhs; cbv)
  try rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value304 value1 value2 = (output599, value4, value1) := by
  rw [input599_def, output599_def]
  try (conv => lhs; cbv)
  try rfl

theorem node600_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value303 value1 value2 = (output598, value304, value1))
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value304 value1 value2 = (output599, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input600 value303 value1 value2 = (output600, value4, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  dsimp only
  rw [child599]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node601_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value302 value1 value2 = (output597, value303, value1))
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value303 value1 value2 = (output600, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input601 value302 value1 value2 = (output601, value4, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  dsimp only
  rw [child600]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node602_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value301 value1 value2 = (output596, value302, value1))
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value302 value1 value2 = (output601, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input602 value301 value1 value2 = (output602, value4, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  dsimp only
  rw [child601]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input603 value4 value1 value2 = (output603, value305, value1) := by
  rw [input603_def, output603_def]
  try (conv => lhs; cbv)
  try rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value305 value1 value2 = (output604, value306, value1) := by
  rw [input604_def, output604_def]
  try (conv => lhs; cbv)
  try rfl

theorem node605_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value4 value1 value2 = (output603, value305, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value305 value1 value2 = (output604, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value4 value1 value2 = (output605, value306, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  dsimp only
  rw [child604]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value306 value1 value2 = (output606, value307, value1) := by
  rw [input606_def, output606_def]
  try (conv => lhs; cbv)
  try rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value307 value1 value2 = (output607, value307, value1) := by
  rw [input607_def, output607_def]
  try (conv => lhs; cbv)
  try rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value307 value1 value2 = (output608, value308, value1) := by
  rw [input608_def, output608_def]
  try (conv => lhs; cbv)
  try rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value308 value1 value2 = (output609, value309, value1) := by
  rw [input609_def, output609_def]
  try (conv => lhs; cbv)
  try rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value309 value1 value2 = (output610, value310, value1) := by
  rw [input610_def, output610_def]
  try (conv => lhs; cbv)
  try rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value310 value1 value2 = (output611, value4, value1) := by
  rw [input611_def, output611_def]
  try (conv => lhs; cbv)
  try rfl

theorem node612_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value309 value1 value2 = (output610, value310, value1))
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value310 value1 value2 = (output611, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input612 value309 value1 value2 = (output612, value4, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  dsimp only
  rw [child611]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node613_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value308 value1 value2 = (output609, value309, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value309 value1 value2 = (output612, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value308 value1 value2 = (output613, value4, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  dsimp only
  rw [child612]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node614_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value307 value1 value2 = (output608, value308, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value308 value1 value2 = (output613, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value307 value1 value2 = (output614, value4, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  dsimp only
  rw [child613]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input615 value4 value1 value2 = (output615, value311, value1) := by
  rw [input615_def, output615_def]
  try (conv => lhs; cbv)
  try rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value311 value1 value2 = (output616, value312, value1) := by
  rw [input616_def, output616_def]
  try (conv => lhs; cbv)
  try rfl

theorem node617_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value4 value1 value2 = (output615, value311, value1))
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value311 value1 value2 = (output616, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input617 value4 value1 value2 = (output617, value312, value1) := by
  rw [input617_def, output617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  dsimp only
  rw [child616]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value312 value1 value2 = (output618, value313, value1) := by
  rw [input618_def, output618_def]
  try (conv => lhs; cbv)
  try rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value313 value1 value2 = (output619, value313, value1) := by
  rw [input619_def, output619_def]
  try (conv => lhs; cbv)
  try rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value313 value1 value2 = (output620, value314, value1) := by
  rw [input620_def, output620_def]
  try (conv => lhs; cbv)
  try rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value314 value1 value2 = (output621, value315, value1) := by
  rw [input621_def, output621_def]
  try (conv => lhs; cbv)
  try rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value315 value1 value2 = (output622, value316, value1) := by
  rw [input622_def, output622_def]
  try (conv => lhs; cbv)
  try rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value316 value1 value2 = (output623, value4, value1) := by
  rw [input623_def, output623_def]
  try (conv => lhs; cbv)
  try rfl

theorem node624_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value315 value1 value2 = (output622, value316, value1))
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value316 value1 value2 = (output623, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input624 value315 value1 value2 = (output624, value4, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  dsimp only
  rw [child623]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node625_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value314 value1 value2 = (output621, value315, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value315 value1 value2 = (output624, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value314 value1 value2 = (output625, value4, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  dsimp only
  rw [child624]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node626_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value313 value1 value2 = (output620, value314, value1))
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value314 value1 value2 = (output625, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input626 value313 value1 value2 = (output626, value4, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  dsimp only
  rw [child625]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value4 value1 value2 = (output627, value317, value1) := by
  rw [input627_def, output627_def]
  try (conv => lhs; cbv)
  try rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value317 value1 value2 = (output628, value318, value1) := by
  rw [input628_def, output628_def]
  try (conv => lhs; cbv)
  try rfl

theorem node629_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value4 value1 value2 = (output627, value317, value1))
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value317 value1 value2 = (output628, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input629 value4 value1 value2 = (output629, value318, value1) := by
  rw [input629_def, output629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  dsimp only
  rw [child628]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value318 value1 value2 = (output630, value319, value1) := by
  rw [input630_def, output630_def]
  try (conv => lhs; cbv)
  try rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value319 value1 value2 = (output631, value319, value1) := by
  rw [input631_def, output631_def]
  try (conv => lhs; cbv)
  try rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value319 value1 value2 = (output632, value320, value1) := by
  rw [input632_def, output632_def]
  try (conv => lhs; cbv)
  try rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value320 value1 value2 = (output633, value321, value1) := by
  rw [input633_def, output633_def]
  try (conv => lhs; cbv)
  try rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value321 value1 value2 = (output634, value322, value1) := by
  rw [input634_def, output634_def]
  try (conv => lhs; cbv)
  try rfl

theorem node635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input635 value322 value1 value2 = (output635, value4, value1) := by
  rw [input635_def, output635_def]
  try (conv => lhs; cbv)
  try rfl

theorem node636_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value321 value1 value2 = (output634, value322, value1))
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value322 value1 value2 = (output635, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input636 value321 value1 value2 = (output636, value4, value1) := by
  rw [input636_def, output636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  dsimp only
  rw [child635]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node637_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value320 value1 value2 = (output633, value321, value1))
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value321 value1 value2 = (output636, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input637 value320 value1 value2 = (output637, value4, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  dsimp only
  rw [child636]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node638_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value319 value1 value2 = (output632, value320, value1))
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value320 value1 value2 = (output637, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input638 value319 value1 value2 = (output638, value4, value1) := by
  rw [input638_def, output638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  dsimp only
  rw [child637]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value4 value1 value2 = (output639, value323, value1) := by
  rw [input639_def, output639_def]
  try (conv => lhs; cbv)
  try rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value323 value1 value2 = (output640, value324, value1) := by
  rw [input640_def, output640_def]
  try (conv => lhs; cbv)
  try rfl

theorem node641_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value4 value1 value2 = (output639, value323, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value323 value1 value2 = (output640, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value4 value1 value2 = (output641, value324, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  dsimp only
  rw [child640]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input642 value324 value1 value2 = (output642, value325, value1) := by
  rw [input642_def, output642_def]
  try (conv => lhs; cbv)
  try rfl

theorem node643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input643 value325 value1 value2 = (output643, value325, value1) := by
  rw [input643_def, output643_def]
  try (conv => lhs; cbv)
  try rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value325 value1 value2 = (output644, value326, value1) := by
  rw [input644_def, output644_def]
  try (conv => lhs; cbv)
  try rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value326 value1 value2 = (output645, value327, value1) := by
  rw [input645_def, output645_def]
  try (conv => lhs; cbv)
  try rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value327 value1 value2 = (output646, value328, value1) := by
  rw [input646_def, output646_def]
  try (conv => lhs; cbv)
  try rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value328 value1 value2 = (output647, value4, value1) := by
  rw [input647_def, output647_def]
  try (conv => lhs; cbv)
  try rfl

theorem node648_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value327 value1 value2 = (output646, value328, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value328 value1 value2 = (output647, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value327 value1 value2 = (output648, value4, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  dsimp only
  rw [child647]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node649_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value326 value1 value2 = (output645, value327, value1))
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value327 value1 value2 = (output648, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input649 value326 value1 value2 = (output649, value4, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  dsimp only
  rw [child648]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node650_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value325 value1 value2 = (output644, value326, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value326 value1 value2 = (output649, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value325 value1 value2 = (output650, value4, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  dsimp only
  rw [child649]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input651 value4 value1 value2 = (output651, value329, value1) := by
  rw [input651_def, output651_def]
  try (conv => lhs; cbv)
  try rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value329 value1 value2 = (output652, value330, value1) := by
  rw [input652_def, output652_def]
  try (conv => lhs; cbv)
  try rfl

theorem node653_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value4 value1 value2 = (output651, value329, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value329 value1 value2 = (output652, value330, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value4 value1 value2 = (output653, value330, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  dsimp only
  rw [child652]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value330 value1 value2 = (output654, value331, value1) := by
  rw [input654_def, output654_def]
  try (conv => lhs; cbv)
  try rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value331 value1 value2 = (output655, value331, value1) := by
  rw [input655_def, output655_def]
  try (conv => lhs; cbv)
  try rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value331 value1 value2 = (output656, value332, value1) := by
  rw [input656_def, output656_def]
  try (conv => lhs; cbv)
  try rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value332 value1 value2 = (output657, value333, value1) := by
  rw [input657_def, output657_def]
  try (conv => lhs; cbv)
  try rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value333 value1 value2 = (output658, value334, value1) := by
  rw [input658_def, output658_def]
  try (conv => lhs; cbv)
  try rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value334 value1 value2 = (output659, value4, value1) := by
  rw [input659_def, output659_def]
  try (conv => lhs; cbv)
  try rfl

theorem node660_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value333 value1 value2 = (output658, value334, value1))
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value334 value1 value2 = (output659, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input660 value333 value1 value2 = (output660, value4, value1) := by
  rw [input660_def, output660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  dsimp only
  rw [child659]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node661_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value332 value1 value2 = (output657, value333, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value333 value1 value2 = (output660, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value332 value1 value2 = (output661, value4, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  dsimp only
  rw [child660]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node662_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value331 value1 value2 = (output656, value332, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value332 value1 value2 = (output661, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value331 value1 value2 = (output662, value4, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  dsimp only
  rw [child661]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value4 value1 value2 = (output663, value335, value1) := by
  rw [input663_def, output663_def]
  try (conv => lhs; cbv)
  try rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value335 value1 value2 = (output664, value336, value1) := by
  rw [input664_def, output664_def]
  try (conv => lhs; cbv)
  try rfl

theorem node665_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value4 value1 value2 = (output663, value335, value1))
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value335 value1 value2 = (output664, value336, value1)) : Flapjack.WordAlloc.removeDeadStructural input665 value4 value1 value2 = (output665, value336, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  dsimp only
  rw [child664]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value336 value1 value2 = (output666, value337, value1) := by
  rw [input666_def, output666_def]
  try (conv => lhs; cbv)
  try rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value337 value1 value2 = (output667, value337, value1) := by
  rw [input667_def, output667_def]
  try (conv => lhs; cbv)
  try rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value337 value1 value2 = (output668, value338, value1) := by
  rw [input668_def, output668_def]
  try (conv => lhs; cbv)
  try rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value338 value1 value2 = (output669, value339, value1) := by
  rw [input669_def, output669_def]
  try (conv => lhs; cbv)
  try rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value339 value1 value2 = (output670, value340, value1) := by
  rw [input670_def, output670_def]
  try (conv => lhs; cbv)
  try rfl

theorem node671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input671 value340 value1 value2 = (output671, value4, value1) := by
  rw [input671_def, output671_def]
  try (conv => lhs; cbv)
  try rfl

theorem node672_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value339 value1 value2 = (output670, value340, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value340 value1 value2 = (output671, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value339 value1 value2 = (output672, value4, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  dsimp only
  rw [child671]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node673_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value338 value1 value2 = (output669, value339, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value339 value1 value2 = (output672, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value338 value1 value2 = (output673, value4, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  dsimp only
  rw [child672]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node674_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value337 value1 value2 = (output668, value338, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value338 value1 value2 = (output673, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value337 value1 value2 = (output674, value4, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  dsimp only
  rw [child673]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value4 value1 value2 = (output675, value341, value1) := by
  rw [input675_def, output675_def]
  try (conv => lhs; cbv)
  try rfl

theorem node676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input676 value341 value1 value2 = (output676, value342, value1) := by
  rw [input676_def, output676_def]
  try (conv => lhs; cbv)
  try rfl

theorem node677_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value4 value1 value2 = (output675, value341, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value341 value1 value2 = (output676, value342, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value4 value1 value2 = (output677, value342, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  dsimp only
  rw [child676]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input678 value342 value1 value2 = (output678, value343, value1) := by
  rw [input678_def, output678_def]
  try (conv => lhs; cbv)
  try rfl

theorem node679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input679 value343 value1 value2 = (output679, value343, value1) := by
  rw [input679_def, output679_def]
  try (conv => lhs; cbv)
  try rfl

theorem node680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input680 value343 value1 value2 = (output680, value344, value1) := by
  rw [input680_def, output680_def]
  try (conv => lhs; cbv)
  try rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value344 value1 value2 = (output681, value345, value1) := by
  rw [input681_def, output681_def]
  try (conv => lhs; cbv)
  try rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value345 value1 value2 = (output682, value346, value1) := by
  rw [input682_def, output682_def]
  try (conv => lhs; cbv)
  try rfl

theorem node683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input683 value346 value1 value2 = (output683, value4, value1) := by
  rw [input683_def, output683_def]
  try (conv => lhs; cbv)
  try rfl

theorem node684_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value345 value1 value2 = (output682, value346, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value346 value1 value2 = (output683, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value345 value1 value2 = (output684, value4, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  dsimp only
  rw [child683]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node685_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value344 value1 value2 = (output681, value345, value1))
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value345 value1 value2 = (output684, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input685 value344 value1 value2 = (output685, value4, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  dsimp only
  rw [child684]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node686_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value343 value1 value2 = (output680, value344, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value344 value1 value2 = (output685, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value343 value1 value2 = (output686, value4, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  dsimp only
  rw [child685]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value4 value1 value2 = (output687, value347, value1) := by
  rw [input687_def, output687_def]
  try (conv => lhs; cbv)
  try rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value347 value1 value2 = (output688, value348, value1) := by
  rw [input688_def, output688_def]
  try (conv => lhs; cbv)
  try rfl

theorem node689_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value4 value1 value2 = (output687, value347, value1))
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value347 value1 value2 = (output688, value348, value1)) : Flapjack.WordAlloc.removeDeadStructural input689 value4 value1 value2 = (output689, value348, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  dsimp only
  rw [child688]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value348 value1 value2 = (output690, value349, value1) := by
  rw [input690_def, output690_def]
  try (conv => lhs; cbv)
  try rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value349 value1 value2 = (output691, value349, value1) := by
  rw [input691_def, output691_def]
  try (conv => lhs; cbv)
  try rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value349 value1 value2 = (output692, value350, value1) := by
  rw [input692_def, output692_def]
  try (conv => lhs; cbv)
  try rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value350 value1 value2 = (output693, value351, value1) := by
  rw [input693_def, output693_def]
  try (conv => lhs; cbv)
  try rfl

theorem node694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input694 value351 value1 value2 = (output694, value352, value1) := by
  rw [input694_def, output694_def]
  try (conv => lhs; cbv)
  try rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value352 value1 value2 = (output695, value4, value1) := by
  rw [input695_def, output695_def]
  try (conv => lhs; cbv)
  try rfl

theorem node696_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value351 value1 value2 = (output694, value352, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value352 value1 value2 = (output695, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input696 value351 value1 value2 = (output696, value4, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  dsimp only
  rw [child695]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node697_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value350 value1 value2 = (output693, value351, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value351 value1 value2 = (output696, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input697 value350 value1 value2 = (output697, value4, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  dsimp only
  rw [child696]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node698_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value349 value1 value2 = (output692, value350, value1))
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value350 value1 value2 = (output697, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input698 value349 value1 value2 = (output698, value4, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  dsimp only
  rw [child697]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value4 value1 value2 = (output699, value353, value1) := by
  rw [input699_def, output699_def]
  try (conv => lhs; cbv)
  try rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value353 value1 value2 = (output700, value354, value1) := by
  rw [input700_def, output700_def]
  try (conv => lhs; cbv)
  try rfl

theorem node701_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value4 value1 value2 = (output699, value353, value1))
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value353 value1 value2 = (output700, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input701 value4 value1 value2 = (output701, value354, value1) := by
  rw [input701_def, output701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  dsimp only
  rw [child700]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value354 value1 value2 = (output702, value355, value1) := by
  rw [input702_def, output702_def]
  try (conv => lhs; cbv)
  try rfl

theorem node703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input703 value355 value1 value2 = (output703, value355, value1) := by
  rw [input703_def, output703_def]
  try (conv => lhs; cbv)
  try rfl

theorem node704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input704 value355 value1 value2 = (output704, value356, value1) := by
  rw [input704_def, output704_def]
  try (conv => lhs; cbv)
  try rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value356 value1 value2 = (output705, value357, value1) := by
  rw [input705_def, output705_def]
  try (conv => lhs; cbv)
  try rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value357 value1 value2 = (output706, value358, value1) := by
  rw [input706_def, output706_def]
  try (conv => lhs; cbv)
  try rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value358 value1 value2 = (output707, value4, value1) := by
  rw [input707_def, output707_def]
  try (conv => lhs; cbv)
  try rfl

theorem node708_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value357 value1 value2 = (output706, value358, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value358 value1 value2 = (output707, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value357 value1 value2 = (output708, value4, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  dsimp only
  rw [child707]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node709_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value356 value1 value2 = (output705, value357, value1))
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value357 value1 value2 = (output708, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input709 value356 value1 value2 = (output709, value4, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  dsimp only
  rw [child708]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node710_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value355 value1 value2 = (output704, value356, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value356 value1 value2 = (output709, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value355 value1 value2 = (output710, value4, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  dsimp only
  rw [child709]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input711 value4 value1 value2 = (output711, value359, value1) := by
  rw [input711_def, output711_def]
  try (conv => lhs; cbv)
  try rfl

theorem node712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input712 value359 value1 value2 = (output712, value360, value1) := by
  rw [input712_def, output712_def]
  try (conv => lhs; cbv)
  try rfl

theorem node713_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value4 value1 value2 = (output711, value359, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value359 value1 value2 = (output712, value360, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value4 value1 value2 = (output713, value360, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child711]
  dsimp only
  rw [child712]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value360 value1 value2 = (output714, value361, value1) := by
  rw [input714_def, output714_def]
  try (conv => lhs; cbv)
  try rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value361 value1 value2 = (output715, value361, value1) := by
  rw [input715_def, output715_def]
  try (conv => lhs; cbv)
  try rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value361 value1 value2 = (output716, value362, value1) := by
  rw [input716_def, output716_def]
  try (conv => lhs; cbv)
  try rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value362 value1 value2 = (output717, value363, value1) := by
  rw [input717_def, output717_def]
  try (conv => lhs; cbv)
  try rfl

theorem node718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input718 value363 value1 value2 = (output718, value364, value1) := by
  rw [input718_def, output718_def]
  try (conv => lhs; cbv)
  try rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value364 value1 value2 = (output719, value4, value1) := by
  rw [input719_def, output719_def]
  try (conv => lhs; cbv)
  try rfl

theorem node720_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value363 value1 value2 = (output718, value364, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value364 value1 value2 = (output719, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value363 value1 value2 = (output720, value4, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  dsimp only
  rw [child719]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node721_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value362 value1 value2 = (output717, value363, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value363 value1 value2 = (output720, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value362 value1 value2 = (output721, value4, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  dsimp only
  rw [child720]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node722_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value361 value1 value2 = (output716, value362, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value362 value1 value2 = (output721, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value361 value1 value2 = (output722, value4, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  dsimp only
  rw [child721]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value4 value1 value2 = (output723, value365, value1) := by
  rw [input723_def, output723_def]
  try (conv => lhs; cbv)
  try rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value365 value1 value2 = (output724, value366, value1) := by
  rw [input724_def, output724_def]
  try (conv => lhs; cbv)
  try rfl

theorem node725_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value4 value1 value2 = (output723, value365, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value365 value1 value2 = (output724, value366, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value4 value1 value2 = (output725, value366, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  dsimp only
  rw [child724]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input726 value366 value1 value2 = (output726, value367, value1) := by
  rw [input726_def, output726_def]
  try (conv => lhs; cbv)
  try rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value367 value1 value2 = (output727, value367, value1) := by
  rw [input727_def, output727_def]
  try (conv => lhs; cbv)
  try rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value367 value1 value2 = (output728, value368, value1) := by
  rw [input728_def, output728_def]
  try (conv => lhs; cbv)
  try rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value368 value1 value2 = (output729, value369, value1) := by
  rw [input729_def, output729_def]
  try (conv => lhs; cbv)
  try rfl

theorem node730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input730 value369 value1 value2 = (output730, value370, value1) := by
  rw [input730_def, output730_def]
  try (conv => lhs; cbv)
  try rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value370 value1 value2 = (output731, value4, value1) := by
  rw [input731_def, output731_def]
  try (conv => lhs; cbv)
  try rfl

theorem node732_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value369 value1 value2 = (output730, value370, value1))
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value370 value1 value2 = (output731, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input732 value369 value1 value2 = (output732, value4, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  dsimp only
  rw [child731]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node733_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value368 value1 value2 = (output729, value369, value1))
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value369 value1 value2 = (output732, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input733 value368 value1 value2 = (output733, value4, value1) := by
  rw [input733_def, output733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  dsimp only
  rw [child732]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node734_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value367 value1 value2 = (output728, value368, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value368 value1 value2 = (output733, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value367 value1 value2 = (output734, value4, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  dsimp only
  rw [child733]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value4 value1 value2 = (output735, value371, value1) := by
  rw [input735_def, output735_def]
  try (conv => lhs; cbv)
  try rfl

theorem node736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input736 value371 value1 value2 = (output736, value372, value1) := by
  rw [input736_def, output736_def]
  try (conv => lhs; cbv)
  try rfl

theorem node737_cond_eq
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value4 value1 value2 = (output735, value371, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value371 value1 value2 = (output736, value372, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value4 value1 value2 = (output737, value372, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child735]
  dsimp only
  rw [child736]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input738 value372 value1 value2 = (output738, value373, value1) := by
  rw [input738_def, output738_def]
  try (conv => lhs; cbv)
  try rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value373 value1 value2 = (output739, value373, value1) := by
  rw [input739_def, output739_def]
  try (conv => lhs; cbv)
  try rfl

theorem node740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input740 value373 value1 value2 = (output740, value374, value1) := by
  rw [input740_def, output740_def]
  try (conv => lhs; cbv)
  try rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value374 value1 value2 = (output741, value375, value1) := by
  rw [input741_def, output741_def]
  try (conv => lhs; cbv)
  try rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value375 value1 value2 = (output742, value376, value1) := by
  rw [input742_def, output742_def]
  try (conv => lhs; cbv)
  try rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value376 value1 value2 = (output743, value4, value1) := by
  rw [input743_def, output743_def]
  try (conv => lhs; cbv)
  try rfl

theorem node744_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value375 value1 value2 = (output742, value376, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value376 value1 value2 = (output743, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value375 value1 value2 = (output744, value4, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  dsimp only
  rw [child743]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node745_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value374 value1 value2 = (output741, value375, value1))
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value375 value1 value2 = (output744, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input745 value374 value1 value2 = (output745, value4, value1) := by
  rw [input745_def, output745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  dsimp only
  rw [child744]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node746_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value373 value1 value2 = (output740, value374, value1))
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value374 value1 value2 = (output745, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input746 value373 value1 value2 = (output746, value4, value1) := by
  rw [input746_def, output746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  dsimp only
  rw [child745]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value4 value1 value2 = (output747, value377, value1) := by
  rw [input747_def, output747_def]
  try (conv => lhs; cbv)
  try rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value377 value1 value2 = (output748, value378, value1) := by
  rw [input748_def, output748_def]
  try (conv => lhs; cbv)
  try rfl

theorem node749_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value4 value1 value2 = (output747, value377, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value377 value1 value2 = (output748, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value4 value1 value2 = (output749, value378, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  dsimp only
  rw [child748]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input750 value378 value1 value2 = (output750, value379, value1) := by
  rw [input750_def, output750_def]
  try (conv => lhs; cbv)
  try rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value379 value1 value2 = (output751, value379, value1) := by
  rw [input751_def, output751_def]
  try (conv => lhs; cbv)
  try rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value379 value1 value2 = (output752, value380, value1) := by
  rw [input752_def, output752_def]
  try (conv => lhs; cbv)
  try rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value380 value1 value2 = (output753, value381, value1) := by
  rw [input753_def, output753_def]
  try (conv => lhs; cbv)
  try rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value381 value1 value2 = (output754, value382, value1) := by
  rw [input754_def, output754_def]
  try (conv => lhs; cbv)
  try rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value382 value1 value2 = (output755, value4, value1) := by
  rw [input755_def, output755_def]
  try (conv => lhs; cbv)
  try rfl

theorem node756_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value381 value1 value2 = (output754, value382, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value382 value1 value2 = (output755, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value381 value1 value2 = (output756, value4, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  dsimp only
  rw [child755]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node757_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value380 value1 value2 = (output753, value381, value1))
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value381 value1 value2 = (output756, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input757 value380 value1 value2 = (output757, value4, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  dsimp only
  rw [child756]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node758_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value379 value1 value2 = (output752, value380, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value380 value1 value2 = (output757, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value379 value1 value2 = (output758, value4, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  dsimp only
  rw [child757]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value4 value1 value2 = (output759, value383, value1) := by
  rw [input759_def, output759_def]
  try (conv => lhs; cbv)
  try rfl

theorem node760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input760 value383 value1 value2 = (output760, value384, value1) := by
  rw [input760_def, output760_def]
  try (conv => lhs; cbv)
  try rfl

theorem node761_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value4 value1 value2 = (output759, value383, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value383 value1 value2 = (output760, value384, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value4 value1 value2 = (output761, value384, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  dsimp only
  rw [child760]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value384 value1 value2 = (output762, value385, value1) := by
  rw [input762_def, output762_def]
  try (conv => lhs; cbv)
  try rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value385 value1 value2 = (output763, value385, value1) := by
  rw [input763_def, output763_def]
  try (conv => lhs; cbv)
  try rfl

theorem node764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input764 value385 value1 value2 = (output764, value386, value1) := by
  rw [input764_def, output764_def]
  try (conv => lhs; cbv)
  try rfl

theorem node765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input765 value386 value1 value2 = (output765, value387, value1) := by
  rw [input765_def, output765_def]
  try (conv => lhs; cbv)
  try rfl

theorem node766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input766 value387 value1 value2 = (output766, value388, value1) := by
  rw [input766_def, output766_def]
  try (conv => lhs; cbv)
  try rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value388 value1 value2 = (output767, value4, value1) := by
  rw [input767_def, output767_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages64.Parallel
