import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages79.Parallel
theorem node512_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value160 value1 value32 = (output510, value162, value1))
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value162 value1 value32 = (output511, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input512 value160 value1 value32 = (output512, value163, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output511_skip]
  kernel_rfl

theorem node513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input513 value163 value1 value32 = (output513, value163, value1) := by
  rw [input513_def, output513_def]
  kernel_rfl

theorem node514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input514 value163 value1 value32 = (output514, value163, value1) := by
  rw [input514_def, output514_def]
  kernel_rfl

theorem node515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input515 value163 value1 value32 = (output515, value163, value1) := by
  rw [input515_def, output515_def]
  kernel_rfl

theorem node516_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value163 value1 value32 = (output514, value163, value1))
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value163 value1 value32 = (output515, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input516 value163 value1 value32 = (output516, value163, value1) := by
  rw [input516_def, output516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output515_skip]
  kernel_rfl

theorem node517_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value163 value1 value32 = (output513, value163, value1))
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value163 value1 value32 = (output516, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input517 value163 value1 value32 = (output517, value163, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output516_skip]
  kernel_rfl

theorem node518_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value160 value1 value32 = (output512, value163, value1))
    (child517 : Flapjack.WordAlloc.removeDeadStructural input517 value163 value1 value32 = (output517, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input518 value160 value1 value32 = (output518, value163, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output517_skip]
  kernel_rfl

theorem node519_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value159 value1 value32 = (output507, value160, value1))
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value160 value1 value32 = (output518, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input519 value159 value1 value32 = (output519, value163, value1) := by
  rw [input519_def, output519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output518_skip]
  kernel_rfl

theorem node520_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value156 value1 value32 = (output506, value159, value1))
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value159 value1 value32 = (output519, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input520 value156 value1 value32 = (output520, value163, value1) := by
  rw [input520_def, output520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output519_skip]
  kernel_rfl

theorem node521_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value155 value1 value32 = (output501, value156, value1))
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value156 value1 value32 = (output520, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input521 value155 value1 value32 = (output521, value163, value1) := by
  rw [input521_def, output521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output520_skip]
  kernel_rfl

theorem node522_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value154 value1 value32 = (output500, value155, value1))
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value155 value1 value32 = (output521, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input522 value154 value1 value32 = (output522, value163, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output521_skip]
  kernel_rfl

theorem node523_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value153 value1 value32 = (output499, value154, value1))
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value154 value1 value32 = (output522, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input523 value153 value1 value32 = (output523, value163, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output522_skip]
  kernel_rfl

theorem node524_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value149 value1 value32 = (output498, value153, value1))
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value153 value1 value32 = (output523, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input524 value149 value1 value32 = (output524, value163, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output523_skip]
  kernel_rfl

theorem node525_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value149 value1 value32 = (output467, value149, value1))
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value149 value1 value32 = (output524, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input525 value149 value1 value32 = (output525, value163, value1) := by
  rw [input525_def, output525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output524_skip]
  kernel_rfl

theorem node526_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value145 value1 value32 = (output466, value149, value1))
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value149 value1 value32 = (output525, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input526 value145 value1 value32 = (output526, value163, value1) := by
  rw [input526_def, output526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output525_skip]
  kernel_rfl

theorem node527_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value144 value1 value32 = (output459, value145, value1))
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value145 value1 value32 = (output526, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input527 value144 value1 value32 = (output527, value163, value1) := by
  rw [input527_def, output527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output526_skip]
  kernel_rfl

theorem node528_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value140 value1 value32 = (output458, value144, value1))
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value144 value1 value32 = (output527, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input528 value140 value1 value32 = (output528, value163, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output527_skip]
  kernel_rfl

theorem node529_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value139 value1 value32 = (output451, value140, value1))
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value140 value1 value32 = (output528, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input529 value139 value1 value32 = (output529, value163, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output528_skip]
  kernel_rfl

theorem node530_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value138 value1 value32 = (output450, value139, value1))
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value139 value1 value32 = (output529, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input530 value138 value1 value32 = (output530, value163, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output529_skip]
  kernel_rfl

theorem node531_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value137 value1 value32 = (output449, value138, value1))
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value138 value1 value32 = (output530, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input531 value137 value1 value32 = (output531, value163, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output530_skip]
  kernel_rfl

theorem node532_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value133 value1 value32 = (output448, value137, value1))
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value137 value1 value32 = (output531, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input532 value133 value1 value32 = (output532, value163, value1) := by
  rw [input532_def, output532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output531_skip]
  kernel_rfl

theorem node533_cond_eq
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value133 value1 value32 = (output421, value133, value1))
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value133 value1 value32 = (output532, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input533 value133 value1 value32 = (output533, value163, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child421]
  try dsimp only
  rw [child532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output421_skip, output532_skip]
  kernel_rfl

theorem node534_cond_eq
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value129 value1 value32 = (output420, value133, value1))
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value133 value1 value32 = (output533, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input534 value129 value1 value32 = (output534, value163, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child420]
  try dsimp only
  rw [child533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output420_skip, output533_skip]
  kernel_rfl

theorem node535_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value128 value1 value32 = (output413, value129, value1))
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value129 value1 value32 = (output534, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input535 value128 value1 value32 = (output535, value163, value1) := by
  rw [input535_def, output535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output534_skip]
  kernel_rfl

theorem node536_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value124 value1 value32 = (output412, value128, value1))
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value128 value1 value32 = (output535, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input536 value124 value1 value32 = (output536, value163, value1) := by
  rw [input536_def, output536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output535_skip]
  kernel_rfl

theorem node537_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value123 value1 value32 = (output405, value124, value1))
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value124 value1 value32 = (output536, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input537 value123 value1 value32 = (output537, value163, value1) := by
  rw [input537_def, output537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output536_skip]
  kernel_rfl

theorem node538_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value122 value1 value32 = (output404, value123, value1))
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value123 value1 value32 = (output537, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input538 value122 value1 value32 = (output538, value163, value1) := by
  rw [input538_def, output538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output537_skip]
  kernel_rfl

theorem node539_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value121 value1 value32 = (output403, value122, value1))
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value122 value1 value32 = (output538, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input539 value121 value1 value32 = (output539, value163, value1) := by
  rw [input539_def, output539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output538_skip]
  kernel_rfl

theorem node540_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value117 value1 value32 = (output402, value121, value1))
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value121 value1 value32 = (output539, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input540 value117 value1 value32 = (output540, value163, value1) := by
  rw [input540_def, output540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output539_skip]
  kernel_rfl

theorem node541_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value117 value1 value32 = (output375, value117, value1))
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value117 value1 value32 = (output540, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input541 value117 value1 value32 = (output541, value163, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output540_skip]
  kernel_rfl

theorem node542_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value113 value1 value32 = (output374, value117, value1))
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value117 value1 value32 = (output541, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input542 value113 value1 value32 = (output542, value163, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output541_skip]
  kernel_rfl

theorem node543_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value112 value1 value32 = (output367, value113, value1))
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value113 value1 value32 = (output542, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input543 value112 value1 value32 = (output543, value163, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output542_skip]
  kernel_rfl

theorem node544_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value108 value1 value32 = (output366, value112, value1))
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value112 value1 value32 = (output543, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input544 value108 value1 value32 = (output544, value163, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output543_skip]
  kernel_rfl

theorem node545_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value107 value1 value32 = (output359, value108, value1))
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value108 value1 value32 = (output544, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input545 value107 value1 value32 = (output545, value163, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output544_skip]
  kernel_rfl

theorem node546_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value106 value1 value32 = (output358, value107, value1))
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value107 value1 value32 = (output545, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input546 value106 value1 value32 = (output546, value163, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output545_skip]
  kernel_rfl

theorem node547_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value105 value1 value32 = (output357, value106, value1))
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value106 value1 value32 = (output546, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input547 value105 value1 value32 = (output547, value163, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output546_skip]
  kernel_rfl

theorem node548_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value101 value1 value32 = (output356, value105, value1))
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value105 value1 value32 = (output547, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input548 value101 value1 value32 = (output548, value163, value1) := by
  rw [input548_def, output548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output547_skip]
  kernel_rfl

theorem node549_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value101 value1 value32 = (output329, value101, value1))
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value101 value1 value32 = (output548, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input549 value101 value1 value32 = (output549, value163, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output548_skip]
  kernel_rfl

theorem node550_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value97 value1 value32 = (output328, value101, value1))
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value101 value1 value32 = (output549, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input550 value97 value1 value32 = (output550, value163, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output549_skip]
  kernel_rfl

theorem node551_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value96 value1 value32 = (output321, value97, value1))
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value97 value1 value32 = (output550, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input551 value96 value1 value32 = (output551, value163, value1) := by
  rw [input551_def, output551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output550_skip]
  kernel_rfl

theorem node552_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value92 value1 value32 = (output320, value96, value1))
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value96 value1 value32 = (output551, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input552 value92 value1 value32 = (output552, value163, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output551_skip]
  kernel_rfl

theorem node553_cond_eq
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value91 value1 value32 = (output313, value92, value1))
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value92 value1 value32 = (output552, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input553 value91 value1 value32 = (output553, value163, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child313]
  try dsimp only
  rw [child552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output313_skip, output552_skip]
  kernel_rfl

theorem node554_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value90 value1 value32 = (output312, value91, value1))
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value91 value1 value32 = (output553, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input554 value90 value1 value32 = (output554, value163, value1) := by
  rw [input554_def, output554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output553_skip]
  kernel_rfl

theorem node555_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value89 value1 value32 = (output311, value90, value1))
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value90 value1 value32 = (output554, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input555 value89 value1 value32 = (output555, value163, value1) := by
  rw [input555_def, output555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output554_skip]
  kernel_rfl

theorem node556_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value85 value1 value32 = (output310, value89, value1))
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value89 value1 value32 = (output555, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input556 value85 value1 value32 = (output556, value163, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output555_skip]
  kernel_rfl

theorem node557_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value85 value1 value32 = (output283, value85, value1))
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value85 value1 value32 = (output556, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input557 value85 value1 value32 = (output557, value163, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output556_skip]
  kernel_rfl

theorem node558_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value81 value1 value32 = (output282, value85, value1))
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value85 value1 value32 = (output557, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input558 value81 value1 value32 = (output558, value163, value1) := by
  rw [input558_def, output558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output557_skip]
  kernel_rfl

theorem node559_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value80 value1 value32 = (output275, value81, value1))
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value81 value1 value32 = (output558, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input559 value80 value1 value32 = (output559, value163, value1) := by
  rw [input559_def, output559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output558_skip]
  kernel_rfl

theorem node560_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value76 value1 value32 = (output274, value80, value1))
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value80 value1 value32 = (output559, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input560 value76 value1 value32 = (output560, value163, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output559_skip]
  kernel_rfl

theorem node561_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value75 value1 value32 = (output267, value76, value1))
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value76 value1 value32 = (output560, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input561 value75 value1 value32 = (output561, value163, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output560_skip]
  kernel_rfl

theorem node562_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value74 value1 value32 = (output266, value75, value1))
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value75 value1 value32 = (output561, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input562 value74 value1 value32 = (output562, value163, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output561_skip]
  kernel_rfl

theorem node563_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value73 value1 value32 = (output265, value74, value1))
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value74 value1 value32 = (output562, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input563 value73 value1 value32 = (output563, value163, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output562_skip]
  kernel_rfl

theorem node564_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value69 value1 value32 = (output264, value73, value1))
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value73 value1 value32 = (output563, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input564 value69 value1 value32 = (output564, value163, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output563_skip]
  kernel_rfl

theorem node565_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value69 value1 value32 = (output237, value69, value1))
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value69 value1 value32 = (output564, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input565 value69 value1 value32 = (output565, value163, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output564_skip]
  kernel_rfl

theorem node566_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value65 value1 value32 = (output236, value69, value1))
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value69 value1 value32 = (output565, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input566 value65 value1 value32 = (output566, value163, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  try dsimp only
  rw [child565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output565_skip]
  kernel_rfl

theorem node567_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value64 value1 value32 = (output229, value65, value1))
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value65 value1 value32 = (output566, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input567 value64 value1 value32 = (output567, value163, value1) := by
  rw [input567_def, output567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output566_skip]
  kernel_rfl

theorem node568_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value60 value1 value32 = (output228, value64, value1))
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value64 value1 value32 = (output567, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input568 value60 value1 value32 = (output568, value163, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output567_skip]
  kernel_rfl

theorem node569_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value59 value1 value32 = (output221, value60, value1))
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value60 value1 value32 = (output568, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input569 value59 value1 value32 = (output569, value163, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output568_skip]
  kernel_rfl

theorem node570_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value58 value1 value32 = (output220, value59, value1))
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value59 value1 value32 = (output569, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input570 value58 value1 value32 = (output570, value163, value1) := by
  rw [input570_def, output570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output569_skip]
  kernel_rfl

theorem node571_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value57 value1 value32 = (output219, value58, value1))
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value58 value1 value32 = (output570, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input571 value57 value1 value32 = (output571, value163, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output570_skip]
  kernel_rfl

theorem node572_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value53 value1 value32 = (output218, value57, value1))
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value57 value1 value32 = (output571, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input572 value53 value1 value32 = (output572, value163, value1) := by
  rw [input572_def, output572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output571_skip]
  kernel_rfl

theorem node573_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value53 value1 value32 = (output191, value53, value1))
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value53 value1 value32 = (output572, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input573 value53 value1 value32 = (output573, value163, value1) := by
  rw [input573_def, output573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output572_skip]
  kernel_rfl

theorem node574_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value49 value1 value32 = (output190, value53, value1))
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value53 value1 value32 = (output573, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input574 value49 value1 value32 = (output574, value163, value1) := by
  rw [input574_def, output574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output573_skip]
  kernel_rfl

theorem node575_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value48 value1 value32 = (output183, value49, value1))
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value49 value1 value32 = (output574, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input575 value48 value1 value32 = (output575, value163, value1) := by
  rw [input575_def, output575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output574_skip]
  kernel_rfl

theorem node576_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value44 value1 value32 = (output182, value48, value1))
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value48 value1 value32 = (output575, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input576 value44 value1 value32 = (output576, value163, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output575_skip]
  kernel_rfl

theorem node577_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value43 value1 value32 = (output175, value44, value1))
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value44 value1 value32 = (output576, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input577 value43 value1 value32 = (output577, value163, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output576_skip]
  kernel_rfl

theorem node578_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value42 value1 value32 = (output174, value43, value1))
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value43 value1 value32 = (output577, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input578 value42 value1 value32 = (output578, value163, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output577_skip]
  kernel_rfl

theorem node579_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value41 value1 value32 = (output173, value42, value1))
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value42 value1 value32 = (output578, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input579 value41 value1 value32 = (output579, value163, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output578_skip]
  kernel_rfl

theorem node580_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value37 value1 value32 = (output172, value41, value1))
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value41 value1 value32 = (output579, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input580 value37 value1 value32 = (output580, value163, value1) := by
  rw [input580_def, output580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output579_skip]
  kernel_rfl

theorem node581_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value37 value1 value32 = (output145, value37, value1))
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value37 value1 value32 = (output580, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input581 value37 value1 value32 = (output581, value163, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output145_skip, output580_skip]
  kernel_rfl

theorem node582_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value35 value1 value32 = (output144, value37, value1))
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value37 value1 value32 = (output581, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input582 value35 value1 value32 = (output582, value163, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output581_skip]
  kernel_rfl

theorem node583_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value34 value1 value32 = (output141, value35, value1))
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value35 value1 value32 = (output582, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input583 value34 value1 value32 = (output583, value163, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  try dsimp only
  rw [child582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output582_skip]
  kernel_rfl

theorem node584_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value34 value1 value32 = (output140, value34, value1))
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value34 value1 value32 = (output583, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input584 value34 value1 value32 = (output584, value163, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output583_skip]
  kernel_rfl

theorem node585_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value33 value1 value32 = (output137, value34, value1))
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value34 value1 value32 = (output584, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input585 value33 value1 value32 = (output585, value163, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output584_skip]
  kernel_rfl

theorem node586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input586 value33 value1 value32 = (output586, value33, value1) := by
  rw [input586_def, output586_def]
  kernel_rfl

theorem node587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input587 value33 value1 value32 = (output587, value33, value1) := by
  rw [input587_def, output587_def]
  kernel_rfl

theorem node588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input588 value33 value1 value32 = (output588, value33, value1) := by
  rw [input588_def, output588_def]
  kernel_rfl

theorem node589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input589 value33 value1 value32 = (output589, value33, value1) := by
  rw [input589_def, output589_def]
  kernel_rfl

theorem node590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input590 value33 value1 value32 = (output590, value33, value1) := by
  rw [input590_def, output590_def]
  kernel_rfl

theorem node591_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value33 value1 value32 = (output589, value33, value1))
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value33 value1 value32 = (output590, value33, value1)) : Flapjack.WordAlloc.removeDeadStructural input591 value33 value1 value32 = (output591, value33, value1) := by
  rw [input591_def, output591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  try dsimp only
  rw [child590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output590_skip]
  kernel_rfl

theorem node592_cond_eq
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value33 value1 value32 = (output588, value33, value1))
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value33 value1 value32 = (output591, value33, value1)) : Flapjack.WordAlloc.removeDeadStructural input592 value33 value1 value32 = (output592, value33, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child588]
  try dsimp only
  rw [child591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output588_skip, output591_skip]
  kernel_rfl

theorem node593_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value33 value1 value32 = (output587, value33, value1))
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value33 value1 value32 = (output592, value33, value1)) : Flapjack.WordAlloc.removeDeadStructural input593 value33 value1 value32 = (output593, value33, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output592_skip]
  kernel_rfl

