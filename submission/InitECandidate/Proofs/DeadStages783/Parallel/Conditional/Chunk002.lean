import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages783.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages783.Parallel
theorem node512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input512 value371 value1 value2 = (output512, value372, value1) := by
  rw [input512_def, output512_def]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value372 value1 value2 = (output513, value373, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value371 value1 value2 = (output512, value372, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value372 value1 value2 = (output513, value373, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value371 value1 value2 = (output514, value373, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value373 value1 value2 = (output515, value371, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input516 value371 value1 value2 = (output516, value371, value1) := by
  rw [input516_def, output516_def]
  kernel_rfl

theorem node517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input517 value371 value1 value2 = (output517, value374, value1) := by
  rw [input517_def, output517_def]
  kernel_rfl

theorem node518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input518 value374 value1 value2 = (output518, value375, value1) := by
  rw [input518_def, output518_def]
  kernel_rfl

theorem node519_cond_eq
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value371 value1 value2 = (output517, value374, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value374 value1 value2 = (output518, value375, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value371 value1 value2 = (output519, value375, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child517]
  try dsimp only
  rw [child518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output517_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input520 value375 value1 value2 = (output520, value376, value1) := by
  rw [input520_def, output520_def]
  kernel_rfl

theorem node521_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value371 value1 value2 = (output519, value375, value1))
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value375 value1 value2 = (output520, value376, value1)) : Flapjack.WordAlloc.removeDeadStructural input521 value371 value1 value2 = (output521, value376, value1) := by
  rw [input521_def, output521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output520_skip]
  kernel_rfl

theorem node522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input522 value376 value1 value2 = (output522, value377, value1) := by
  rw [input522_def, output522_def]
  kernel_rfl

theorem node523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input523 value377 value1 value2 = (output523, value378, value1) := by
  rw [input523_def, output523_def]
  kernel_rfl

theorem node524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input524 value378 value1 value2 = (output524, value378, value1) := by
  rw [input524_def, output524_def]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value378 value1 value2 = (output525, value378, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input526 value378 value1 value2 = (output526, value378, value1) := by
  rw [input526_def, output526_def]
  kernel_rfl

theorem node527_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value378 value1 value2 = (output525, value378, value1))
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value378 value1 value2 = (output526, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input527 value378 value1 value2 = (output527, value378, value1) := by
  rw [input527_def, output527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output526_skip]
  kernel_rfl

theorem node528_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value378 value1 value2 = (output524, value378, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value378 value1 value2 = (output527, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value378 value1 value2 = (output528, value378, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output527_skip]
  kernel_rfl

theorem node529_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value377 value1 value2 = (output523, value378, value1))
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value378 value1 value2 = (output528, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input529 value377 value1 value2 = (output529, value378, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output528_skip]
  kernel_rfl

theorem node530_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value376 value1 value2 = (output522, value377, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value377 value1 value2 = (output529, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value376 value1 value2 = (output530, value378, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value371 value1 value2 = (output521, value376, value1))
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value376 value1 value2 = (output530, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input531 value371 value1 value2 = (output531, value378, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output530_skip]
  kernel_rfl

theorem node532_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value371 value1 value2 = (output516, value371, value1))
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value371 value1 value2 = (output531, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input532 value371 value1 value2 = (output532, value378, value1) := by
  rw [input532_def, output532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output531_skip]
  kernel_rfl

theorem node533_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value373 value1 value2 = (output515, value371, value1))
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value371 value1 value2 = (output532, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input533 value373 value1 value2 = (output533, value378, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output532_skip]
  kernel_rfl

theorem node534_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value371 value1 value2 = (output514, value373, value1))
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value373 value1 value2 = (output533, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input534 value371 value1 value2 = (output534, value378, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output533_skip]
  kernel_rfl

theorem node535_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value369 value1 value2 = (output511, value371, value1))
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value371 value1 value2 = (output534, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input535 value369 value1 value2 = (output535, value378, value1) := by
  rw [input535_def, output535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output534_skip]
  kernel_rfl

theorem node536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input536 value369 value1 value2 = (output536, value369, value1) := by
  rw [input536_def, output536_def]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value369 value1 value2 = (output537, value369, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input538 value369 value1 value2 = (output538, value379, value1) := by
  rw [input538_def, output538_def]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value379 value1 value2 = (output539, value379, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value379 value1 value2 = (output540, value379, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value379 value1 value2 = (output539, value379, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value379 value1 value2 = (output540, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value379 value1 value2 = (output541, value379, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value369 value1 value2 = (output538, value379, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value379 value1 value2 = (output541, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value369 value1 value2 = (output542, value379, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output541_skip]
  kernel_rfl

theorem node543_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value369 value1 value2 = (output537, value369, value1))
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value369 value1 value2 = (output542, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input543 value369 value1 value2 = (output543, value379, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output542_skip]
  kernel_rfl

theorem node544_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value369 value1 value2 = (output536, value369, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value369 value1 value2 = (output543, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value369 value1 value2 = (output544, value379, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value379 value1 value2 = (output545, value380, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value369 value1 value2 = (output544, value379, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value379 value1 value2 = (output545, value380, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value369 value1 value2 = (output546, value380, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value380 value1 value2 = (output547, value380, value1) := by
  rw [input547_def, output547_def]
  kernel_rfl

theorem node548_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value369 value1 value2 = (output546, value380, value1))
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value380 value1 value2 = (output547, value380, value1)) : Flapjack.WordAlloc.removeDeadStructural input548 value369 value1 value2 = (output548, value380, value1) := by
  rw [input548_def, output548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output547_skip]
  kernel_rfl

theorem node549_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value369 value1 value2 = (output535, value378, value1))
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value369 value1 value2 = (output548, value380, value1)) : Flapjack.WordAlloc.removeDeadStructural input549 value369 value1 value2 = (output549, value383, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child535]
  try dsimp only
  rw [child548]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output548_skip]
  kernel_rfl

theorem node550_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value369 value1 value2 = (output500, value369, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value369 value1 value2 = (output549, value383, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value369 value1 value2 = (output550, value383, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value383 value1 value2 = (output551, value384, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input552 value384 value1 value2 = (output552, value385, value1) := by
  rw [input552_def, output552_def]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value385 value1 value2 = (output553, value385, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value385 value1 value2 = (output554, value386, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value386 value1 value2 = (output555, value387, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value385 value1 value2 = (output554, value386, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value386 value1 value2 = (output555, value387, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value385 value1 value2 = (output556, value387, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value387 value1 value2 = (output557, value388, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value385 value1 value2 = (output556, value387, value1))
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value387 value1 value2 = (output557, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input558 value385 value1 value2 = (output558, value388, value1) := by
  rw [input558_def, output558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output557_skip]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value388 value1 value2 = (output559, value389, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value389 value1 value2 = (output560, value390, value1) := by
  rw [input560_def, output560_def]
  kernel_rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value390 value1 value2 = (output561, value391, value1) := by
  rw [input561_def, output561_def]
  kernel_rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value391 value1 value2 = (output562, value392, value1) := by
  rw [input562_def, output562_def]
  kernel_rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value392 value1 value2 = (output563, value393, value1) := by
  rw [input563_def, output563_def]
  kernel_rfl

theorem node564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input564 value393 value1 value2 = (output564, value394, value1) := by
  rw [input564_def, output564_def]
  kernel_rfl

theorem node565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input565 value394 value1 value2 = (output565, value395, value1) := by
  rw [input565_def, output565_def]
  kernel_rfl

theorem node566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input566 value395 value1 value2 = (output566, value396, value1) := by
  rw [input566_def, output566_def]
  kernel_rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value396 value1 value2 = (output567, value397, value1) := by
  rw [input567_def, output567_def]
  kernel_rfl

theorem node568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input568 value397 value1 value2 = (output568, value398, value1) := by
  rw [input568_def, output568_def]
  kernel_rfl

theorem node569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input569 value398 value1 value2 = (output569, value399, value1) := by
  rw [input569_def, output569_def]
  kernel_rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value399 value1 value2 = (output570, value400, value1) := by
  rw [input570_def, output570_def]
  kernel_rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value400 value1 value2 = (output571, value400, value1) := by
  rw [input571_def, output571_def]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value400 value1 value2 = (output572, value400, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value400 value1 value2 = (output573, value400, value1) := by
  rw [input573_def, output573_def]
  kernel_rfl

theorem node574_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value400 value1 value2 = (output572, value400, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value400 value1 value2 = (output573, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value400 value1 value2 = (output574, value400, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value400 value1 value2 = (output571, value400, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value400 value1 value2 = (output574, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value400 value1 value2 = (output575, value400, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value399 value1 value2 = (output570, value400, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value400 value1 value2 = (output575, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value399 value1 value2 = (output576, value400, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output570_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value398 value1 value2 = (output569, value399, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value399 value1 value2 = (output576, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value398 value1 value2 = (output577, value400, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value397 value1 value2 = (output568, value398, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value398 value1 value2 = (output577, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value397 value1 value2 = (output578, value400, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value396 value1 value2 = (output567, value397, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value397 value1 value2 = (output578, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value396 value1 value2 = (output579, value400, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value395 value1 value2 = (output566, value396, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value396 value1 value2 = (output579, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value395 value1 value2 = (output580, value400, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value394 value1 value2 = (output565, value395, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value395 value1 value2 = (output580, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value394 value1 value2 = (output581, value400, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output565_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value393 value1 value2 = (output564, value394, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value394 value1 value2 = (output581, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value393 value1 value2 = (output582, value400, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output564_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value392 value1 value2 = (output563, value393, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value393 value1 value2 = (output582, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value392 value1 value2 = (output583, value400, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value391 value1 value2 = (output562, value392, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value392 value1 value2 = (output583, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value391 value1 value2 = (output584, value400, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value390 value1 value2 = (output561, value391, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value391 value1 value2 = (output584, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value390 value1 value2 = (output585, value400, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value389 value1 value2 = (output560, value390, value1))
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value390 value1 value2 = (output585, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input586 value389 value1 value2 = (output586, value400, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output585_skip]
  kernel_rfl

theorem node587_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value388 value1 value2 = (output559, value389, value1))
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value389 value1 value2 = (output586, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input587 value388 value1 value2 = (output587, value400, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output586_skip]
  kernel_rfl

theorem node588_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value385 value1 value2 = (output558, value388, value1))
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value388 value1 value2 = (output587, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input588 value385 value1 value2 = (output588, value400, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output587_skip]
  kernel_rfl

theorem node589_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value385 value1 value2 = (output553, value385, value1))
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value385 value1 value2 = (output588, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input589 value385 value1 value2 = (output589, value400, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output588_skip]
  kernel_rfl

theorem node590_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value384 value1 value2 = (output552, value385, value1))
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value385 value1 value2 = (output589, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input590 value384 value1 value2 = (output590, value400, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output589_skip]
  kernel_rfl

theorem node591_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value383 value1 value2 = (output551, value384, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value384 value1 value2 = (output590, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value383 value1 value2 = (output591, value400, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value369 value1 value2 = (output550, value383, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value383 value1 value2 = (output591, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value369 value1 value2 = (output592, value400, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value369 value1 value2 = (output495, value369, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value369 value1 value2 = (output592, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value369 value1 value2 = (output593, value400, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value368 value1 value2 = (output494, value369, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value369 value1 value2 = (output593, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value368 value1 value2 = (output594, value400, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value363 value1 value2 = (output493, value368, value1))
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value368 value1 value2 = (output594, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input595 value363 value1 value2 = (output595, value400, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output594_skip]
  kernel_rfl

theorem node596_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value363 value1 value2 = (output488, value363, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value363 value1 value2 = (output595, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value363 value1 value2 = (output596, value400, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value365 value1 value2 = (output487, value363, value1))
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value363 value1 value2 = (output596, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input597 value365 value1 value2 = (output597, value400, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output596_skip]
  kernel_rfl

theorem node598_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value363 value1 value2 = (output486, value365, value1))
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value365 value1 value2 = (output597, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input598 value363 value1 value2 = (output598, value400, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output597_skip]
  kernel_rfl

theorem node599_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value325 value1 value2 = (output483, value363, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value363 value1 value2 = (output598, value400, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value325 value1 value2 = (output599, value400, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output598_skip]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value325 value1 value2 = (output600, value325, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value325 value1 value2 = (output601, value401, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value401 value1 value2 = (output602, value402, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input603 value402 value1 value2 = (output603, value402, value1) := by
  rw [input603_def, output603_def]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value402 value1 value2 = (output604, value403, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input605 value403 value1 value2 = (output605, value404, value1) := by
  rw [input605_def, output605_def]
  kernel_rfl

theorem node606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input606 value404 value1 value2 = (output606, value405, value1) := by
  rw [input606_def, output606_def]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value405 value1 value2 = (output607, value406, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value406 value1 value2 = (output608, value406, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value406 value1 value2 = (output609, value407, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value407 value1 value2 = (output610, value408, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value408 value1 value2 = (output611, value409, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value409 value1 value2 = (output612, value410, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input613 value410 value1 value2 = (output613, value411, value1) := by
  rw [input613_def, output613_def]
  kernel_rfl

theorem node614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input614 value411 value1 value2 = (output614, value412, value1) := by
  rw [input614_def, output614_def]
  kernel_rfl

theorem node615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input615 value412 value1 value2 = (output615, value413, value1) := by
  rw [input615_def, output615_def]
  kernel_rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value413 value1 value2 = (output616, value414, value1) := by
  rw [input616_def, output616_def]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value414 value1 value2 = (output617, value415, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value415 value1 value2 = (output618, value416, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value416 value1 value2 = (output619, value417, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input620 value417 value1 value2 = (output620, value418, value1) := by
  rw [input620_def, output620_def]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value418 value1 value2 = (output621, value419, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value419 value1 value2 = (output622, value420, value1) := by
  rw [input622_def, output622_def]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value420 value1 value2 = (output623, value421, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value421 value1 value2 = (output624, value422, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value422 value1 value2 = (output625, value423, value1) := by
  rw [input625_def, output625_def]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value423 value1 value2 = (output626, value424, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value424 value1 value2 = (output627, value425, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value425 value1 value2 = (output628, value426, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value426 value1 value2 = (output629, value427, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value427 value1 value2 = (output630, value428, value1) := by
  rw [input630_def, output630_def]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value428 value1 value2 = (output631, value429, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value429 value1 value2 = (output632, value430, value1) := by
  rw [input632_def, output632_def]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value430 value1 value2 = (output633, value431, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value431 value1 value2 = (output634, value432, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input635 value432 value1 value2 = (output635, value433, value1) := by
  rw [input635_def, output635_def]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value433 value1 value2 = (output636, value434, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value434 value1 value2 = (output637, value435, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value435 value1 value2 = (output638, value436, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value436 value1 value2 = (output639, value437, value1) := by
  rw [input639_def, output639_def]
  kernel_rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value437 value1 value2 = (output640, value437, value1) := by
  rw [input640_def, output640_def]
  kernel_rfl

theorem node641_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value436 value1 value2 = (output639, value437, value1))
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value437 value1 value2 = (output640, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input641 value436 value1 value2 = (output641, value437, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output640_skip]
  kernel_rfl

theorem node642_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value435 value1 value2 = (output638, value436, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value436 value1 value2 = (output641, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value435 value1 value2 = (output642, value437, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value434 value1 value2 = (output637, value435, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value435 value1 value2 = (output642, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value434 value1 value2 = (output643, value437, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value433 value1 value2 = (output636, value434, value1))
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value434 value1 value2 = (output643, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input644 value433 value1 value2 = (output644, value437, value1) := by
  rw [input644_def, output644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output643_skip]
  kernel_rfl

theorem node645_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value432 value1 value2 = (output635, value433, value1))
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value433 value1 value2 = (output644, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input645 value432 value1 value2 = (output645, value437, value1) := by
  rw [input645_def, output645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output644_skip]
  kernel_rfl

theorem node646_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value431 value1 value2 = (output634, value432, value1))
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value432 value1 value2 = (output645, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input646 value431 value1 value2 = (output646, value437, value1) := by
  rw [input646_def, output646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output645_skip]
  kernel_rfl

theorem node647_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value430 value1 value2 = (output633, value431, value1))
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value431 value1 value2 = (output646, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input647 value430 value1 value2 = (output647, value437, value1) := by
  rw [input647_def, output647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output646_skip]
  kernel_rfl

theorem node648_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value429 value1 value2 = (output632, value430, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value430 value1 value2 = (output647, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value429 value1 value2 = (output648, value437, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value428 value1 value2 = (output631, value429, value1))
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value429 value1 value2 = (output648, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input649 value428 value1 value2 = (output649, value437, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output648_skip]
  kernel_rfl

theorem node650_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value427 value1 value2 = (output630, value428, value1))
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value428 value1 value2 = (output649, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input650 value427 value1 value2 = (output650, value437, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output649_skip]
  kernel_rfl

theorem node651_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value426 value1 value2 = (output629, value427, value1))
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value427 value1 value2 = (output650, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input651 value426 value1 value2 = (output651, value437, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output650_skip]
  kernel_rfl

theorem node652_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value425 value1 value2 = (output628, value426, value1))
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value426 value1 value2 = (output651, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input652 value425 value1 value2 = (output652, value437, value1) := by
  rw [input652_def, output652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output651_skip]
  kernel_rfl

theorem node653_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value424 value1 value2 = (output627, value425, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value425 value1 value2 = (output652, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value424 value1 value2 = (output653, value437, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value423 value1 value2 = (output626, value424, value1))
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value424 value1 value2 = (output653, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input654 value423 value1 value2 = (output654, value437, value1) := by
  rw [input654_def, output654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output653_skip]
  kernel_rfl

theorem node655_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value422 value1 value2 = (output625, value423, value1))
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value423 value1 value2 = (output654, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input655 value422 value1 value2 = (output655, value437, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output654_skip]
  kernel_rfl

theorem node656_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value421 value1 value2 = (output624, value422, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value422 value1 value2 = (output655, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value421 value1 value2 = (output656, value437, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value420 value1 value2 = (output623, value421, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value421 value1 value2 = (output656, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value420 value1 value2 = (output657, value437, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value419 value1 value2 = (output622, value420, value1))
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value420 value1 value2 = (output657, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input658 value419 value1 value2 = (output658, value437, value1) := by
  rw [input658_def, output658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output657_skip]
  kernel_rfl

theorem node659_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value418 value1 value2 = (output621, value419, value1))
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value419 value1 value2 = (output658, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input659 value418 value1 value2 = (output659, value437, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  try dsimp only
  rw [child658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output658_skip]
  kernel_rfl

theorem node660_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value417 value1 value2 = (output620, value418, value1))
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value418 value1 value2 = (output659, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input660 value417 value1 value2 = (output660, value437, value1) := by
  rw [input660_def, output660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output659_skip]
  kernel_rfl

theorem node661_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value416 value1 value2 = (output619, value417, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value417 value1 value2 = (output660, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value416 value1 value2 = (output661, value437, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output660_skip]
  kernel_rfl

theorem node662_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value415 value1 value2 = (output618, value416, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value416 value1 value2 = (output661, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value415 value1 value2 = (output662, value437, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output661_skip]
  kernel_rfl

theorem node663_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value414 value1 value2 = (output617, value415, value1))
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value415 value1 value2 = (output662, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input663 value414 value1 value2 = (output663, value437, value1) := by
  rw [input663_def, output663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output662_skip]
  kernel_rfl

theorem node664_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value413 value1 value2 = (output616, value414, value1))
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value414 value1 value2 = (output663, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input664 value413 value1 value2 = (output664, value437, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output663_skip]
  kernel_rfl

theorem node665_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value412 value1 value2 = (output615, value413, value1))
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value413 value1 value2 = (output664, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input665 value412 value1 value2 = (output665, value437, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output664_skip]
  kernel_rfl

theorem node666_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value411 value1 value2 = (output614, value412, value1))
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value412 value1 value2 = (output665, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input666 value411 value1 value2 = (output666, value437, value1) := by
  rw [input666_def, output666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output665_skip]
  kernel_rfl

theorem node667_cond_eq
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value410 value1 value2 = (output613, value411, value1))
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value411 value1 value2 = (output666, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input667 value410 value1 value2 = (output667, value437, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child613]
  try dsimp only
  rw [child666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output613_skip, output666_skip]
  kernel_rfl

theorem node668_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value409 value1 value2 = (output612, value410, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value410 value1 value2 = (output667, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value409 value1 value2 = (output668, value437, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value408 value1 value2 = (output611, value409, value1))
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value409 value1 value2 = (output668, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input669 value408 value1 value2 = (output669, value437, value1) := by
  rw [input669_def, output669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output668_skip]
  kernel_rfl

theorem node670_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value407 value1 value2 = (output610, value408, value1))
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value408 value1 value2 = (output669, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input670 value407 value1 value2 = (output670, value437, value1) := by
  rw [input670_def, output670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output669_skip]
  kernel_rfl

theorem node671_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value406 value1 value2 = (output609, value407, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value407 value1 value2 = (output670, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value406 value1 value2 = (output671, value437, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value406 value1 value2 = (output608, value406, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value406 value1 value2 = (output671, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value406 value1 value2 = (output672, value437, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value405 value1 value2 = (output607, value406, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value406 value1 value2 = (output672, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value405 value1 value2 = (output673, value437, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value404 value1 value2 = (output606, value405, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value405 value1 value2 = (output673, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value404 value1 value2 = (output674, value437, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value403 value1 value2 = (output605, value404, value1))
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value404 value1 value2 = (output674, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input675 value403 value1 value2 = (output675, value437, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output674_skip]
  kernel_rfl

theorem node676_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value402 value1 value2 = (output604, value403, value1))
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value403 value1 value2 = (output675, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input676 value402 value1 value2 = (output676, value437, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output675_skip]
  kernel_rfl

theorem node677_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value402 value1 value2 = (output603, value402, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value402 value1 value2 = (output676, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value402 value1 value2 = (output677, value437, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output676_skip]
  kernel_rfl

theorem node678_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value401 value1 value2 = (output602, value402, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value402 value1 value2 = (output677, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value401 value1 value2 = (output678, value437, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value325 value1 value2 = (output601, value401, value1))
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value401 value1 value2 = (output678, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input679 value325 value1 value2 = (output679, value437, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output678_skip]
  kernel_rfl

theorem node680_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value325 value1 value2 = (output600, value325, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value325 value1 value2 = (output679, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value325 value1 value2 = (output680, value437, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value437 value1 value2 = (output681, value438, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value325 value1 value2 = (output680, value437, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value437 value1 value2 = (output681, value438, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value325 value1 value2 = (output682, value438, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input683 value438 value1 value2 = (output683, value438, value1) := by
  rw [input683_def, output683_def]
  kernel_rfl

theorem node684_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value325 value1 value2 = (output682, value438, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value438 value1 value2 = (output683, value438, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value325 value1 value2 = (output684, value438, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output682_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value325 value1 value2 = (output599, value400, value1))
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value325 value1 value2 = (output684, value438, value1)) : Flapjack.WordAlloc.removeDeadStructural input685 value325 value1 value2 = (output685, value440, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child599]
  try dsimp only
  rw [child684]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output684_skip]
  kernel_rfl

theorem node686_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value325 value1 value2 = (output400, value325, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value325 value1 value2 = (output685, value440, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value325 value1 value2 = (output686, value440, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value440 value1 value2 = (output687, value441, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value441 value1 value2 = (output688, value442, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value442 value1 value2 = (output689, value442, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value442 value1 value2 = (output690, value443, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value443 value1 value2 = (output691, value444, value1) := by
  rw [input691_def, output691_def]
  kernel_rfl

theorem node692_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value442 value1 value2 = (output690, value443, value1))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value443 value1 value2 = (output691, value444, value1)) : Flapjack.WordAlloc.removeDeadStructural input692 value442 value1 value2 = (output692, value444, value1) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output691_skip]
  kernel_rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value444 value1 value2 = (output693, value445, value1) := by
  rw [input693_def, output693_def]
  kernel_rfl

theorem node694_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value442 value1 value2 = (output692, value444, value1))
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value444 value1 value2 = (output693, value445, value1)) : Flapjack.WordAlloc.removeDeadStructural input694 value442 value1 value2 = (output694, value445, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output693_skip]
  kernel_rfl

theorem node695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input695 value445 value1 value2 = (output695, value446, value1) := by
  rw [input695_def, output695_def]
  kernel_rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value446 value1 value2 = (output696, value447, value1) := by
  rw [input696_def, output696_def]
  kernel_rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value447 value1 value2 = (output697, value448, value1) := by
  rw [input697_def, output697_def]
  kernel_rfl

theorem node698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input698 value448 value1 value2 = (output698, value449, value1) := by
  rw [input698_def, output698_def]
  kernel_rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value449 value1 value2 = (output699, value450, value1) := by
  rw [input699_def, output699_def]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value450 value1 value2 = (output700, value451, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value451 value1 value2 = (output701, value452, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value452 value1 value2 = (output702, value453, value1) := by
  rw [input702_def, output702_def]
  kernel_rfl

theorem node703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input703 value453 value1 value2 = (output703, value454, value1) := by
  rw [input703_def, output703_def]
  kernel_rfl

theorem node704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input704 value454 value1 value2 = (output704, value455, value1) := by
  rw [input704_def, output704_def]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value455 value1 value2 = (output705, value456, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value456 value1 value2 = (output706, value457, value1) := by
  rw [input706_def, output706_def]
  kernel_rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value457 value1 value2 = (output707, value457, value1) := by
  rw [input707_def, output707_def]
  kernel_rfl

theorem node708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input708 value457 value1 value2 = (output708, value458, value1) := by
  rw [input708_def, output708_def]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value458 value1 value2 = (output709, value459, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value457 value1 value2 = (output708, value458, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value458 value1 value2 = (output709, value459, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value457 value1 value2 = (output710, value459, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input711 value459 value1 value2 = (output711, value460, value1) := by
  rw [input711_def, output711_def]
  kernel_rfl

theorem node712_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value457 value1 value2 = (output710, value459, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value459 value1 value2 = (output711, value460, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value457 value1 value2 = (output712, value460, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value460 value1 value2 = (output713, value461, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value461 value1 value2 = (output714, value462, value1) := by
  rw [input714_def, output714_def]
  kernel_rfl

theorem node715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input715 value462 value1 value2 = (output715, value463, value1) := by
  rw [input715_def, output715_def]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value463 value1 value2 = (output716, value464, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value464 value1 value2 = (output717, value465, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input718 value465 value1 value2 = (output718, value466, value1) := by
  rw [input718_def, output718_def]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value466 value1 value2 = (output719, value467, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input720 value467 value1 value2 = (output720, value468, value1) := by
  rw [input720_def, output720_def]
  kernel_rfl

theorem node721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input721 value468 value1 value2 = (output721, value469, value1) := by
  rw [input721_def, output721_def]
  kernel_rfl

theorem node722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input722 value469 value1 value2 = (output722, value470, value1) := by
  rw [input722_def, output722_def]
  kernel_rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value470 value1 value2 = (output723, value471, value1) := by
  rw [input723_def, output723_def]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value471 value1 value2 = (output724, value472, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value472 value1 value2 = (output725, value472, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input726 value472 value1 value2 = (output726, value473, value1) := by
  rw [input726_def, output726_def]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value473 value1 value2 = (output727, value474, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value472 value1 value2 = (output726, value473, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value473 value1 value2 = (output727, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value472 value1 value2 = (output728, value474, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output727_skip]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value474 value1 value2 = (output729, value475, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value472 value1 value2 = (output728, value474, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value474 value1 value2 = (output729, value475, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value472 value1 value2 = (output730, value475, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value475 value1 value2 = (output731, value476, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value476 value1 value2 = (output732, value477, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value477 value1 value2 = (output733, value478, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input734 value478 value1 value2 = (output734, value479, value1) := by
  rw [input734_def, output734_def]
  kernel_rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value479 value1 value2 = (output735, value480, value1) := by
  rw [input735_def, output735_def]
  kernel_rfl

theorem node736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input736 value480 value1 value2 = (output736, value481, value1) := by
  rw [input736_def, output736_def]
  kernel_rfl

theorem node737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input737 value481 value1 value2 = (output737, value482, value1) := by
  rw [input737_def, output737_def]
  kernel_rfl

theorem node738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input738 value482 value1 value2 = (output738, value483, value1) := by
  rw [input738_def, output738_def]
  kernel_rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value483 value1 value2 = (output739, value484, value1) := by
  rw [input739_def, output739_def]
  kernel_rfl

theorem node740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input740 value484 value1 value2 = (output740, value485, value1) := by
  rw [input740_def, output740_def]
  kernel_rfl

theorem node741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input741 value485 value1 value2 = (output741, value486, value1) := by
  rw [input741_def, output741_def]
  kernel_rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value486 value1 value2 = (output742, value487, value1) := by
  rw [input742_def, output742_def]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value487 value1 value2 = (output743, value487, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input744 value487 value1 value2 = (output744, value488, value1) := by
  rw [input744_def, output744_def]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value488 value1 value2 = (output745, value489, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value487 value1 value2 = (output744, value488, value1))
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value488 value1 value2 = (output745, value489, value1)) : Flapjack.WordAlloc.removeDeadStructural input746 value487 value1 value2 = (output746, value489, value1) := by
  rw [input746_def, output746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output745_skip]
  kernel_rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value489 value1 value2 = (output747, value490, value1) := by
  rw [input747_def, output747_def]
  kernel_rfl

theorem node748_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value487 value1 value2 = (output746, value489, value1))
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value489 value1 value2 = (output747, value490, value1)) : Flapjack.WordAlloc.removeDeadStructural input748 value487 value1 value2 = (output748, value490, value1) := by
  rw [input748_def, output748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output747_skip]
  kernel_rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value490 value1 value2 = (output749, value491, value1) := by
  rw [input749_def, output749_def]
  kernel_rfl

theorem node750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input750 value491 value1 value2 = (output750, value492, value1) := by
  rw [input750_def, output750_def]
  kernel_rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value492 value1 value2 = (output751, value493, value1) := by
  rw [input751_def, output751_def]
  kernel_rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value493 value1 value2 = (output752, value494, value1) := by
  rw [input752_def, output752_def]
  kernel_rfl

theorem node753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input753 value494 value1 value2 = (output753, value495, value1) := by
  rw [input753_def, output753_def]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value495 value1 value2 = (output754, value496, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value496 value1 value2 = (output755, value497, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input756 value497 value1 value2 = (output756, value498, value1) := by
  rw [input756_def, output756_def]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value498 value1 value2 = (output757, value499, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value499 value1 value2 = (output758, value500, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value500 value1 value2 = (output759, value501, value1) := by
  rw [input759_def, output759_def]
  kernel_rfl

theorem node760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input760 value501 value1 value2 = (output760, value502, value1) := by
  rw [input760_def, output760_def]
  kernel_rfl

theorem node761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input761 value502 value1 value2 = (output761, value502, value1) := by
  rw [input761_def, output761_def]
  kernel_rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value502 value1 value2 = (output762, value503, value1) := by
  rw [input762_def, output762_def]
  kernel_rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value503 value1 value2 = (output763, value504, value1) := by
  rw [input763_def, output763_def]
  kernel_rfl

theorem node764_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value502 value1 value2 = (output762, value503, value1))
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value503 value1 value2 = (output763, value504, value1)) : Flapjack.WordAlloc.removeDeadStructural input764 value502 value1 value2 = (output764, value504, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output763_skip]
  kernel_rfl

theorem node765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input765 value504 value1 value2 = (output765, value505, value1) := by
  rw [input765_def, output765_def]
  kernel_rfl

theorem node766_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value502 value1 value2 = (output764, value504, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value504 value1 value2 = (output765, value505, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value502 value1 value2 = (output766, value505, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value505 value1 value2 = (output767, value506, value1) := by
  rw [input767_def, output767_def]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages783.Parallel
