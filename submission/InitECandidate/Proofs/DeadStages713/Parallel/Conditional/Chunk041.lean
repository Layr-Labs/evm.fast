import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk041
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node10496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10496 value5253 value1 value2 = (output10496, value5254, value1) := by
  rw [input10496_def, output10496_def]
  kernel_rfl

theorem node10497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10497 value5254 value1 value2 = (output10497, value5, value1) := by
  rw [input10497_def, output10497_def]
  kernel_rfl

theorem node10498_cond_eq
    (child10496 : Flapjack.WordAlloc.removeDeadStructural input10496 value5253 value1 value2 = (output10496, value5254, value1))
    (child10497 : Flapjack.WordAlloc.removeDeadStructural input10497 value5254 value1 value2 = (output10497, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10498 value5253 value1 value2 = (output10498, value5, value1) := by
  rw [input10498_def, output10498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10496]
  dsimp only
  rw [child10497]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10496_skip, output10497_skip]
  kernel_rfl

theorem node10499_cond_eq
    (child10495 : Flapjack.WordAlloc.removeDeadStructural input10495 value5252 value1 value2 = (output10495, value5253, value1))
    (child10498 : Flapjack.WordAlloc.removeDeadStructural input10498 value5253 value1 value2 = (output10498, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10499 value5252 value1 value2 = (output10499, value5, value1) := by
  rw [input10499_def, output10499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10495]
  dsimp only
  rw [child10498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10495_skip, output10498_skip]
  kernel_rfl

theorem node10500_cond_eq
    (child10494 : Flapjack.WordAlloc.removeDeadStructural input10494 value5251 value1 value2 = (output10494, value5252, value1))
    (child10499 : Flapjack.WordAlloc.removeDeadStructural input10499 value5252 value1 value2 = (output10499, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10500 value5251 value1 value2 = (output10500, value5, value1) := by
  rw [input10500_def, output10500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10494]
  dsimp only
  rw [child10499]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10494_skip, output10499_skip]
  kernel_rfl

theorem node10501_cond_eq
    (child10493 : Flapjack.WordAlloc.removeDeadStructural input10493 value5250 value1 value2 = (output10493, value5251, value1))
    (child10500 : Flapjack.WordAlloc.removeDeadStructural input10500 value5251 value1 value2 = (output10500, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10501 value5250 value1 value2 = (output10501, value5, value1) := by
  rw [input10501_def, output10501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10493]
  dsimp only
  rw [child10500]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10493_skip, output10500_skip]
  kernel_rfl

theorem node10502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10502 value5 value1 value2 = (output10502, value5255, value1) := by
  rw [input10502_def, output10502_def]
  kernel_rfl

theorem node10503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10503 value5255 value1 value2 = (output10503, value5256, value1) := by
  rw [input10503_def, output10503_def]
  kernel_rfl

theorem node10504_cond_eq
    (child10502 : Flapjack.WordAlloc.removeDeadStructural input10502 value5 value1 value2 = (output10502, value5255, value1))
    (child10503 : Flapjack.WordAlloc.removeDeadStructural input10503 value5255 value1 value2 = (output10503, value5256, value1)) : Flapjack.WordAlloc.removeDeadStructural input10504 value5 value1 value2 = (output10504, value5256, value1) := by
  rw [input10504_def, output10504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10502]
  dsimp only
  rw [child10503]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10502_skip, output10503_skip]
  kernel_rfl

theorem node10505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10505 value5256 value1 value2 = (output10505, value5257, value1) := by
  rw [input10505_def, output10505_def]
  kernel_rfl

theorem node10506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10506 value5257 value1 value2 = (output10506, value5257, value1) := by
  rw [input10506_def, output10506_def]
  kernel_rfl

theorem node10507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10507 value5257 value1 value2 = (output10507, value5258, value1) := by
  rw [input10507_def, output10507_def]
  kernel_rfl

theorem node10508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10508 value5258 value1 value2 = (output10508, value5259, value1) := by
  rw [input10508_def, output10508_def]
  kernel_rfl

theorem node10509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10509 value5259 value1 value2 = (output10509, value5260, value1) := by
  rw [input10509_def, output10509_def]
  kernel_rfl

theorem node10510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10510 value5260 value1 value2 = (output10510, value5261, value1) := by
  rw [input10510_def, output10510_def]
  kernel_rfl

theorem node10511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10511 value5261 value1 value2 = (output10511, value5, value1) := by
  rw [input10511_def, output10511_def]
  kernel_rfl

theorem node10512_cond_eq
    (child10510 : Flapjack.WordAlloc.removeDeadStructural input10510 value5260 value1 value2 = (output10510, value5261, value1))
    (child10511 : Flapjack.WordAlloc.removeDeadStructural input10511 value5261 value1 value2 = (output10511, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10512 value5260 value1 value2 = (output10512, value5, value1) := by
  rw [input10512_def, output10512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10510]
  dsimp only
  rw [child10511]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10510_skip, output10511_skip]
  kernel_rfl

theorem node10513_cond_eq
    (child10509 : Flapjack.WordAlloc.removeDeadStructural input10509 value5259 value1 value2 = (output10509, value5260, value1))
    (child10512 : Flapjack.WordAlloc.removeDeadStructural input10512 value5260 value1 value2 = (output10512, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10513 value5259 value1 value2 = (output10513, value5, value1) := by
  rw [input10513_def, output10513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10509]
  dsimp only
  rw [child10512]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10509_skip, output10512_skip]
  kernel_rfl

theorem node10514_cond_eq
    (child10508 : Flapjack.WordAlloc.removeDeadStructural input10508 value5258 value1 value2 = (output10508, value5259, value1))
    (child10513 : Flapjack.WordAlloc.removeDeadStructural input10513 value5259 value1 value2 = (output10513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10514 value5258 value1 value2 = (output10514, value5, value1) := by
  rw [input10514_def, output10514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10508]
  dsimp only
  rw [child10513]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10508_skip, output10513_skip]
  kernel_rfl

theorem node10515_cond_eq
    (child10507 : Flapjack.WordAlloc.removeDeadStructural input10507 value5257 value1 value2 = (output10507, value5258, value1))
    (child10514 : Flapjack.WordAlloc.removeDeadStructural input10514 value5258 value1 value2 = (output10514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10515 value5257 value1 value2 = (output10515, value5, value1) := by
  rw [input10515_def, output10515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10507]
  dsimp only
  rw [child10514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10507_skip, output10514_skip]
  kernel_rfl

theorem node10516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10516 value5 value1 value2 = (output10516, value5262, value1) := by
  rw [input10516_def, output10516_def]
  kernel_rfl

theorem node10517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10517 value5262 value1 value2 = (output10517, value5263, value1) := by
  rw [input10517_def, output10517_def]
  kernel_rfl

theorem node10518_cond_eq
    (child10516 : Flapjack.WordAlloc.removeDeadStructural input10516 value5 value1 value2 = (output10516, value5262, value1))
    (child10517 : Flapjack.WordAlloc.removeDeadStructural input10517 value5262 value1 value2 = (output10517, value5263, value1)) : Flapjack.WordAlloc.removeDeadStructural input10518 value5 value1 value2 = (output10518, value5263, value1) := by
  rw [input10518_def, output10518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10516]
  dsimp only
  rw [child10517]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10516_skip, output10517_skip]
  kernel_rfl

theorem node10519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10519 value5263 value1 value2 = (output10519, value5264, value1) := by
  rw [input10519_def, output10519_def]
  kernel_rfl

theorem node10520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10520 value5264 value1 value2 = (output10520, value5264, value1) := by
  rw [input10520_def, output10520_def]
  kernel_rfl

theorem node10521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10521 value5264 value1 value2 = (output10521, value5265, value1) := by
  rw [input10521_def, output10521_def]
  kernel_rfl

theorem node10522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10522 value5265 value1 value2 = (output10522, value5266, value1) := by
  rw [input10522_def, output10522_def]
  kernel_rfl

theorem node10523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10523 value5266 value1 value2 = (output10523, value5267, value1) := by
  rw [input10523_def, output10523_def]
  kernel_rfl

theorem node10524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10524 value5267 value1 value2 = (output10524, value5268, value1) := by
  rw [input10524_def, output10524_def]
  kernel_rfl

theorem node10525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10525 value5268 value1 value2 = (output10525, value5, value1) := by
  rw [input10525_def, output10525_def]
  kernel_rfl

theorem node10526_cond_eq
    (child10524 : Flapjack.WordAlloc.removeDeadStructural input10524 value5267 value1 value2 = (output10524, value5268, value1))
    (child10525 : Flapjack.WordAlloc.removeDeadStructural input10525 value5268 value1 value2 = (output10525, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10526 value5267 value1 value2 = (output10526, value5, value1) := by
  rw [input10526_def, output10526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10524]
  dsimp only
  rw [child10525]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10524_skip, output10525_skip]
  kernel_rfl

theorem node10527_cond_eq
    (child10523 : Flapjack.WordAlloc.removeDeadStructural input10523 value5266 value1 value2 = (output10523, value5267, value1))
    (child10526 : Flapjack.WordAlloc.removeDeadStructural input10526 value5267 value1 value2 = (output10526, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10527 value5266 value1 value2 = (output10527, value5, value1) := by
  rw [input10527_def, output10527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10523]
  dsimp only
  rw [child10526]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10523_skip, output10526_skip]
  kernel_rfl

theorem node10528_cond_eq
    (child10522 : Flapjack.WordAlloc.removeDeadStructural input10522 value5265 value1 value2 = (output10522, value5266, value1))
    (child10527 : Flapjack.WordAlloc.removeDeadStructural input10527 value5266 value1 value2 = (output10527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10528 value5265 value1 value2 = (output10528, value5, value1) := by
  rw [input10528_def, output10528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10522]
  dsimp only
  rw [child10527]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10522_skip, output10527_skip]
  kernel_rfl

theorem node10529_cond_eq
    (child10521 : Flapjack.WordAlloc.removeDeadStructural input10521 value5264 value1 value2 = (output10521, value5265, value1))
    (child10528 : Flapjack.WordAlloc.removeDeadStructural input10528 value5265 value1 value2 = (output10528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10529 value5264 value1 value2 = (output10529, value5, value1) := by
  rw [input10529_def, output10529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10521]
  dsimp only
  rw [child10528]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10521_skip, output10528_skip]
  kernel_rfl

theorem node10530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10530 value5 value1 value2 = (output10530, value5269, value1) := by
  rw [input10530_def, output10530_def]
  kernel_rfl

theorem node10531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10531 value5269 value1 value2 = (output10531, value5270, value1) := by
  rw [input10531_def, output10531_def]
  kernel_rfl

theorem node10532_cond_eq
    (child10530 : Flapjack.WordAlloc.removeDeadStructural input10530 value5 value1 value2 = (output10530, value5269, value1))
    (child10531 : Flapjack.WordAlloc.removeDeadStructural input10531 value5269 value1 value2 = (output10531, value5270, value1)) : Flapjack.WordAlloc.removeDeadStructural input10532 value5 value1 value2 = (output10532, value5270, value1) := by
  rw [input10532_def, output10532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10530]
  dsimp only
  rw [child10531]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10530_skip, output10531_skip]
  kernel_rfl

theorem node10533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10533 value5270 value1 value2 = (output10533, value5271, value1) := by
  rw [input10533_def, output10533_def]
  kernel_rfl

theorem node10534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10534 value5271 value1 value2 = (output10534, value5271, value1) := by
  rw [input10534_def, output10534_def]
  kernel_rfl

theorem node10535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10535 value5271 value1 value2 = (output10535, value5272, value1) := by
  rw [input10535_def, output10535_def]
  kernel_rfl

theorem node10536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10536 value5272 value1 value2 = (output10536, value5273, value1) := by
  rw [input10536_def, output10536_def]
  kernel_rfl

theorem node10537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10537 value5273 value1 value2 = (output10537, value5274, value1) := by
  rw [input10537_def, output10537_def]
  kernel_rfl

theorem node10538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10538 value5274 value1 value2 = (output10538, value5275, value1) := by
  rw [input10538_def, output10538_def]
  kernel_rfl

theorem node10539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10539 value5275 value1 value2 = (output10539, value5, value1) := by
  rw [input10539_def, output10539_def]
  kernel_rfl

theorem node10540_cond_eq
    (child10538 : Flapjack.WordAlloc.removeDeadStructural input10538 value5274 value1 value2 = (output10538, value5275, value1))
    (child10539 : Flapjack.WordAlloc.removeDeadStructural input10539 value5275 value1 value2 = (output10539, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10540 value5274 value1 value2 = (output10540, value5, value1) := by
  rw [input10540_def, output10540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10538]
  dsimp only
  rw [child10539]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10538_skip, output10539_skip]
  kernel_rfl

theorem node10541_cond_eq
    (child10537 : Flapjack.WordAlloc.removeDeadStructural input10537 value5273 value1 value2 = (output10537, value5274, value1))
    (child10540 : Flapjack.WordAlloc.removeDeadStructural input10540 value5274 value1 value2 = (output10540, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10541 value5273 value1 value2 = (output10541, value5, value1) := by
  rw [input10541_def, output10541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10537]
  dsimp only
  rw [child10540]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10537_skip, output10540_skip]
  kernel_rfl

theorem node10542_cond_eq
    (child10536 : Flapjack.WordAlloc.removeDeadStructural input10536 value5272 value1 value2 = (output10536, value5273, value1))
    (child10541 : Flapjack.WordAlloc.removeDeadStructural input10541 value5273 value1 value2 = (output10541, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10542 value5272 value1 value2 = (output10542, value5, value1) := by
  rw [input10542_def, output10542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10536]
  dsimp only
  rw [child10541]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10536_skip, output10541_skip]
  kernel_rfl

theorem node10543_cond_eq
    (child10535 : Flapjack.WordAlloc.removeDeadStructural input10535 value5271 value1 value2 = (output10535, value5272, value1))
    (child10542 : Flapjack.WordAlloc.removeDeadStructural input10542 value5272 value1 value2 = (output10542, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10543 value5271 value1 value2 = (output10543, value5, value1) := by
  rw [input10543_def, output10543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10535]
  dsimp only
  rw [child10542]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10535_skip, output10542_skip]
  kernel_rfl

theorem node10544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10544 value5 value1 value2 = (output10544, value5276, value1) := by
  rw [input10544_def, output10544_def]
  kernel_rfl

theorem node10545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10545 value5276 value1 value2 = (output10545, value5277, value1) := by
  rw [input10545_def, output10545_def]
  kernel_rfl

theorem node10546_cond_eq
    (child10544 : Flapjack.WordAlloc.removeDeadStructural input10544 value5 value1 value2 = (output10544, value5276, value1))
    (child10545 : Flapjack.WordAlloc.removeDeadStructural input10545 value5276 value1 value2 = (output10545, value5277, value1)) : Flapjack.WordAlloc.removeDeadStructural input10546 value5 value1 value2 = (output10546, value5277, value1) := by
  rw [input10546_def, output10546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10544]
  dsimp only
  rw [child10545]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10544_skip, output10545_skip]
  kernel_rfl

theorem node10547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10547 value5277 value1 value2 = (output10547, value5278, value1) := by
  rw [input10547_def, output10547_def]
  kernel_rfl

theorem node10548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10548 value5278 value1 value2 = (output10548, value5278, value1) := by
  rw [input10548_def, output10548_def]
  kernel_rfl

theorem node10549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10549 value5278 value1 value2 = (output10549, value5279, value1) := by
  rw [input10549_def, output10549_def]
  kernel_rfl

theorem node10550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10550 value5279 value1 value2 = (output10550, value5280, value1) := by
  rw [input10550_def, output10550_def]
  kernel_rfl

theorem node10551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10551 value5280 value1 value2 = (output10551, value5281, value1) := by
  rw [input10551_def, output10551_def]
  kernel_rfl

theorem node10552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10552 value5281 value1 value2 = (output10552, value5282, value1) := by
  rw [input10552_def, output10552_def]
  kernel_rfl

theorem node10553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10553 value5282 value1 value2 = (output10553, value5, value1) := by
  rw [input10553_def, output10553_def]
  kernel_rfl

theorem node10554_cond_eq
    (child10552 : Flapjack.WordAlloc.removeDeadStructural input10552 value5281 value1 value2 = (output10552, value5282, value1))
    (child10553 : Flapjack.WordAlloc.removeDeadStructural input10553 value5282 value1 value2 = (output10553, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10554 value5281 value1 value2 = (output10554, value5, value1) := by
  rw [input10554_def, output10554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10552]
  dsimp only
  rw [child10553]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10552_skip, output10553_skip]
  kernel_rfl

theorem node10555_cond_eq
    (child10551 : Flapjack.WordAlloc.removeDeadStructural input10551 value5280 value1 value2 = (output10551, value5281, value1))
    (child10554 : Flapjack.WordAlloc.removeDeadStructural input10554 value5281 value1 value2 = (output10554, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10555 value5280 value1 value2 = (output10555, value5, value1) := by
  rw [input10555_def, output10555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10551]
  dsimp only
  rw [child10554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10551_skip, output10554_skip]
  kernel_rfl

theorem node10556_cond_eq
    (child10550 : Flapjack.WordAlloc.removeDeadStructural input10550 value5279 value1 value2 = (output10550, value5280, value1))
    (child10555 : Flapjack.WordAlloc.removeDeadStructural input10555 value5280 value1 value2 = (output10555, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10556 value5279 value1 value2 = (output10556, value5, value1) := by
  rw [input10556_def, output10556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10550]
  dsimp only
  rw [child10555]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10550_skip, output10555_skip]
  kernel_rfl

theorem node10557_cond_eq
    (child10549 : Flapjack.WordAlloc.removeDeadStructural input10549 value5278 value1 value2 = (output10549, value5279, value1))
    (child10556 : Flapjack.WordAlloc.removeDeadStructural input10556 value5279 value1 value2 = (output10556, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10557 value5278 value1 value2 = (output10557, value5, value1) := by
  rw [input10557_def, output10557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10549]
  dsimp only
  rw [child10556]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10549_skip, output10556_skip]
  kernel_rfl

theorem node10558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10558 value5 value1 value2 = (output10558, value5283, value1) := by
  rw [input10558_def, output10558_def]
  kernel_rfl

theorem node10559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10559 value5283 value1 value2 = (output10559, value5284, value1) := by
  rw [input10559_def, output10559_def]
  kernel_rfl

theorem node10560_cond_eq
    (child10558 : Flapjack.WordAlloc.removeDeadStructural input10558 value5 value1 value2 = (output10558, value5283, value1))
    (child10559 : Flapjack.WordAlloc.removeDeadStructural input10559 value5283 value1 value2 = (output10559, value5284, value1)) : Flapjack.WordAlloc.removeDeadStructural input10560 value5 value1 value2 = (output10560, value5284, value1) := by
  rw [input10560_def, output10560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10558]
  dsimp only
  rw [child10559]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10558_skip, output10559_skip]
  kernel_rfl

theorem node10561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10561 value5284 value1 value2 = (output10561, value5285, value1) := by
  rw [input10561_def, output10561_def]
  kernel_rfl

theorem node10562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10562 value5285 value1 value2 = (output10562, value5285, value1) := by
  rw [input10562_def, output10562_def]
  kernel_rfl

theorem node10563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10563 value5285 value1 value2 = (output10563, value5286, value1) := by
  rw [input10563_def, output10563_def]
  kernel_rfl

theorem node10564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10564 value5286 value1 value2 = (output10564, value5287, value1) := by
  rw [input10564_def, output10564_def]
  kernel_rfl

theorem node10565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10565 value5287 value1 value2 = (output10565, value5288, value1) := by
  rw [input10565_def, output10565_def]
  kernel_rfl

theorem node10566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10566 value5288 value1 value2 = (output10566, value5289, value1) := by
  rw [input10566_def, output10566_def]
  kernel_rfl

theorem node10567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10567 value5289 value1 value2 = (output10567, value5, value1) := by
  rw [input10567_def, output10567_def]
  kernel_rfl

theorem node10568_cond_eq
    (child10566 : Flapjack.WordAlloc.removeDeadStructural input10566 value5288 value1 value2 = (output10566, value5289, value1))
    (child10567 : Flapjack.WordAlloc.removeDeadStructural input10567 value5289 value1 value2 = (output10567, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10568 value5288 value1 value2 = (output10568, value5, value1) := by
  rw [input10568_def, output10568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10566]
  dsimp only
  rw [child10567]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10566_skip, output10567_skip]
  kernel_rfl

theorem node10569_cond_eq
    (child10565 : Flapjack.WordAlloc.removeDeadStructural input10565 value5287 value1 value2 = (output10565, value5288, value1))
    (child10568 : Flapjack.WordAlloc.removeDeadStructural input10568 value5288 value1 value2 = (output10568, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10569 value5287 value1 value2 = (output10569, value5, value1) := by
  rw [input10569_def, output10569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10565]
  dsimp only
  rw [child10568]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10565_skip, output10568_skip]
  kernel_rfl

theorem node10570_cond_eq
    (child10564 : Flapjack.WordAlloc.removeDeadStructural input10564 value5286 value1 value2 = (output10564, value5287, value1))
    (child10569 : Flapjack.WordAlloc.removeDeadStructural input10569 value5287 value1 value2 = (output10569, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10570 value5286 value1 value2 = (output10570, value5, value1) := by
  rw [input10570_def, output10570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10564]
  dsimp only
  rw [child10569]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10564_skip, output10569_skip]
  kernel_rfl

theorem node10571_cond_eq
    (child10563 : Flapjack.WordAlloc.removeDeadStructural input10563 value5285 value1 value2 = (output10563, value5286, value1))
    (child10570 : Flapjack.WordAlloc.removeDeadStructural input10570 value5286 value1 value2 = (output10570, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10571 value5285 value1 value2 = (output10571, value5, value1) := by
  rw [input10571_def, output10571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10563]
  dsimp only
  rw [child10570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10563_skip, output10570_skip]
  kernel_rfl

theorem node10572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10572 value5 value1 value2 = (output10572, value5290, value1) := by
  rw [input10572_def, output10572_def]
  kernel_rfl

theorem node10573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10573 value5290 value1 value2 = (output10573, value5291, value1) := by
  rw [input10573_def, output10573_def]
  kernel_rfl

theorem node10574_cond_eq
    (child10572 : Flapjack.WordAlloc.removeDeadStructural input10572 value5 value1 value2 = (output10572, value5290, value1))
    (child10573 : Flapjack.WordAlloc.removeDeadStructural input10573 value5290 value1 value2 = (output10573, value5291, value1)) : Flapjack.WordAlloc.removeDeadStructural input10574 value5 value1 value2 = (output10574, value5291, value1) := by
  rw [input10574_def, output10574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10572]
  dsimp only
  rw [child10573]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10572_skip, output10573_skip]
  kernel_rfl

theorem node10575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10575 value5291 value1 value2 = (output10575, value5292, value1) := by
  rw [input10575_def, output10575_def]
  kernel_rfl

theorem node10576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10576 value5292 value1 value2 = (output10576, value5292, value1) := by
  rw [input10576_def, output10576_def]
  kernel_rfl

theorem node10577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10577 value5292 value1 value2 = (output10577, value5293, value1) := by
  rw [input10577_def, output10577_def]
  kernel_rfl

theorem node10578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10578 value5293 value1 value2 = (output10578, value5294, value1) := by
  rw [input10578_def, output10578_def]
  kernel_rfl

theorem node10579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10579 value5294 value1 value2 = (output10579, value5295, value1) := by
  rw [input10579_def, output10579_def]
  kernel_rfl

theorem node10580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10580 value5295 value1 value2 = (output10580, value5296, value1) := by
  rw [input10580_def, output10580_def]
  kernel_rfl

theorem node10581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10581 value5296 value1 value2 = (output10581, value5, value1) := by
  rw [input10581_def, output10581_def]
  kernel_rfl

theorem node10582_cond_eq
    (child10580 : Flapjack.WordAlloc.removeDeadStructural input10580 value5295 value1 value2 = (output10580, value5296, value1))
    (child10581 : Flapjack.WordAlloc.removeDeadStructural input10581 value5296 value1 value2 = (output10581, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10582 value5295 value1 value2 = (output10582, value5, value1) := by
  rw [input10582_def, output10582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10580]
  dsimp only
  rw [child10581]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10580_skip, output10581_skip]
  kernel_rfl

theorem node10583_cond_eq
    (child10579 : Flapjack.WordAlloc.removeDeadStructural input10579 value5294 value1 value2 = (output10579, value5295, value1))
    (child10582 : Flapjack.WordAlloc.removeDeadStructural input10582 value5295 value1 value2 = (output10582, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10583 value5294 value1 value2 = (output10583, value5, value1) := by
  rw [input10583_def, output10583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10579]
  dsimp only
  rw [child10582]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10579_skip, output10582_skip]
  kernel_rfl

theorem node10584_cond_eq
    (child10578 : Flapjack.WordAlloc.removeDeadStructural input10578 value5293 value1 value2 = (output10578, value5294, value1))
    (child10583 : Flapjack.WordAlloc.removeDeadStructural input10583 value5294 value1 value2 = (output10583, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10584 value5293 value1 value2 = (output10584, value5, value1) := by
  rw [input10584_def, output10584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10578]
  dsimp only
  rw [child10583]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10578_skip, output10583_skip]
  kernel_rfl

theorem node10585_cond_eq
    (child10577 : Flapjack.WordAlloc.removeDeadStructural input10577 value5292 value1 value2 = (output10577, value5293, value1))
    (child10584 : Flapjack.WordAlloc.removeDeadStructural input10584 value5293 value1 value2 = (output10584, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10585 value5292 value1 value2 = (output10585, value5, value1) := by
  rw [input10585_def, output10585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10577]
  dsimp only
  rw [child10584]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10577_skip, output10584_skip]
  kernel_rfl

theorem node10586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10586 value5 value1 value2 = (output10586, value5297, value1) := by
  rw [input10586_def, output10586_def]
  kernel_rfl

theorem node10587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10587 value5297 value1 value2 = (output10587, value5298, value1) := by
  rw [input10587_def, output10587_def]
  kernel_rfl

theorem node10588_cond_eq
    (child10586 : Flapjack.WordAlloc.removeDeadStructural input10586 value5 value1 value2 = (output10586, value5297, value1))
    (child10587 : Flapjack.WordAlloc.removeDeadStructural input10587 value5297 value1 value2 = (output10587, value5298, value1)) : Flapjack.WordAlloc.removeDeadStructural input10588 value5 value1 value2 = (output10588, value5298, value1) := by
  rw [input10588_def, output10588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10586]
  dsimp only
  rw [child10587]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10586_skip, output10587_skip]
  kernel_rfl

theorem node10589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10589 value5298 value1 value2 = (output10589, value5299, value1) := by
  rw [input10589_def, output10589_def]
  kernel_rfl

theorem node10590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10590 value5299 value1 value2 = (output10590, value5299, value1) := by
  rw [input10590_def, output10590_def]
  kernel_rfl

theorem node10591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10591 value5299 value1 value2 = (output10591, value5300, value1) := by
  rw [input10591_def, output10591_def]
  kernel_rfl

theorem node10592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10592 value5300 value1 value2 = (output10592, value5301, value1) := by
  rw [input10592_def, output10592_def]
  kernel_rfl

theorem node10593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10593 value5301 value1 value2 = (output10593, value5302, value1) := by
  rw [input10593_def, output10593_def]
  kernel_rfl

theorem node10594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10594 value5302 value1 value2 = (output10594, value5303, value1) := by
  rw [input10594_def, output10594_def]
  kernel_rfl

theorem node10595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10595 value5303 value1 value2 = (output10595, value5, value1) := by
  rw [input10595_def, output10595_def]
  kernel_rfl

theorem node10596_cond_eq
    (child10594 : Flapjack.WordAlloc.removeDeadStructural input10594 value5302 value1 value2 = (output10594, value5303, value1))
    (child10595 : Flapjack.WordAlloc.removeDeadStructural input10595 value5303 value1 value2 = (output10595, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10596 value5302 value1 value2 = (output10596, value5, value1) := by
  rw [input10596_def, output10596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10594]
  dsimp only
  rw [child10595]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10594_skip, output10595_skip]
  kernel_rfl

theorem node10597_cond_eq
    (child10593 : Flapjack.WordAlloc.removeDeadStructural input10593 value5301 value1 value2 = (output10593, value5302, value1))
    (child10596 : Flapjack.WordAlloc.removeDeadStructural input10596 value5302 value1 value2 = (output10596, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10597 value5301 value1 value2 = (output10597, value5, value1) := by
  rw [input10597_def, output10597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10593]
  dsimp only
  rw [child10596]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10593_skip, output10596_skip]
  kernel_rfl

theorem node10598_cond_eq
    (child10592 : Flapjack.WordAlloc.removeDeadStructural input10592 value5300 value1 value2 = (output10592, value5301, value1))
    (child10597 : Flapjack.WordAlloc.removeDeadStructural input10597 value5301 value1 value2 = (output10597, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10598 value5300 value1 value2 = (output10598, value5, value1) := by
  rw [input10598_def, output10598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10592]
  dsimp only
  rw [child10597]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10592_skip, output10597_skip]
  kernel_rfl

theorem node10599_cond_eq
    (child10591 : Flapjack.WordAlloc.removeDeadStructural input10591 value5299 value1 value2 = (output10591, value5300, value1))
    (child10598 : Flapjack.WordAlloc.removeDeadStructural input10598 value5300 value1 value2 = (output10598, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10599 value5299 value1 value2 = (output10599, value5, value1) := by
  rw [input10599_def, output10599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10591]
  dsimp only
  rw [child10598]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10591_skip, output10598_skip]
  kernel_rfl

theorem node10600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10600 value5 value1 value2 = (output10600, value5304, value1) := by
  rw [input10600_def, output10600_def]
  kernel_rfl

theorem node10601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10601 value5304 value1 value2 = (output10601, value5305, value1) := by
  rw [input10601_def, output10601_def]
  kernel_rfl

theorem node10602_cond_eq
    (child10600 : Flapjack.WordAlloc.removeDeadStructural input10600 value5 value1 value2 = (output10600, value5304, value1))
    (child10601 : Flapjack.WordAlloc.removeDeadStructural input10601 value5304 value1 value2 = (output10601, value5305, value1)) : Flapjack.WordAlloc.removeDeadStructural input10602 value5 value1 value2 = (output10602, value5305, value1) := by
  rw [input10602_def, output10602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10600]
  dsimp only
  rw [child10601]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10600_skip, output10601_skip]
  kernel_rfl

theorem node10603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10603 value5305 value1 value2 = (output10603, value5306, value1) := by
  rw [input10603_def, output10603_def]
  kernel_rfl

theorem node10604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10604 value5306 value1 value2 = (output10604, value5306, value1) := by
  rw [input10604_def, output10604_def]
  kernel_rfl

theorem node10605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10605 value5306 value1 value2 = (output10605, value5307, value1) := by
  rw [input10605_def, output10605_def]
  kernel_rfl

theorem node10606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10606 value5307 value1 value2 = (output10606, value5308, value1) := by
  rw [input10606_def, output10606_def]
  kernel_rfl

theorem node10607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10607 value5308 value1 value2 = (output10607, value5309, value1) := by
  rw [input10607_def, output10607_def]
  kernel_rfl

theorem node10608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10608 value5309 value1 value2 = (output10608, value5310, value1) := by
  rw [input10608_def, output10608_def]
  kernel_rfl

theorem node10609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10609 value5310 value1 value2 = (output10609, value5, value1) := by
  rw [input10609_def, output10609_def]
  kernel_rfl

theorem node10610_cond_eq
    (child10608 : Flapjack.WordAlloc.removeDeadStructural input10608 value5309 value1 value2 = (output10608, value5310, value1))
    (child10609 : Flapjack.WordAlloc.removeDeadStructural input10609 value5310 value1 value2 = (output10609, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10610 value5309 value1 value2 = (output10610, value5, value1) := by
  rw [input10610_def, output10610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10608]
  dsimp only
  rw [child10609]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10608_skip, output10609_skip]
  kernel_rfl

theorem node10611_cond_eq
    (child10607 : Flapjack.WordAlloc.removeDeadStructural input10607 value5308 value1 value2 = (output10607, value5309, value1))
    (child10610 : Flapjack.WordAlloc.removeDeadStructural input10610 value5309 value1 value2 = (output10610, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10611 value5308 value1 value2 = (output10611, value5, value1) := by
  rw [input10611_def, output10611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10607]
  dsimp only
  rw [child10610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10607_skip, output10610_skip]
  kernel_rfl

theorem node10612_cond_eq
    (child10606 : Flapjack.WordAlloc.removeDeadStructural input10606 value5307 value1 value2 = (output10606, value5308, value1))
    (child10611 : Flapjack.WordAlloc.removeDeadStructural input10611 value5308 value1 value2 = (output10611, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10612 value5307 value1 value2 = (output10612, value5, value1) := by
  rw [input10612_def, output10612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10606]
  dsimp only
  rw [child10611]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10606_skip, output10611_skip]
  kernel_rfl

theorem node10613_cond_eq
    (child10605 : Flapjack.WordAlloc.removeDeadStructural input10605 value5306 value1 value2 = (output10605, value5307, value1))
    (child10612 : Flapjack.WordAlloc.removeDeadStructural input10612 value5307 value1 value2 = (output10612, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10613 value5306 value1 value2 = (output10613, value5, value1) := by
  rw [input10613_def, output10613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10605]
  dsimp only
  rw [child10612]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10605_skip, output10612_skip]
  kernel_rfl

theorem node10614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10614 value5 value1 value2 = (output10614, value5311, value1) := by
  rw [input10614_def, output10614_def]
  kernel_rfl

theorem node10615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10615 value5311 value1 value2 = (output10615, value5312, value1) := by
  rw [input10615_def, output10615_def]
  kernel_rfl

theorem node10616_cond_eq
    (child10614 : Flapjack.WordAlloc.removeDeadStructural input10614 value5 value1 value2 = (output10614, value5311, value1))
    (child10615 : Flapjack.WordAlloc.removeDeadStructural input10615 value5311 value1 value2 = (output10615, value5312, value1)) : Flapjack.WordAlloc.removeDeadStructural input10616 value5 value1 value2 = (output10616, value5312, value1) := by
  rw [input10616_def, output10616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10614]
  dsimp only
  rw [child10615]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10614_skip, output10615_skip]
  kernel_rfl

theorem node10617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10617 value5312 value1 value2 = (output10617, value5313, value1) := by
  rw [input10617_def, output10617_def]
  kernel_rfl

theorem node10618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10618 value5313 value1 value2 = (output10618, value5313, value1) := by
  rw [input10618_def, output10618_def]
  kernel_rfl

theorem node10619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10619 value5313 value1 value2 = (output10619, value5314, value1) := by
  rw [input10619_def, output10619_def]
  kernel_rfl

theorem node10620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10620 value5314 value1 value2 = (output10620, value5315, value1) := by
  rw [input10620_def, output10620_def]
  kernel_rfl

theorem node10621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10621 value5315 value1 value2 = (output10621, value5316, value1) := by
  rw [input10621_def, output10621_def]
  kernel_rfl

theorem node10622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10622 value5316 value1 value2 = (output10622, value5317, value1) := by
  rw [input10622_def, output10622_def]
  kernel_rfl

theorem node10623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10623 value5317 value1 value2 = (output10623, value5, value1) := by
  rw [input10623_def, output10623_def]
  kernel_rfl

theorem node10624_cond_eq
    (child10622 : Flapjack.WordAlloc.removeDeadStructural input10622 value5316 value1 value2 = (output10622, value5317, value1))
    (child10623 : Flapjack.WordAlloc.removeDeadStructural input10623 value5317 value1 value2 = (output10623, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10624 value5316 value1 value2 = (output10624, value5, value1) := by
  rw [input10624_def, output10624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10622]
  dsimp only
  rw [child10623]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10622_skip, output10623_skip]
  kernel_rfl

theorem node10625_cond_eq
    (child10621 : Flapjack.WordAlloc.removeDeadStructural input10621 value5315 value1 value2 = (output10621, value5316, value1))
    (child10624 : Flapjack.WordAlloc.removeDeadStructural input10624 value5316 value1 value2 = (output10624, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10625 value5315 value1 value2 = (output10625, value5, value1) := by
  rw [input10625_def, output10625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10621]
  dsimp only
  rw [child10624]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10621_skip, output10624_skip]
  kernel_rfl

theorem node10626_cond_eq
    (child10620 : Flapjack.WordAlloc.removeDeadStructural input10620 value5314 value1 value2 = (output10620, value5315, value1))
    (child10625 : Flapjack.WordAlloc.removeDeadStructural input10625 value5315 value1 value2 = (output10625, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10626 value5314 value1 value2 = (output10626, value5, value1) := by
  rw [input10626_def, output10626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10620]
  dsimp only
  rw [child10625]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10620_skip, output10625_skip]
  kernel_rfl

theorem node10627_cond_eq
    (child10619 : Flapjack.WordAlloc.removeDeadStructural input10619 value5313 value1 value2 = (output10619, value5314, value1))
    (child10626 : Flapjack.WordAlloc.removeDeadStructural input10626 value5314 value1 value2 = (output10626, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10627 value5313 value1 value2 = (output10627, value5, value1) := by
  rw [input10627_def, output10627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10619]
  dsimp only
  rw [child10626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10619_skip, output10626_skip]
  kernel_rfl

theorem node10628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10628 value5 value1 value2 = (output10628, value5318, value1) := by
  rw [input10628_def, output10628_def]
  kernel_rfl

theorem node10629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10629 value5318 value1 value2 = (output10629, value5319, value1) := by
  rw [input10629_def, output10629_def]
  kernel_rfl

theorem node10630_cond_eq
    (child10628 : Flapjack.WordAlloc.removeDeadStructural input10628 value5 value1 value2 = (output10628, value5318, value1))
    (child10629 : Flapjack.WordAlloc.removeDeadStructural input10629 value5318 value1 value2 = (output10629, value5319, value1)) : Flapjack.WordAlloc.removeDeadStructural input10630 value5 value1 value2 = (output10630, value5319, value1) := by
  rw [input10630_def, output10630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10628]
  dsimp only
  rw [child10629]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10628_skip, output10629_skip]
  kernel_rfl

theorem node10631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10631 value5319 value1 value2 = (output10631, value5320, value1) := by
  rw [input10631_def, output10631_def]
  kernel_rfl

theorem node10632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10632 value5320 value1 value2 = (output10632, value5320, value1) := by
  rw [input10632_def, output10632_def]
  kernel_rfl

theorem node10633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10633 value5320 value1 value2 = (output10633, value5321, value1) := by
  rw [input10633_def, output10633_def]
  kernel_rfl

theorem node10634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10634 value5321 value1 value2 = (output10634, value5322, value1) := by
  rw [input10634_def, output10634_def]
  kernel_rfl

theorem node10635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10635 value5322 value1 value2 = (output10635, value5323, value1) := by
  rw [input10635_def, output10635_def]
  kernel_rfl

theorem node10636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10636 value5323 value1 value2 = (output10636, value5324, value1) := by
  rw [input10636_def, output10636_def]
  kernel_rfl

theorem node10637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10637 value5324 value1 value2 = (output10637, value5, value1) := by
  rw [input10637_def, output10637_def]
  kernel_rfl

theorem node10638_cond_eq
    (child10636 : Flapjack.WordAlloc.removeDeadStructural input10636 value5323 value1 value2 = (output10636, value5324, value1))
    (child10637 : Flapjack.WordAlloc.removeDeadStructural input10637 value5324 value1 value2 = (output10637, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10638 value5323 value1 value2 = (output10638, value5, value1) := by
  rw [input10638_def, output10638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10636]
  dsimp only
  rw [child10637]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10636_skip, output10637_skip]
  kernel_rfl

theorem node10639_cond_eq
    (child10635 : Flapjack.WordAlloc.removeDeadStructural input10635 value5322 value1 value2 = (output10635, value5323, value1))
    (child10638 : Flapjack.WordAlloc.removeDeadStructural input10638 value5323 value1 value2 = (output10638, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10639 value5322 value1 value2 = (output10639, value5, value1) := by
  rw [input10639_def, output10639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10635]
  dsimp only
  rw [child10638]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10635_skip, output10638_skip]
  kernel_rfl

theorem node10640_cond_eq
    (child10634 : Flapjack.WordAlloc.removeDeadStructural input10634 value5321 value1 value2 = (output10634, value5322, value1))
    (child10639 : Flapjack.WordAlloc.removeDeadStructural input10639 value5322 value1 value2 = (output10639, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10640 value5321 value1 value2 = (output10640, value5, value1) := by
  rw [input10640_def, output10640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10634]
  dsimp only
  rw [child10639]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10634_skip, output10639_skip]
  kernel_rfl

theorem node10641_cond_eq
    (child10633 : Flapjack.WordAlloc.removeDeadStructural input10633 value5320 value1 value2 = (output10633, value5321, value1))
    (child10640 : Flapjack.WordAlloc.removeDeadStructural input10640 value5321 value1 value2 = (output10640, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10641 value5320 value1 value2 = (output10641, value5, value1) := by
  rw [input10641_def, output10641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10633]
  dsimp only
  rw [child10640]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10633_skip, output10640_skip]
  kernel_rfl

theorem node10642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10642 value5 value1 value2 = (output10642, value5325, value1) := by
  rw [input10642_def, output10642_def]
  kernel_rfl

theorem node10643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10643 value5325 value1 value2 = (output10643, value5326, value1) := by
  rw [input10643_def, output10643_def]
  kernel_rfl

theorem node10644_cond_eq
    (child10642 : Flapjack.WordAlloc.removeDeadStructural input10642 value5 value1 value2 = (output10642, value5325, value1))
    (child10643 : Flapjack.WordAlloc.removeDeadStructural input10643 value5325 value1 value2 = (output10643, value5326, value1)) : Flapjack.WordAlloc.removeDeadStructural input10644 value5 value1 value2 = (output10644, value5326, value1) := by
  rw [input10644_def, output10644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10642]
  dsimp only
  rw [child10643]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10642_skip, output10643_skip]
  kernel_rfl

theorem node10645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10645 value5326 value1 value2 = (output10645, value5327, value1) := by
  rw [input10645_def, output10645_def]
  kernel_rfl

theorem node10646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10646 value5327 value1 value2 = (output10646, value5327, value1) := by
  rw [input10646_def, output10646_def]
  kernel_rfl

theorem node10647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10647 value5327 value1 value2 = (output10647, value5328, value1) := by
  rw [input10647_def, output10647_def]
  kernel_rfl

theorem node10648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10648 value5328 value1 value2 = (output10648, value5329, value1) := by
  rw [input10648_def, output10648_def]
  kernel_rfl

theorem node10649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10649 value5329 value1 value2 = (output10649, value5330, value1) := by
  rw [input10649_def, output10649_def]
  kernel_rfl

theorem node10650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10650 value5330 value1 value2 = (output10650, value5331, value1) := by
  rw [input10650_def, output10650_def]
  kernel_rfl

theorem node10651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10651 value5331 value1 value2 = (output10651, value5, value1) := by
  rw [input10651_def, output10651_def]
  kernel_rfl

theorem node10652_cond_eq
    (child10650 : Flapjack.WordAlloc.removeDeadStructural input10650 value5330 value1 value2 = (output10650, value5331, value1))
    (child10651 : Flapjack.WordAlloc.removeDeadStructural input10651 value5331 value1 value2 = (output10651, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10652 value5330 value1 value2 = (output10652, value5, value1) := by
  rw [input10652_def, output10652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10650]
  dsimp only
  rw [child10651]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10650_skip, output10651_skip]
  kernel_rfl

theorem node10653_cond_eq
    (child10649 : Flapjack.WordAlloc.removeDeadStructural input10649 value5329 value1 value2 = (output10649, value5330, value1))
    (child10652 : Flapjack.WordAlloc.removeDeadStructural input10652 value5330 value1 value2 = (output10652, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10653 value5329 value1 value2 = (output10653, value5, value1) := by
  rw [input10653_def, output10653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10649]
  dsimp only
  rw [child10652]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10649_skip, output10652_skip]
  kernel_rfl

theorem node10654_cond_eq
    (child10648 : Flapjack.WordAlloc.removeDeadStructural input10648 value5328 value1 value2 = (output10648, value5329, value1))
    (child10653 : Flapjack.WordAlloc.removeDeadStructural input10653 value5329 value1 value2 = (output10653, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10654 value5328 value1 value2 = (output10654, value5, value1) := by
  rw [input10654_def, output10654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10648]
  dsimp only
  rw [child10653]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10648_skip, output10653_skip]
  kernel_rfl

theorem node10655_cond_eq
    (child10647 : Flapjack.WordAlloc.removeDeadStructural input10647 value5327 value1 value2 = (output10647, value5328, value1))
    (child10654 : Flapjack.WordAlloc.removeDeadStructural input10654 value5328 value1 value2 = (output10654, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10655 value5327 value1 value2 = (output10655, value5, value1) := by
  rw [input10655_def, output10655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10647]
  dsimp only
  rw [child10654]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10647_skip, output10654_skip]
  kernel_rfl

theorem node10656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10656 value5 value1 value2 = (output10656, value5332, value1) := by
  rw [input10656_def, output10656_def]
  kernel_rfl

theorem node10657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10657 value5332 value1 value2 = (output10657, value5333, value1) := by
  rw [input10657_def, output10657_def]
  kernel_rfl

theorem node10658_cond_eq
    (child10656 : Flapjack.WordAlloc.removeDeadStructural input10656 value5 value1 value2 = (output10656, value5332, value1))
    (child10657 : Flapjack.WordAlloc.removeDeadStructural input10657 value5332 value1 value2 = (output10657, value5333, value1)) : Flapjack.WordAlloc.removeDeadStructural input10658 value5 value1 value2 = (output10658, value5333, value1) := by
  rw [input10658_def, output10658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10656]
  dsimp only
  rw [child10657]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10656_skip, output10657_skip]
  kernel_rfl

theorem node10659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10659 value5333 value1 value2 = (output10659, value5334, value1) := by
  rw [input10659_def, output10659_def]
  kernel_rfl

theorem node10660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10660 value5334 value1 value2 = (output10660, value5334, value1) := by
  rw [input10660_def, output10660_def]
  kernel_rfl

theorem node10661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10661 value5334 value1 value2 = (output10661, value5335, value1) := by
  rw [input10661_def, output10661_def]
  kernel_rfl

theorem node10662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10662 value5335 value1 value2 = (output10662, value5336, value1) := by
  rw [input10662_def, output10662_def]
  kernel_rfl

theorem node10663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10663 value5336 value1 value2 = (output10663, value5337, value1) := by
  rw [input10663_def, output10663_def]
  kernel_rfl

theorem node10664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10664 value5337 value1 value2 = (output10664, value5338, value1) := by
  rw [input10664_def, output10664_def]
  kernel_rfl

theorem node10665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10665 value5338 value1 value2 = (output10665, value5, value1) := by
  rw [input10665_def, output10665_def]
  kernel_rfl

theorem node10666_cond_eq
    (child10664 : Flapjack.WordAlloc.removeDeadStructural input10664 value5337 value1 value2 = (output10664, value5338, value1))
    (child10665 : Flapjack.WordAlloc.removeDeadStructural input10665 value5338 value1 value2 = (output10665, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10666 value5337 value1 value2 = (output10666, value5, value1) := by
  rw [input10666_def, output10666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10664]
  dsimp only
  rw [child10665]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10664_skip, output10665_skip]
  kernel_rfl

theorem node10667_cond_eq
    (child10663 : Flapjack.WordAlloc.removeDeadStructural input10663 value5336 value1 value2 = (output10663, value5337, value1))
    (child10666 : Flapjack.WordAlloc.removeDeadStructural input10666 value5337 value1 value2 = (output10666, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10667 value5336 value1 value2 = (output10667, value5, value1) := by
  rw [input10667_def, output10667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10663]
  dsimp only
  rw [child10666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10663_skip, output10666_skip]
  kernel_rfl

theorem node10668_cond_eq
    (child10662 : Flapjack.WordAlloc.removeDeadStructural input10662 value5335 value1 value2 = (output10662, value5336, value1))
    (child10667 : Flapjack.WordAlloc.removeDeadStructural input10667 value5336 value1 value2 = (output10667, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10668 value5335 value1 value2 = (output10668, value5, value1) := by
  rw [input10668_def, output10668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10662]
  dsimp only
  rw [child10667]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10662_skip, output10667_skip]
  kernel_rfl

theorem node10669_cond_eq
    (child10661 : Flapjack.WordAlloc.removeDeadStructural input10661 value5334 value1 value2 = (output10661, value5335, value1))
    (child10668 : Flapjack.WordAlloc.removeDeadStructural input10668 value5335 value1 value2 = (output10668, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10669 value5334 value1 value2 = (output10669, value5, value1) := by
  rw [input10669_def, output10669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10661]
  dsimp only
  rw [child10668]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10661_skip, output10668_skip]
  kernel_rfl

theorem node10670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10670 value5 value1 value2 = (output10670, value5339, value1) := by
  rw [input10670_def, output10670_def]
  kernel_rfl

theorem node10671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10671 value5339 value1 value2 = (output10671, value5340, value1) := by
  rw [input10671_def, output10671_def]
  kernel_rfl

theorem node10672_cond_eq
    (child10670 : Flapjack.WordAlloc.removeDeadStructural input10670 value5 value1 value2 = (output10670, value5339, value1))
    (child10671 : Flapjack.WordAlloc.removeDeadStructural input10671 value5339 value1 value2 = (output10671, value5340, value1)) : Flapjack.WordAlloc.removeDeadStructural input10672 value5 value1 value2 = (output10672, value5340, value1) := by
  rw [input10672_def, output10672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10670]
  dsimp only
  rw [child10671]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10670_skip, output10671_skip]
  kernel_rfl

theorem node10673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10673 value5340 value1 value2 = (output10673, value5341, value1) := by
  rw [input10673_def, output10673_def]
  kernel_rfl

theorem node10674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10674 value5341 value1 value2 = (output10674, value5341, value1) := by
  rw [input10674_def, output10674_def]
  kernel_rfl

theorem node10675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10675 value5341 value1 value2 = (output10675, value5342, value1) := by
  rw [input10675_def, output10675_def]
  kernel_rfl

theorem node10676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10676 value5342 value1 value2 = (output10676, value5343, value1) := by
  rw [input10676_def, output10676_def]
  kernel_rfl

theorem node10677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10677 value5343 value1 value2 = (output10677, value5344, value1) := by
  rw [input10677_def, output10677_def]
  kernel_rfl

theorem node10678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10678 value5344 value1 value2 = (output10678, value5345, value1) := by
  rw [input10678_def, output10678_def]
  kernel_rfl

theorem node10679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10679 value5345 value1 value2 = (output10679, value5, value1) := by
  rw [input10679_def, output10679_def]
  kernel_rfl

theorem node10680_cond_eq
    (child10678 : Flapjack.WordAlloc.removeDeadStructural input10678 value5344 value1 value2 = (output10678, value5345, value1))
    (child10679 : Flapjack.WordAlloc.removeDeadStructural input10679 value5345 value1 value2 = (output10679, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10680 value5344 value1 value2 = (output10680, value5, value1) := by
  rw [input10680_def, output10680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10678]
  dsimp only
  rw [child10679]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10678_skip, output10679_skip]
  kernel_rfl

theorem node10681_cond_eq
    (child10677 : Flapjack.WordAlloc.removeDeadStructural input10677 value5343 value1 value2 = (output10677, value5344, value1))
    (child10680 : Flapjack.WordAlloc.removeDeadStructural input10680 value5344 value1 value2 = (output10680, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10681 value5343 value1 value2 = (output10681, value5, value1) := by
  rw [input10681_def, output10681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10677]
  dsimp only
  rw [child10680]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10677_skip, output10680_skip]
  kernel_rfl

theorem node10682_cond_eq
    (child10676 : Flapjack.WordAlloc.removeDeadStructural input10676 value5342 value1 value2 = (output10676, value5343, value1))
    (child10681 : Flapjack.WordAlloc.removeDeadStructural input10681 value5343 value1 value2 = (output10681, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10682 value5342 value1 value2 = (output10682, value5, value1) := by
  rw [input10682_def, output10682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10676]
  dsimp only
  rw [child10681]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10676_skip, output10681_skip]
  kernel_rfl

theorem node10683_cond_eq
    (child10675 : Flapjack.WordAlloc.removeDeadStructural input10675 value5341 value1 value2 = (output10675, value5342, value1))
    (child10682 : Flapjack.WordAlloc.removeDeadStructural input10682 value5342 value1 value2 = (output10682, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10683 value5341 value1 value2 = (output10683, value5, value1) := by
  rw [input10683_def, output10683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10675]
  dsimp only
  rw [child10682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10675_skip, output10682_skip]
  kernel_rfl

theorem node10684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10684 value5 value1 value2 = (output10684, value5346, value1) := by
  rw [input10684_def, output10684_def]
  kernel_rfl

theorem node10685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10685 value5346 value1 value2 = (output10685, value5347, value1) := by
  rw [input10685_def, output10685_def]
  kernel_rfl

theorem node10686_cond_eq
    (child10684 : Flapjack.WordAlloc.removeDeadStructural input10684 value5 value1 value2 = (output10684, value5346, value1))
    (child10685 : Flapjack.WordAlloc.removeDeadStructural input10685 value5346 value1 value2 = (output10685, value5347, value1)) : Flapjack.WordAlloc.removeDeadStructural input10686 value5 value1 value2 = (output10686, value5347, value1) := by
  rw [input10686_def, output10686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10684]
  dsimp only
  rw [child10685]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10684_skip, output10685_skip]
  kernel_rfl

theorem node10687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10687 value5347 value1 value2 = (output10687, value5348, value1) := by
  rw [input10687_def, output10687_def]
  kernel_rfl

theorem node10688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10688 value5348 value1 value2 = (output10688, value5348, value1) := by
  rw [input10688_def, output10688_def]
  kernel_rfl

theorem node10689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10689 value5348 value1 value2 = (output10689, value5349, value1) := by
  rw [input10689_def, output10689_def]
  kernel_rfl

theorem node10690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10690 value5349 value1 value2 = (output10690, value5350, value1) := by
  rw [input10690_def, output10690_def]
  kernel_rfl

theorem node10691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10691 value5350 value1 value2 = (output10691, value5351, value1) := by
  rw [input10691_def, output10691_def]
  kernel_rfl

theorem node10692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10692 value5351 value1 value2 = (output10692, value5352, value1) := by
  rw [input10692_def, output10692_def]
  kernel_rfl

theorem node10693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10693 value5352 value1 value2 = (output10693, value5, value1) := by
  rw [input10693_def, output10693_def]
  kernel_rfl

theorem node10694_cond_eq
    (child10692 : Flapjack.WordAlloc.removeDeadStructural input10692 value5351 value1 value2 = (output10692, value5352, value1))
    (child10693 : Flapjack.WordAlloc.removeDeadStructural input10693 value5352 value1 value2 = (output10693, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10694 value5351 value1 value2 = (output10694, value5, value1) := by
  rw [input10694_def, output10694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10692]
  dsimp only
  rw [child10693]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10692_skip, output10693_skip]
  kernel_rfl

theorem node10695_cond_eq
    (child10691 : Flapjack.WordAlloc.removeDeadStructural input10691 value5350 value1 value2 = (output10691, value5351, value1))
    (child10694 : Flapjack.WordAlloc.removeDeadStructural input10694 value5351 value1 value2 = (output10694, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10695 value5350 value1 value2 = (output10695, value5, value1) := by
  rw [input10695_def, output10695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10691]
  dsimp only
  rw [child10694]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10691_skip, output10694_skip]
  kernel_rfl

theorem node10696_cond_eq
    (child10690 : Flapjack.WordAlloc.removeDeadStructural input10690 value5349 value1 value2 = (output10690, value5350, value1))
    (child10695 : Flapjack.WordAlloc.removeDeadStructural input10695 value5350 value1 value2 = (output10695, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10696 value5349 value1 value2 = (output10696, value5, value1) := by
  rw [input10696_def, output10696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10690]
  dsimp only
  rw [child10695]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10690_skip, output10695_skip]
  kernel_rfl

theorem node10697_cond_eq
    (child10689 : Flapjack.WordAlloc.removeDeadStructural input10689 value5348 value1 value2 = (output10689, value5349, value1))
    (child10696 : Flapjack.WordAlloc.removeDeadStructural input10696 value5349 value1 value2 = (output10696, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10697 value5348 value1 value2 = (output10697, value5, value1) := by
  rw [input10697_def, output10697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10689]
  dsimp only
  rw [child10696]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10689_skip, output10696_skip]
  kernel_rfl

theorem node10698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10698 value5 value1 value2 = (output10698, value5353, value1) := by
  rw [input10698_def, output10698_def]
  kernel_rfl

theorem node10699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10699 value5353 value1 value2 = (output10699, value5354, value1) := by
  rw [input10699_def, output10699_def]
  kernel_rfl

theorem node10700_cond_eq
    (child10698 : Flapjack.WordAlloc.removeDeadStructural input10698 value5 value1 value2 = (output10698, value5353, value1))
    (child10699 : Flapjack.WordAlloc.removeDeadStructural input10699 value5353 value1 value2 = (output10699, value5354, value1)) : Flapjack.WordAlloc.removeDeadStructural input10700 value5 value1 value2 = (output10700, value5354, value1) := by
  rw [input10700_def, output10700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10698]
  dsimp only
  rw [child10699]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10698_skip, output10699_skip]
  kernel_rfl

theorem node10701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10701 value5354 value1 value2 = (output10701, value5355, value1) := by
  rw [input10701_def, output10701_def]
  kernel_rfl

theorem node10702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10702 value5355 value1 value2 = (output10702, value5355, value1) := by
  rw [input10702_def, output10702_def]
  kernel_rfl

theorem node10703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10703 value5355 value1 value2 = (output10703, value5356, value1) := by
  rw [input10703_def, output10703_def]
  kernel_rfl

theorem node10704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10704 value5356 value1 value2 = (output10704, value5357, value1) := by
  rw [input10704_def, output10704_def]
  kernel_rfl

theorem node10705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10705 value5357 value1 value2 = (output10705, value5358, value1) := by
  rw [input10705_def, output10705_def]
  kernel_rfl

theorem node10706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10706 value5358 value1 value2 = (output10706, value5359, value1) := by
  rw [input10706_def, output10706_def]
  kernel_rfl

theorem node10707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10707 value5359 value1 value2 = (output10707, value5, value1) := by
  rw [input10707_def, output10707_def]
  kernel_rfl

theorem node10708_cond_eq
    (child10706 : Flapjack.WordAlloc.removeDeadStructural input10706 value5358 value1 value2 = (output10706, value5359, value1))
    (child10707 : Flapjack.WordAlloc.removeDeadStructural input10707 value5359 value1 value2 = (output10707, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10708 value5358 value1 value2 = (output10708, value5, value1) := by
  rw [input10708_def, output10708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10706]
  dsimp only
  rw [child10707]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10706_skip, output10707_skip]
  kernel_rfl

theorem node10709_cond_eq
    (child10705 : Flapjack.WordAlloc.removeDeadStructural input10705 value5357 value1 value2 = (output10705, value5358, value1))
    (child10708 : Flapjack.WordAlloc.removeDeadStructural input10708 value5358 value1 value2 = (output10708, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10709 value5357 value1 value2 = (output10709, value5, value1) := by
  rw [input10709_def, output10709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10705]
  dsimp only
  rw [child10708]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10705_skip, output10708_skip]
  kernel_rfl

theorem node10710_cond_eq
    (child10704 : Flapjack.WordAlloc.removeDeadStructural input10704 value5356 value1 value2 = (output10704, value5357, value1))
    (child10709 : Flapjack.WordAlloc.removeDeadStructural input10709 value5357 value1 value2 = (output10709, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10710 value5356 value1 value2 = (output10710, value5, value1) := by
  rw [input10710_def, output10710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10704]
  dsimp only
  rw [child10709]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10704_skip, output10709_skip]
  kernel_rfl

theorem node10711_cond_eq
    (child10703 : Flapjack.WordAlloc.removeDeadStructural input10703 value5355 value1 value2 = (output10703, value5356, value1))
    (child10710 : Flapjack.WordAlloc.removeDeadStructural input10710 value5356 value1 value2 = (output10710, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10711 value5355 value1 value2 = (output10711, value5, value1) := by
  rw [input10711_def, output10711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10703]
  dsimp only
  rw [child10710]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10703_skip, output10710_skip]
  kernel_rfl

theorem node10712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10712 value5 value1 value2 = (output10712, value5360, value1) := by
  rw [input10712_def, output10712_def]
  kernel_rfl

theorem node10713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10713 value5360 value1 value2 = (output10713, value5361, value1) := by
  rw [input10713_def, output10713_def]
  kernel_rfl

theorem node10714_cond_eq
    (child10712 : Flapjack.WordAlloc.removeDeadStructural input10712 value5 value1 value2 = (output10712, value5360, value1))
    (child10713 : Flapjack.WordAlloc.removeDeadStructural input10713 value5360 value1 value2 = (output10713, value5361, value1)) : Flapjack.WordAlloc.removeDeadStructural input10714 value5 value1 value2 = (output10714, value5361, value1) := by
  rw [input10714_def, output10714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10712]
  dsimp only
  rw [child10713]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10712_skip, output10713_skip]
  kernel_rfl

theorem node10715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10715 value5361 value1 value2 = (output10715, value5362, value1) := by
  rw [input10715_def, output10715_def]
  kernel_rfl

theorem node10716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10716 value5362 value1 value2 = (output10716, value5362, value1) := by
  rw [input10716_def, output10716_def]
  kernel_rfl

theorem node10717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10717 value5362 value1 value2 = (output10717, value5363, value1) := by
  rw [input10717_def, output10717_def]
  kernel_rfl

theorem node10718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10718 value5363 value1 value2 = (output10718, value5364, value1) := by
  rw [input10718_def, output10718_def]
  kernel_rfl

theorem node10719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10719 value5364 value1 value2 = (output10719, value5365, value1) := by
  rw [input10719_def, output10719_def]
  kernel_rfl

theorem node10720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10720 value5365 value1 value2 = (output10720, value5366, value1) := by
  rw [input10720_def, output10720_def]
  kernel_rfl

theorem node10721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10721 value5366 value1 value2 = (output10721, value5, value1) := by
  rw [input10721_def, output10721_def]
  kernel_rfl

theorem node10722_cond_eq
    (child10720 : Flapjack.WordAlloc.removeDeadStructural input10720 value5365 value1 value2 = (output10720, value5366, value1))
    (child10721 : Flapjack.WordAlloc.removeDeadStructural input10721 value5366 value1 value2 = (output10721, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10722 value5365 value1 value2 = (output10722, value5, value1) := by
  rw [input10722_def, output10722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10720]
  dsimp only
  rw [child10721]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10720_skip, output10721_skip]
  kernel_rfl

theorem node10723_cond_eq
    (child10719 : Flapjack.WordAlloc.removeDeadStructural input10719 value5364 value1 value2 = (output10719, value5365, value1))
    (child10722 : Flapjack.WordAlloc.removeDeadStructural input10722 value5365 value1 value2 = (output10722, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10723 value5364 value1 value2 = (output10723, value5, value1) := by
  rw [input10723_def, output10723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10719]
  dsimp only
  rw [child10722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10719_skip, output10722_skip]
  kernel_rfl

theorem node10724_cond_eq
    (child10718 : Flapjack.WordAlloc.removeDeadStructural input10718 value5363 value1 value2 = (output10718, value5364, value1))
    (child10723 : Flapjack.WordAlloc.removeDeadStructural input10723 value5364 value1 value2 = (output10723, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10724 value5363 value1 value2 = (output10724, value5, value1) := by
  rw [input10724_def, output10724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10718]
  dsimp only
  rw [child10723]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10718_skip, output10723_skip]
  kernel_rfl

theorem node10725_cond_eq
    (child10717 : Flapjack.WordAlloc.removeDeadStructural input10717 value5362 value1 value2 = (output10717, value5363, value1))
    (child10724 : Flapjack.WordAlloc.removeDeadStructural input10724 value5363 value1 value2 = (output10724, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10725 value5362 value1 value2 = (output10725, value5, value1) := by
  rw [input10725_def, output10725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10717]
  dsimp only
  rw [child10724]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10717_skip, output10724_skip]
  kernel_rfl

theorem node10726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10726 value5 value1 value2 = (output10726, value5367, value1) := by
  rw [input10726_def, output10726_def]
  kernel_rfl

theorem node10727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10727 value5367 value1 value2 = (output10727, value5368, value1) := by
  rw [input10727_def, output10727_def]
  kernel_rfl

theorem node10728_cond_eq
    (child10726 : Flapjack.WordAlloc.removeDeadStructural input10726 value5 value1 value2 = (output10726, value5367, value1))
    (child10727 : Flapjack.WordAlloc.removeDeadStructural input10727 value5367 value1 value2 = (output10727, value5368, value1)) : Flapjack.WordAlloc.removeDeadStructural input10728 value5 value1 value2 = (output10728, value5368, value1) := by
  rw [input10728_def, output10728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10726]
  dsimp only
  rw [child10727]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10726_skip, output10727_skip]
  kernel_rfl

theorem node10729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10729 value5368 value1 value2 = (output10729, value5369, value1) := by
  rw [input10729_def, output10729_def]
  kernel_rfl

theorem node10730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10730 value5369 value1 value2 = (output10730, value5369, value1) := by
  rw [input10730_def, output10730_def]
  kernel_rfl

theorem node10731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10731 value5369 value1 value2 = (output10731, value5370, value1) := by
  rw [input10731_def, output10731_def]
  kernel_rfl

theorem node10732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10732 value5370 value1 value2 = (output10732, value5371, value1) := by
  rw [input10732_def, output10732_def]
  kernel_rfl

theorem node10733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10733 value5371 value1 value2 = (output10733, value5372, value1) := by
  rw [input10733_def, output10733_def]
  kernel_rfl

theorem node10734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10734 value5372 value1 value2 = (output10734, value5373, value1) := by
  rw [input10734_def, output10734_def]
  kernel_rfl

theorem node10735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10735 value5373 value1 value2 = (output10735, value5, value1) := by
  rw [input10735_def, output10735_def]
  kernel_rfl

theorem node10736_cond_eq
    (child10734 : Flapjack.WordAlloc.removeDeadStructural input10734 value5372 value1 value2 = (output10734, value5373, value1))
    (child10735 : Flapjack.WordAlloc.removeDeadStructural input10735 value5373 value1 value2 = (output10735, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10736 value5372 value1 value2 = (output10736, value5, value1) := by
  rw [input10736_def, output10736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10734]
  dsimp only
  rw [child10735]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10734_skip, output10735_skip]
  kernel_rfl

theorem node10737_cond_eq
    (child10733 : Flapjack.WordAlloc.removeDeadStructural input10733 value5371 value1 value2 = (output10733, value5372, value1))
    (child10736 : Flapjack.WordAlloc.removeDeadStructural input10736 value5372 value1 value2 = (output10736, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10737 value5371 value1 value2 = (output10737, value5, value1) := by
  rw [input10737_def, output10737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10733]
  dsimp only
  rw [child10736]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10733_skip, output10736_skip]
  kernel_rfl

theorem node10738_cond_eq
    (child10732 : Flapjack.WordAlloc.removeDeadStructural input10732 value5370 value1 value2 = (output10732, value5371, value1))
    (child10737 : Flapjack.WordAlloc.removeDeadStructural input10737 value5371 value1 value2 = (output10737, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10738 value5370 value1 value2 = (output10738, value5, value1) := by
  rw [input10738_def, output10738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10732]
  dsimp only
  rw [child10737]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10732_skip, output10737_skip]
  kernel_rfl

theorem node10739_cond_eq
    (child10731 : Flapjack.WordAlloc.removeDeadStructural input10731 value5369 value1 value2 = (output10731, value5370, value1))
    (child10738 : Flapjack.WordAlloc.removeDeadStructural input10738 value5370 value1 value2 = (output10738, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10739 value5369 value1 value2 = (output10739, value5, value1) := by
  rw [input10739_def, output10739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10731]
  dsimp only
  rw [child10738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10731_skip, output10738_skip]
  kernel_rfl

theorem node10740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10740 value5 value1 value2 = (output10740, value5374, value1) := by
  rw [input10740_def, output10740_def]
  kernel_rfl

theorem node10741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10741 value5374 value1 value2 = (output10741, value5375, value1) := by
  rw [input10741_def, output10741_def]
  kernel_rfl

theorem node10742_cond_eq
    (child10740 : Flapjack.WordAlloc.removeDeadStructural input10740 value5 value1 value2 = (output10740, value5374, value1))
    (child10741 : Flapjack.WordAlloc.removeDeadStructural input10741 value5374 value1 value2 = (output10741, value5375, value1)) : Flapjack.WordAlloc.removeDeadStructural input10742 value5 value1 value2 = (output10742, value5375, value1) := by
  rw [input10742_def, output10742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10740]
  dsimp only
  rw [child10741]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10740_skip, output10741_skip]
  kernel_rfl

theorem node10743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10743 value5375 value1 value2 = (output10743, value5376, value1) := by
  rw [input10743_def, output10743_def]
  kernel_rfl

theorem node10744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10744 value5376 value1 value2 = (output10744, value5376, value1) := by
  rw [input10744_def, output10744_def]
  kernel_rfl

theorem node10745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10745 value5376 value1 value2 = (output10745, value5377, value1) := by
  rw [input10745_def, output10745_def]
  kernel_rfl

theorem node10746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10746 value5377 value1 value2 = (output10746, value5378, value1) := by
  rw [input10746_def, output10746_def]
  kernel_rfl

theorem node10747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10747 value5378 value1 value2 = (output10747, value5379, value1) := by
  rw [input10747_def, output10747_def]
  kernel_rfl

theorem node10748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10748 value5379 value1 value2 = (output10748, value5380, value1) := by
  rw [input10748_def, output10748_def]
  kernel_rfl

theorem node10749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10749 value5380 value1 value2 = (output10749, value5, value1) := by
  rw [input10749_def, output10749_def]
  kernel_rfl

theorem node10750_cond_eq
    (child10748 : Flapjack.WordAlloc.removeDeadStructural input10748 value5379 value1 value2 = (output10748, value5380, value1))
    (child10749 : Flapjack.WordAlloc.removeDeadStructural input10749 value5380 value1 value2 = (output10749, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10750 value5379 value1 value2 = (output10750, value5, value1) := by
  rw [input10750_def, output10750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10748]
  dsimp only
  rw [child10749]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10748_skip, output10749_skip]
  kernel_rfl

theorem node10751_cond_eq
    (child10747 : Flapjack.WordAlloc.removeDeadStructural input10747 value5378 value1 value2 = (output10747, value5379, value1))
    (child10750 : Flapjack.WordAlloc.removeDeadStructural input10750 value5379 value1 value2 = (output10750, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10751 value5378 value1 value2 = (output10751, value5, value1) := by
  rw [input10751_def, output10751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10747]
  dsimp only
  rw [child10750]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10747_skip, output10750_skip]
  kernel_rfl

#print axioms node10751_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