theorem node594_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value33 value1 value32 = (output586, value33, value1))
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value33 value1 value32 = (output593, value33, value1)) : Flapjack.WordAlloc.removeDeadStructural input594 value33 value1 value32 = (output594, value33, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  try dsimp only
  rw [child593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output586_skip, output593_skip]
  kernel_rfl

theorem node595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input595 value33 value1 value32 = (output595, value163, value1) := by
  rw [input595_def, output595_def]
  kernel_rfl

theorem node596_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value33 value1 value32 = (output594, value33, value1))
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value33 value1 value32 = (output595, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input596 value33 value1 value32 = (output596, value163, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output595_skip]
  kernel_rfl

theorem node597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input597 value163 value1 value32 = (output597, value31, value1) := by
  rw [input597_def, output597_def]
  kernel_rfl

theorem node598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input598 value31 value1 value32 = (output598, value163, value1) := by
  rw [input598_def, output598_def]
  kernel_rfl

theorem node599_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value163 value1 value32 = (output597, value31, value1))
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value31 value1 value32 = (output598, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input599 value163 value1 value32 = (output599, value163, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output598_skip]
  kernel_rfl

theorem node600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input600 value163 value1 value32 = (output600, value163, value1) := by
  rw [input600_def, output600_def]
  kernel_rfl

theorem node601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input601 value163 value1 value32 = (output601, value163, value1) := by
  rw [input601_def, output601_def]
  kernel_rfl

theorem node602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input602 value163 value1 value32 = (output602, value163, value1) := by
  rw [input602_def, output602_def]
  kernel_rfl

theorem node603_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value163 value1 value32 = (output601, value163, value1))
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value163 value1 value32 = (output602, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input603 value163 value1 value32 = (output603, value163, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output602_skip]
  kernel_rfl

theorem node604_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value163 value1 value32 = (output600, value163, value1))
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value163 value1 value32 = (output603, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input604 value163 value1 value32 = (output604, value163, value1) := by
  rw [input604_def, output604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output603_skip]
  kernel_rfl

theorem node605_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value163 value1 value32 = (output599, value163, value1))
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value163 value1 value32 = (output604, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input605 value163 value1 value32 = (output605, value163, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output604_skip]
  kernel_rfl

theorem node606_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value33 value1 value32 = (output596, value163, value1))
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value163 value1 value32 = (output605, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input606 value33 value1 value32 = (output606, value163, value1) := by
  rw [input606_def, output606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output605_skip]
  kernel_rfl

theorem node607_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value33 value1 value32 = (output585, value163, value1))
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value33 value1 value32 = (output606, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input607 value33 value1 value32 = (output607, value166, value1) := by
  rw [input607_def, output607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child585]
  try dsimp only
  rw [child606]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output606_skip]
  kernel_rfl

