import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node512_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value260 value1 value2 = (output510, value261, value1))
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value261 value1 value2 = (output511, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input512 value260 value1 value2 = (output512, value5, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  dsimp only
  rw [child511]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output511_skip]
  kernel_rfl

theorem node513_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value259 value1 value2 = (output509, value260, value1))
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value260 value1 value2 = (output512, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input513 value259 value1 value2 = (output513, value5, value1) := by
  rw [input513_def, output513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  dsimp only
  rw [child512]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output512_skip]
  kernel_rfl

theorem node514_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value258 value1 value2 = (output508, value259, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value259 value1 value2 = (output513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value258 value1 value2 = (output514, value5, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  dsimp only
  rw [child513]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value256 value1 value2 = (output507, value258, value1))
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value258 value1 value2 = (output514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input515 value256 value1 value2 = (output515, value5, value1) := by
  rw [input515_def, output515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  dsimp only
  rw [child514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output514_skip]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value5 value1 value2 = (output516, value262, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value262 value1 value2 = (output517, value263, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value5 value1 value2 = (output516, value262, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value262 value1 value2 = (output517, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value5 value1 value2 = (output518, value263, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  dsimp only
  rw [child517]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input519 value263 value1 value2 = (output519, value264, value1) := by
  rw [input519_def, output519_def]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value264 value1 value2 = (output520, value264, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value264 value1 value2 = (output521, value265, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value265 value1 value2 = (output522, value266, value1) := by
  rw [input522_def, output522_def]
  kernel_rfl

theorem node523_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value264 value1 value2 = (output521, value265, value1))
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value265 value1 value2 = (output522, value266, value1)) : Flapjack.WordAlloc.removeDeadStructural input523 value264 value1 value2 = (output523, value266, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  dsimp only
  rw [child522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output522_skip]
  kernel_rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value266 value1 value2 = (output524, value267, value1) := by
  rw [input524_def, output524_def]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value267 value1 value2 = (output525, value268, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value268 value1 value2 = (output526, value269, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value269 value1 value2 = (output527, value5, value1) := by
  rw [input527_def, output527_def]
  kernel_rfl

theorem node528_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value268 value1 value2 = (output526, value269, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value269 value1 value2 = (output527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value268 value1 value2 = (output528, value5, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  dsimp only
  rw [child527]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output527_skip]
  kernel_rfl

theorem node529_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value267 value1 value2 = (output525, value268, value1))
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value268 value1 value2 = (output528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input529 value267 value1 value2 = (output529, value5, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  dsimp only
  rw [child528]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output528_skip]
  kernel_rfl

theorem node530_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value266 value1 value2 = (output524, value267, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value267 value1 value2 = (output529, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value266 value1 value2 = (output530, value5, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  dsimp only
  rw [child529]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value264 value1 value2 = (output523, value266, value1))
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value266 value1 value2 = (output530, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input531 value264 value1 value2 = (output531, value5, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  dsimp only
  rw [child530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output530_skip]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value5 value1 value2 = (output532, value270, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value270 value1 value2 = (output533, value271, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value5 value1 value2 = (output532, value270, value1))
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value270 value1 value2 = (output533, value271, value1)) : Flapjack.WordAlloc.removeDeadStructural input534 value5 value1 value2 = (output534, value271, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  dsimp only
  rw [child533]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output533_skip]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value271 value1 value2 = (output535, value272, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value272 value1 value2 = (output536, value272, value1) := by
  rw [input536_def, output536_def]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value272 value1 value2 = (output537, value273, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value273 value1 value2 = (output538, value274, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value272 value1 value2 = (output537, value273, value1))
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value273 value1 value2 = (output538, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input539 value272 value1 value2 = (output539, value274, value1) := by
  rw [input539_def, output539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  dsimp only
  rw [child538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output538_skip]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value274 value1 value2 = (output540, value275, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input541 value275 value1 value2 = (output541, value276, value1) := by
  rw [input541_def, output541_def]
  kernel_rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value276 value1 value2 = (output542, value277, value1) := by
  rw [input542_def, output542_def]
  kernel_rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value277 value1 value2 = (output543, value5, value1) := by
  rw [input543_def, output543_def]
  kernel_rfl

theorem node544_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value276 value1 value2 = (output542, value277, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value277 value1 value2 = (output543, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value276 value1 value2 = (output544, value5, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  dsimp only
  rw [child543]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value275 value1 value2 = (output541, value276, value1))
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value276 value1 value2 = (output544, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input545 value275 value1 value2 = (output545, value5, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  dsimp only
  rw [child544]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output544_skip]
  kernel_rfl

theorem node546_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value274 value1 value2 = (output540, value275, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value275 value1 value2 = (output545, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value274 value1 value2 = (output546, value5, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  dsimp only
  rw [child545]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value272 value1 value2 = (output539, value274, value1))
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value274 value1 value2 = (output546, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input547 value272 value1 value2 = (output547, value5, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  dsimp only
  rw [child546]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output546_skip]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value5 value1 value2 = (output548, value278, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value278 value1 value2 = (output549, value279, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value5 value1 value2 = (output548, value278, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value278 value1 value2 = (output549, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value5 value1 value2 = (output550, value279, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  dsimp only
  rw [child549]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value279 value1 value2 = (output551, value280, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value280 value1 value2 = (output552, value280, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value280 value1 value2 = (output553, value281, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value281 value1 value2 = (output554, value282, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value280 value1 value2 = (output553, value281, value1))
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value281 value1 value2 = (output554, value282, value1)) : Flapjack.WordAlloc.removeDeadStructural input555 value280 value1 value2 = (output555, value282, value1) := by
  rw [input555_def, output555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  dsimp only
  rw [child554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output554_skip]
  kernel_rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value282 value1 value2 = (output556, value283, value1) := by
  rw [input556_def, output556_def]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value283 value1 value2 = (output557, value284, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value284 value1 value2 = (output558, value285, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value285 value1 value2 = (output559, value5, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value284 value1 value2 = (output558, value285, value1))
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value285 value1 value2 = (output559, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input560 value284 value1 value2 = (output560, value5, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  dsimp only
  rw [child559]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output559_skip]
  kernel_rfl

theorem node561_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value283 value1 value2 = (output557, value284, value1))
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value284 value1 value2 = (output560, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input561 value283 value1 value2 = (output561, value5, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  dsimp only
  rw [child560]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output560_skip]
  kernel_rfl

theorem node562_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value282 value1 value2 = (output556, value283, value1))
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value283 value1 value2 = (output561, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input562 value282 value1 value2 = (output562, value5, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  dsimp only
  rw [child561]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output561_skip]
  kernel_rfl

theorem node563_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value280 value1 value2 = (output555, value282, value1))
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value282 value1 value2 = (output562, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input563 value280 value1 value2 = (output563, value5, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  dsimp only
  rw [child562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output562_skip]
  kernel_rfl

theorem node564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input564 value5 value1 value2 = (output564, value286, value1) := by
  rw [input564_def, output564_def]
  kernel_rfl

theorem node565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input565 value286 value1 value2 = (output565, value287, value1) := by
  rw [input565_def, output565_def]
  kernel_rfl

theorem node566_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value5 value1 value2 = (output564, value286, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value286 value1 value2 = (output565, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value5 value1 value2 = (output566, value287, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  dsimp only
  rw [child565]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output564_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value287 value1 value2 = (output567, value288, value1) := by
  rw [input567_def, output567_def]
  kernel_rfl

theorem node568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input568 value288 value1 value2 = (output568, value288, value1) := by
  rw [input568_def, output568_def]
  kernel_rfl

theorem node569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input569 value288 value1 value2 = (output569, value289, value1) := by
  rw [input569_def, output569_def]
  kernel_rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value289 value1 value2 = (output570, value290, value1) := by
  rw [input570_def, output570_def]
  kernel_rfl

theorem node571_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value288 value1 value2 = (output569, value289, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value289 value1 value2 = (output570, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value288 value1 value2 = (output571, value290, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  dsimp only
  rw [child570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value290 value1 value2 = (output572, value291, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value291 value1 value2 = (output573, value292, value1) := by
  rw [input573_def, output573_def]
  kernel_rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value292 value1 value2 = (output574, value293, value1) := by
  rw [input574_def, output574_def]
  kernel_rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value293 value1 value2 = (output575, value5, value1) := by
  rw [input575_def, output575_def]
  kernel_rfl

theorem node576_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value292 value1 value2 = (output574, value293, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value293 value1 value2 = (output575, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value292 value1 value2 = (output576, value5, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  dsimp only
  rw [child575]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value291 value1 value2 = (output573, value292, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value292 value1 value2 = (output576, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value291 value1 value2 = (output577, value5, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  dsimp only
  rw [child576]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value290 value1 value2 = (output572, value291, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value291 value1 value2 = (output577, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value290 value1 value2 = (output578, value5, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  dsimp only
  rw [child577]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value288 value1 value2 = (output571, value290, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value290 value1 value2 = (output578, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value288 value1 value2 = (output579, value5, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  dsimp only
  rw [child578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input580 value5 value1 value2 = (output580, value294, value1) := by
  rw [input580_def, output580_def]
  kernel_rfl

theorem node581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input581 value294 value1 value2 = (output581, value295, value1) := by
  rw [input581_def, output581_def]
  kernel_rfl

theorem node582_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value5 value1 value2 = (output580, value294, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value294 value1 value2 = (output581, value295, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value5 value1 value2 = (output582, value295, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  dsimp only
  rw [child581]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input583 value295 value1 value2 = (output583, value296, value1) := by
  rw [input583_def, output583_def]
  kernel_rfl

theorem node584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input584 value296 value1 value2 = (output584, value296, value1) := by
  rw [input584_def, output584_def]
  kernel_rfl

theorem node585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input585 value296 value1 value2 = (output585, value297, value1) := by
  rw [input585_def, output585_def]
  kernel_rfl

theorem node586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input586 value297 value1 value2 = (output586, value298, value1) := by
  rw [input586_def, output586_def]
  kernel_rfl

theorem node587_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value296 value1 value2 = (output585, value297, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value297 value1 value2 = (output586, value298, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value296 value1 value2 = (output587, value298, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  dsimp only
  rw [child586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input588 value298 value1 value2 = (output588, value299, value1) := by
  rw [input588_def, output588_def]
  kernel_rfl

theorem node589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input589 value299 value1 value2 = (output589, value300, value1) := by
  rw [input589_def, output589_def]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value300 value1 value2 = (output590, value301, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input591 value301 value1 value2 = (output591, value5, value1) := by
  rw [input591_def, output591_def]
  kernel_rfl

theorem node592_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value300 value1 value2 = (output590, value301, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value301 value1 value2 = (output591, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value300 value1 value2 = (output592, value5, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  dsimp only
  rw [child591]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value299 value1 value2 = (output589, value300, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value300 value1 value2 = (output592, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value299 value1 value2 = (output593, value5, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  dsimp only
  rw [child592]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value298 value1 value2 = (output588, value299, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value299 value1 value2 = (output593, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value298 value1 value2 = (output594, value5, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child588]
  dsimp only
  rw [child593]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output588_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value296 value1 value2 = (output587, value298, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value298 value1 value2 = (output594, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value296 value1 value2 = (output595, value5, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  dsimp only
  rw [child594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input596 value5 value1 value2 = (output596, value302, value1) := by
  rw [input596_def, output596_def]
  kernel_rfl

theorem node597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input597 value302 value1 value2 = (output597, value303, value1) := by
  rw [input597_def, output597_def]
  kernel_rfl

theorem node598_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value5 value1 value2 = (output596, value302, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value302 value1 value2 = (output597, value303, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value5 value1 value2 = (output598, value303, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  dsimp only
  rw [child597]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output597_skip]
  kernel_rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value303 value1 value2 = (output599, value304, value1) := by
  rw [input599_def, output599_def]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value304 value1 value2 = (output600, value304, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value304 value1 value2 = (output601, value305, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value305 value1 value2 = (output602, value306, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value304 value1 value2 = (output601, value305, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value305 value1 value2 = (output602, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value304 value1 value2 = (output603, value306, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  dsimp only
  rw [child602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value306 value1 value2 = (output604, value307, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input605 value307 value1 value2 = (output605, value308, value1) := by
  rw [input605_def, output605_def]
  kernel_rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value308 value1 value2 = (output606, value309, value1) := by
  rw [input606_def, output606_def]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value309 value1 value2 = (output607, value5, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value308 value1 value2 = (output606, value309, value1))
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value309 value1 value2 = (output607, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input608 value308 value1 value2 = (output608, value5, value1) := by
  rw [input608_def, output608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  dsimp only
  rw [child607]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output607_skip]
  kernel_rfl

theorem node609_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value307 value1 value2 = (output605, value308, value1))
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value308 value1 value2 = (output608, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input609 value307 value1 value2 = (output609, value5, value1) := by
  rw [input609_def, output609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  dsimp only
  rw [child608]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output608_skip]
  kernel_rfl

theorem node610_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value306 value1 value2 = (output604, value307, value1))
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value307 value1 value2 = (output609, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input610 value306 value1 value2 = (output610, value5, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  dsimp only
  rw [child609]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output609_skip]
  kernel_rfl

theorem node611_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value304 value1 value2 = (output603, value306, value1))
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value306 value1 value2 = (output610, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input611 value304 value1 value2 = (output611, value5, value1) := by
  rw [input611_def, output611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  dsimp only
  rw [child610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output610_skip]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value5 value1 value2 = (output612, value310, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input613 value310 value1 value2 = (output613, value311, value1) := by
  rw [input613_def, output613_def]
  kernel_rfl

theorem node614_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value5 value1 value2 = (output612, value310, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value310 value1 value2 = (output613, value311, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value5 value1 value2 = (output614, value311, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  dsimp only
  rw [child613]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input615 value311 value1 value2 = (output615, value312, value1) := by
  rw [input615_def, output615_def]
  kernel_rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value312 value1 value2 = (output616, value312, value1) := by
  rw [input616_def, output616_def]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value312 value1 value2 = (output617, value313, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value313 value1 value2 = (output618, value314, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value312 value1 value2 = (output617, value313, value1))
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value313 value1 value2 = (output618, value314, value1)) : Flapjack.WordAlloc.removeDeadStructural input619 value312 value1 value2 = (output619, value314, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  dsimp only
  rw [child618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output618_skip]
  kernel_rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value314 value1 value2 = (output620, value315, value1) := by
  rw [input620_def, output620_def]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value315 value1 value2 = (output621, value316, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value316 value1 value2 = (output622, value317, value1) := by
  rw [input622_def, output622_def]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value317 value1 value2 = (output623, value5, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value316 value1 value2 = (output622, value317, value1))
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value317 value1 value2 = (output623, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input624 value316 value1 value2 = (output624, value5, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  dsimp only
  rw [child623]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output623_skip]
  kernel_rfl

theorem node625_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value315 value1 value2 = (output621, value316, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value316 value1 value2 = (output624, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value315 value1 value2 = (output625, value5, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  dsimp only
  rw [child624]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output624_skip]
  kernel_rfl

theorem node626_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value314 value1 value2 = (output620, value315, value1))
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value315 value1 value2 = (output625, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input626 value314 value1 value2 = (output626, value5, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  dsimp only
  rw [child625]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output625_skip]
  kernel_rfl

theorem node627_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value312 value1 value2 = (output619, value314, value1))
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value314 value1 value2 = (output626, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input627 value312 value1 value2 = (output627, value5, value1) := by
  rw [input627_def, output627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  dsimp only
  rw [child626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output626_skip]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value5 value1 value2 = (output628, value318, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value318 value1 value2 = (output629, value319, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value5 value1 value2 = (output628, value318, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value318 value1 value2 = (output629, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value5 value1 value2 = (output630, value319, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  dsimp only
  rw [child629]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output629_skip]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value319 value1 value2 = (output631, value320, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value320 value1 value2 = (output632, value320, value1) := by
  rw [input632_def, output632_def]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value320 value1 value2 = (output633, value321, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value321 value1 value2 = (output634, value322, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value320 value1 value2 = (output633, value321, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value321 value1 value2 = (output634, value322, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value320 value1 value2 = (output635, value322, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  dsimp only
  rw [child634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value322 value1 value2 = (output636, value323, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value323 value1 value2 = (output637, value324, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value324 value1 value2 = (output638, value325, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value325 value1 value2 = (output639, value5, value1) := by
  rw [input639_def, output639_def]
  kernel_rfl

theorem node640_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value324 value1 value2 = (output638, value325, value1))
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value325 value1 value2 = (output639, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input640 value324 value1 value2 = (output640, value5, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  dsimp only
  rw [child639]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output639_skip]
  kernel_rfl

theorem node641_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value323 value1 value2 = (output637, value324, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value324 value1 value2 = (output640, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value323 value1 value2 = (output641, value5, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  dsimp only
  rw [child640]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value322 value1 value2 = (output636, value323, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value323 value1 value2 = (output641, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value322 value1 value2 = (output642, value5, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  dsimp only
  rw [child641]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value320 value1 value2 = (output635, value322, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value322 value1 value2 = (output642, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value320 value1 value2 = (output643, value5, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  dsimp only
  rw [child642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value5 value1 value2 = (output644, value326, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value326 value1 value2 = (output645, value327, value1) := by
  rw [input645_def, output645_def]
  kernel_rfl

theorem node646_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value5 value1 value2 = (output644, value326, value1))
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value326 value1 value2 = (output645, value327, value1)) : Flapjack.WordAlloc.removeDeadStructural input646 value5 value1 value2 = (output646, value327, value1) := by
  rw [input646_def, output646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  dsimp only
  rw [child645]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output645_skip]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value327 value1 value2 = (output647, value328, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input648 value328 value1 value2 = (output648, value328, value1) := by
  rw [input648_def, output648_def]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value328 value1 value2 = (output649, value329, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input650 value329 value1 value2 = (output650, value330, value1) := by
  rw [input650_def, output650_def]
  kernel_rfl

theorem node651_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value328 value1 value2 = (output649, value329, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value329 value1 value2 = (output650, value330, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value328 value1 value2 = (output651, value330, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  dsimp only
  rw [child650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value330 value1 value2 = (output652, value331, value1) := by
  rw [input652_def, output652_def]
  kernel_rfl

theorem node653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input653 value331 value1 value2 = (output653, value332, value1) := by
  rw [input653_def, output653_def]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value332 value1 value2 = (output654, value333, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value333 value1 value2 = (output655, value5, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value332 value1 value2 = (output654, value333, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value333 value1 value2 = (output655, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value332 value1 value2 = (output656, value5, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  dsimp only
  rw [child655]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value331 value1 value2 = (output653, value332, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value332 value1 value2 = (output656, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value331 value1 value2 = (output657, value5, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  dsimp only
  rw [child656]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value330 value1 value2 = (output652, value331, value1))
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value331 value1 value2 = (output657, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input658 value330 value1 value2 = (output658, value5, value1) := by
  rw [input658_def, output658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  dsimp only
  rw [child657]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output657_skip]
  kernel_rfl

theorem node659_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value328 value1 value2 = (output651, value330, value1))
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value330 value1 value2 = (output658, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input659 value328 value1 value2 = (output659, value5, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  dsimp only
  rw [child658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output658_skip]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value5 value1 value2 = (output660, value334, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value334 value1 value2 = (output661, value335, value1) := by
  rw [input661_def, output661_def]
  kernel_rfl

theorem node662_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value5 value1 value2 = (output660, value334, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value334 value1 value2 = (output661, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value5 value1 value2 = (output662, value335, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  dsimp only
  rw [child661]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output661_skip]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value335 value1 value2 = (output663, value336, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value336 value1 value2 = (output664, value336, value1) := by
  rw [input664_def, output664_def]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value336 value1 value2 = (output665, value337, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value337 value1 value2 = (output666, value338, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value336 value1 value2 = (output665, value337, value1))
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value337 value1 value2 = (output666, value338, value1)) : Flapjack.WordAlloc.removeDeadStructural input667 value336 value1 value2 = (output667, value338, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  dsimp only
  rw [child666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output666_skip]
  kernel_rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value338 value1 value2 = (output668, value339, value1) := by
  rw [input668_def, output668_def]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value339 value1 value2 = (output669, value340, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value340 value1 value2 = (output670, value341, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input671 value341 value1 value2 = (output671, value5, value1) := by
  rw [input671_def, output671_def]
  kernel_rfl

theorem node672_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value340 value1 value2 = (output670, value341, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value341 value1 value2 = (output671, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value340 value1 value2 = (output672, value5, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  dsimp only
  rw [child671]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output670_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value339 value1 value2 = (output669, value340, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value340 value1 value2 = (output672, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value339 value1 value2 = (output673, value5, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  dsimp only
  rw [child672]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value338 value1 value2 = (output668, value339, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value339 value1 value2 = (output673, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value338 value1 value2 = (output674, value5, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  dsimp only
  rw [child673]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value336 value1 value2 = (output667, value338, value1))
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value338 value1 value2 = (output674, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input675 value336 value1 value2 = (output675, value5, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  dsimp only
  rw [child674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output674_skip]
  kernel_rfl

theorem node676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input676 value5 value1 value2 = (output676, value342, value1) := by
  rw [input676_def, output676_def]
  kernel_rfl

theorem node677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input677 value342 value1 value2 = (output677, value343, value1) := by
  rw [input677_def, output677_def]
  kernel_rfl

theorem node678_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value5 value1 value2 = (output676, value342, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value342 value1 value2 = (output677, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value5 value1 value2 = (output678, value343, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  dsimp only
  rw [child677]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input679 value343 value1 value2 = (output679, value344, value1) := by
  rw [input679_def, output679_def]
  kernel_rfl

theorem node680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input680 value344 value1 value2 = (output680, value344, value1) := by
  rw [input680_def, output680_def]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value344 value1 value2 = (output681, value345, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value345 value1 value2 = (output682, value346, value1) := by
  rw [input682_def, output682_def]
  kernel_rfl

theorem node683_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value344 value1 value2 = (output681, value345, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value345 value1 value2 = (output682, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value344 value1 value2 = (output683, value346, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  dsimp only
  rw [child682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output681_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input684 value346 value1 value2 = (output684, value347, value1) := by
  rw [input684_def, output684_def]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value347 value1 value2 = (output685, value348, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input686 value348 value1 value2 = (output686, value349, value1) := by
  rw [input686_def, output686_def]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value349 value1 value2 = (output687, value5, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value348 value1 value2 = (output686, value349, value1))
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value349 value1 value2 = (output687, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input688 value348 value1 value2 = (output688, value5, value1) := by
  rw [input688_def, output688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  dsimp only
  rw [child687]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output687_skip]
  kernel_rfl

theorem node689_cond_eq
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value347 value1 value2 = (output685, value348, value1))
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value348 value1 value2 = (output688, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input689 value347 value1 value2 = (output689, value5, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child685]
  dsimp only
  rw [child688]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output685_skip, output688_skip]
  kernel_rfl

theorem node690_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value346 value1 value2 = (output684, value347, value1))
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value347 value1 value2 = (output689, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input690 value346 value1 value2 = (output690, value5, value1) := by
  rw [input690_def, output690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  dsimp only
  rw [child689]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output689_skip]
  kernel_rfl

theorem node691_cond_eq
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value344 value1 value2 = (output683, value346, value1))
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value346 value1 value2 = (output690, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input691 value344 value1 value2 = (output691, value5, value1) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child683]
  dsimp only
  rw [child690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output683_skip, output690_skip]
  kernel_rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value5 value1 value2 = (output692, value350, value1) := by
  rw [input692_def, output692_def]
  kernel_rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value350 value1 value2 = (output693, value351, value1) := by
  rw [input693_def, output693_def]
  kernel_rfl

theorem node694_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value5 value1 value2 = (output692, value350, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value350 value1 value2 = (output693, value351, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value5 value1 value2 = (output694, value351, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  dsimp only
  rw [child693]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value351 value1 value2 = (output695, value352, value1) := by
  rw [input695_def, output695_def]
  kernel_rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value352 value1 value2 = (output696, value352, value1) := by
  rw [input696_def, output696_def]
  kernel_rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value352 value1 value2 = (output697, value353, value1) := by
  rw [input697_def, output697_def]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value353 value1 value2 = (output698, value354, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value352 value1 value2 = (output697, value353, value1))
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value353 value1 value2 = (output698, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input699 value352 value1 value2 = (output699, value354, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  dsimp only
  rw [child698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output698_skip]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value354 value1 value2 = (output700, value355, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value355 value1 value2 = (output701, value356, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value356 value1 value2 = (output702, value357, value1) := by
  rw [input702_def, output702_def]
  kernel_rfl

theorem node703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input703 value357 value1 value2 = (output703, value5, value1) := by
  rw [input703_def, output703_def]
  kernel_rfl

theorem node704_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value356 value1 value2 = (output702, value357, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value357 value1 value2 = (output703, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value356 value1 value2 = (output704, value5, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  dsimp only
  rw [child703]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value355 value1 value2 = (output701, value356, value1))
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value356 value1 value2 = (output704, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input705 value355 value1 value2 = (output705, value5, value1) := by
  rw [input705_def, output705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  dsimp only
  rw [child704]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output704_skip]
  kernel_rfl

theorem node706_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value354 value1 value2 = (output700, value355, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value355 value1 value2 = (output705, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value354 value1 value2 = (output706, value5, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  dsimp only
  rw [child705]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value352 value1 value2 = (output699, value354, value1))
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value354 value1 value2 = (output706, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input707 value352 value1 value2 = (output707, value5, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  dsimp only
  rw [child706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output706_skip]
  kernel_rfl

theorem node708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input708 value5 value1 value2 = (output708, value358, value1) := by
  rw [input708_def, output708_def]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value358 value1 value2 = (output709, value359, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value5 value1 value2 = (output708, value358, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value358 value1 value2 = (output709, value359, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value5 value1 value2 = (output710, value359, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  dsimp only
  rw [child709]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input711 value359 value1 value2 = (output711, value360, value1) := by
  rw [input711_def, output711_def]
  kernel_rfl

theorem node712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input712 value360 value1 value2 = (output712, value360, value1) := by
  rw [input712_def, output712_def]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value360 value1 value2 = (output713, value361, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value361 value1 value2 = (output714, value362, value1) := by
  rw [input714_def, output714_def]
  kernel_rfl

theorem node715_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value360 value1 value2 = (output713, value361, value1))
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value361 value1 value2 = (output714, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input715 value360 value1 value2 = (output715, value362, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  dsimp only
  rw [child714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output714_skip]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value362 value1 value2 = (output716, value363, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value363 value1 value2 = (output717, value364, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input718 value364 value1 value2 = (output718, value365, value1) := by
  rw [input718_def, output718_def]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value365 value1 value2 = (output719, value5, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value364 value1 value2 = (output718, value365, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value365 value1 value2 = (output719, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value364 value1 value2 = (output720, value5, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  dsimp only
  rw [child719]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output719_skip]
  kernel_rfl

theorem node721_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value363 value1 value2 = (output717, value364, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value364 value1 value2 = (output720, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value363 value1 value2 = (output721, value5, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  dsimp only
  rw [child720]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output717_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value362 value1 value2 = (output716, value363, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value363 value1 value2 = (output721, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value362 value1 value2 = (output722, value5, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  dsimp only
  rw [child721]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output721_skip]
  kernel_rfl

theorem node723_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value360 value1 value2 = (output715, value362, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value362 value1 value2 = (output722, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value360 value1 value2 = (output723, value5, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  dsimp only
  rw [child722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value5 value1 value2 = (output724, value366, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value366 value1 value2 = (output725, value367, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value5 value1 value2 = (output724, value366, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value366 value1 value2 = (output725, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value5 value1 value2 = (output726, value367, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  dsimp only
  rw [child725]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value367 value1 value2 = (output727, value368, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value368 value1 value2 = (output728, value368, value1) := by
  rw [input728_def, output728_def]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value368 value1 value2 = (output729, value369, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input730 value369 value1 value2 = (output730, value370, value1) := by
  rw [input730_def, output730_def]
  kernel_rfl

theorem node731_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value368 value1 value2 = (output729, value369, value1))
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value369 value1 value2 = (output730, value370, value1)) : Flapjack.WordAlloc.removeDeadStructural input731 value368 value1 value2 = (output731, value370, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  dsimp only
  rw [child730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output729_skip, output730_skip]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value370 value1 value2 = (output732, value371, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value371 value1 value2 = (output733, value372, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value372 value1 value2 = (output734, value373, value1) := by
  rw [input734_def, output734_def]
  kernel_rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value373 value1 value2 = (output735, value5, value1) := by
  rw [input735_def, output735_def]
  kernel_rfl

theorem node736_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value372 value1 value2 = (output734, value373, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value373 value1 value2 = (output735, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value372 value1 value2 = (output736, value5, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  dsimp only
  rw [child735]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value371 value1 value2 = (output733, value372, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value372 value1 value2 = (output736, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value371 value1 value2 = (output737, value5, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  dsimp only
  rw [child736]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value370 value1 value2 = (output732, value371, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value371 value1 value2 = (output737, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value370 value1 value2 = (output738, value5, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  dsimp only
  rw [child737]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value368 value1 value2 = (output731, value370, value1))
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value370 value1 value2 = (output738, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input739 value368 value1 value2 = (output739, value5, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  dsimp only
  rw [child738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output738_skip]
  kernel_rfl

theorem node740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input740 value5 value1 value2 = (output740, value374, value1) := by
  rw [input740_def, output740_def]
  kernel_rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value374 value1 value2 = (output741, value375, value1) := by
  rw [input741_def, output741_def]
  kernel_rfl

theorem node742_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value5 value1 value2 = (output740, value374, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value374 value1 value2 = (output741, value375, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value5 value1 value2 = (output742, value375, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  dsimp only
  rw [child741]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value375 value1 value2 = (output743, value376, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input744 value376 value1 value2 = (output744, value376, value1) := by
  rw [input744_def, output744_def]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value376 value1 value2 = (output745, value377, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value377 value1 value2 = (output746, value378, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value376 value1 value2 = (output745, value377, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value377 value1 value2 = (output746, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value376 value1 value2 = (output747, value378, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  dsimp only
  rw [child746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value378 value1 value2 = (output748, value379, value1) := by
  rw [input748_def, output748_def]
  kernel_rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value379 value1 value2 = (output749, value380, value1) := by
  rw [input749_def, output749_def]
  kernel_rfl

theorem node750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input750 value380 value1 value2 = (output750, value381, value1) := by
  rw [input750_def, output750_def]
  kernel_rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value381 value1 value2 = (output751, value5, value1) := by
  rw [input751_def, output751_def]
  kernel_rfl

theorem node752_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value380 value1 value2 = (output750, value381, value1))
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value381 value1 value2 = (output751, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input752 value380 value1 value2 = (output752, value5, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  dsimp only
  rw [child751]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output751_skip]
  kernel_rfl

theorem node753_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value379 value1 value2 = (output749, value380, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value380 value1 value2 = (output752, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value379 value1 value2 = (output753, value5, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  dsimp only
  rw [child752]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value378 value1 value2 = (output748, value379, value1))
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value379 value1 value2 = (output753, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input754 value378 value1 value2 = (output754, value5, value1) := by
  rw [input754_def, output754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  dsimp only
  rw [child753]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output753_skip]
  kernel_rfl

theorem node755_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value376 value1 value2 = (output747, value378, value1))
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value378 value1 value2 = (output754, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input755 value376 value1 value2 = (output755, value5, value1) := by
  rw [input755_def, output755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  dsimp only
  rw [child754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output754_skip]
  kernel_rfl

theorem node756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input756 value5 value1 value2 = (output756, value382, value1) := by
  rw [input756_def, output756_def]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value382 value1 value2 = (output757, value383, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value5 value1 value2 = (output756, value382, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value382 value1 value2 = (output757, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value5 value1 value2 = (output758, value383, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  dsimp only
  rw [child757]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output757_skip]
  kernel_rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value383 value1 value2 = (output759, value384, value1) := by
  rw [input759_def, output759_def]
  kernel_rfl

theorem node760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input760 value384 value1 value2 = (output760, value384, value1) := by
  rw [input760_def, output760_def]
  kernel_rfl

theorem node761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input761 value384 value1 value2 = (output761, value385, value1) := by
  rw [input761_def, output761_def]
  kernel_rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value385 value1 value2 = (output762, value386, value1) := by
  rw [input762_def, output762_def]
  kernel_rfl

theorem node763_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value384 value1 value2 = (output761, value385, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value385 value1 value2 = (output762, value386, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value384 value1 value2 = (output763, value386, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  dsimp only
  rw [child762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input764 value386 value1 value2 = (output764, value387, value1) := by
  rw [input764_def, output764_def]
  kernel_rfl

theorem node765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input765 value387 value1 value2 = (output765, value388, value1) := by
  rw [input765_def, output765_def]
  kernel_rfl

theorem node766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input766 value388 value1 value2 = (output766, value389, value1) := by
  rw [input766_def, output766_def]
  kernel_rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value389 value1 value2 = (output767, value5, value1) := by
  rw [input767_def, output767_def]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
