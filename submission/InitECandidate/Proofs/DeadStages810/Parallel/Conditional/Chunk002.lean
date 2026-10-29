import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages810.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages810.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value307 value1 value2 = (output512, value308, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value308 value1 value2 = (output513, value309, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value309 value1 value2 = (output514, value310, value1) := by
  rw [input514_def, output514_def]
  kernel_rfl

theorem node515_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value308 value1 value2 = (output513, value309, value1))
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value309 value1 value2 = (output514, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input515 value308 value1 value2 = (output515, value310, value1) := by
  rw [input515_def, output515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output514_skip]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value310 value1 value2 = (output516, value311, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value311 value1 value2 = (output517, value312, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input518 value312 value1 value2 = (output518, value313, value1) := by
  rw [input518_def, output518_def]
  kernel_rfl

theorem node519_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value311 value1 value2 = (output517, value312, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value312 value1 value2 = (output518, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value311 value1 value2 = (output519, value313, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value313 value1 value2 = (output520, value314, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input521 value314 value1 value2 = (output521, value315, value1) := by
  rw [input521_def, output521_def]
  kernel_rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value315 value1 value2 = (output522, value316, value1) := by
  rw [input522_def, output522_def]
  kernel_rfl

theorem node523_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value314 value1 value2 = (output521, value315, value1))
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value315 value1 value2 = (output522, value316, value1)) : Flapjack.WordAlloc.removeDeadStructural input523 value314 value1 value2 = (output523, value316, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output522_skip]
  kernel_rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value316 value1 value2 = (output524, value317, value1) := by
  rw [input524_def, output524_def]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value317 value1 value2 = (output525, value318, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value318 value1 value2 = (output526, value319, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value317 value1 value2 = (output525, value318, value1))
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value318 value1 value2 = (output526, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input527 value317 value1 value2 = (output527, value319, value1) := by
  rw [input527_def, output527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output526_skip]
  kernel_rfl

theorem node528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input528 value319 value1 value2 = (output528, value302, value1) := by
  rw [input528_def, output528_def]
  kernel_rfl

theorem node529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input529 value302 value1 value2 = (output529, value320, value1) := by
  rw [input529_def, output529_def]
  kernel_rfl

theorem node530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input530 value320 value1 value2 = (output530, value321, value1) := by
  rw [input530_def, output530_def]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value321 value1 value2 = (output531, value322, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value322 value1 value2 = (output532, value323, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value323 value1 value2 = (output533, value324, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value324 value1 value2 = (output534, value325, value1) := by
  rw [input534_def, output534_def]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value325 value1 value2 = (output535, value326, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value326 value1 value2 = (output536, value327, value1) := by
  rw [input536_def, output536_def]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value327 value1 value2 = (output537, value328, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value328 value1 value2 = (output538, value329, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value329 value1 value2 = (output539, value330, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value330 value1 value2 = (output540, value331, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input541 value331 value1 value2 = (output541, value332, value1) := by
  rw [input541_def, output541_def]
  kernel_rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value332 value1 value2 = (output542, value333, value1) := by
  rw [input542_def, output542_def]
  kernel_rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value333 value1 value2 = (output543, value334, value1) := by
  rw [input543_def, output543_def]
  kernel_rfl

theorem node544_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value332 value1 value2 = (output542, value333, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value333 value1 value2 = (output543, value334, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value332 value1 value2 = (output544, value334, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value334 value1 value2 = (output545, value335, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value335 value1 value2 = (output546, value336, value1) := by
  rw [input546_def, output546_def]
  kernel_rfl

theorem node547_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value334 value1 value2 = (output545, value335, value1))
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value335 value1 value2 = (output546, value336, value1)) : Flapjack.WordAlloc.removeDeadStructural input547 value334 value1 value2 = (output547, value336, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output546_skip]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value336 value1 value2 = (output548, value337, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value337 value1 value2 = (output549, value338, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value336 value1 value2 = (output548, value337, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value337 value1 value2 = (output549, value338, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value336 value1 value2 = (output550, value338, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value338 value1 value2 = (output551, value339, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value339 value1 value2 = (output552, value340, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value338 value1 value2 = (output551, value339, value1))
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value339 value1 value2 = (output552, value340, value1)) : Flapjack.WordAlloc.removeDeadStructural input553 value338 value1 value2 = (output553, value340, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output552_skip]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value340 value1 value2 = (output554, value341, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value341 value1 value2 = (output555, value342, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value340 value1 value2 = (output554, value341, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value341 value1 value2 = (output555, value342, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value340 value1 value2 = (output556, value342, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value342 value1 value2 = (output557, value343, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value343 value1 value2 = (output558, value344, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value342 value1 value2 = (output557, value343, value1))
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value343 value1 value2 = (output558, value344, value1)) : Flapjack.WordAlloc.removeDeadStructural input559 value342 value1 value2 = (output559, value344, value1) := by
  rw [input559_def, output559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output558_skip]
  kernel_rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value344 value1 value2 = (output560, value345, value1) := by
  rw [input560_def, output560_def]
  kernel_rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value345 value1 value2 = (output561, value346, value1) := by
  rw [input561_def, output561_def]
  kernel_rfl

theorem node562_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value344 value1 value2 = (output560, value345, value1))
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value345 value1 value2 = (output561, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input562 value344 value1 value2 = (output562, value346, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output561_skip]
  kernel_rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value346 value1 value2 = (output563, value347, value1) := by
  rw [input563_def, output563_def]
  kernel_rfl

theorem node564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input564 value347 value1 value2 = (output564, value348, value1) := by
  rw [input564_def, output564_def]
  kernel_rfl

theorem node565_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value346 value1 value2 = (output563, value347, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value347 value1 value2 = (output564, value348, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value346 value1 value2 = (output565, value348, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input566 value348 value1 value2 = (output566, value349, value1) := by
  rw [input566_def, output566_def]
  kernel_rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value349 value1 value2 = (output567, value350, value1) := by
  rw [input567_def, output567_def]
  kernel_rfl

theorem node568_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value348 value1 value2 = (output566, value349, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value349 value1 value2 = (output567, value350, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value348 value1 value2 = (output568, value350, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input569 value350 value1 value2 = (output569, value351, value1) := by
  rw [input569_def, output569_def]
  kernel_rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value351 value1 value2 = (output570, value352, value1) := by
  rw [input570_def, output570_def]
  kernel_rfl

theorem node571_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value350 value1 value2 = (output569, value351, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value351 value1 value2 = (output570, value352, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value350 value1 value2 = (output571, value352, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value352 value1 value2 = (output572, value353, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value353 value1 value2 = (output573, value354, value1) := by
  rw [input573_def, output573_def]
  kernel_rfl

theorem node574_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value352 value1 value2 = (output572, value353, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value353 value1 value2 = (output573, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value352 value1 value2 = (output574, value354, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value354 value1 value2 = (output575, value355, value1) := by
  rw [input575_def, output575_def]
  kernel_rfl

theorem node576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input576 value355 value1 value2 = (output576, value356, value1) := by
  rw [input576_def, output576_def]
  kernel_rfl

theorem node577_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value354 value1 value2 = (output575, value355, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value355 value1 value2 = (output576, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value354 value1 value2 = (output577, value356, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output575_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input578 value356 value1 value2 = (output578, value357, value1) := by
  rw [input578_def, output578_def]
  kernel_rfl

theorem node579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input579 value357 value1 value2 = (output579, value358, value1) := by
  rw [input579_def, output579_def]
  kernel_rfl

theorem node580_cond_eq
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value356 value1 value2 = (output578, value357, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value357 value1 value2 = (output579, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value356 value1 value2 = (output580, value358, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child578]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output578_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input581 value358 value1 value2 = (output581, value359, value1) := by
  rw [input581_def, output581_def]
  kernel_rfl

theorem node582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input582 value359 value1 value2 = (output582, value360, value1) := by
  rw [input582_def, output582_def]
  kernel_rfl

theorem node583_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value358 value1 value2 = (output581, value359, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value359 value1 value2 = (output582, value360, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value358 value1 value2 = (output583, value360, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input584 value360 value1 value2 = (output584, value361, value1) := by
  rw [input584_def, output584_def]
  kernel_rfl

theorem node585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input585 value361 value1 value2 = (output585, value362, value1) := by
  rw [input585_def, output585_def]
  kernel_rfl

theorem node586_cond_eq
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value360 value1 value2 = (output584, value361, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value361 value1 value2 = (output585, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value360 value1 value2 = (output586, value362, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child584]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output584_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input587 value362 value1 value2 = (output587, value363, value1) := by
  rw [input587_def, output587_def]
  kernel_rfl

theorem node588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input588 value363 value1 value2 = (output588, value364, value1) := by
  rw [input588_def, output588_def]
  kernel_rfl

theorem node589_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value362 value1 value2 = (output587, value363, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value363 value1 value2 = (output588, value364, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value362 value1 value2 = (output589, value364, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value364 value1 value2 = (output590, value365, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input591 value365 value1 value2 = (output591, value366, value1) := by
  rw [input591_def, output591_def]
  kernel_rfl

theorem node592_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value364 value1 value2 = (output590, value365, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value365 value1 value2 = (output591, value366, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value364 value1 value2 = (output592, value366, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input593 value366 value1 value2 = (output593, value367, value1) := by
  rw [input593_def, output593_def]
  kernel_rfl

theorem node594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input594 value367 value1 value2 = (output594, value368, value1) := by
  rw [input594_def, output594_def]
  kernel_rfl

theorem node595_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value366 value1 value2 = (output593, value367, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value367 value1 value2 = (output594, value368, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value366 value1 value2 = (output595, value368, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input596 value368 value1 value2 = (output596, value368, value1) := by
  rw [input596_def, output596_def]
  kernel_rfl

theorem node597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input597 value368 value1 value2 = (output597, value369, value1) := by
  rw [input597_def, output597_def]
  kernel_rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value369 value1 value2 = (output598, value370, value1) := by
  rw [input598_def, output598_def]
  kernel_rfl

theorem node599_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value368 value1 value2 = (output597, value369, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value369 value1 value2 = (output598, value370, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value368 value1 value2 = (output599, value370, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output598_skip]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value370 value1 value2 = (output600, value371, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value368 value1 value2 = (output599, value370, value1))
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value370 value1 value2 = (output600, value371, value1)) : Flapjack.WordAlloc.removeDeadStructural input601 value368 value1 value2 = (output601, value371, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output600_skip]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value371 value1 value2 = (output602, value372, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value368 value1 value2 = (output601, value371, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value371 value1 value2 = (output602, value372, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value368 value1 value2 = (output603, value372, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value372 value1 value2 = (output604, value372, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input605 value372 value1 value2 = (output605, value372, value1) := by
  rw [input605_def, output605_def]
  kernel_rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value372 value1 value2 = (output606, value373, value1) := by
  rw [input606_def, output606_def]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value373 value1 value2 = (output607, value373, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value372 value1 value2 = (output606, value373, value1))
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value373 value1 value2 = (output607, value373, value1)) : Flapjack.WordAlloc.removeDeadStructural input608 value372 value1 value2 = (output608, value373, value1) := by
  rw [input608_def, output608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output607_skip]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value373 value1 value2 = (output609, value374, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value372 value1 value2 = (output608, value373, value1))
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value373 value1 value2 = (output609, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input610 value372 value1 value2 = (output610, value374, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output609_skip]
  kernel_rfl

theorem node611_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value372 value1 value2 = (output605, value372, value1))
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value372 value1 value2 = (output610, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input611 value372 value1 value2 = (output611, value374, value1) := by
  rw [input611_def, output611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output610_skip]
  kernel_rfl

theorem node612_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value372 value1 value2 = (output604, value372, value1))
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value372 value1 value2 = (output611, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input612 value372 value1 value2 = (output612, value374, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output611_skip]
  kernel_rfl

theorem node613_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value368 value1 value2 = (output603, value372, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value372 value1 value2 = (output612, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value368 value1 value2 = (output613, value374, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value368 value1 value2 = (output596, value368, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value368 value1 value2 = (output613, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value368 value1 value2 = (output614, value374, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value366 value1 value2 = (output595, value368, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value368 value1 value2 = (output614, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value366 value1 value2 = (output615, value374, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value364 value1 value2 = (output592, value366, value1))
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value366 value1 value2 = (output615, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input616 value364 value1 value2 = (output616, value374, value1) := by
  rw [input616_def, output616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child592]
  try dsimp only
  rw [child615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output592_skip, output615_skip]
  kernel_rfl

theorem node617_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value362 value1 value2 = (output589, value364, value1))
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value364 value1 value2 = (output616, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input617 value362 value1 value2 = (output617, value374, value1) := by
  rw [input617_def, output617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  try dsimp only
  rw [child616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output616_skip]
  kernel_rfl

theorem node618_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value360 value1 value2 = (output586, value362, value1))
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value362 value1 value2 = (output617, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input618 value360 value1 value2 = (output618, value374, value1) := by
  rw [input618_def, output618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  try dsimp only
  rw [child617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output586_skip, output617_skip]
  kernel_rfl

theorem node619_cond_eq
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value358 value1 value2 = (output583, value360, value1))
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value360 value1 value2 = (output618, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input619 value358 value1 value2 = (output619, value374, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child583]
  try dsimp only
  rw [child618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output583_skip, output618_skip]
  kernel_rfl

theorem node620_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value356 value1 value2 = (output580, value358, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value358 value1 value2 = (output619, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value356 value1 value2 = (output620, value374, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value354 value1 value2 = (output577, value356, value1))
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value356 value1 value2 = (output620, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input621 value354 value1 value2 = (output621, value374, value1) := by
  rw [input621_def, output621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output577_skip, output620_skip]
  kernel_rfl

theorem node622_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value352 value1 value2 = (output574, value354, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value354 value1 value2 = (output621, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value352 value1 value2 = (output622, value374, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output621_skip]
  kernel_rfl

theorem node623_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value350 value1 value2 = (output571, value352, value1))
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value352 value1 value2 = (output622, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input623 value350 value1 value2 = (output623, value374, value1) := by
  rw [input623_def, output623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output622_skip]
  kernel_rfl

theorem node624_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value348 value1 value2 = (output568, value350, value1))
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value350 value1 value2 = (output623, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input624 value348 value1 value2 = (output624, value374, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output623_skip]
  kernel_rfl

theorem node625_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value346 value1 value2 = (output565, value348, value1))
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value348 value1 value2 = (output624, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input625 value346 value1 value2 = (output625, value374, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output565_skip, output624_skip]
  kernel_rfl

theorem node626_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value344 value1 value2 = (output562, value346, value1))
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value346 value1 value2 = (output625, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input626 value344 value1 value2 = (output626, value374, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output625_skip]
  kernel_rfl

theorem node627_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value342 value1 value2 = (output559, value344, value1))
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value344 value1 value2 = (output626, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input627 value342 value1 value2 = (output627, value374, value1) := by
  rw [input627_def, output627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output626_skip]
  kernel_rfl

theorem node628_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value340 value1 value2 = (output556, value342, value1))
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value342 value1 value2 = (output627, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input628 value340 value1 value2 = (output628, value374, value1) := by
  rw [input628_def, output628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output627_skip]
  kernel_rfl

theorem node629_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value338 value1 value2 = (output553, value340, value1))
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value340 value1 value2 = (output628, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input629 value338 value1 value2 = (output629, value374, value1) := by
  rw [input629_def, output629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output628_skip]
  kernel_rfl

theorem node630_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value336 value1 value2 = (output550, value338, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value338 value1 value2 = (output629, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value336 value1 value2 = (output630, value374, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output629_skip]
  kernel_rfl

theorem node631_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value334 value1 value2 = (output547, value336, value1))
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value336 value1 value2 = (output630, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input631 value334 value1 value2 = (output631, value374, value1) := by
  rw [input631_def, output631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output630_skip]
  kernel_rfl

theorem node632_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value332 value1 value2 = (output544, value334, value1))
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value334 value1 value2 = (output631, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input632 value332 value1 value2 = (output632, value374, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output631_skip]
  kernel_rfl

theorem node633_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value331 value1 value2 = (output541, value332, value1))
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value332 value1 value2 = (output632, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input633 value331 value1 value2 = (output633, value374, value1) := by
  rw [input633_def, output633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output632_skip]
  kernel_rfl

theorem node634_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value330 value1 value2 = (output540, value331, value1))
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value331 value1 value2 = (output633, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input634 value330 value1 value2 = (output634, value374, value1) := by
  rw [input634_def, output634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output633_skip]
  kernel_rfl

theorem node635_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value329 value1 value2 = (output539, value330, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value330 value1 value2 = (output634, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value329 value1 value2 = (output635, value374, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value328 value1 value2 = (output538, value329, value1))
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value329 value1 value2 = (output635, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input636 value328 value1 value2 = (output636, value374, value1) := by
  rw [input636_def, output636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output635_skip]
  kernel_rfl

theorem node637_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value327 value1 value2 = (output537, value328, value1))
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value328 value1 value2 = (output636, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input637 value327 value1 value2 = (output637, value374, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output636_skip]
  kernel_rfl

theorem node638_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value326 value1 value2 = (output536, value327, value1))
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value327 value1 value2 = (output637, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input638 value326 value1 value2 = (output638, value374, value1) := by
  rw [input638_def, output638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output637_skip]
  kernel_rfl

theorem node639_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value325 value1 value2 = (output535, value326, value1))
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value326 value1 value2 = (output638, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input639 value325 value1 value2 = (output639, value374, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output638_skip]
  kernel_rfl

theorem node640_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value324 value1 value2 = (output534, value325, value1))
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value325 value1 value2 = (output639, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input640 value324 value1 value2 = (output640, value374, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output639_skip]
  kernel_rfl

theorem node641_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value323 value1 value2 = (output533, value324, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value324 value1 value2 = (output640, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value323 value1 value2 = (output641, value374, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value322 value1 value2 = (output532, value323, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value323 value1 value2 = (output641, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value322 value1 value2 = (output642, value374, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value321 value1 value2 = (output531, value322, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value322 value1 value2 = (output642, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value321 value1 value2 = (output643, value374, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value320 value1 value2 = (output530, value321, value1))
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value321 value1 value2 = (output643, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input644 value320 value1 value2 = (output644, value374, value1) := by
  rw [input644_def, output644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output643_skip]
  kernel_rfl

theorem node645_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value302 value1 value2 = (output529, value320, value1))
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value320 value1 value2 = (output644, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input645 value302 value1 value2 = (output645, value374, value1) := by
  rw [input645_def, output645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output644_skip]
  kernel_rfl

theorem node646_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value319 value1 value2 = (output528, value302, value1))
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value302 value1 value2 = (output645, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input646 value319 value1 value2 = (output646, value374, value1) := by
  rw [input646_def, output646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output645_skip]
  kernel_rfl

theorem node647_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value317 value1 value2 = (output527, value319, value1))
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value319 value1 value2 = (output646, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input647 value317 value1 value2 = (output647, value374, value1) := by
  rw [input647_def, output647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output646_skip]
  kernel_rfl

theorem node648_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value316 value1 value2 = (output524, value317, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value317 value1 value2 = (output647, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value316 value1 value2 = (output648, value374, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value314 value1 value2 = (output523, value316, value1))
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value316 value1 value2 = (output648, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input649 value314 value1 value2 = (output649, value374, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output648_skip]
  kernel_rfl

theorem node650_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value313 value1 value2 = (output520, value314, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value314 value1 value2 = (output649, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value313 value1 value2 = (output650, value374, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value311 value1 value2 = (output519, value313, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value313 value1 value2 = (output650, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value311 value1 value2 = (output651, value374, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value310 value1 value2 = (output516, value311, value1))
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value311 value1 value2 = (output651, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input652 value310 value1 value2 = (output652, value374, value1) := by
  rw [input652_def, output652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output651_skip]
  kernel_rfl

theorem node653_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value308 value1 value2 = (output515, value310, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value310 value1 value2 = (output652, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value308 value1 value2 = (output653, value374, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value307 value1 value2 = (output512, value308, value1))
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value308 value1 value2 = (output653, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input654 value307 value1 value2 = (output654, value374, value1) := by
  rw [input654_def, output654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output653_skip]
  kernel_rfl

theorem node655_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value305 value1 value2 = (output511, value307, value1))
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value307 value1 value2 = (output654, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input655 value305 value1 value2 = (output655, value374, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output654_skip]
  kernel_rfl

theorem node656_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value304 value1 value2 = (output508, value305, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value305 value1 value2 = (output655, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value304 value1 value2 = (output656, value374, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value302 value1 value2 = (output507, value304, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value304 value1 value2 = (output656, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value302 value1 value2 = (output657, value374, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value301 value1 value2 = (output504, value302, value1))
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value302 value1 value2 = (output657, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input658 value301 value1 value2 = (output658, value374, value1) := by
  rw [input658_def, output658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output657_skip]
  kernel_rfl

theorem node659_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value301 value1 value2 = (output503, value301, value1))
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value301 value1 value2 = (output658, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input659 value301 value1 value2 = (output659, value374, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output658_skip]
  kernel_rfl

theorem node660_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value243 value1 value2 = (output502, value301, value1))
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value301 value1 value2 = (output659, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input660 value243 value1 value2 = (output660, value374, value1) := by
  rw [input660_def, output660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output659_skip]
  kernel_rfl

theorem node661_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value243 value1 value2 = (output322, value243, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value243 value1 value2 = (output660, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value243 value1 value2 = (output661, value374, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output660_skip]
  kernel_rfl

theorem node662_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value238 value1 value2 = (output321, value243, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value243 value1 value2 = (output661, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value238 value1 value2 = (output662, value374, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output661_skip]
  kernel_rfl

theorem node663_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value238 value1 value2 = (output312, value238, value1))
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value238 value1 value2 = (output662, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input663 value238 value1 value2 = (output663, value374, value1) := by
  rw [input663_def, output663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output662_skip]
  kernel_rfl

theorem node664_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value237 value1 value2 = (output311, value238, value1))
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value238 value1 value2 = (output663, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input664 value237 value1 value2 = (output664, value374, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output663_skip]
  kernel_rfl

theorem node665_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value236 value1 value2 = (output310, value237, value1))
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value237 value1 value2 = (output664, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input665 value236 value1 value2 = (output665, value374, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output664_skip]
  kernel_rfl

theorem node666_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value235 value1 value2 = (output309, value236, value1))
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value236 value1 value2 = (output665, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input666 value235 value1 value2 = (output666, value374, value1) := by
  rw [input666_def, output666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output665_skip]
  kernel_rfl

theorem node667_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value234 value1 value2 = (output308, value235, value1))
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value235 value1 value2 = (output666, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input667 value234 value1 value2 = (output667, value374, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output666_skip]
  kernel_rfl

theorem node668_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value233 value1 value2 = (output307, value234, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value234 value1 value2 = (output667, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value233 value1 value2 = (output668, value374, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value232 value1 value2 = (output306, value233, value1))
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value233 value1 value2 = (output668, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input669 value232 value1 value2 = (output669, value374, value1) := by
  rw [input669_def, output669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output668_skip]
  kernel_rfl

theorem node670_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value231 value1 value2 = (output305, value232, value1))
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value232 value1 value2 = (output669, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input670 value231 value1 value2 = (output670, value374, value1) := by
  rw [input670_def, output670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output669_skip]
  kernel_rfl

theorem node671_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value227 value1 value2 = (output304, value231, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value231 value1 value2 = (output670, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value227 value1 value2 = (output671, value374, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value227 value1 value2 = (output297, value227, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value227 value1 value2 = (output671, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value227 value1 value2 = (output672, value374, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value221 value1 value2 = (output296, value227, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value227 value1 value2 = (output672, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value221 value1 value2 = (output673, value374, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value221 value1 value2 = (output285, value221, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value221 value1 value2 = (output673, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value221 value1 value2 = (output674, value374, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value220 value1 value2 = (output284, value221, value1))
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value221 value1 value2 = (output674, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input675 value220 value1 value2 = (output675, value374, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output674_skip]
  kernel_rfl

theorem node676_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value219 value1 value2 = (output283, value220, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value220 value1 value2 = (output675, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value219 value1 value2 = (output676, value374, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value218 value1 value2 = (output282, value219, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value219 value1 value2 = (output676, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value218 value1 value2 = (output677, value374, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output676_skip]
  kernel_rfl

theorem node678_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value217 value1 value2 = (output281, value218, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value218 value1 value2 = (output677, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value217 value1 value2 = (output678, value374, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value216 value1 value2 = (output280, value217, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value217 value1 value2 = (output678, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value216 value1 value2 = (output679, value374, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value215 value1 value2 = (output279, value216, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value216 value1 value2 = (output679, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value215 value1 value2 = (output680, value374, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value214 value1 value2 = (output278, value215, value1))
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value215 value1 value2 = (output680, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input681 value214 value1 value2 = (output681, value374, value1) := by
  rw [input681_def, output681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output680_skip]
  kernel_rfl

theorem node682_cond_eq
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value210 value1 value2 = (output277, value214, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value214 value1 value2 = (output681, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value210 value1 value2 = (output682, value374, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child277]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output277_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value210 value1 value2 = (output270, value210, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value210 value1 value2 = (output682, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value210 value1 value2 = (output683, value374, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value204 value1 value2 = (output269, value210, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value210 value1 value2 = (output683, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value204 value1 value2 = (output684, value374, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value204 value1 value2 = (output258, value204, value1))
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value204 value1 value2 = (output684, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input685 value204 value1 value2 = (output685, value374, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output684_skip]
  kernel_rfl

theorem node686_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value203 value1 value2 = (output257, value204, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value204 value1 value2 = (output685, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value203 value1 value2 = (output686, value374, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value202 value1 value2 = (output256, value203, value1))
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value203 value1 value2 = (output686, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input687 value202 value1 value2 = (output687, value374, value1) := by
  rw [input687_def, output687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output686_skip]
  kernel_rfl

theorem node688_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value201 value1 value2 = (output255, value202, value1))
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value202 value1 value2 = (output687, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input688 value201 value1 value2 = (output688, value374, value1) := by
  rw [input688_def, output688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output687_skip]
  kernel_rfl

theorem node689_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value200 value1 value2 = (output254, value201, value1))
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value201 value1 value2 = (output688, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input689 value200 value1 value2 = (output689, value374, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output688_skip]
  kernel_rfl

theorem node690_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value199 value1 value2 = (output253, value200, value1))
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value200 value1 value2 = (output689, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input690 value199 value1 value2 = (output690, value374, value1) := by
  rw [input690_def, output690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output689_skip]
  kernel_rfl

theorem node691_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value198 value1 value2 = (output252, value199, value1))
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value199 value1 value2 = (output690, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input691 value198 value1 value2 = (output691, value374, value1) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output690_skip]
  kernel_rfl

theorem node692_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value197 value1 value2 = (output251, value198, value1))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value198 value1 value2 = (output691, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input692 value197 value1 value2 = (output692, value374, value1) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output691_skip]
  kernel_rfl

theorem node693_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value193 value1 value2 = (output250, value197, value1))
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value197 value1 value2 = (output692, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input693 value193 value1 value2 = (output693, value374, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output692_skip]
  kernel_rfl

theorem node694_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value193 value1 value2 = (output243, value193, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value193 value1 value2 = (output693, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value193 value1 value2 = (output694, value374, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value187 value1 value2 = (output242, value193, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value193 value1 value2 = (output694, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input695 value187 value1 value2 = (output695, value374, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output694_skip]
  kernel_rfl

theorem node696_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value187 value1 value2 = (output231, value187, value1))
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value187 value1 value2 = (output695, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input696 value187 value1 value2 = (output696, value374, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output695_skip]
  kernel_rfl

theorem node697_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value186 value1 value2 = (output230, value187, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value187 value1 value2 = (output696, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input697 value186 value1 value2 = (output697, value374, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output696_skip]
  kernel_rfl

theorem node698_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value185 value1 value2 = (output229, value186, value1))
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value186 value1 value2 = (output697, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input698 value185 value1 value2 = (output698, value374, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output697_skip]
  kernel_rfl

theorem node699_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value184 value1 value2 = (output228, value185, value1))
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value185 value1 value2 = (output698, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input699 value184 value1 value2 = (output699, value374, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output698_skip]
  kernel_rfl

theorem node700_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value183 value1 value2 = (output227, value184, value1))
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value184 value1 value2 = (output699, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input700 value183 value1 value2 = (output700, value374, value1) := by
  rw [input700_def, output700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output699_skip]
  kernel_rfl

theorem node701_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value182 value1 value2 = (output226, value183, value1))
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value183 value1 value2 = (output700, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input701 value182 value1 value2 = (output701, value374, value1) := by
  rw [input701_def, output701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output700_skip]
  kernel_rfl

theorem node702_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value181 value1 value2 = (output225, value182, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value182 value1 value2 = (output701, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value181 value1 value2 = (output702, value374, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output701_skip]
  kernel_rfl

theorem node703_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value180 value1 value2 = (output224, value181, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value181 value1 value2 = (output702, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value180 value1 value2 = (output703, value374, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value176 value1 value2 = (output223, value180, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value180 value1 value2 = (output703, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value176 value1 value2 = (output704, value374, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value176 value1 value2 = (output216, value176, value1))
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value176 value1 value2 = (output704, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input705 value176 value1 value2 = (output705, value374, value1) := by
  rw [input705_def, output705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output704_skip]
  kernel_rfl

theorem node706_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value175 value1 value2 = (output215, value176, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value176 value1 value2 = (output705, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value175 value1 value2 = (output706, value374, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value174 value1 value2 = (output214, value175, value1))
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value175 value1 value2 = (output706, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input707 value174 value1 value2 = (output707, value374, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output706_skip]
  kernel_rfl

theorem node708_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value173 value1 value2 = (output213, value174, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value174 value1 value2 = (output707, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value173 value1 value2 = (output708, value374, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value172 value1 value2 = (output212, value173, value1))
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value173 value1 value2 = (output708, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input709 value172 value1 value2 = (output709, value374, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child212]
  try dsimp only
  rw [child708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output212_skip, output708_skip]
  kernel_rfl

theorem node710_cond_eq
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value171 value1 value2 = (output211, value172, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value172 value1 value2 = (output709, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value171 value1 value2 = (output710, value374, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child211]
  try dsimp only
  rw [child709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output211_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value170 value1 value2 = (output210, value171, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value171 value1 value2 = (output710, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value170 value1 value2 = (output711, value374, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child210]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output210_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value169 value1 value2 = (output209, value170, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value170 value1 value2 = (output711, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value169 value1 value2 = (output712, value374, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output209_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value168 value1 value2 = (output208, value169, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value169 value1 value2 = (output712, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value168 value1 value2 = (output713, value374, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output712_skip]
  kernel_rfl

theorem node714_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value167 value1 value2 = (output207, value168, value1))
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value168 value1 value2 = (output713, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input714 value167 value1 value2 = (output714, value374, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output713_skip]
  kernel_rfl

theorem node715_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value166 value1 value2 = (output206, value167, value1))
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value167 value1 value2 = (output714, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input715 value166 value1 value2 = (output715, value374, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output714_skip]
  kernel_rfl

theorem node716_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value165 value1 value2 = (output205, value166, value1))
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value166 value1 value2 = (output715, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input716 value165 value1 value2 = (output716, value374, value1) := by
  rw [input716_def, output716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output715_skip]
  kernel_rfl

theorem node717_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value164 value1 value2 = (output204, value165, value1))
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value165 value1 value2 = (output716, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input717 value164 value1 value2 = (output717, value374, value1) := by
  rw [input717_def, output717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output716_skip]
  kernel_rfl

theorem node718_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value161 value1 value2 = (output203, value164, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value164 value1 value2 = (output717, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value161 value1 value2 = (output718, value374, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value161 value1 value2 = (output198, value161, value1))
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value161 value1 value2 = (output718, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input719 value161 value1 value2 = (output719, value374, value1) := by
  rw [input719_def, output719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output718_skip]
  kernel_rfl

theorem node720_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value160 value1 value2 = (output197, value161, value1))
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value161 value1 value2 = (output719, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input720 value160 value1 value2 = (output720, value374, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output197_skip, output719_skip]
  kernel_rfl

theorem node721_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value159 value1 value2 = (output196, value160, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value160 value1 value2 = (output720, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value159 value1 value2 = (output721, value374, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value158 value1 value2 = (output195, value159, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value159 value1 value2 = (output721, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value158 value1 value2 = (output722, value374, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output721_skip]
  kernel_rfl

theorem node723_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value157 value1 value2 = (output194, value158, value1))
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value158 value1 value2 = (output722, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input723 value157 value1 value2 = (output723, value374, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output722_skip]
  kernel_rfl

theorem node724_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value156 value1 value2 = (output193, value157, value1))
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value157 value1 value2 = (output723, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input724 value156 value1 value2 = (output724, value374, value1) := by
  rw [input724_def, output724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output723_skip]
  kernel_rfl

theorem node725_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value155 value1 value2 = (output192, value156, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value156 value1 value2 = (output724, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value155 value1 value2 = (output725, value374, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output724_skip]
  kernel_rfl

theorem node726_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value154 value1 value2 = (output191, value155, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value155 value1 value2 = (output725, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value154 value1 value2 = (output726, value374, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value153 value1 value2 = (output190, value154, value1))
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value154 value1 value2 = (output726, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input727 value153 value1 value2 = (output727, value374, value1) := by
  rw [input727_def, output727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output726_skip]
  kernel_rfl

theorem node728_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value152 value1 value2 = (output189, value153, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value153 value1 value2 = (output727, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value152 value1 value2 = (output728, value374, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output727_skip]
  kernel_rfl

theorem node729_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value151 value1 value2 = (output188, value152, value1))
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value152 value1 value2 = (output728, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input729 value151 value1 value2 = (output729, value374, value1) := by
  rw [input729_def, output729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output728_skip]
  kernel_rfl

theorem node730_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value150 value1 value2 = (output187, value151, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value151 value1 value2 = (output729, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value150 value1 value2 = (output730, value374, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value149 value1 value2 = (output186, value150, value1))
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value150 value1 value2 = (output730, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input731 value149 value1 value2 = (output731, value374, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output730_skip]
  kernel_rfl

theorem node732_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value146 value1 value2 = (output185, value149, value1))
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value149 value1 value2 = (output731, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input732 value146 value1 value2 = (output732, value374, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output731_skip]
  kernel_rfl

theorem node733_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value146 value1 value2 = (output180, value146, value1))
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value146 value1 value2 = (output732, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input733 value146 value1 value2 = (output733, value374, value1) := by
  rw [input733_def, output733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output732_skip]
  kernel_rfl

theorem node734_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value145 value1 value2 = (output179, value146, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value146 value1 value2 = (output733, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value145 value1 value2 = (output734, value374, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output733_skip]
  kernel_rfl

theorem node735_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value144 value1 value2 = (output178, value145, value1))
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value145 value1 value2 = (output734, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input735 value144 value1 value2 = (output735, value374, value1) := by
  rw [input735_def, output735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output734_skip]
  kernel_rfl

theorem node736_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value143 value1 value2 = (output177, value144, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value144 value1 value2 = (output735, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value143 value1 value2 = (output736, value374, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value142 value1 value2 = (output176, value143, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value143 value1 value2 = (output736, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value142 value1 value2 = (output737, value374, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value141 value1 value2 = (output175, value142, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value142 value1 value2 = (output737, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value141 value1 value2 = (output738, value374, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value140 value1 value2 = (output174, value141, value1))
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value141 value1 value2 = (output738, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input739 value140 value1 value2 = (output739, value374, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output738_skip]
  kernel_rfl

theorem node740_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value139 value1 value2 = (output173, value140, value1))
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value140 value1 value2 = (output739, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input740 value139 value1 value2 = (output740, value374, value1) := by
  rw [input740_def, output740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output739_skip]
  kernel_rfl

theorem node741_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value138 value1 value2 = (output172, value139, value1))
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value139 value1 value2 = (output740, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input741 value138 value1 value2 = (output741, value374, value1) := by
  rw [input741_def, output741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output740_skip]
  kernel_rfl

theorem node742_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value137 value1 value2 = (output171, value138, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value138 value1 value2 = (output741, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value137 value1 value2 = (output742, value374, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value136 value1 value2 = (output170, value137, value1))
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value137 value1 value2 = (output742, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input743 value136 value1 value2 = (output743, value374, value1) := by
  rw [input743_def, output743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  try dsimp only
  rw [child742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output170_skip, output742_skip]
  kernel_rfl

theorem node744_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value135 value1 value2 = (output169, value136, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value136 value1 value2 = (output743, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value135 value1 value2 = (output744, value374, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output743_skip]
  kernel_rfl

theorem node745_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value134 value1 value2 = (output168, value135, value1))
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value135 value1 value2 = (output744, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input745 value134 value1 value2 = (output745, value374, value1) := by
  rw [input745_def, output745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output744_skip]
  kernel_rfl

theorem node746_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value131 value1 value2 = (output167, value134, value1))
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value134 value1 value2 = (output745, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input746 value131 value1 value2 = (output746, value374, value1) := by
  rw [input746_def, output746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output745_skip]
  kernel_rfl

theorem node747_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value131 value1 value2 = (output162, value131, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value131 value1 value2 = (output746, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value131 value1 value2 = (output747, value374, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value130 value1 value2 = (output161, value131, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value131 value1 value2 = (output747, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value130 value1 value2 = (output748, value374, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output747_skip]
  kernel_rfl

theorem node749_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value129 value1 value2 = (output160, value130, value1))
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value130 value1 value2 = (output748, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input749 value129 value1 value2 = (output749, value374, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output748_skip]
  kernel_rfl

theorem node750_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value128 value1 value2 = (output159, value129, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value129 value1 value2 = (output749, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value128 value1 value2 = (output750, value374, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value127 value1 value2 = (output158, value128, value1))
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value128 value1 value2 = (output750, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input751 value127 value1 value2 = (output751, value374, value1) := by
  rw [input751_def, output751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output750_skip]
  kernel_rfl

theorem node752_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value126 value1 value2 = (output157, value127, value1))
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value127 value1 value2 = (output751, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input752 value126 value1 value2 = (output752, value374, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output751_skip]
  kernel_rfl

theorem node753_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value125 value1 value2 = (output156, value126, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value126 value1 value2 = (output752, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value125 value1 value2 = (output753, value374, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value124 value1 value2 = (output155, value125, value1))
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value125 value1 value2 = (output753, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input754 value124 value1 value2 = (output754, value374, value1) := by
  rw [input754_def, output754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output753_skip]
  kernel_rfl

theorem node755_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value123 value1 value2 = (output154, value124, value1))
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value124 value1 value2 = (output754, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input755 value123 value1 value2 = (output755, value374, value1) := by
  rw [input755_def, output755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output754_skip]
  kernel_rfl

theorem node756_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value122 value1 value2 = (output153, value123, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value123 value1 value2 = (output755, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value122 value1 value2 = (output756, value374, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output755_skip]
  kernel_rfl

theorem node757_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value121 value1 value2 = (output152, value122, value1))
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value122 value1 value2 = (output756, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input757 value121 value1 value2 = (output757, value374, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output756_skip]
  kernel_rfl

theorem node758_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value120 value1 value2 = (output151, value121, value1))
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value121 value1 value2 = (output757, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input758 value120 value1 value2 = (output758, value374, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output757_skip]
  kernel_rfl

theorem node759_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value119 value1 value2 = (output150, value120, value1))
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value120 value1 value2 = (output758, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input759 value119 value1 value2 = (output759, value374, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output758_skip]
  kernel_rfl

theorem node760_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value116 value1 value2 = (output149, value119, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value119 value1 value2 = (output759, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value116 value1 value2 = (output760, value374, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value116 value1 value2 = (output144, value116, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value116 value1 value2 = (output760, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value116 value1 value2 = (output761, value374, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value115 value1 value2 = (output143, value116, value1))
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value116 value1 value2 = (output761, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input762 value115 value1 value2 = (output762, value374, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output761_skip]
  kernel_rfl

theorem node763_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value114 value1 value2 = (output142, value115, value1))
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value115 value1 value2 = (output762, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input763 value114 value1 value2 = (output763, value374, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output762_skip]
  kernel_rfl

theorem node764_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value113 value1 value2 = (output141, value114, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value114 value1 value2 = (output763, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value113 value1 value2 = (output764, value374, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value112 value1 value2 = (output140, value113, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value113 value1 value2 = (output764, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value112 value1 value2 = (output765, value374, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value111 value1 value2 = (output139, value112, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value112 value1 value2 = (output765, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value111 value1 value2 = (output766, value374, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value110 value1 value2 = (output138, value111, value1))
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value111 value1 value2 = (output766, value374, value1)) : Flapjack.WordAlloc.removeDeadStructural input767 value110 value1 value2 = (output767, value374, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  try dsimp only
  rw [child766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output138_skip, output766_skip]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages810.Parallel