theorem node608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input608 value166 value1 value32 = (output608, value163, value1) := by
  rw [input608_def, output608_def]
  kernel_rfl

theorem node609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input609 value163 value1 value32 = (output609, value167, value1) := by
  rw [input609_def, output609_def]
  kernel_rfl

theorem node610_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value166 value1 value32 = (output608, value163, value1))
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value163 value1 value32 = (output609, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input610 value166 value1 value32 = (output610, value167, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output609_skip]
  kernel_rfl

theorem node611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input611 value167 value1 value32 = (output611, value31, value1) := by
  rw [input611_def, output611_def]
  kernel_rfl

theorem node612_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value166 value1 value32 = (output610, value167, value1))
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value167 value1 value32 = (output611, value31, value1)) : Flapjack.WordAlloc.removeDeadStructural input612 value166 value1 value32 = (output612, value31, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output611_skip]
  kernel_rfl

theorem node613_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value33 value1 value32 = (output607, value166, value1))
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value166 value1 value32 = (output612, value31, value1)) : Flapjack.WordAlloc.removeDeadStructural input613 value33 value1 value32 = (output613, value31, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output612_skip]
  kernel_rfl

theorem node614_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value33 value1 value32 = (output126, value33, value1))
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value33 value1 value32 = (output613, value31, value1)) : Flapjack.WordAlloc.removeDeadStructural input614 value33 value1 value32 = (output614, value31, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output613_skip]
  kernel_rfl

