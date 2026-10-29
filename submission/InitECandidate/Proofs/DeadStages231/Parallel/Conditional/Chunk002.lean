import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages231.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages231.Parallel
theorem node512_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value291 value1 value2 = (output474, value292, value1))
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value292 value1 value2 = (output511, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input512 value291 value1 value2 = (output512, value304, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output511_skip]
  kernel_rfl

theorem node513_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value290 value1 value2 = (output473, value291, value1))
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value291 value1 value2 = (output512, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input513 value290 value1 value2 = (output513, value304, value1) := by
  rw [input513_def, output513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output512_skip]
  kernel_rfl

theorem node514_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value289 value1 value2 = (output472, value290, value1))
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value290 value1 value2 = (output513, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input514 value289 value1 value2 = (output514, value304, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output513_skip]
  kernel_rfl

theorem node515_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value288 value1 value2 = (output471, value289, value1))
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value289 value1 value2 = (output514, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input515 value288 value1 value2 = (output515, value304, value1) := by
  rw [input515_def, output515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output514_skip]
  kernel_rfl

theorem node516_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value287 value1 value2 = (output470, value288, value1))
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value288 value1 value2 = (output515, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input516 value287 value1 value2 = (output516, value304, value1) := by
  rw [input516_def, output516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output515_skip]
  kernel_rfl

theorem node517_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value286 value1 value2 = (output469, value287, value1))
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value287 value1 value2 = (output516, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input517 value286 value1 value2 = (output517, value304, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output516_skip]
  kernel_rfl

theorem node518_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value285 value1 value2 = (output468, value286, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value286 value1 value2 = (output517, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value285 value1 value2 = (output518, value304, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value284 value1 value2 = (output467, value285, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value285 value1 value2 = (output518, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value284 value1 value2 = (output519, value304, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value283 value1 value2 = (output466, value284, value1))
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value284 value1 value2 = (output519, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input520 value283 value1 value2 = (output520, value304, value1) := by
  rw [input520_def, output520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output519_skip]
  kernel_rfl

theorem node521_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value282 value1 value2 = (output465, value283, value1))
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value283 value1 value2 = (output520, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input521 value282 value1 value2 = (output521, value304, value1) := by
  rw [input521_def, output521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output520_skip]
  kernel_rfl

theorem node522_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value281 value1 value2 = (output464, value282, value1))
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value282 value1 value2 = (output521, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input522 value281 value1 value2 = (output522, value304, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output521_skip]
  kernel_rfl

theorem node523_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value280 value1 value2 = (output463, value281, value1))
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value281 value1 value2 = (output522, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input523 value280 value1 value2 = (output523, value304, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output522_skip]
  kernel_rfl

theorem node524_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value215 value1 value2 = (output462, value280, value1))
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value280 value1 value2 = (output523, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input524 value215 value1 value2 = (output524, value304, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output523_skip]
  kernel_rfl

theorem node525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input525 value304 value1 value2 = (output525, value305, value1) := by
  rw [input525_def, output525_def]
  kernel_rfl

theorem node526_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value215 value1 value2 = (output524, value304, value1))
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value304 value1 value2 = (output525, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input526 value215 value1 value2 = (output526, value305, value1) := by
  rw [input526_def, output526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output525_skip]
  kernel_rfl

theorem node527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input527 value305 value1 value2 = (output527, value305, value1) := by
  rw [input527_def, output527_def]
  kernel_rfl

theorem node528_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value215 value1 value2 = (output526, value305, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value305 value1 value2 = (output527, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value215 value1 value2 = (output528, value305, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output527_skip]
  kernel_rfl

theorem node529_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value215 value1 value2 = (output461, value279, value1))
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value215 value1 value2 = (output528, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input529 value215 value1 value2 = (output529, value307, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child461]
  try dsimp only
  rw [child528]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output528_skip]
  kernel_rfl

theorem node530_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value215 value1 value2 = (output278, value215, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value215 value1 value2 = (output529, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value215 value1 value2 = (output530, value307, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input531 value307 value1 value2 = (output531, value308, value1) := by
  rw [input531_def, output531_def]
  kernel_rfl

theorem node532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input532 value308 value1 value2 = (output532, value309, value1) := by
  rw [input532_def, output532_def]
  kernel_rfl

theorem node533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input533 value309 value1 value2 = (output533, value309, value1) := by
  rw [input533_def, output533_def]
  kernel_rfl

theorem node534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input534 value309 value1 value2 = (output534, value310, value1) := by
  rw [input534_def, output534_def]
  kernel_rfl

theorem node535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input535 value310 value1 value2 = (output535, value311, value1) := by
  rw [input535_def, output535_def]
  kernel_rfl

theorem node536_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value309 value1 value2 = (output534, value310, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value310 value1 value2 = (output535, value311, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value309 value1 value2 = (output536, value311, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output535_skip]
  kernel_rfl

theorem node537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input537 value311 value1 value2 = (output537, value312, value1) := by
  rw [input537_def, output537_def]
  kernel_rfl

theorem node538_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value309 value1 value2 = (output536, value311, value1))
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value311 value1 value2 = (output537, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input538 value309 value1 value2 = (output538, value312, value1) := by
  rw [input538_def, output538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output537_skip]
  kernel_rfl

theorem node539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input539 value312 value1 value2 = (output539, value313, value1) := by
  rw [input539_def, output539_def]
  kernel_rfl

theorem node540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input540 value313 value1 value2 = (output540, value314, value1) := by
  rw [input540_def, output540_def]
  kernel_rfl

theorem node541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input541 value314 value1 value2 = (output541, value315, value1) := by
  rw [input541_def, output541_def]
  kernel_rfl

theorem node542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input542 value315 value1 value2 = (output542, value316, value1) := by
  rw [input542_def, output542_def]
  kernel_rfl

theorem node543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input543 value316 value1 value2 = (output543, value317, value1) := by
  rw [input543_def, output543_def]
  kernel_rfl

theorem node544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input544 value317 value1 value2 = (output544, value318, value1) := by
  rw [input544_def, output544_def]
  kernel_rfl

theorem node545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input545 value318 value1 value2 = (output545, value319, value1) := by
  rw [input545_def, output545_def]
  kernel_rfl

theorem node546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input546 value319 value1 value2 = (output546, value320, value1) := by
  rw [input546_def, output546_def]
  kernel_rfl

theorem node547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input547 value320 value1 value2 = (output547, value320, value1) := by
  rw [input547_def, output547_def]
  kernel_rfl

theorem node548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input548 value320 value1 value2 = (output548, value321, value1) := by
  rw [input548_def, output548_def]
  kernel_rfl

theorem node549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input549 value321 value1 value2 = (output549, value322, value1) := by
  rw [input549_def, output549_def]
  kernel_rfl

theorem node550_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value320 value1 value2 = (output548, value321, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value321 value1 value2 = (output549, value322, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value320 value1 value2 = (output550, value322, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input551 value322 value1 value2 = (output551, value323, value1) := by
  rw [input551_def, output551_def]
  kernel_rfl

theorem node552_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value320 value1 value2 = (output550, value322, value1))
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value322 value1 value2 = (output551, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input552 value320 value1 value2 = (output552, value323, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output551_skip]
  kernel_rfl

theorem node553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input553 value323 value1 value2 = (output553, value324, value1) := by
  rw [input553_def, output553_def]
  kernel_rfl

theorem node554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input554 value324 value1 value2 = (output554, value325, value1) := by
  rw [input554_def, output554_def]
  kernel_rfl

theorem node555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input555 value325 value1 value2 = (output555, value326, value1) := by
  rw [input555_def, output555_def]
  kernel_rfl

theorem node556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input556 value326 value1 value2 = (output556, value327, value1) := by
  rw [input556_def, output556_def]
  kernel_rfl

theorem node557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input557 value327 value1 value2 = (output557, value328, value1) := by
  rw [input557_def, output557_def]
  kernel_rfl

theorem node558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input558 value328 value1 value2 = (output558, value329, value1) := by
  rw [input558_def, output558_def]
  kernel_rfl

theorem node559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input559 value329 value1 value2 = (output559, value330, value1) := by
  rw [input559_def, output559_def]
  kernel_rfl

theorem node560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input560 value330 value1 value2 = (output560, value331, value1) := by
  rw [input560_def, output560_def]
  kernel_rfl

theorem node561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input561 value331 value1 value2 = (output561, value331, value1) := by
  rw [input561_def, output561_def]
  kernel_rfl

theorem node562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input562 value331 value1 value2 = (output562, value332, value1) := by
  rw [input562_def, output562_def]
  kernel_rfl

theorem node563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input563 value332 value1 value2 = (output563, value333, value1) := by
  rw [input563_def, output563_def]
  kernel_rfl

theorem node564_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value331 value1 value2 = (output562, value332, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value332 value1 value2 = (output563, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value331 value1 value2 = (output564, value333, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input565 value333 value1 value2 = (output565, value334, value1) := by
  rw [input565_def, output565_def]
  kernel_rfl

theorem node566_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value331 value1 value2 = (output564, value333, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value333 value1 value2 = (output565, value334, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value331 value1 value2 = (output566, value334, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output564_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input567 value334 value1 value2 = (output567, value335, value1) := by
  rw [input567_def, output567_def]
  kernel_rfl

theorem node568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input568 value335 value1 value2 = (output568, value336, value1) := by
  rw [input568_def, output568_def]
  kernel_rfl

theorem node569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input569 value336 value1 value2 = (output569, value337, value1) := by
  rw [input569_def, output569_def]
  kernel_rfl

theorem node570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input570 value337 value1 value2 = (output570, value338, value1) := by
  rw [input570_def, output570_def]
  kernel_rfl

theorem node571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input571 value338 value1 value2 = (output571, value339, value1) := by
  rw [input571_def, output571_def]
  kernel_rfl

theorem node572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input572 value339 value1 value2 = (output572, value340, value1) := by
  rw [input572_def, output572_def]
  kernel_rfl

theorem node573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input573 value340 value1 value2 = (output573, value341, value1) := by
  rw [input573_def, output573_def]
  kernel_rfl

theorem node574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input574 value341 value1 value2 = (output574, value342, value1) := by
  rw [input574_def, output574_def]
  kernel_rfl

theorem node575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input575 value342 value1 value2 = (output575, value342, value1) := by
  rw [input575_def, output575_def]
  kernel_rfl

theorem node576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input576 value342 value1 value2 = (output576, value343, value1) := by
  rw [input576_def, output576_def]
  kernel_rfl

theorem node577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input577 value343 value1 value2 = (output577, value344, value1) := by
  rw [input577_def, output577_def]
  kernel_rfl

theorem node578_cond_eq
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value342 value1 value2 = (output576, value343, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value343 value1 value2 = (output577, value344, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value342 value1 value2 = (output578, value344, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child576]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output576_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input579 value344 value1 value2 = (output579, value345, value1) := by
  rw [input579_def, output579_def]
  kernel_rfl

theorem node580_cond_eq
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value342 value1 value2 = (output578, value344, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value344 value1 value2 = (output579, value345, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value342 value1 value2 = (output580, value345, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child578]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output578_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input581 value345 value1 value2 = (output581, value346, value1) := by
  rw [input581_def, output581_def]
  kernel_rfl

theorem node582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input582 value346 value1 value2 = (output582, value347, value1) := by
  rw [input582_def, output582_def]
  kernel_rfl

theorem node583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input583 value347 value1 value2 = (output583, value348, value1) := by
  rw [input583_def, output583_def]
  kernel_rfl

theorem node584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input584 value348 value1 value2 = (output584, value349, value1) := by
  rw [input584_def, output584_def]
  kernel_rfl

theorem node585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input585 value349 value1 value2 = (output585, value350, value1) := by
  rw [input585_def, output585_def]
  kernel_rfl

theorem node586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input586 value350 value1 value2 = (output586, value351, value1) := by
  rw [input586_def, output586_def]
  kernel_rfl

theorem node587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input587 value351 value1 value2 = (output587, value352, value1) := by
  rw [input587_def, output587_def]
  kernel_rfl

theorem node588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input588 value352 value1 value2 = (output588, value353, value1) := by
  rw [input588_def, output588_def]
  kernel_rfl

theorem node589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input589 value353 value1 value2 = (output589, value353, value1) := by
  rw [input589_def, output589_def]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value353 value1 value2 = (output590, value354, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input591 value354 value1 value2 = (output591, value355, value1) := by
  rw [input591_def, output591_def]
  kernel_rfl

theorem node592_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value353 value1 value2 = (output590, value354, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value354 value1 value2 = (output591, value355, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value353 value1 value2 = (output592, value355, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input593 value355 value1 value2 = (output593, value356, value1) := by
  rw [input593_def, output593_def]
  kernel_rfl

theorem node594_cond_eq
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value353 value1 value2 = (output592, value355, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value355 value1 value2 = (output593, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value353 value1 value2 = (output594, value356, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child592]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output592_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input595 value356 value1 value2 = (output595, value357, value1) := by
  rw [input595_def, output595_def]
  kernel_rfl

theorem node596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input596 value357 value1 value2 = (output596, value358, value1) := by
  rw [input596_def, output596_def]
  kernel_rfl

theorem node597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input597 value358 value1 value2 = (output597, value359, value1) := by
  rw [input597_def, output597_def]
  kernel_rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value359 value1 value2 = (output598, value360, value1) := by
  rw [input598_def, output598_def]
  kernel_rfl

theorem node599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input599 value360 value1 value2 = (output599, value361, value1) := by
  rw [input599_def, output599_def]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value361 value1 value2 = (output600, value362, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value362 value1 value2 = (output601, value363, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value363 value1 value2 = (output602, value364, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input603 value364 value1 value2 = (output603, value364, value1) := by
  rw [input603_def, output603_def]
  kernel_rfl

theorem node604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input604 value364 value1 value2 = (output604, value365, value1) := by
  rw [input604_def, output604_def]
  kernel_rfl

theorem node605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input605 value365 value1 value2 = (output605, value366, value1) := by
  rw [input605_def, output605_def]
  kernel_rfl

theorem node606_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value364 value1 value2 = (output604, value365, value1))
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value365 value1 value2 = (output605, value366, value1)) : Flapjack.WordAlloc.removeDeadStructural input606 value364 value1 value2 = (output606, value366, value1) := by
  rw [input606_def, output606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output605_skip]
  kernel_rfl

theorem node607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input607 value366 value1 value2 = (output607, value367, value1) := by
  rw [input607_def, output607_def]
  kernel_rfl

theorem node608_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value364 value1 value2 = (output606, value366, value1))
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value366 value1 value2 = (output607, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input608 value364 value1 value2 = (output608, value367, value1) := by
  rw [input608_def, output608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output607_skip]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value367 value1 value2 = (output609, value368, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input610 value368 value1 value2 = (output610, value369, value1) := by
  rw [input610_def, output610_def]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value369 value1 value2 = (output611, value370, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input612 value370 value1 value2 = (output612, value371, value1) := by
  rw [input612_def, output612_def]
  kernel_rfl

theorem node613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input613 value371 value1 value2 = (output613, value372, value1) := by
  rw [input613_def, output613_def]
  kernel_rfl

theorem node614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input614 value372 value1 value2 = (output614, value373, value1) := by
  rw [input614_def, output614_def]
  kernel_rfl

theorem node615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input615 value373 value1 value2 = (output615, value374, value1) := by
  rw [input615_def, output615_def]
  kernel_rfl

theorem node616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input616 value374 value1 value2 = (output616, value375, value1) := by
  rw [input616_def, output616_def]
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value375 value1 value2 = (output617, value375, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value375 value1 value2 = (output618, value376, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input619 value376 value1 value2 = (output619, value377, value1) := by
  rw [input619_def, output619_def]
  kernel_rfl

theorem node620_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value375 value1 value2 = (output618, value376, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value376 value1 value2 = (output619, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value375 value1 value2 = (output620, value377, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value377 value1 value2 = (output621, value378, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value375 value1 value2 = (output620, value377, value1))
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value377 value1 value2 = (output621, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input622 value375 value1 value2 = (output622, value378, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output621_skip]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value378 value1 value2 = (output623, value379, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value379 value1 value2 = (output624, value380, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value380 value1 value2 = (output625, value381, value1) := by
  rw [input625_def, output625_def]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value381 value1 value2 = (output626, value382, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value382 value1 value2 = (output627, value383, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value383 value1 value2 = (output628, value384, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input629 value384 value1 value2 = (output629, value385, value1) := by
  rw [input629_def, output629_def]
  kernel_rfl

theorem node630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input630 value385 value1 value2 = (output630, value386, value1) := by
  rw [input630_def, output630_def]
  kernel_rfl

theorem node631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input631 value386 value1 value2 = (output631, value386, value1) := by
  rw [input631_def, output631_def]
  kernel_rfl

theorem node632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input632 value386 value1 value2 = (output632, value387, value1) := by
  rw [input632_def, output632_def]
  kernel_rfl

theorem node633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input633 value387 value1 value2 = (output633, value388, value1) := by
  rw [input633_def, output633_def]
  kernel_rfl

theorem node634_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value386 value1 value2 = (output632, value387, value1))
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value387 value1 value2 = (output633, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input634 value386 value1 value2 = (output634, value388, value1) := by
  rw [input634_def, output634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output633_skip]
  kernel_rfl

theorem node635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input635 value388 value1 value2 = (output635, value389, value1) := by
  rw [input635_def, output635_def]
  kernel_rfl

theorem node636_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value386 value1 value2 = (output634, value388, value1))
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value388 value1 value2 = (output635, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input636 value386 value1 value2 = (output636, value389, value1) := by
  rw [input636_def, output636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output635_skip]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value389 value1 value2 = (output637, value390, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value390 value1 value2 = (output638, value391, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value391 value1 value2 = (output639, value392, value1) := by
  rw [input639_def, output639_def]
  kernel_rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value392 value1 value2 = (output640, value393, value1) := by
  rw [input640_def, output640_def]
  kernel_rfl

theorem node641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input641 value393 value1 value2 = (output641, value393, value1) := by
  rw [input641_def, output641_def]
  kernel_rfl

theorem node642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input642 value393 value1 value2 = (output642, value394, value1) := by
  rw [input642_def, output642_def]
  kernel_rfl

theorem node643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input643 value394 value1 value2 = (output643, value395, value1) := by
  rw [input643_def, output643_def]
  kernel_rfl

theorem node644_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value393 value1 value2 = (output642, value394, value1))
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value394 value1 value2 = (output643, value395, value1)) : Flapjack.WordAlloc.removeDeadStructural input644 value393 value1 value2 = (output644, value395, value1) := by
  rw [input644_def, output644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output643_skip]
  kernel_rfl

theorem node645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input645 value395 value1 value2 = (output645, value396, value1) := by
  rw [input645_def, output645_def]
  kernel_rfl

theorem node646_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value393 value1 value2 = (output644, value395, value1))
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value395 value1 value2 = (output645, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input646 value393 value1 value2 = (output646, value396, value1) := by
  rw [input646_def, output646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output645_skip]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value396 value1 value2 = (output647, value397, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input648 value397 value1 value2 = (output648, value398, value1) := by
  rw [input648_def, output648_def]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value398 value1 value2 = (output649, value399, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input650 value399 value1 value2 = (output650, value400, value1) := by
  rw [input650_def, output650_def]
  kernel_rfl

theorem node651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input651 value400 value1 value2 = (output651, value401, value1) := by
  rw [input651_def, output651_def]
  kernel_rfl

theorem node652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input652 value401 value1 value2 = (output652, value402, value1) := by
  rw [input652_def, output652_def]
  kernel_rfl

theorem node653_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value400 value1 value2 = (output651, value401, value1))
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value401 value1 value2 = (output652, value402, value1)) : Flapjack.WordAlloc.removeDeadStructural input653 value400 value1 value2 = (output653, value402, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output652_skip]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value402 value1 value2 = (output654, value403, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value403 value1 value2 = (output655, value404, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value402 value1 value2 = (output654, value403, value1))
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value403 value1 value2 = (output655, value404, value1)) : Flapjack.WordAlloc.removeDeadStructural input656 value402 value1 value2 = (output656, value404, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output655_skip]
  kernel_rfl

theorem node657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input657 value404 value1 value2 = (output657, value405, value1) := by
  rw [input657_def, output657_def]
  kernel_rfl

theorem node658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input658 value405 value1 value2 = (output658, value406, value1) := by
  rw [input658_def, output658_def]
  kernel_rfl

theorem node659_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value404 value1 value2 = (output657, value405, value1))
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value405 value1 value2 = (output658, value406, value1)) : Flapjack.WordAlloc.removeDeadStructural input659 value404 value1 value2 = (output659, value406, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output658_skip]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value406 value1 value2 = (output660, value407, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input661 value407 value1 value2 = (output661, value408, value1) := by
  rw [input661_def, output661_def]
  kernel_rfl

theorem node662_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value406 value1 value2 = (output660, value407, value1))
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value407 value1 value2 = (output661, value408, value1)) : Flapjack.WordAlloc.removeDeadStructural input662 value406 value1 value2 = (output662, value408, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output661_skip]
  kernel_rfl

theorem node663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input663 value408 value1 value2 = (output663, value409, value1) := by
  rw [input663_def, output663_def]
  kernel_rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value409 value1 value2 = (output664, value410, value1) := by
  rw [input664_def, output664_def]
  kernel_rfl

theorem node665_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value408 value1 value2 = (output663, value409, value1))
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value409 value1 value2 = (output664, value410, value1)) : Flapjack.WordAlloc.removeDeadStructural input665 value408 value1 value2 = (output665, value410, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output664_skip]
  kernel_rfl

theorem node666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input666 value410 value1 value2 = (output666, value411, value1) := by
  rw [input666_def, output666_def]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value411 value1 value2 = (output667, value412, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value410 value1 value2 = (output666, value411, value1))
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value411 value1 value2 = (output667, value412, value1)) : Flapjack.WordAlloc.removeDeadStructural input668 value410 value1 value2 = (output668, value412, value1) := by
  rw [input668_def, output668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output667_skip]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value412 value1 value2 = (output669, value413, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value413 value1 value2 = (output670, value414, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value412 value1 value2 = (output669, value413, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value413 value1 value2 = (output670, value414, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value412 value1 value2 = (output671, value414, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input672 value414 value1 value2 = (output672, value415, value1) := by
  rw [input672_def, output672_def]
  kernel_rfl

theorem node673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input673 value415 value1 value2 = (output673, value416, value1) := by
  rw [input673_def, output673_def]
  kernel_rfl

theorem node674_cond_eq
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value414 value1 value2 = (output672, value415, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value415 value1 value2 = (output673, value416, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value414 value1 value2 = (output674, value416, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child672]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output672_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input675 value416 value1 value2 = (output675, value417, value1) := by
  rw [input675_def, output675_def]
  kernel_rfl

theorem node676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input676 value417 value1 value2 = (output676, value418, value1) := by
  rw [input676_def, output676_def]
  kernel_rfl

theorem node677_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value416 value1 value2 = (output675, value417, value1))
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value417 value1 value2 = (output676, value418, value1)) : Flapjack.WordAlloc.removeDeadStructural input677 value416 value1 value2 = (output677, value418, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output676_skip]
  kernel_rfl

theorem node678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input678 value418 value1 value2 = (output678, value419, value1) := by
  rw [input678_def, output678_def]
  kernel_rfl

theorem node679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input679 value419 value1 value2 = (output679, value420, value1) := by
  rw [input679_def, output679_def]
  kernel_rfl

theorem node680_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value418 value1 value2 = (output678, value419, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value419 value1 value2 = (output679, value420, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value418 value1 value2 = (output680, value420, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value420 value1 value2 = (output681, value421, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input682 value421 value1 value2 = (output682, value422, value1) := by
  rw [input682_def, output682_def]
  kernel_rfl

theorem node683_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value420 value1 value2 = (output681, value421, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value421 value1 value2 = (output682, value422, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value420 value1 value2 = (output683, value422, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  try dsimp only
  rw [child682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output681_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input684 value422 value1 value2 = (output684, value423, value1) := by
  rw [input684_def, output684_def]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value423 value1 value2 = (output685, value424, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value422 value1 value2 = (output684, value423, value1))
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value423 value1 value2 = (output685, value424, value1)) : Flapjack.WordAlloc.removeDeadStructural input686 value422 value1 value2 = (output686, value424, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output685_skip]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value424 value1 value2 = (output687, value425, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input688 value425 value1 value2 = (output688, value426, value1) := by
  rw [input688_def, output688_def]
  kernel_rfl

theorem node689_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value424 value1 value2 = (output687, value425, value1))
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value425 value1 value2 = (output688, value426, value1)) : Flapjack.WordAlloc.removeDeadStructural input689 value424 value1 value2 = (output689, value426, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output688_skip]
  kernel_rfl

theorem node690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input690 value426 value1 value2 = (output690, value427, value1) := by
  rw [input690_def, output690_def]
  kernel_rfl

theorem node691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input691 value427 value1 value2 = (output691, value428, value1) := by
  rw [input691_def, output691_def]
  kernel_rfl

theorem node692_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value426 value1 value2 = (output690, value427, value1))
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value427 value1 value2 = (output691, value428, value1)) : Flapjack.WordAlloc.removeDeadStructural input692 value426 value1 value2 = (output692, value428, value1) := by
  rw [input692_def, output692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output691_skip]
  kernel_rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value428 value1 value2 = (output693, value429, value1) := by
  rw [input693_def, output693_def]
  kernel_rfl

theorem node694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input694 value429 value1 value2 = (output694, value430, value1) := by
  rw [input694_def, output694_def]
  kernel_rfl

theorem node695_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value428 value1 value2 = (output693, value429, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value429 value1 value2 = (output694, value430, value1)) : Flapjack.WordAlloc.removeDeadStructural input695 value428 value1 value2 = (output695, value430, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output694_skip]
  kernel_rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value430 value1 value2 = (output696, value431, value1) := by
  rw [input696_def, output696_def]
  kernel_rfl

theorem node697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input697 value431 value1 value2 = (output697, value432, value1) := by
  rw [input697_def, output697_def]
  kernel_rfl

theorem node698_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value430 value1 value2 = (output696, value431, value1))
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value431 value1 value2 = (output697, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input698 value430 value1 value2 = (output698, value432, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output696_skip, output697_skip]
  kernel_rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value432 value1 value2 = (output699, value432, value1) := by
  rw [input699_def, output699_def]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value432 value1 value2 = (output700, value432, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value432 value1 value2 = (output701, value432, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input702 value432 value1 value2 = (output702, value432, value1) := by
  rw [input702_def, output702_def]
  kernel_rfl

theorem node703_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value432 value1 value2 = (output701, value432, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value432 value1 value2 = (output702, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value432 value1 value2 = (output703, value432, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value432 value1 value2 = (output700, value432, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value432 value1 value2 = (output703, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value432 value1 value2 = (output704, value432, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input705 value432 value1 value2 = (output705, value432, value1) := by
  rw [input705_def, output705_def]
  kernel_rfl

theorem node706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input706 value432 value1 value2 = (output706, value432, value1) := by
  rw [input706_def, output706_def]
  kernel_rfl

theorem node707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input707 value432 value1 value2 = (output707, value432, value1) := by
  rw [input707_def, output707_def]
  kernel_rfl

theorem node708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input708 value432 value1 value2 = (output708, value432, value1) := by
  rw [input708_def, output708_def]
  kernel_rfl

theorem node709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input709 value432 value1 value2 = (output709, value432, value1) := by
  rw [input709_def, output709_def]
  kernel_rfl

theorem node710_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value432 value1 value2 = (output708, value432, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value432 value1 value2 = (output709, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value432 value1 value2 = (output710, value432, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value432 value1 value2 = (output707, value432, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value432 value1 value2 = (output710, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value432 value1 value2 = (output711, value432, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value432 value1 value2 = (output706, value432, value1))
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value432 value1 value2 = (output711, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input712 value432 value1 value2 = (output712, value432, value1) := by
  rw [input712_def, output712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output711_skip]
  kernel_rfl

theorem node713_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value432 value1 value2 = (output705, value432, value1))
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value432 value1 value2 = (output712, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input713 value432 value1 value2 = (output713, value432, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output712_skip]
  kernel_rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value432 value1 value2 = (output714, value433, value1) := by
  rw [input714_def, output714_def]
  kernel_rfl

theorem node715_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value432 value1 value2 = (output713, value432, value1))
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value432 value1 value2 = (output714, value433, value1)) : Flapjack.WordAlloc.removeDeadStructural input715 value432 value1 value2 = (output715, value433, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output714_skip]
  kernel_rfl

theorem node716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input716 value433 value1 value2 = (output716, value434, value1) := by
  rw [input716_def, output716_def]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value434 value1 value2 = (output717, value435, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value433 value1 value2 = (output716, value434, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value434 value1 value2 = (output717, value435, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value433 value1 value2 = (output718, value435, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value435 value1 value2 = (output719, value433, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input720 value433 value1 value2 = (output720, value436, value1) := by
  rw [input720_def, output720_def]
  kernel_rfl

theorem node721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input721 value436 value1 value2 = (output721, value437, value1) := by
  rw [input721_def, output721_def]
  kernel_rfl

theorem node722_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value433 value1 value2 = (output720, value436, value1))
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value436 value1 value2 = (output721, value437, value1)) : Flapjack.WordAlloc.removeDeadStructural input722 value433 value1 value2 = (output722, value437, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output721_skip]
  kernel_rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value437 value1 value2 = (output723, value438, value1) := by
  rw [input723_def, output723_def]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value438 value1 value2 = (output724, value439, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input725 value439 value1 value2 = (output725, value440, value1) := by
  rw [input725_def, output725_def]
  kernel_rfl

theorem node726_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value438 value1 value2 = (output724, value439, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value439 value1 value2 = (output725, value440, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value438 value1 value2 = (output726, value440, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input727 value440 value1 value2 = (output727, value441, value1) := by
  rw [input727_def, output727_def]
  kernel_rfl

theorem node728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input728 value441 value1 value2 = (output728, value442, value1) := by
  rw [input728_def, output728_def]
  kernel_rfl

theorem node729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input729 value442 value1 value2 = (output729, value443, value1) := by
  rw [input729_def, output729_def]
  kernel_rfl

theorem node730_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value441 value1 value2 = (output728, value442, value1))
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value442 value1 value2 = (output729, value443, value1)) : Flapjack.WordAlloc.removeDeadStructural input730 value441 value1 value2 = (output730, value443, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output729_skip]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value443 value1 value2 = (output731, value444, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input732 value444 value1 value2 = (output732, value445, value1) := by
  rw [input732_def, output732_def]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value445 value1 value2 = (output733, value446, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value444 value1 value2 = (output732, value445, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value445 value1 value2 = (output733, value446, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value444 value1 value2 = (output734, value446, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output733_skip]
  kernel_rfl

theorem node735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input735 value446 value1 value2 = (output735, value447, value1) := by
  rw [input735_def, output735_def]
  kernel_rfl

theorem node736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input736 value447 value1 value2 = (output736, value448, value1) := by
  rw [input736_def, output736_def]
  kernel_rfl

theorem node737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input737 value448 value1 value2 = (output737, value449, value1) := by
  rw [input737_def, output737_def]
  kernel_rfl

theorem node738_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value447 value1 value2 = (output736, value448, value1))
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value448 value1 value2 = (output737, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value447 value1 value2 = (output738, value449, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output737_skip]
  kernel_rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value449 value1 value2 = (output739, value450, value1) := by
  rw [input739_def, output739_def]
  kernel_rfl

theorem node740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input740 value450 value1 value2 = (output740, value451, value1) := by
  rw [input740_def, output740_def]
  kernel_rfl

theorem node741_cond_eq
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value449 value1 value2 = (output739, value450, value1))
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value450 value1 value2 = (output740, value451, value1)) : Flapjack.WordAlloc.removeDeadStructural input741 value449 value1 value2 = (output741, value451, value1) := by
  rw [input741_def, output741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child739]
  try dsimp only
  rw [child740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output739_skip, output740_skip]
  kernel_rfl

theorem node742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input742 value451 value1 value2 = (output742, value452, value1) := by
  rw [input742_def, output742_def]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value452 value1 value2 = (output743, value453, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value451 value1 value2 = (output742, value452, value1))
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value452 value1 value2 = (output743, value453, value1)) : Flapjack.WordAlloc.removeDeadStructural input744 value451 value1 value2 = (output744, value453, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output743_skip]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value453 value1 value2 = (output745, value454, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value454 value1 value2 = (output746, value455, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value453 value1 value2 = (output745, value454, value1))
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value454 value1 value2 = (output746, value455, value1)) : Flapjack.WordAlloc.removeDeadStructural input747 value453 value1 value2 = (output747, value455, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output746_skip]
  kernel_rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value455 value1 value2 = (output748, value456, value1) := by
  rw [input748_def, output748_def]
  kernel_rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value456 value1 value2 = (output749, value457, value1) := by
  rw [input749_def, output749_def]
  kernel_rfl

theorem node750_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value455 value1 value2 = (output748, value456, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value456 value1 value2 = (output749, value457, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value455 value1 value2 = (output750, value457, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input751 value457 value1 value2 = (output751, value458, value1) := by
  rw [input751_def, output751_def]
  kernel_rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value458 value1 value2 = (output752, value459, value1) := by
  rw [input752_def, output752_def]
  kernel_rfl

theorem node753_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value457 value1 value2 = (output751, value458, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value458 value1 value2 = (output752, value459, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value457 value1 value2 = (output753, value459, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value459 value1 value2 = (output754, value460, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value460 value1 value2 = (output755, value461, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input756 value461 value1 value2 = (output756, value462, value1) := by
  rw [input756_def, output756_def]
  kernel_rfl

theorem node757_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value460 value1 value2 = (output755, value461, value1))
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value461 value1 value2 = (output756, value462, value1)) : Flapjack.WordAlloc.removeDeadStructural input757 value460 value1 value2 = (output757, value462, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output756_skip]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value462 value1 value2 = (output758, value463, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value463 value1 value2 = (output759, value464, value1) := by
  rw [input759_def, output759_def]
  kernel_rfl

theorem node760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input760 value464 value1 value2 = (output760, value465, value1) := by
  rw [input760_def, output760_def]
  kernel_rfl

theorem node761_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value463 value1 value2 = (output759, value464, value1))
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value464 value1 value2 = (output760, value465, value1)) : Flapjack.WordAlloc.removeDeadStructural input761 value463 value1 value2 = (output761, value465, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output760_skip]
  kernel_rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value465 value1 value2 = (output762, value466, value1) := by
  rw [input762_def, output762_def]
  kernel_rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value466 value1 value2 = (output763, value467, value1) := by
  rw [input763_def, output763_def]
  kernel_rfl

theorem node764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input764 value467 value1 value2 = (output764, value468, value1) := by
  rw [input764_def, output764_def]
  kernel_rfl

theorem node765_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value466 value1 value2 = (output763, value467, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value467 value1 value2 = (output764, value468, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value466 value1 value2 = (output765, value468, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input766 value468 value1 value2 = (output766, value469, value1) := by
  rw [input766_def, output766_def]
  kernel_rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value469 value1 value2 = (output767, value470, value1) := by
  rw [input767_def, output767_def]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages231.Parallel