theorem node615_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value31 value1 value32 = (output125, value33, value1))
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value33 value1 value32 = (output614, value31, value1)) : Flapjack.WordAlloc.removeDeadStructural input615 value31 value1 value32 = (output615, value31, value1) := by
  rw [input615_def, output615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output614_skip]
  kernel_rfl

theorem node616_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value31 value1 value32 = (output615, value31, value1)) : Flapjack.WordAlloc.removeDeadStructural input616 value31 value1 value2 = (output616, value31, value1) := by
  rw [input616_def, output616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value32 = (value31, value31) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child615
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input617 value31 value1 value2 = (output617, value168, value1) := by
  rw [input617_def, output617_def]
  kernel_rfl

theorem node618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input618 value168 value1 value2 = (output618, value168, value1) := by
  rw [input618_def, output618_def]
  kernel_rfl

theorem node619_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value31 value1 value2 = (output617, value168, value1))
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value168 value1 value2 = (output618, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input619 value31 value1 value2 = (output619, value168, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output618_skip]
  kernel_rfl

theorem node620_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value31 value1 value2 = (output616, value31, value1))
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value31 value1 value2 = (output619, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input620 value31 value1 value2 = (output620, value168, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output619_skip]
  kernel_rfl

theorem node621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input621 value168 value1 value2 = (output621, value168, value1) := by
  rw [input621_def, output621_def]
  kernel_rfl

theorem node622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input622 value168 value1 value2 = (output622, value168, value1) := by
  rw [input622_def, output622_def]
  kernel_rfl

theorem node623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input623 value168 value1 value2 = (output623, value168, value1) := by
  rw [input623_def, output623_def]
  kernel_rfl

theorem node624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input624 value168 value1 value2 = (output624, value168, value1) := by
  rw [input624_def, output624_def]
  kernel_rfl

theorem node625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input625 value168 value1 value2 = (output625, value168, value1) := by
  rw [input625_def, output625_def]
  kernel_rfl

theorem node626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input626 value168 value1 value2 = (output626, value168, value1) := by
  rw [input626_def, output626_def]
  kernel_rfl

theorem node627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input627 value168 value1 value2 = (output627, value168, value1) := by
  rw [input627_def, output627_def]
  kernel_rfl

theorem node628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input628 value168 value1 value2 = (output628, value168, value1) := by
  rw [input628_def, output628_def]
  kernel_rfl

theorem node629_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value168 value1 value2 = (output627, value168, value1))
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value168 value1 value2 = (output628, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input629 value168 value1 value2 = (output629, value168, value1) := by
  rw [input629_def, output629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output628_skip]
  kernel_rfl

theorem node630_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value168 value1 value2 = (output626, value168, value1))
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value168 value1 value2 = (output629, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input630 value168 value1 value2 = (output630, value168, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output629_skip]
  kernel_rfl

theorem node631_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value168 value1 value2 = (output625, value168, value1))
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value168 value1 value2 = (output630, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input631 value168 value1 value2 = (output631, value168, value1) := by
  rw [input631_def, output631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output630_skip]
  kernel_rfl

theorem node632_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value168 value1 value2 = (output624, value168, value1))
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value168 value1 value2 = (output631, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input632 value168 value1 value2 = (output632, value168, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output631_skip]
  kernel_rfl

theorem node633_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value168 value1 value2 = (output623, value168, value1))
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value168 value1 value2 = (output632, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input633 value168 value1 value2 = (output633, value168, value1) := by
  rw [input633_def, output633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output632_skip]
  kernel_rfl

theorem node634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input634 value168 value1 value2 = (output634, value169, value1) := by
  rw [input634_def, output634_def]
  kernel_rfl

theorem node635_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value168 value1 value2 = (output633, value168, value1))
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value168 value1 value2 = (output634, value169, value1)) : Flapjack.WordAlloc.removeDeadStructural input635 value168 value1 value2 = (output635, value169, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output634_skip]
  kernel_rfl

theorem node636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input636 value169 value1 value2 = (output636, value169, value1) := by
  rw [input636_def, output636_def]
  kernel_rfl

theorem node637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input637 value169 value1 value170 = (output637, value171, value1) := by
  rw [input637_def, output637_def]
  kernel_rfl

theorem node638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input638 value171 value1 value170 = (output638, value171, value1) := by
  rw [input638_def, output638_def]
  kernel_rfl

theorem node639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input639 value171 value1 value170 = (output639, value171, value1) := by
  rw [input639_def, output639_def]
  kernel_rfl

theorem node640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input640 value171 value1 value170 = (output640, value171, value1) := by
  rw [input640_def, output640_def]
  kernel_rfl

theorem node641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input641 value171 value1 value170 = (output641, value171, value1) := by
  rw [input641_def, output641_def]
  kernel_rfl

theorem node642_cond_eq
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value171 value1 value170 = (output640, value171, value1))
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value171 value1 value170 = (output641, value171, value1)) : Flapjack.WordAlloc.removeDeadStructural input642 value171 value1 value170 = (output642, value171, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child640]
  try dsimp only
  rw [child641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output640_skip, output641_skip]
  kernel_rfl

theorem node643_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value171 value1 value170 = (output639, value171, value1))
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value171 value1 value170 = (output642, value171, value1)) : Flapjack.WordAlloc.removeDeadStructural input643 value171 value1 value170 = (output643, value171, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output642_skip]
  kernel_rfl

theorem node644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input644 value171 value1 value170 = (output644, value172, value1) := by
  rw [input644_def, output644_def]
  kernel_rfl

theorem node645_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value171 value1 value170 = (output643, value171, value1))
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value171 value1 value170 = (output644, value172, value1)) : Flapjack.WordAlloc.removeDeadStructural input645 value171 value1 value170 = (output645, value172, value1) := by
  rw [input645_def, output645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output644_skip]
  kernel_rfl

theorem node646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input646 value172 value1 value170 = (output646, value169, value1) := by
  rw [input646_def, output646_def]
  kernel_rfl

theorem node647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input647 value169 value1 value170 = (output647, value172, value1) := by
  rw [input647_def, output647_def]
  kernel_rfl

theorem node648_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value172 value1 value170 = (output646, value169, value1))
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value169 value1 value170 = (output647, value172, value1)) : Flapjack.WordAlloc.removeDeadStructural input648 value172 value1 value170 = (output648, value172, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output647_skip]
  kernel_rfl

theorem node649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input649 value172 value1 value170 = (output649, value173, value1) := by
  rw [input649_def, output649_def]
  kernel_rfl

theorem node650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input650 value173 value1 value170 = (output650, value174, value1) := by
  rw [input650_def, output650_def]
  kernel_rfl

theorem node651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input651 value174 value1 value170 = (output651, value175, value1) := by
  rw [input651_def, output651_def]
  kernel_rfl

theorem node652_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value173 value1 value170 = (output650, value174, value1))
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value174 value1 value170 = (output651, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input652 value173 value1 value170 = (output652, value175, value1) := by
  rw [input652_def, output652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output651_skip]
  kernel_rfl

theorem node653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input653 value175 value1 value170 = (output653, value175, value1) := by
  rw [input653_def, output653_def]
  kernel_rfl

theorem node654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input654 value175 value1 value170 = (output654, value175, value1) := by
  rw [input654_def, output654_def]
  kernel_rfl

theorem node655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input655 value175 value1 value170 = (output655, value175, value1) := by
  rw [input655_def, output655_def]
  kernel_rfl

theorem node656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input656 value175 value1 value170 = (output656, value175, value1) := by
  rw [input656_def, output656_def]
  kernel_rfl

theorem node657_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value175 value1 value170 = (output655, value175, value1))
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value175 value1 value170 = (output656, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input657 value175 value1 value170 = (output657, value175, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output656_skip]
  kernel_rfl

theorem node658_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value175 value1 value170 = (output654, value175, value1))
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value175 value1 value170 = (output657, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input658 value175 value1 value170 = (output658, value175, value1) := by
  rw [input658_def, output658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output657_skip]
  kernel_rfl

theorem node659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input659 value175 value1 value170 = (output659, value175, value1) := by
  rw [input659_def, output659_def]
  kernel_rfl

theorem node660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input660 value175 value1 value170 = (output660, value175, value1) := by
  rw [input660_def, output660_def]
  kernel_rfl

theorem node661_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value175 value1 value170 = (output659, value175, value1))
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value175 value1 value170 = (output660, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input661 value175 value1 value170 = (output661, value175, value1) := by
  rw [input661_def, output661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output660_skip]
  kernel_rfl

theorem node662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input662 value175 value1 value170 = (output662, value175, value1) := by
  rw [input662_def, output662_def]
  kernel_rfl

theorem node663_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value175 value1 value170 = (output661, value175, value1))
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value175 value1 value170 = (output662, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input663 value175 value1 value170 = (output663, value175, value1) := by
  rw [input663_def, output663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output662_skip]
  kernel_rfl

theorem node664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input664 value175 value1 value170 = (output664, value176, value1) := by
  rw [input664_def, output664_def]
  kernel_rfl

theorem node665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input665 value176 value1 value170 = (output665, value177, value1) := by
  rw [input665_def, output665_def]
  kernel_rfl

theorem node666_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value175 value1 value170 = (output664, value176, value1))
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value176 value1 value170 = (output665, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input666 value175 value1 value170 = (output666, value177, value1) := by
  rw [input666_def, output666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output665_skip]
  kernel_rfl

theorem node667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input667 value177 value1 value170 = (output667, value175, value1) := by
  rw [input667_def, output667_def]
  kernel_rfl

theorem node668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input668 value175 value1 value170 = (output668, value175, value1) := by
  rw [input668_def, output668_def]
  kernel_rfl

theorem node669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input669 value175 value1 value170 = (output669, value175, value1) := by
  rw [input669_def, output669_def]
  kernel_rfl

theorem node670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input670 value175 value1 value170 = (output670, value175, value1) := by
  rw [input670_def, output670_def]
  kernel_rfl

theorem node671_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value175 value1 value170 = (output669, value175, value1))
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value175 value1 value170 = (output670, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input671 value175 value1 value170 = (output671, value175, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output670_skip]
  kernel_rfl

theorem node672_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value175 value1 value170 = (output668, value175, value1))
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value175 value1 value170 = (output671, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input672 value175 value1 value170 = (output672, value175, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output671_skip]
  kernel_rfl

theorem node673_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value177 value1 value170 = (output667, value175, value1))
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value175 value1 value170 = (output672, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input673 value177 value1 value170 = (output673, value175, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output672_skip]
  kernel_rfl

theorem node674_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value175 value1 value170 = (output666, value177, value1))
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value177 value1 value170 = (output673, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input674 value175 value1 value170 = (output674, value175, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output673_skip]
  kernel_rfl

theorem node675_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value175 value1 value170 = (output663, value175, value1))
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value175 value1 value170 = (output674, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input675 value175 value1 value170 = (output675, value175, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output674_skip]
  kernel_rfl

theorem node676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input676 value175 value1 value170 = (output676, value175, value1) := by
  rw [input676_def, output676_def]
  kernel_rfl

theorem node677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input677 value175 value1 value170 = (output677, value175, value1) := by
  rw [input677_def, output677_def]
  kernel_rfl

theorem node678_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value175 value1 value170 = (output676, value175, value1))
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value175 value1 value170 = (output677, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input678 value175 value1 value170 = (output678, value175, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output677_skip]
  kernel_rfl

theorem node679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input679 value175 value1 value170 = (output679, value175, value1) := by
  rw [input679_def, output679_def]
  kernel_rfl

theorem node680_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value175 value1 value170 = (output678, value175, value1))
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value175 value1 value170 = (output679, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input680 value175 value1 value170 = (output680, value175, value1) := by
  rw [input680_def, output680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output679_skip]
  kernel_rfl

theorem node681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input681 value175 value1 value170 = (output681, value175, value1) := by
  rw [input681_def, output681_def]
  kernel_rfl

theorem node682_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value175 value1 value170 = (output680, value175, value1))
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value175 value1 value170 = (output681, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input682 value175 value1 value170 = (output682, value175, value1) := by
  rw [input682_def, output682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output681_skip]
  kernel_rfl

theorem node683_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value175 value1 value170 = (output675, value175, value1))
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value175 value1 value170 = (output682, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input683 value175 value1 value170 = (output683, value179, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child675]
  try dsimp only
  rw [child682]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output682_skip]
  kernel_rfl

theorem node684_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value175 value1 value170 = (output658, value175, value1))
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value175 value1 value170 = (output683, value179, value1)) : Flapjack.WordAlloc.removeDeadStructural input684 value175 value1 value170 = (output684, value179, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output683_skip]
  kernel_rfl

theorem node685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input685 value179 value1 value170 = (output685, value180, value1) := by
  rw [input685_def, output685_def]
  kernel_rfl

theorem node686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input686 value180 value1 value170 = (output686, value181, value1) := by
  rw [input686_def, output686_def]
  kernel_rfl

theorem node687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input687 value181 value1 value170 = (output687, value182, value1) := by
  rw [input687_def, output687_def]
  kernel_rfl

theorem node688_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value180 value1 value170 = (output686, value181, value1))
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value181 value1 value170 = (output687, value182, value1)) : Flapjack.WordAlloc.removeDeadStructural input688 value180 value1 value170 = (output688, value182, value1) := by
  rw [input688_def, output688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output687_skip]
  kernel_rfl

theorem node689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input689 value182 value1 value170 = (output689, value183, value1) := by
  rw [input689_def, output689_def]
  kernel_rfl

theorem node690_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value180 value1 value170 = (output688, value182, value1))
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value182 value1 value170 = (output689, value183, value1)) : Flapjack.WordAlloc.removeDeadStructural input690 value180 value1 value170 = (output690, value183, value1) := by
  rw [input690_def, output690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output689_skip]
  kernel_rfl

theorem node691_cond_eq
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value179 value1 value170 = (output685, value180, value1))
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value180 value1 value170 = (output690, value183, value1)) : Flapjack.WordAlloc.removeDeadStructural input691 value179 value1 value170 = (output691, value183, value1) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child685]
  try dsimp only
  rw [child690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output685_skip, output690_skip]
  kernel_rfl

theorem node692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input692 value183 value1 value170 = (output692, value184, value1) := by
  rw [input692_def, output692_def]
  kernel_rfl

theorem node693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input693 value184 value1 value170 = (output693, value185, value1) := by
  rw [input693_def, output693_def]
  kernel_rfl

theorem node694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input694 value185 value1 value170 = (output694, value186, value1) := by
  rw [input694_def, output694_def]
  kernel_rfl

theorem node695_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value184 value1 value170 = (output693, value185, value1))
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value185 value1 value170 = (output694, value186, value1)) : Flapjack.WordAlloc.removeDeadStructural input695 value184 value1 value170 = (output695, value186, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output694_skip]
  kernel_rfl

theorem node696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input696 value186 value1 value170 = (output696, value187, value1) := by
  rw [input696_def, output696_def]
  kernel_rfl

theorem node697_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value184 value1 value170 = (output695, value186, value1))
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value186 value1 value170 = (output696, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input697 value184 value1 value170 = (output697, value187, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output696_skip]
  kernel_rfl

theorem node698_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value183 value1 value170 = (output692, value184, value1))
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value184 value1 value170 = (output697, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input698 value183 value1 value170 = (output698, value187, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output697_skip]
  kernel_rfl

theorem node699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input699 value187 value1 value170 = (output699, value187, value1) := by
  rw [input699_def, output699_def]
  kernel_rfl

theorem node700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input700 value187 value1 value170 = (output700, value187, value1) := by
  rw [input700_def, output700_def]
  kernel_rfl

theorem node701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input701 value187 value1 value170 = (output701, value187, value1) := by
  rw [input701_def, output701_def]
  kernel_rfl

theorem node702_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value187 value1 value170 = (output700, value187, value1))
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value187 value1 value170 = (output701, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input702 value187 value1 value170 = (output702, value187, value1) := by
  rw [input702_def, output702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output701_skip]
  kernel_rfl

theorem node703_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value187 value1 value170 = (output699, value187, value1))
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value187 value1 value170 = (output702, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input703 value187 value1 value170 = (output703, value187, value1) := by
  rw [input703_def, output703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output702_skip]
  kernel_rfl

theorem node704_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value183 value1 value170 = (output698, value187, value1))
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value187 value1 value170 = (output703, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input704 value183 value1 value170 = (output704, value187, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output703_skip]
  kernel_rfl

theorem node705_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value179 value1 value170 = (output691, value183, value1))
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value183 value1 value170 = (output704, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input705 value179 value1 value170 = (output705, value187, value1) := by
  rw [input705_def, output705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output704_skip]
  kernel_rfl

theorem node706_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value175 value1 value170 = (output684, value179, value1))
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value179 value1 value170 = (output705, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input706 value175 value1 value170 = (output706, value187, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output705_skip]
  kernel_rfl

theorem node707_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value175 value1 value170 = (output653, value175, value1))
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value175 value1 value170 = (output706, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input707 value175 value1 value170 = (output707, value187, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output706_skip]
  kernel_rfl

theorem node708_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value173 value1 value170 = (output652, value175, value1))
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value175 value1 value170 = (output707, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input708 value173 value1 value170 = (output708, value187, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output707_skip]
  kernel_rfl

theorem node709_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value172 value1 value170 = (output649, value173, value1))
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value173 value1 value170 = (output708, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input709 value172 value1 value170 = (output709, value187, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output708_skip]
  kernel_rfl

theorem node710_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value172 value1 value170 = (output648, value172, value1))
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value172 value1 value170 = (output709, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input710 value172 value1 value170 = (output710, value187, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output709_skip]
  kernel_rfl

theorem node711_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value171 value1 value170 = (output645, value172, value1))
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value172 value1 value170 = (output710, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input711 value171 value1 value170 = (output711, value187, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output710_skip]
  kernel_rfl

theorem node712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input712 value171 value1 value170 = (output712, value171, value1) := by
  rw [input712_def, output712_def]
  kernel_rfl

theorem node713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input713 value171 value1 value170 = (output713, value171, value1) := by
  rw [input713_def, output713_def]
  kernel_rfl

theorem node714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input714 value171 value1 value170 = (output714, value171, value1) := by
  rw [input714_def, output714_def]
  kernel_rfl

theorem node715_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value171 value1 value170 = (output713, value171, value1))
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value171 value1 value170 = (output714, value171, value1)) : Flapjack.WordAlloc.removeDeadStructural input715 value171 value1 value170 = (output715, value171, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output714_skip]
  kernel_rfl

theorem node716_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value171 value1 value170 = (output712, value171, value1))
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value171 value1 value170 = (output715, value171, value1)) : Flapjack.WordAlloc.removeDeadStructural input716 value171 value1 value170 = (output716, value171, value1) := by
  rw [input716_def, output716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output715_skip]
  kernel_rfl

theorem node717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input717 value171 value1 value170 = (output717, value187, value1) := by
  rw [input717_def, output717_def]
  kernel_rfl

theorem node718_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value171 value1 value170 = (output716, value171, value1))
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value171 value1 value170 = (output717, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input718 value171 value1 value170 = (output718, value187, value1) := by
  rw [input718_def, output718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output717_skip]
  kernel_rfl

theorem node719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input719 value187 value1 value170 = (output719, value169, value1) := by
  rw [input719_def, output719_def]
  kernel_rfl

theorem node720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input720 value169 value1 value170 = (output720, value187, value1) := by
  rw [input720_def, output720_def]
  kernel_rfl

theorem node721_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value187 value1 value170 = (output719, value169, value1))
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value169 value1 value170 = (output720, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input721 value187 value1 value170 = (output721, value187, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output720_skip]
  kernel_rfl

theorem node722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input722 value187 value1 value170 = (output722, value187, value1) := by
  rw [input722_def, output722_def]
  kernel_rfl

theorem node723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input723 value187 value1 value170 = (output723, value187, value1) := by
  rw [input723_def, output723_def]
  kernel_rfl

theorem node724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input724 value187 value1 value170 = (output724, value187, value1) := by
  rw [input724_def, output724_def]
  kernel_rfl

theorem node725_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value187 value1 value170 = (output723, value187, value1))
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value187 value1 value170 = (output724, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input725 value187 value1 value170 = (output725, value187, value1) := by
  rw [input725_def, output725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output724_skip]
  kernel_rfl

theorem node726_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value187 value1 value170 = (output722, value187, value1))
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value187 value1 value170 = (output725, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input726 value187 value1 value170 = (output726, value187, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output725_skip]
  kernel_rfl

theorem node727_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value187 value1 value170 = (output721, value187, value1))
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value187 value1 value170 = (output726, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input727 value187 value1 value170 = (output727, value187, value1) := by
  rw [input727_def, output727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output726_skip]
  kernel_rfl

theorem node728_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value171 value1 value170 = (output718, value187, value1))
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value187 value1 value170 = (output727, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input728 value171 value1 value170 = (output728, value187, value1) := by
  rw [input728_def, output728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output727_skip]
  kernel_rfl

theorem node729_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value171 value1 value170 = (output711, value187, value1))
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value171 value1 value170 = (output728, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input729 value171 value1 value170 = (output729, value189, value1) := by
  rw [input729_def, output729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child711]
  try dsimp only
  rw [child728]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output711_skip, output728_skip]
  kernel_rfl

theorem node730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input730 value189 value1 value170 = (output730, value187, value1) := by
  rw [input730_def, output730_def]
  kernel_rfl

theorem node731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input731 value187 value1 value170 = (output731, value190, value1) := by
  rw [input731_def, output731_def]
  kernel_rfl

theorem node732_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value189 value1 value170 = (output730, value187, value1))
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value187 value1 value170 = (output731, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input732 value189 value1 value170 = (output732, value190, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output731_skip]
  kernel_rfl

theorem node733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input733 value190 value1 value170 = (output733, value169, value1) := by
  rw [input733_def, output733_def]
  kernel_rfl

theorem node734_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value189 value1 value170 = (output732, value190, value1))
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value190 value1 value170 = (output733, value169, value1)) : Flapjack.WordAlloc.removeDeadStructural input734 value189 value1 value170 = (output734, value169, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output733_skip]
  kernel_rfl

theorem node735_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value171 value1 value170 = (output729, value189, value1))
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value189 value1 value170 = (output734, value169, value1)) : Flapjack.WordAlloc.removeDeadStructural input735 value171 value1 value170 = (output735, value169, value1) := by
  rw [input735_def, output735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  try dsimp only
  rw [child734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output729_skip, output734_skip]
  kernel_rfl

theorem node736_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value171 value1 value170 = (output638, value171, value1))
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value171 value1 value170 = (output735, value169, value1)) : Flapjack.WordAlloc.removeDeadStructural input736 value171 value1 value170 = (output736, value169, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output735_skip]
  kernel_rfl

theorem node737_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value169 value1 value170 = (output637, value171, value1))
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value171 value1 value170 = (output736, value169, value1)) : Flapjack.WordAlloc.removeDeadStructural input737 value169 value1 value170 = (output737, value169, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output736_skip]
  kernel_rfl

theorem node738_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value169 value1 value170 = (output737, value169, value1)) : Flapjack.WordAlloc.removeDeadStructural input738 value169 value1 value2 = (output738, value169, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value170 = (value169, value169) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child737
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input739 value169 value1 value2 = (output739, value191, value1) := by
  rw [input739_def, output739_def]
  kernel_rfl

theorem node740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input740 value191 value1 value2 = (output740, value191, value1) := by
  rw [input740_def, output740_def]
  kernel_rfl

theorem node741_cond_eq
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value169 value1 value2 = (output739, value191, value1))
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value191 value1 value2 = (output740, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input741 value169 value1 value2 = (output741, value191, value1) := by
  rw [input741_def, output741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child739]
  try dsimp only
  rw [child740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output739_skip, output740_skip]
  kernel_rfl

theorem node742_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value169 value1 value2 = (output738, value169, value1))
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value169 value1 value2 = (output741, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input742 value169 value1 value2 = (output742, value191, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output738_skip, output741_skip]
  kernel_rfl

theorem node743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input743 value191 value1 value2 = (output743, value191, value1) := by
  rw [input743_def, output743_def]
  kernel_rfl

theorem node744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input744 value191 value1 value2 = (output744, value191, value1) := by
  rw [input744_def, output744_def]
  kernel_rfl

theorem node745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input745 value191 value1 value192 = (output745, value193, value1) := by
  rw [input745_def, output745_def]
  kernel_rfl

theorem node746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input746 value193 value1 value192 = (output746, value193, value1) := by
  rw [input746_def, output746_def]
  kernel_rfl

theorem node747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input747 value193 value1 value192 = (output747, value193, value1) := by
  rw [input747_def, output747_def]
  kernel_rfl

theorem node748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input748 value193 value1 value192 = (output748, value193, value1) := by
  rw [input748_def, output748_def]
  kernel_rfl

theorem node749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input749 value193 value1 value192 = (output749, value193, value1) := by
  rw [input749_def, output749_def]
  kernel_rfl

theorem node750_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value193 value1 value192 = (output748, value193, value1))
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value193 value1 value192 = (output749, value193, value1)) : Flapjack.WordAlloc.removeDeadStructural input750 value193 value1 value192 = (output750, value193, value1) := by
  rw [input750_def, output750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output749_skip]
  kernel_rfl

theorem node751_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value193 value1 value192 = (output747, value193, value1))
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value193 value1 value192 = (output750, value193, value1)) : Flapjack.WordAlloc.removeDeadStructural input751 value193 value1 value192 = (output751, value193, value1) := by
  rw [input751_def, output751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output750_skip]
  kernel_rfl

theorem node752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input752 value193 value1 value192 = (output752, value194, value1) := by
  rw [input752_def, output752_def]
  kernel_rfl

theorem node753_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value193 value1 value192 = (output751, value193, value1))
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value193 value1 value192 = (output752, value194, value1)) : Flapjack.WordAlloc.removeDeadStructural input753 value193 value1 value192 = (output753, value194, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output752_skip]
  kernel_rfl

theorem node754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input754 value194 value1 value192 = (output754, value191, value1) := by
  rw [input754_def, output754_def]
  kernel_rfl

theorem node755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input755 value191 value1 value192 = (output755, value194, value1) := by
  rw [input755_def, output755_def]
  kernel_rfl

theorem node756_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value194 value1 value192 = (output754, value191, value1))
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value191 value1 value192 = (output755, value194, value1)) : Flapjack.WordAlloc.removeDeadStructural input756 value194 value1 value192 = (output756, value194, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output755_skip]
  kernel_rfl

theorem node757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input757 value194 value1 value192 = (output757, value195, value1) := by
  rw [input757_def, output757_def]
  kernel_rfl

theorem node758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input758 value195 value1 value192 = (output758, value196, value1) := by
  rw [input758_def, output758_def]
  kernel_rfl

theorem node759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input759 value196 value1 value192 = (output759, value197, value1) := by
  rw [input759_def, output759_def]
  kernel_rfl

theorem node760_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value195 value1 value192 = (output758, value196, value1))
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value196 value1 value192 = (output759, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input760 value195 value1 value192 = (output760, value197, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output759_skip]
  kernel_rfl

theorem node761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input761 value197 value1 value192 = (output761, value197, value1) := by
  rw [input761_def, output761_def]
  kernel_rfl

theorem node762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input762 value197 value1 value192 = (output762, value197, value1) := by
  rw [input762_def, output762_def]
  kernel_rfl

theorem node763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input763 value197 value1 value192 = (output763, value197, value1) := by
  rw [input763_def, output763_def]
  kernel_rfl

theorem node764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input764 value197 value1 value192 = (output764, value197, value1) := by
  rw [input764_def, output764_def]
  kernel_rfl

theorem node765_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value197 value1 value192 = (output763, value197, value1))
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value197 value1 value192 = (output764, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input765 value197 value1 value192 = (output765, value197, value1) := by
  rw [input765_def, output765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output764_skip]
  kernel_rfl

theorem node766_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value197 value1 value192 = (output762, value197, value1))
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value197 value1 value192 = (output765, value197, value1)) : Flapjack.WordAlloc.removeDeadStructural input766 value197 value1 value192 = (output766, value197, value1) := by
  rw [input766_def, output766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output765_skip]
  kernel_rfl

theorem node767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input767 value197 value1 value192 = (output767, value197, value1) := by
  rw [input767_def, output767_def]
  kernel_rfl

#print axioms node767_cond_eq
end InitECandidate.Proofs.DeadStages79.Parallel
