import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk037
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node9472_cond_eq
    (child9470 : Flapjack.WordAlloc.removeDeadStructural input9470 value4740 value1 value2 = (output9470, value4741, value1))
    (child9471 : Flapjack.WordAlloc.removeDeadStructural input9471 value4741 value1 value2 = (output9471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9472 value4740 value1 value2 = (output9472, value5, value1) := by
  rw [input9472_def, output9472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9470]
  dsimp only
  rw [child9471]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9470_skip, output9471_skip]
  kernel_rfl

theorem node9473_cond_eq
    (child9469 : Flapjack.WordAlloc.removeDeadStructural input9469 value4739 value1 value2 = (output9469, value4740, value1))
    (child9472 : Flapjack.WordAlloc.removeDeadStructural input9472 value4740 value1 value2 = (output9472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9473 value4739 value1 value2 = (output9473, value5, value1) := by
  rw [input9473_def, output9473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9469]
  dsimp only
  rw [child9472]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9469_skip, output9472_skip]
  kernel_rfl

theorem node9474_cond_eq
    (child9468 : Flapjack.WordAlloc.removeDeadStructural input9468 value4738 value1 value2 = (output9468, value4739, value1))
    (child9473 : Flapjack.WordAlloc.removeDeadStructural input9473 value4739 value1 value2 = (output9473, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9474 value4738 value1 value2 = (output9474, value5, value1) := by
  rw [input9474_def, output9474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9468]
  dsimp only
  rw [child9473]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9468_skip, output9473_skip]
  kernel_rfl

theorem node9475_cond_eq
    (child9467 : Flapjack.WordAlloc.removeDeadStructural input9467 value4736 value1 value2 = (output9467, value4738, value1))
    (child9474 : Flapjack.WordAlloc.removeDeadStructural input9474 value4738 value1 value2 = (output9474, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9475 value4736 value1 value2 = (output9475, value5, value1) := by
  rw [input9475_def, output9475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9467]
  dsimp only
  rw [child9474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9467_skip, output9474_skip]
  kernel_rfl

theorem node9476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9476 value5 value1 value2 = (output9476, value4742, value1) := by
  rw [input9476_def, output9476_def]
  kernel_rfl

theorem node9477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9477 value4742 value1 value2 = (output9477, value4743, value1) := by
  rw [input9477_def, output9477_def]
  kernel_rfl

theorem node9478_cond_eq
    (child9476 : Flapjack.WordAlloc.removeDeadStructural input9476 value5 value1 value2 = (output9476, value4742, value1))
    (child9477 : Flapjack.WordAlloc.removeDeadStructural input9477 value4742 value1 value2 = (output9477, value4743, value1)) : Flapjack.WordAlloc.removeDeadStructural input9478 value5 value1 value2 = (output9478, value4743, value1) := by
  rw [input9478_def, output9478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9476]
  dsimp only
  rw [child9477]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9476_skip, output9477_skip]
  kernel_rfl

theorem node9479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9479 value4743 value1 value2 = (output9479, value4744, value1) := by
  rw [input9479_def, output9479_def]
  kernel_rfl

theorem node9480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9480 value4744 value1 value2 = (output9480, value4744, value1) := by
  rw [input9480_def, output9480_def]
  kernel_rfl

theorem node9481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9481 value4744 value1 value2 = (output9481, value4745, value1) := by
  rw [input9481_def, output9481_def]
  kernel_rfl

theorem node9482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9482 value4745 value1 value2 = (output9482, value4746, value1) := by
  rw [input9482_def, output9482_def]
  kernel_rfl

theorem node9483_cond_eq
    (child9481 : Flapjack.WordAlloc.removeDeadStructural input9481 value4744 value1 value2 = (output9481, value4745, value1))
    (child9482 : Flapjack.WordAlloc.removeDeadStructural input9482 value4745 value1 value2 = (output9482, value4746, value1)) : Flapjack.WordAlloc.removeDeadStructural input9483 value4744 value1 value2 = (output9483, value4746, value1) := by
  rw [input9483_def, output9483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9481]
  dsimp only
  rw [child9482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9481_skip, output9482_skip]
  kernel_rfl

theorem node9484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9484 value4746 value1 value2 = (output9484, value4747, value1) := by
  rw [input9484_def, output9484_def]
  kernel_rfl

theorem node9485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9485 value4747 value1 value2 = (output9485, value4748, value1) := by
  rw [input9485_def, output9485_def]
  kernel_rfl

theorem node9486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9486 value4748 value1 value2 = (output9486, value4749, value1) := by
  rw [input9486_def, output9486_def]
  kernel_rfl

theorem node9487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9487 value4749 value1 value2 = (output9487, value5, value1) := by
  rw [input9487_def, output9487_def]
  kernel_rfl

theorem node9488_cond_eq
    (child9486 : Flapjack.WordAlloc.removeDeadStructural input9486 value4748 value1 value2 = (output9486, value4749, value1))
    (child9487 : Flapjack.WordAlloc.removeDeadStructural input9487 value4749 value1 value2 = (output9487, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9488 value4748 value1 value2 = (output9488, value5, value1) := by
  rw [input9488_def, output9488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9486]
  dsimp only
  rw [child9487]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9486_skip, output9487_skip]
  kernel_rfl

theorem node9489_cond_eq
    (child9485 : Flapjack.WordAlloc.removeDeadStructural input9485 value4747 value1 value2 = (output9485, value4748, value1))
    (child9488 : Flapjack.WordAlloc.removeDeadStructural input9488 value4748 value1 value2 = (output9488, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9489 value4747 value1 value2 = (output9489, value5, value1) := by
  rw [input9489_def, output9489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9485]
  dsimp only
  rw [child9488]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9485_skip, output9488_skip]
  kernel_rfl

theorem node9490_cond_eq
    (child9484 : Flapjack.WordAlloc.removeDeadStructural input9484 value4746 value1 value2 = (output9484, value4747, value1))
    (child9489 : Flapjack.WordAlloc.removeDeadStructural input9489 value4747 value1 value2 = (output9489, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9490 value4746 value1 value2 = (output9490, value5, value1) := by
  rw [input9490_def, output9490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9484]
  dsimp only
  rw [child9489]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9484_skip, output9489_skip]
  kernel_rfl

theorem node9491_cond_eq
    (child9483 : Flapjack.WordAlloc.removeDeadStructural input9483 value4744 value1 value2 = (output9483, value4746, value1))
    (child9490 : Flapjack.WordAlloc.removeDeadStructural input9490 value4746 value1 value2 = (output9490, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9491 value4744 value1 value2 = (output9491, value5, value1) := by
  rw [input9491_def, output9491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9483]
  dsimp only
  rw [child9490]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9483_skip, output9490_skip]
  kernel_rfl

theorem node9492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9492 value5 value1 value2 = (output9492, value4750, value1) := by
  rw [input9492_def, output9492_def]
  kernel_rfl

theorem node9493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9493 value4750 value1 value2 = (output9493, value4751, value1) := by
  rw [input9493_def, output9493_def]
  kernel_rfl

theorem node9494_cond_eq
    (child9492 : Flapjack.WordAlloc.removeDeadStructural input9492 value5 value1 value2 = (output9492, value4750, value1))
    (child9493 : Flapjack.WordAlloc.removeDeadStructural input9493 value4750 value1 value2 = (output9493, value4751, value1)) : Flapjack.WordAlloc.removeDeadStructural input9494 value5 value1 value2 = (output9494, value4751, value1) := by
  rw [input9494_def, output9494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9492]
  dsimp only
  rw [child9493]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9492_skip, output9493_skip]
  kernel_rfl

theorem node9495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9495 value4751 value1 value2 = (output9495, value4752, value1) := by
  rw [input9495_def, output9495_def]
  kernel_rfl

theorem node9496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9496 value4752 value1 value2 = (output9496, value4752, value1) := by
  rw [input9496_def, output9496_def]
  kernel_rfl

theorem node9497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9497 value4752 value1 value2 = (output9497, value4753, value1) := by
  rw [input9497_def, output9497_def]
  kernel_rfl

theorem node9498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9498 value4753 value1 value2 = (output9498, value4754, value1) := by
  rw [input9498_def, output9498_def]
  kernel_rfl

theorem node9499_cond_eq
    (child9497 : Flapjack.WordAlloc.removeDeadStructural input9497 value4752 value1 value2 = (output9497, value4753, value1))
    (child9498 : Flapjack.WordAlloc.removeDeadStructural input9498 value4753 value1 value2 = (output9498, value4754, value1)) : Flapjack.WordAlloc.removeDeadStructural input9499 value4752 value1 value2 = (output9499, value4754, value1) := by
  rw [input9499_def, output9499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9497]
  dsimp only
  rw [child9498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9497_skip, output9498_skip]
  kernel_rfl

theorem node9500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9500 value4754 value1 value2 = (output9500, value4755, value1) := by
  rw [input9500_def, output9500_def]
  kernel_rfl

theorem node9501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9501 value4755 value1 value2 = (output9501, value4756, value1) := by
  rw [input9501_def, output9501_def]
  kernel_rfl

theorem node9502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9502 value4756 value1 value2 = (output9502, value4757, value1) := by
  rw [input9502_def, output9502_def]
  kernel_rfl

theorem node9503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9503 value4757 value1 value2 = (output9503, value5, value1) := by
  rw [input9503_def, output9503_def]
  kernel_rfl

theorem node9504_cond_eq
    (child9502 : Flapjack.WordAlloc.removeDeadStructural input9502 value4756 value1 value2 = (output9502, value4757, value1))
    (child9503 : Flapjack.WordAlloc.removeDeadStructural input9503 value4757 value1 value2 = (output9503, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9504 value4756 value1 value2 = (output9504, value5, value1) := by
  rw [input9504_def, output9504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9502]
  dsimp only
  rw [child9503]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9502_skip, output9503_skip]
  kernel_rfl

theorem node9505_cond_eq
    (child9501 : Flapjack.WordAlloc.removeDeadStructural input9501 value4755 value1 value2 = (output9501, value4756, value1))
    (child9504 : Flapjack.WordAlloc.removeDeadStructural input9504 value4756 value1 value2 = (output9504, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9505 value4755 value1 value2 = (output9505, value5, value1) := by
  rw [input9505_def, output9505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9501]
  dsimp only
  rw [child9504]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9501_skip, output9504_skip]
  kernel_rfl

theorem node9506_cond_eq
    (child9500 : Flapjack.WordAlloc.removeDeadStructural input9500 value4754 value1 value2 = (output9500, value4755, value1))
    (child9505 : Flapjack.WordAlloc.removeDeadStructural input9505 value4755 value1 value2 = (output9505, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9506 value4754 value1 value2 = (output9506, value5, value1) := by
  rw [input9506_def, output9506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9500]
  dsimp only
  rw [child9505]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9500_skip, output9505_skip]
  kernel_rfl

theorem node9507_cond_eq
    (child9499 : Flapjack.WordAlloc.removeDeadStructural input9499 value4752 value1 value2 = (output9499, value4754, value1))
    (child9506 : Flapjack.WordAlloc.removeDeadStructural input9506 value4754 value1 value2 = (output9506, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9507 value4752 value1 value2 = (output9507, value5, value1) := by
  rw [input9507_def, output9507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9499]
  dsimp only
  rw [child9506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9499_skip, output9506_skip]
  kernel_rfl

theorem node9508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9508 value5 value1 value2 = (output9508, value4758, value1) := by
  rw [input9508_def, output9508_def]
  kernel_rfl

theorem node9509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9509 value4758 value1 value2 = (output9509, value4759, value1) := by
  rw [input9509_def, output9509_def]
  kernel_rfl

theorem node9510_cond_eq
    (child9508 : Flapjack.WordAlloc.removeDeadStructural input9508 value5 value1 value2 = (output9508, value4758, value1))
    (child9509 : Flapjack.WordAlloc.removeDeadStructural input9509 value4758 value1 value2 = (output9509, value4759, value1)) : Flapjack.WordAlloc.removeDeadStructural input9510 value5 value1 value2 = (output9510, value4759, value1) := by
  rw [input9510_def, output9510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9508]
  dsimp only
  rw [child9509]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9508_skip, output9509_skip]
  kernel_rfl

theorem node9511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9511 value4759 value1 value2 = (output9511, value4760, value1) := by
  rw [input9511_def, output9511_def]
  kernel_rfl

theorem node9512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9512 value4760 value1 value2 = (output9512, value4760, value1) := by
  rw [input9512_def, output9512_def]
  kernel_rfl

theorem node9513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9513 value4760 value1 value2 = (output9513, value4761, value1) := by
  rw [input9513_def, output9513_def]
  kernel_rfl

theorem node9514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9514 value4761 value1 value2 = (output9514, value4762, value1) := by
  rw [input9514_def, output9514_def]
  kernel_rfl

theorem node9515_cond_eq
    (child9513 : Flapjack.WordAlloc.removeDeadStructural input9513 value4760 value1 value2 = (output9513, value4761, value1))
    (child9514 : Flapjack.WordAlloc.removeDeadStructural input9514 value4761 value1 value2 = (output9514, value4762, value1)) : Flapjack.WordAlloc.removeDeadStructural input9515 value4760 value1 value2 = (output9515, value4762, value1) := by
  rw [input9515_def, output9515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9513]
  dsimp only
  rw [child9514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9513_skip, output9514_skip]
  kernel_rfl

theorem node9516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9516 value4762 value1 value2 = (output9516, value4763, value1) := by
  rw [input9516_def, output9516_def]
  kernel_rfl

theorem node9517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9517 value4763 value1 value2 = (output9517, value4764, value1) := by
  rw [input9517_def, output9517_def]
  kernel_rfl

theorem node9518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9518 value4764 value1 value2 = (output9518, value4765, value1) := by
  rw [input9518_def, output9518_def]
  kernel_rfl

theorem node9519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9519 value4765 value1 value2 = (output9519, value5, value1) := by
  rw [input9519_def, output9519_def]
  kernel_rfl

theorem node9520_cond_eq
    (child9518 : Flapjack.WordAlloc.removeDeadStructural input9518 value4764 value1 value2 = (output9518, value4765, value1))
    (child9519 : Flapjack.WordAlloc.removeDeadStructural input9519 value4765 value1 value2 = (output9519, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9520 value4764 value1 value2 = (output9520, value5, value1) := by
  rw [input9520_def, output9520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9518]
  dsimp only
  rw [child9519]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9518_skip, output9519_skip]
  kernel_rfl

theorem node9521_cond_eq
    (child9517 : Flapjack.WordAlloc.removeDeadStructural input9517 value4763 value1 value2 = (output9517, value4764, value1))
    (child9520 : Flapjack.WordAlloc.removeDeadStructural input9520 value4764 value1 value2 = (output9520, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9521 value4763 value1 value2 = (output9521, value5, value1) := by
  rw [input9521_def, output9521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9517]
  dsimp only
  rw [child9520]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9517_skip, output9520_skip]
  kernel_rfl

theorem node9522_cond_eq
    (child9516 : Flapjack.WordAlloc.removeDeadStructural input9516 value4762 value1 value2 = (output9516, value4763, value1))
    (child9521 : Flapjack.WordAlloc.removeDeadStructural input9521 value4763 value1 value2 = (output9521, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9522 value4762 value1 value2 = (output9522, value5, value1) := by
  rw [input9522_def, output9522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9516]
  dsimp only
  rw [child9521]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9516_skip, output9521_skip]
  kernel_rfl

theorem node9523_cond_eq
    (child9515 : Flapjack.WordAlloc.removeDeadStructural input9515 value4760 value1 value2 = (output9515, value4762, value1))
    (child9522 : Flapjack.WordAlloc.removeDeadStructural input9522 value4762 value1 value2 = (output9522, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9523 value4760 value1 value2 = (output9523, value5, value1) := by
  rw [input9523_def, output9523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9515]
  dsimp only
  rw [child9522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9515_skip, output9522_skip]
  kernel_rfl

theorem node9524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9524 value5 value1 value2 = (output9524, value4766, value1) := by
  rw [input9524_def, output9524_def]
  kernel_rfl

theorem node9525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9525 value4766 value1 value2 = (output9525, value4767, value1) := by
  rw [input9525_def, output9525_def]
  kernel_rfl

theorem node9526_cond_eq
    (child9524 : Flapjack.WordAlloc.removeDeadStructural input9524 value5 value1 value2 = (output9524, value4766, value1))
    (child9525 : Flapjack.WordAlloc.removeDeadStructural input9525 value4766 value1 value2 = (output9525, value4767, value1)) : Flapjack.WordAlloc.removeDeadStructural input9526 value5 value1 value2 = (output9526, value4767, value1) := by
  rw [input9526_def, output9526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9524]
  dsimp only
  rw [child9525]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9524_skip, output9525_skip]
  kernel_rfl

theorem node9527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9527 value4767 value1 value2 = (output9527, value4768, value1) := by
  rw [input9527_def, output9527_def]
  kernel_rfl

theorem node9528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9528 value4768 value1 value2 = (output9528, value4768, value1) := by
  rw [input9528_def, output9528_def]
  kernel_rfl

theorem node9529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9529 value4768 value1 value2 = (output9529, value4769, value1) := by
  rw [input9529_def, output9529_def]
  kernel_rfl

theorem node9530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9530 value4769 value1 value2 = (output9530, value4770, value1) := by
  rw [input9530_def, output9530_def]
  kernel_rfl

theorem node9531_cond_eq
    (child9529 : Flapjack.WordAlloc.removeDeadStructural input9529 value4768 value1 value2 = (output9529, value4769, value1))
    (child9530 : Flapjack.WordAlloc.removeDeadStructural input9530 value4769 value1 value2 = (output9530, value4770, value1)) : Flapjack.WordAlloc.removeDeadStructural input9531 value4768 value1 value2 = (output9531, value4770, value1) := by
  rw [input9531_def, output9531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9529]
  dsimp only
  rw [child9530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9529_skip, output9530_skip]
  kernel_rfl

theorem node9532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9532 value4770 value1 value2 = (output9532, value4771, value1) := by
  rw [input9532_def, output9532_def]
  kernel_rfl

theorem node9533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9533 value4771 value1 value2 = (output9533, value4772, value1) := by
  rw [input9533_def, output9533_def]
  kernel_rfl

theorem node9534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9534 value4772 value1 value2 = (output9534, value4773, value1) := by
  rw [input9534_def, output9534_def]
  kernel_rfl

theorem node9535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9535 value4773 value1 value2 = (output9535, value5, value1) := by
  rw [input9535_def, output9535_def]
  kernel_rfl

theorem node9536_cond_eq
    (child9534 : Flapjack.WordAlloc.removeDeadStructural input9534 value4772 value1 value2 = (output9534, value4773, value1))
    (child9535 : Flapjack.WordAlloc.removeDeadStructural input9535 value4773 value1 value2 = (output9535, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9536 value4772 value1 value2 = (output9536, value5, value1) := by
  rw [input9536_def, output9536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9534]
  dsimp only
  rw [child9535]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9534_skip, output9535_skip]
  kernel_rfl

theorem node9537_cond_eq
    (child9533 : Flapjack.WordAlloc.removeDeadStructural input9533 value4771 value1 value2 = (output9533, value4772, value1))
    (child9536 : Flapjack.WordAlloc.removeDeadStructural input9536 value4772 value1 value2 = (output9536, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9537 value4771 value1 value2 = (output9537, value5, value1) := by
  rw [input9537_def, output9537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9533]
  dsimp only
  rw [child9536]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9533_skip, output9536_skip]
  kernel_rfl

theorem node9538_cond_eq
    (child9532 : Flapjack.WordAlloc.removeDeadStructural input9532 value4770 value1 value2 = (output9532, value4771, value1))
    (child9537 : Flapjack.WordAlloc.removeDeadStructural input9537 value4771 value1 value2 = (output9537, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9538 value4770 value1 value2 = (output9538, value5, value1) := by
  rw [input9538_def, output9538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9532]
  dsimp only
  rw [child9537]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9532_skip, output9537_skip]
  kernel_rfl

theorem node9539_cond_eq
    (child9531 : Flapjack.WordAlloc.removeDeadStructural input9531 value4768 value1 value2 = (output9531, value4770, value1))
    (child9538 : Flapjack.WordAlloc.removeDeadStructural input9538 value4770 value1 value2 = (output9538, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9539 value4768 value1 value2 = (output9539, value5, value1) := by
  rw [input9539_def, output9539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9531]
  dsimp only
  rw [child9538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9531_skip, output9538_skip]
  kernel_rfl

theorem node9540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9540 value5 value1 value2 = (output9540, value4774, value1) := by
  rw [input9540_def, output9540_def]
  kernel_rfl

theorem node9541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9541 value4774 value1 value2 = (output9541, value4775, value1) := by
  rw [input9541_def, output9541_def]
  kernel_rfl

theorem node9542_cond_eq
    (child9540 : Flapjack.WordAlloc.removeDeadStructural input9540 value5 value1 value2 = (output9540, value4774, value1))
    (child9541 : Flapjack.WordAlloc.removeDeadStructural input9541 value4774 value1 value2 = (output9541, value4775, value1)) : Flapjack.WordAlloc.removeDeadStructural input9542 value5 value1 value2 = (output9542, value4775, value1) := by
  rw [input9542_def, output9542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9540]
  dsimp only
  rw [child9541]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9540_skip, output9541_skip]
  kernel_rfl

theorem node9543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9543 value4775 value1 value2 = (output9543, value4776, value1) := by
  rw [input9543_def, output9543_def]
  kernel_rfl

theorem node9544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9544 value4776 value1 value2 = (output9544, value4776, value1) := by
  rw [input9544_def, output9544_def]
  kernel_rfl

theorem node9545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9545 value4776 value1 value2 = (output9545, value4777, value1) := by
  rw [input9545_def, output9545_def]
  kernel_rfl

theorem node9546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9546 value4777 value1 value2 = (output9546, value4778, value1) := by
  rw [input9546_def, output9546_def]
  kernel_rfl

theorem node9547_cond_eq
    (child9545 : Flapjack.WordAlloc.removeDeadStructural input9545 value4776 value1 value2 = (output9545, value4777, value1))
    (child9546 : Flapjack.WordAlloc.removeDeadStructural input9546 value4777 value1 value2 = (output9546, value4778, value1)) : Flapjack.WordAlloc.removeDeadStructural input9547 value4776 value1 value2 = (output9547, value4778, value1) := by
  rw [input9547_def, output9547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9545]
  dsimp only
  rw [child9546]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9545_skip, output9546_skip]
  kernel_rfl

theorem node9548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9548 value4778 value1 value2 = (output9548, value4779, value1) := by
  rw [input9548_def, output9548_def]
  kernel_rfl

theorem node9549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9549 value4779 value1 value2 = (output9549, value4780, value1) := by
  rw [input9549_def, output9549_def]
  kernel_rfl

theorem node9550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9550 value4780 value1 value2 = (output9550, value4781, value1) := by
  rw [input9550_def, output9550_def]
  kernel_rfl

theorem node9551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9551 value4781 value1 value2 = (output9551, value5, value1) := by
  rw [input9551_def, output9551_def]
  kernel_rfl

theorem node9552_cond_eq
    (child9550 : Flapjack.WordAlloc.removeDeadStructural input9550 value4780 value1 value2 = (output9550, value4781, value1))
    (child9551 : Flapjack.WordAlloc.removeDeadStructural input9551 value4781 value1 value2 = (output9551, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9552 value4780 value1 value2 = (output9552, value5, value1) := by
  rw [input9552_def, output9552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9550]
  dsimp only
  rw [child9551]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9550_skip, output9551_skip]
  kernel_rfl

theorem node9553_cond_eq
    (child9549 : Flapjack.WordAlloc.removeDeadStructural input9549 value4779 value1 value2 = (output9549, value4780, value1))
    (child9552 : Flapjack.WordAlloc.removeDeadStructural input9552 value4780 value1 value2 = (output9552, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9553 value4779 value1 value2 = (output9553, value5, value1) := by
  rw [input9553_def, output9553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9549]
  dsimp only
  rw [child9552]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9549_skip, output9552_skip]
  kernel_rfl

theorem node9554_cond_eq
    (child9548 : Flapjack.WordAlloc.removeDeadStructural input9548 value4778 value1 value2 = (output9548, value4779, value1))
    (child9553 : Flapjack.WordAlloc.removeDeadStructural input9553 value4779 value1 value2 = (output9553, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9554 value4778 value1 value2 = (output9554, value5, value1) := by
  rw [input9554_def, output9554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9548]
  dsimp only
  rw [child9553]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9548_skip, output9553_skip]
  kernel_rfl

theorem node9555_cond_eq
    (child9547 : Flapjack.WordAlloc.removeDeadStructural input9547 value4776 value1 value2 = (output9547, value4778, value1))
    (child9554 : Flapjack.WordAlloc.removeDeadStructural input9554 value4778 value1 value2 = (output9554, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9555 value4776 value1 value2 = (output9555, value5, value1) := by
  rw [input9555_def, output9555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9547]
  dsimp only
  rw [child9554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9547_skip, output9554_skip]
  kernel_rfl

theorem node9556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9556 value5 value1 value2 = (output9556, value4782, value1) := by
  rw [input9556_def, output9556_def]
  kernel_rfl

theorem node9557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9557 value4782 value1 value2 = (output9557, value4783, value1) := by
  rw [input9557_def, output9557_def]
  kernel_rfl

theorem node9558_cond_eq
    (child9556 : Flapjack.WordAlloc.removeDeadStructural input9556 value5 value1 value2 = (output9556, value4782, value1))
    (child9557 : Flapjack.WordAlloc.removeDeadStructural input9557 value4782 value1 value2 = (output9557, value4783, value1)) : Flapjack.WordAlloc.removeDeadStructural input9558 value5 value1 value2 = (output9558, value4783, value1) := by
  rw [input9558_def, output9558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9556]
  dsimp only
  rw [child9557]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9556_skip, output9557_skip]
  kernel_rfl

theorem node9559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9559 value4783 value1 value2 = (output9559, value4784, value1) := by
  rw [input9559_def, output9559_def]
  kernel_rfl

theorem node9560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9560 value4784 value1 value2 = (output9560, value4784, value1) := by
  rw [input9560_def, output9560_def]
  kernel_rfl

theorem node9561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9561 value4784 value1 value2 = (output9561, value4785, value1) := by
  rw [input9561_def, output9561_def]
  kernel_rfl

theorem node9562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9562 value4785 value1 value2 = (output9562, value4786, value1) := by
  rw [input9562_def, output9562_def]
  kernel_rfl

theorem node9563_cond_eq
    (child9561 : Flapjack.WordAlloc.removeDeadStructural input9561 value4784 value1 value2 = (output9561, value4785, value1))
    (child9562 : Flapjack.WordAlloc.removeDeadStructural input9562 value4785 value1 value2 = (output9562, value4786, value1)) : Flapjack.WordAlloc.removeDeadStructural input9563 value4784 value1 value2 = (output9563, value4786, value1) := by
  rw [input9563_def, output9563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9561]
  dsimp only
  rw [child9562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9561_skip, output9562_skip]
  kernel_rfl

theorem node9564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9564 value4786 value1 value2 = (output9564, value4787, value1) := by
  rw [input9564_def, output9564_def]
  kernel_rfl

theorem node9565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9565 value4787 value1 value2 = (output9565, value4788, value1) := by
  rw [input9565_def, output9565_def]
  kernel_rfl

theorem node9566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9566 value4788 value1 value2 = (output9566, value4789, value1) := by
  rw [input9566_def, output9566_def]
  kernel_rfl

theorem node9567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9567 value4789 value1 value2 = (output9567, value5, value1) := by
  rw [input9567_def, output9567_def]
  kernel_rfl

theorem node9568_cond_eq
    (child9566 : Flapjack.WordAlloc.removeDeadStructural input9566 value4788 value1 value2 = (output9566, value4789, value1))
    (child9567 : Flapjack.WordAlloc.removeDeadStructural input9567 value4789 value1 value2 = (output9567, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9568 value4788 value1 value2 = (output9568, value5, value1) := by
  rw [input9568_def, output9568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9566]
  dsimp only
  rw [child9567]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9566_skip, output9567_skip]
  kernel_rfl

theorem node9569_cond_eq
    (child9565 : Flapjack.WordAlloc.removeDeadStructural input9565 value4787 value1 value2 = (output9565, value4788, value1))
    (child9568 : Flapjack.WordAlloc.removeDeadStructural input9568 value4788 value1 value2 = (output9568, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9569 value4787 value1 value2 = (output9569, value5, value1) := by
  rw [input9569_def, output9569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9565]
  dsimp only
  rw [child9568]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9565_skip, output9568_skip]
  kernel_rfl

theorem node9570_cond_eq
    (child9564 : Flapjack.WordAlloc.removeDeadStructural input9564 value4786 value1 value2 = (output9564, value4787, value1))
    (child9569 : Flapjack.WordAlloc.removeDeadStructural input9569 value4787 value1 value2 = (output9569, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9570 value4786 value1 value2 = (output9570, value5, value1) := by
  rw [input9570_def, output9570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9564]
  dsimp only
  rw [child9569]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9564_skip, output9569_skip]
  kernel_rfl

theorem node9571_cond_eq
    (child9563 : Flapjack.WordAlloc.removeDeadStructural input9563 value4784 value1 value2 = (output9563, value4786, value1))
    (child9570 : Flapjack.WordAlloc.removeDeadStructural input9570 value4786 value1 value2 = (output9570, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9571 value4784 value1 value2 = (output9571, value5, value1) := by
  rw [input9571_def, output9571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9563]
  dsimp only
  rw [child9570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9563_skip, output9570_skip]
  kernel_rfl

theorem node9572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9572 value5 value1 value2 = (output9572, value4790, value1) := by
  rw [input9572_def, output9572_def]
  kernel_rfl

theorem node9573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9573 value4790 value1 value2 = (output9573, value4791, value1) := by
  rw [input9573_def, output9573_def]
  kernel_rfl

theorem node9574_cond_eq
    (child9572 : Flapjack.WordAlloc.removeDeadStructural input9572 value5 value1 value2 = (output9572, value4790, value1))
    (child9573 : Flapjack.WordAlloc.removeDeadStructural input9573 value4790 value1 value2 = (output9573, value4791, value1)) : Flapjack.WordAlloc.removeDeadStructural input9574 value5 value1 value2 = (output9574, value4791, value1) := by
  rw [input9574_def, output9574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9572]
  dsimp only
  rw [child9573]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9572_skip, output9573_skip]
  kernel_rfl

theorem node9575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9575 value4791 value1 value2 = (output9575, value4792, value1) := by
  rw [input9575_def, output9575_def]
  kernel_rfl

theorem node9576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9576 value4792 value1 value2 = (output9576, value4792, value1) := by
  rw [input9576_def, output9576_def]
  kernel_rfl

theorem node9577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9577 value4792 value1 value2 = (output9577, value4793, value1) := by
  rw [input9577_def, output9577_def]
  kernel_rfl

theorem node9578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9578 value4793 value1 value2 = (output9578, value4794, value1) := by
  rw [input9578_def, output9578_def]
  kernel_rfl

theorem node9579_cond_eq
    (child9577 : Flapjack.WordAlloc.removeDeadStructural input9577 value4792 value1 value2 = (output9577, value4793, value1))
    (child9578 : Flapjack.WordAlloc.removeDeadStructural input9578 value4793 value1 value2 = (output9578, value4794, value1)) : Flapjack.WordAlloc.removeDeadStructural input9579 value4792 value1 value2 = (output9579, value4794, value1) := by
  rw [input9579_def, output9579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9577]
  dsimp only
  rw [child9578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9577_skip, output9578_skip]
  kernel_rfl

theorem node9580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9580 value4794 value1 value2 = (output9580, value4795, value1) := by
  rw [input9580_def, output9580_def]
  kernel_rfl

theorem node9581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9581 value4795 value1 value2 = (output9581, value4796, value1) := by
  rw [input9581_def, output9581_def]
  kernel_rfl

theorem node9582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9582 value4796 value1 value2 = (output9582, value4797, value1) := by
  rw [input9582_def, output9582_def]
  kernel_rfl

theorem node9583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9583 value4797 value1 value2 = (output9583, value5, value1) := by
  rw [input9583_def, output9583_def]
  kernel_rfl

theorem node9584_cond_eq
    (child9582 : Flapjack.WordAlloc.removeDeadStructural input9582 value4796 value1 value2 = (output9582, value4797, value1))
    (child9583 : Flapjack.WordAlloc.removeDeadStructural input9583 value4797 value1 value2 = (output9583, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9584 value4796 value1 value2 = (output9584, value5, value1) := by
  rw [input9584_def, output9584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9582]
  dsimp only
  rw [child9583]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9582_skip, output9583_skip]
  kernel_rfl

theorem node9585_cond_eq
    (child9581 : Flapjack.WordAlloc.removeDeadStructural input9581 value4795 value1 value2 = (output9581, value4796, value1))
    (child9584 : Flapjack.WordAlloc.removeDeadStructural input9584 value4796 value1 value2 = (output9584, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9585 value4795 value1 value2 = (output9585, value5, value1) := by
  rw [input9585_def, output9585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9581]
  dsimp only
  rw [child9584]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9581_skip, output9584_skip]
  kernel_rfl

theorem node9586_cond_eq
    (child9580 : Flapjack.WordAlloc.removeDeadStructural input9580 value4794 value1 value2 = (output9580, value4795, value1))
    (child9585 : Flapjack.WordAlloc.removeDeadStructural input9585 value4795 value1 value2 = (output9585, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9586 value4794 value1 value2 = (output9586, value5, value1) := by
  rw [input9586_def, output9586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9580]
  dsimp only
  rw [child9585]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9580_skip, output9585_skip]
  kernel_rfl

theorem node9587_cond_eq
    (child9579 : Flapjack.WordAlloc.removeDeadStructural input9579 value4792 value1 value2 = (output9579, value4794, value1))
    (child9586 : Flapjack.WordAlloc.removeDeadStructural input9586 value4794 value1 value2 = (output9586, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9587 value4792 value1 value2 = (output9587, value5, value1) := by
  rw [input9587_def, output9587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9579]
  dsimp only
  rw [child9586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9579_skip, output9586_skip]
  kernel_rfl

theorem node9588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9588 value5 value1 value2 = (output9588, value4798, value1) := by
  rw [input9588_def, output9588_def]
  kernel_rfl

theorem node9589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9589 value4798 value1 value2 = (output9589, value4799, value1) := by
  rw [input9589_def, output9589_def]
  kernel_rfl

theorem node9590_cond_eq
    (child9588 : Flapjack.WordAlloc.removeDeadStructural input9588 value5 value1 value2 = (output9588, value4798, value1))
    (child9589 : Flapjack.WordAlloc.removeDeadStructural input9589 value4798 value1 value2 = (output9589, value4799, value1)) : Flapjack.WordAlloc.removeDeadStructural input9590 value5 value1 value2 = (output9590, value4799, value1) := by
  rw [input9590_def, output9590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9588]
  dsimp only
  rw [child9589]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9588_skip, output9589_skip]
  kernel_rfl

theorem node9591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9591 value4799 value1 value2 = (output9591, value4800, value1) := by
  rw [input9591_def, output9591_def]
  kernel_rfl

theorem node9592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9592 value4800 value1 value2 = (output9592, value4800, value1) := by
  rw [input9592_def, output9592_def]
  kernel_rfl

theorem node9593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9593 value4800 value1 value2 = (output9593, value4801, value1) := by
  rw [input9593_def, output9593_def]
  kernel_rfl

theorem node9594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9594 value4801 value1 value2 = (output9594, value4802, value1) := by
  rw [input9594_def, output9594_def]
  kernel_rfl

theorem node9595_cond_eq
    (child9593 : Flapjack.WordAlloc.removeDeadStructural input9593 value4800 value1 value2 = (output9593, value4801, value1))
    (child9594 : Flapjack.WordAlloc.removeDeadStructural input9594 value4801 value1 value2 = (output9594, value4802, value1)) : Flapjack.WordAlloc.removeDeadStructural input9595 value4800 value1 value2 = (output9595, value4802, value1) := by
  rw [input9595_def, output9595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9593]
  dsimp only
  rw [child9594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9593_skip, output9594_skip]
  kernel_rfl

theorem node9596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9596 value4802 value1 value2 = (output9596, value4803, value1) := by
  rw [input9596_def, output9596_def]
  kernel_rfl

theorem node9597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9597 value4803 value1 value2 = (output9597, value4804, value1) := by
  rw [input9597_def, output9597_def]
  kernel_rfl

theorem node9598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9598 value4804 value1 value2 = (output9598, value4805, value1) := by
  rw [input9598_def, output9598_def]
  kernel_rfl

theorem node9599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9599 value4805 value1 value2 = (output9599, value5, value1) := by
  rw [input9599_def, output9599_def]
  kernel_rfl

theorem node9600_cond_eq
    (child9598 : Flapjack.WordAlloc.removeDeadStructural input9598 value4804 value1 value2 = (output9598, value4805, value1))
    (child9599 : Flapjack.WordAlloc.removeDeadStructural input9599 value4805 value1 value2 = (output9599, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9600 value4804 value1 value2 = (output9600, value5, value1) := by
  rw [input9600_def, output9600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9598]
  dsimp only
  rw [child9599]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9598_skip, output9599_skip]
  kernel_rfl

theorem node9601_cond_eq
    (child9597 : Flapjack.WordAlloc.removeDeadStructural input9597 value4803 value1 value2 = (output9597, value4804, value1))
    (child9600 : Flapjack.WordAlloc.removeDeadStructural input9600 value4804 value1 value2 = (output9600, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9601 value4803 value1 value2 = (output9601, value5, value1) := by
  rw [input9601_def, output9601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9597]
  dsimp only
  rw [child9600]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9597_skip, output9600_skip]
  kernel_rfl

theorem node9602_cond_eq
    (child9596 : Flapjack.WordAlloc.removeDeadStructural input9596 value4802 value1 value2 = (output9596, value4803, value1))
    (child9601 : Flapjack.WordAlloc.removeDeadStructural input9601 value4803 value1 value2 = (output9601, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9602 value4802 value1 value2 = (output9602, value5, value1) := by
  rw [input9602_def, output9602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9596]
  dsimp only
  rw [child9601]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9596_skip, output9601_skip]
  kernel_rfl

theorem node9603_cond_eq
    (child9595 : Flapjack.WordAlloc.removeDeadStructural input9595 value4800 value1 value2 = (output9595, value4802, value1))
    (child9602 : Flapjack.WordAlloc.removeDeadStructural input9602 value4802 value1 value2 = (output9602, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9603 value4800 value1 value2 = (output9603, value5, value1) := by
  rw [input9603_def, output9603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9595]
  dsimp only
  rw [child9602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9595_skip, output9602_skip]
  kernel_rfl

theorem node9604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9604 value5 value1 value2 = (output9604, value4806, value1) := by
  rw [input9604_def, output9604_def]
  kernel_rfl

theorem node9605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9605 value4806 value1 value2 = (output9605, value4807, value1) := by
  rw [input9605_def, output9605_def]
  kernel_rfl

theorem node9606_cond_eq
    (child9604 : Flapjack.WordAlloc.removeDeadStructural input9604 value5 value1 value2 = (output9604, value4806, value1))
    (child9605 : Flapjack.WordAlloc.removeDeadStructural input9605 value4806 value1 value2 = (output9605, value4807, value1)) : Flapjack.WordAlloc.removeDeadStructural input9606 value5 value1 value2 = (output9606, value4807, value1) := by
  rw [input9606_def, output9606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9604]
  dsimp only
  rw [child9605]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9604_skip, output9605_skip]
  kernel_rfl

theorem node9607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9607 value4807 value1 value2 = (output9607, value4808, value1) := by
  rw [input9607_def, output9607_def]
  kernel_rfl

theorem node9608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9608 value4808 value1 value2 = (output9608, value4808, value1) := by
  rw [input9608_def, output9608_def]
  kernel_rfl

theorem node9609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9609 value4808 value1 value2 = (output9609, value4809, value1) := by
  rw [input9609_def, output9609_def]
  kernel_rfl

theorem node9610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9610 value4809 value1 value2 = (output9610, value4810, value1) := by
  rw [input9610_def, output9610_def]
  kernel_rfl

theorem node9611_cond_eq
    (child9609 : Flapjack.WordAlloc.removeDeadStructural input9609 value4808 value1 value2 = (output9609, value4809, value1))
    (child9610 : Flapjack.WordAlloc.removeDeadStructural input9610 value4809 value1 value2 = (output9610, value4810, value1)) : Flapjack.WordAlloc.removeDeadStructural input9611 value4808 value1 value2 = (output9611, value4810, value1) := by
  rw [input9611_def, output9611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9609]
  dsimp only
  rw [child9610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9609_skip, output9610_skip]
  kernel_rfl

theorem node9612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9612 value4810 value1 value2 = (output9612, value4811, value1) := by
  rw [input9612_def, output9612_def]
  kernel_rfl

theorem node9613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9613 value4811 value1 value2 = (output9613, value4812, value1) := by
  rw [input9613_def, output9613_def]
  kernel_rfl

theorem node9614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9614 value4812 value1 value2 = (output9614, value4813, value1) := by
  rw [input9614_def, output9614_def]
  kernel_rfl

theorem node9615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9615 value4813 value1 value2 = (output9615, value5, value1) := by
  rw [input9615_def, output9615_def]
  kernel_rfl

theorem node9616_cond_eq
    (child9614 : Flapjack.WordAlloc.removeDeadStructural input9614 value4812 value1 value2 = (output9614, value4813, value1))
    (child9615 : Flapjack.WordAlloc.removeDeadStructural input9615 value4813 value1 value2 = (output9615, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9616 value4812 value1 value2 = (output9616, value5, value1) := by
  rw [input9616_def, output9616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9614]
  dsimp only
  rw [child9615]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9614_skip, output9615_skip]
  kernel_rfl

theorem node9617_cond_eq
    (child9613 : Flapjack.WordAlloc.removeDeadStructural input9613 value4811 value1 value2 = (output9613, value4812, value1))
    (child9616 : Flapjack.WordAlloc.removeDeadStructural input9616 value4812 value1 value2 = (output9616, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9617 value4811 value1 value2 = (output9617, value5, value1) := by
  rw [input9617_def, output9617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9613]
  dsimp only
  rw [child9616]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9613_skip, output9616_skip]
  kernel_rfl

theorem node9618_cond_eq
    (child9612 : Flapjack.WordAlloc.removeDeadStructural input9612 value4810 value1 value2 = (output9612, value4811, value1))
    (child9617 : Flapjack.WordAlloc.removeDeadStructural input9617 value4811 value1 value2 = (output9617, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9618 value4810 value1 value2 = (output9618, value5, value1) := by
  rw [input9618_def, output9618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9612]
  dsimp only
  rw [child9617]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9612_skip, output9617_skip]
  kernel_rfl

theorem node9619_cond_eq
    (child9611 : Flapjack.WordAlloc.removeDeadStructural input9611 value4808 value1 value2 = (output9611, value4810, value1))
    (child9618 : Flapjack.WordAlloc.removeDeadStructural input9618 value4810 value1 value2 = (output9618, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9619 value4808 value1 value2 = (output9619, value5, value1) := by
  rw [input9619_def, output9619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9611]
  dsimp only
  rw [child9618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9611_skip, output9618_skip]
  kernel_rfl

theorem node9620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9620 value5 value1 value2 = (output9620, value4814, value1) := by
  rw [input9620_def, output9620_def]
  kernel_rfl

theorem node9621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9621 value4814 value1 value2 = (output9621, value4815, value1) := by
  rw [input9621_def, output9621_def]
  kernel_rfl

theorem node9622_cond_eq
    (child9620 : Flapjack.WordAlloc.removeDeadStructural input9620 value5 value1 value2 = (output9620, value4814, value1))
    (child9621 : Flapjack.WordAlloc.removeDeadStructural input9621 value4814 value1 value2 = (output9621, value4815, value1)) : Flapjack.WordAlloc.removeDeadStructural input9622 value5 value1 value2 = (output9622, value4815, value1) := by
  rw [input9622_def, output9622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9620]
  dsimp only
  rw [child9621]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9620_skip, output9621_skip]
  kernel_rfl

theorem node9623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9623 value4815 value1 value2 = (output9623, value4816, value1) := by
  rw [input9623_def, output9623_def]
  kernel_rfl

theorem node9624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9624 value4816 value1 value2 = (output9624, value4816, value1) := by
  rw [input9624_def, output9624_def]
  kernel_rfl

theorem node9625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9625 value4816 value1 value2 = (output9625, value4817, value1) := by
  rw [input9625_def, output9625_def]
  kernel_rfl

theorem node9626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9626 value4817 value1 value2 = (output9626, value4818, value1) := by
  rw [input9626_def, output9626_def]
  kernel_rfl

theorem node9627_cond_eq
    (child9625 : Flapjack.WordAlloc.removeDeadStructural input9625 value4816 value1 value2 = (output9625, value4817, value1))
    (child9626 : Flapjack.WordAlloc.removeDeadStructural input9626 value4817 value1 value2 = (output9626, value4818, value1)) : Flapjack.WordAlloc.removeDeadStructural input9627 value4816 value1 value2 = (output9627, value4818, value1) := by
  rw [input9627_def, output9627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9625]
  dsimp only
  rw [child9626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9625_skip, output9626_skip]
  kernel_rfl

theorem node9628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9628 value4818 value1 value2 = (output9628, value4819, value1) := by
  rw [input9628_def, output9628_def]
  kernel_rfl

theorem node9629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9629 value4819 value1 value2 = (output9629, value4820, value1) := by
  rw [input9629_def, output9629_def]
  kernel_rfl

theorem node9630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9630 value4820 value1 value2 = (output9630, value4821, value1) := by
  rw [input9630_def, output9630_def]
  kernel_rfl

theorem node9631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9631 value4821 value1 value2 = (output9631, value5, value1) := by
  rw [input9631_def, output9631_def]
  kernel_rfl

theorem node9632_cond_eq
    (child9630 : Flapjack.WordAlloc.removeDeadStructural input9630 value4820 value1 value2 = (output9630, value4821, value1))
    (child9631 : Flapjack.WordAlloc.removeDeadStructural input9631 value4821 value1 value2 = (output9631, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9632 value4820 value1 value2 = (output9632, value5, value1) := by
  rw [input9632_def, output9632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9630]
  dsimp only
  rw [child9631]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9630_skip, output9631_skip]
  kernel_rfl

theorem node9633_cond_eq
    (child9629 : Flapjack.WordAlloc.removeDeadStructural input9629 value4819 value1 value2 = (output9629, value4820, value1))
    (child9632 : Flapjack.WordAlloc.removeDeadStructural input9632 value4820 value1 value2 = (output9632, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9633 value4819 value1 value2 = (output9633, value5, value1) := by
  rw [input9633_def, output9633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9629]
  dsimp only
  rw [child9632]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9629_skip, output9632_skip]
  kernel_rfl

theorem node9634_cond_eq
    (child9628 : Flapjack.WordAlloc.removeDeadStructural input9628 value4818 value1 value2 = (output9628, value4819, value1))
    (child9633 : Flapjack.WordAlloc.removeDeadStructural input9633 value4819 value1 value2 = (output9633, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9634 value4818 value1 value2 = (output9634, value5, value1) := by
  rw [input9634_def, output9634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9628]
  dsimp only
  rw [child9633]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9628_skip, output9633_skip]
  kernel_rfl

theorem node9635_cond_eq
    (child9627 : Flapjack.WordAlloc.removeDeadStructural input9627 value4816 value1 value2 = (output9627, value4818, value1))
    (child9634 : Flapjack.WordAlloc.removeDeadStructural input9634 value4818 value1 value2 = (output9634, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9635 value4816 value1 value2 = (output9635, value5, value1) := by
  rw [input9635_def, output9635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9627]
  dsimp only
  rw [child9634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9627_skip, output9634_skip]
  kernel_rfl

theorem node9636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9636 value5 value1 value2 = (output9636, value4822, value1) := by
  rw [input9636_def, output9636_def]
  kernel_rfl

theorem node9637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9637 value4822 value1 value2 = (output9637, value4823, value1) := by
  rw [input9637_def, output9637_def]
  kernel_rfl

theorem node9638_cond_eq
    (child9636 : Flapjack.WordAlloc.removeDeadStructural input9636 value5 value1 value2 = (output9636, value4822, value1))
    (child9637 : Flapjack.WordAlloc.removeDeadStructural input9637 value4822 value1 value2 = (output9637, value4823, value1)) : Flapjack.WordAlloc.removeDeadStructural input9638 value5 value1 value2 = (output9638, value4823, value1) := by
  rw [input9638_def, output9638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9636]
  dsimp only
  rw [child9637]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9636_skip, output9637_skip]
  kernel_rfl

theorem node9639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9639 value4823 value1 value2 = (output9639, value4824, value1) := by
  rw [input9639_def, output9639_def]
  kernel_rfl

theorem node9640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9640 value4824 value1 value2 = (output9640, value4824, value1) := by
  rw [input9640_def, output9640_def]
  kernel_rfl

theorem node9641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9641 value4824 value1 value2 = (output9641, value4825, value1) := by
  rw [input9641_def, output9641_def]
  kernel_rfl

theorem node9642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9642 value4825 value1 value2 = (output9642, value4826, value1) := by
  rw [input9642_def, output9642_def]
  kernel_rfl

theorem node9643_cond_eq
    (child9641 : Flapjack.WordAlloc.removeDeadStructural input9641 value4824 value1 value2 = (output9641, value4825, value1))
    (child9642 : Flapjack.WordAlloc.removeDeadStructural input9642 value4825 value1 value2 = (output9642, value4826, value1)) : Flapjack.WordAlloc.removeDeadStructural input9643 value4824 value1 value2 = (output9643, value4826, value1) := by
  rw [input9643_def, output9643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9641]
  dsimp only
  rw [child9642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9641_skip, output9642_skip]
  kernel_rfl

theorem node9644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9644 value4826 value1 value2 = (output9644, value4827, value1) := by
  rw [input9644_def, output9644_def]
  kernel_rfl

theorem node9645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9645 value4827 value1 value2 = (output9645, value4828, value1) := by
  rw [input9645_def, output9645_def]
  kernel_rfl

theorem node9646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9646 value4828 value1 value2 = (output9646, value4829, value1) := by
  rw [input9646_def, output9646_def]
  kernel_rfl

theorem node9647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9647 value4829 value1 value2 = (output9647, value5, value1) := by
  rw [input9647_def, output9647_def]
  kernel_rfl

theorem node9648_cond_eq
    (child9646 : Flapjack.WordAlloc.removeDeadStructural input9646 value4828 value1 value2 = (output9646, value4829, value1))
    (child9647 : Flapjack.WordAlloc.removeDeadStructural input9647 value4829 value1 value2 = (output9647, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9648 value4828 value1 value2 = (output9648, value5, value1) := by
  rw [input9648_def, output9648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9646]
  dsimp only
  rw [child9647]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9646_skip, output9647_skip]
  kernel_rfl

theorem node9649_cond_eq
    (child9645 : Flapjack.WordAlloc.removeDeadStructural input9645 value4827 value1 value2 = (output9645, value4828, value1))
    (child9648 : Flapjack.WordAlloc.removeDeadStructural input9648 value4828 value1 value2 = (output9648, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9649 value4827 value1 value2 = (output9649, value5, value1) := by
  rw [input9649_def, output9649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9645]
  dsimp only
  rw [child9648]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9645_skip, output9648_skip]
  kernel_rfl

theorem node9650_cond_eq
    (child9644 : Flapjack.WordAlloc.removeDeadStructural input9644 value4826 value1 value2 = (output9644, value4827, value1))
    (child9649 : Flapjack.WordAlloc.removeDeadStructural input9649 value4827 value1 value2 = (output9649, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9650 value4826 value1 value2 = (output9650, value5, value1) := by
  rw [input9650_def, output9650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9644]
  dsimp only
  rw [child9649]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9644_skip, output9649_skip]
  kernel_rfl

theorem node9651_cond_eq
    (child9643 : Flapjack.WordAlloc.removeDeadStructural input9643 value4824 value1 value2 = (output9643, value4826, value1))
    (child9650 : Flapjack.WordAlloc.removeDeadStructural input9650 value4826 value1 value2 = (output9650, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9651 value4824 value1 value2 = (output9651, value5, value1) := by
  rw [input9651_def, output9651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9643]
  dsimp only
  rw [child9650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9643_skip, output9650_skip]
  kernel_rfl

theorem node9652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9652 value5 value1 value2 = (output9652, value4830, value1) := by
  rw [input9652_def, output9652_def]
  kernel_rfl

theorem node9653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9653 value4830 value1 value2 = (output9653, value4831, value1) := by
  rw [input9653_def, output9653_def]
  kernel_rfl

theorem node9654_cond_eq
    (child9652 : Flapjack.WordAlloc.removeDeadStructural input9652 value5 value1 value2 = (output9652, value4830, value1))
    (child9653 : Flapjack.WordAlloc.removeDeadStructural input9653 value4830 value1 value2 = (output9653, value4831, value1)) : Flapjack.WordAlloc.removeDeadStructural input9654 value5 value1 value2 = (output9654, value4831, value1) := by
  rw [input9654_def, output9654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9652]
  dsimp only
  rw [child9653]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9652_skip, output9653_skip]
  kernel_rfl

theorem node9655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9655 value4831 value1 value2 = (output9655, value4832, value1) := by
  rw [input9655_def, output9655_def]
  kernel_rfl

theorem node9656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9656 value4832 value1 value2 = (output9656, value4832, value1) := by
  rw [input9656_def, output9656_def]
  kernel_rfl

theorem node9657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9657 value4832 value1 value2 = (output9657, value4833, value1) := by
  rw [input9657_def, output9657_def]
  kernel_rfl

theorem node9658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9658 value4833 value1 value2 = (output9658, value4834, value1) := by
  rw [input9658_def, output9658_def]
  kernel_rfl

theorem node9659_cond_eq
    (child9657 : Flapjack.WordAlloc.removeDeadStructural input9657 value4832 value1 value2 = (output9657, value4833, value1))
    (child9658 : Flapjack.WordAlloc.removeDeadStructural input9658 value4833 value1 value2 = (output9658, value4834, value1)) : Flapjack.WordAlloc.removeDeadStructural input9659 value4832 value1 value2 = (output9659, value4834, value1) := by
  rw [input9659_def, output9659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9657]
  dsimp only
  rw [child9658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9657_skip, output9658_skip]
  kernel_rfl

theorem node9660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9660 value4834 value1 value2 = (output9660, value4835, value1) := by
  rw [input9660_def, output9660_def]
  kernel_rfl

theorem node9661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9661 value4835 value1 value2 = (output9661, value4836, value1) := by
  rw [input9661_def, output9661_def]
  kernel_rfl

theorem node9662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9662 value4836 value1 value2 = (output9662, value4837, value1) := by
  rw [input9662_def, output9662_def]
  kernel_rfl

theorem node9663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9663 value4837 value1 value2 = (output9663, value5, value1) := by
  rw [input9663_def, output9663_def]
  kernel_rfl

theorem node9664_cond_eq
    (child9662 : Flapjack.WordAlloc.removeDeadStructural input9662 value4836 value1 value2 = (output9662, value4837, value1))
    (child9663 : Flapjack.WordAlloc.removeDeadStructural input9663 value4837 value1 value2 = (output9663, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9664 value4836 value1 value2 = (output9664, value5, value1) := by
  rw [input9664_def, output9664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9662]
  dsimp only
  rw [child9663]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9662_skip, output9663_skip]
  kernel_rfl

theorem node9665_cond_eq
    (child9661 : Flapjack.WordAlloc.removeDeadStructural input9661 value4835 value1 value2 = (output9661, value4836, value1))
    (child9664 : Flapjack.WordAlloc.removeDeadStructural input9664 value4836 value1 value2 = (output9664, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9665 value4835 value1 value2 = (output9665, value5, value1) := by
  rw [input9665_def, output9665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9661]
  dsimp only
  rw [child9664]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9661_skip, output9664_skip]
  kernel_rfl

theorem node9666_cond_eq
    (child9660 : Flapjack.WordAlloc.removeDeadStructural input9660 value4834 value1 value2 = (output9660, value4835, value1))
    (child9665 : Flapjack.WordAlloc.removeDeadStructural input9665 value4835 value1 value2 = (output9665, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9666 value4834 value1 value2 = (output9666, value5, value1) := by
  rw [input9666_def, output9666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9660]
  dsimp only
  rw [child9665]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9660_skip, output9665_skip]
  kernel_rfl

theorem node9667_cond_eq
    (child9659 : Flapjack.WordAlloc.removeDeadStructural input9659 value4832 value1 value2 = (output9659, value4834, value1))
    (child9666 : Flapjack.WordAlloc.removeDeadStructural input9666 value4834 value1 value2 = (output9666, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9667 value4832 value1 value2 = (output9667, value5, value1) := by
  rw [input9667_def, output9667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9659]
  dsimp only
  rw [child9666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9659_skip, output9666_skip]
  kernel_rfl

theorem node9668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9668 value5 value1 value2 = (output9668, value4838, value1) := by
  rw [input9668_def, output9668_def]
  kernel_rfl

theorem node9669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9669 value4838 value1 value2 = (output9669, value4839, value1) := by
  rw [input9669_def, output9669_def]
  kernel_rfl

theorem node9670_cond_eq
    (child9668 : Flapjack.WordAlloc.removeDeadStructural input9668 value5 value1 value2 = (output9668, value4838, value1))
    (child9669 : Flapjack.WordAlloc.removeDeadStructural input9669 value4838 value1 value2 = (output9669, value4839, value1)) : Flapjack.WordAlloc.removeDeadStructural input9670 value5 value1 value2 = (output9670, value4839, value1) := by
  rw [input9670_def, output9670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9668]
  dsimp only
  rw [child9669]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9668_skip, output9669_skip]
  kernel_rfl

theorem node9671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9671 value4839 value1 value2 = (output9671, value4840, value1) := by
  rw [input9671_def, output9671_def]
  kernel_rfl

theorem node9672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9672 value4840 value1 value2 = (output9672, value4840, value1) := by
  rw [input9672_def, output9672_def]
  kernel_rfl

theorem node9673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9673 value4840 value1 value2 = (output9673, value4841, value1) := by
  rw [input9673_def, output9673_def]
  kernel_rfl

theorem node9674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9674 value4841 value1 value2 = (output9674, value4842, value1) := by
  rw [input9674_def, output9674_def]
  kernel_rfl

theorem node9675_cond_eq
    (child9673 : Flapjack.WordAlloc.removeDeadStructural input9673 value4840 value1 value2 = (output9673, value4841, value1))
    (child9674 : Flapjack.WordAlloc.removeDeadStructural input9674 value4841 value1 value2 = (output9674, value4842, value1)) : Flapjack.WordAlloc.removeDeadStructural input9675 value4840 value1 value2 = (output9675, value4842, value1) := by
  rw [input9675_def, output9675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9673]
  dsimp only
  rw [child9674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9673_skip, output9674_skip]
  kernel_rfl

theorem node9676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9676 value4842 value1 value2 = (output9676, value4843, value1) := by
  rw [input9676_def, output9676_def]
  kernel_rfl

theorem node9677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9677 value4843 value1 value2 = (output9677, value4844, value1) := by
  rw [input9677_def, output9677_def]
  kernel_rfl

theorem node9678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9678 value4844 value1 value2 = (output9678, value4845, value1) := by
  rw [input9678_def, output9678_def]
  kernel_rfl

theorem node9679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9679 value4845 value1 value2 = (output9679, value5, value1) := by
  rw [input9679_def, output9679_def]
  kernel_rfl

theorem node9680_cond_eq
    (child9678 : Flapjack.WordAlloc.removeDeadStructural input9678 value4844 value1 value2 = (output9678, value4845, value1))
    (child9679 : Flapjack.WordAlloc.removeDeadStructural input9679 value4845 value1 value2 = (output9679, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9680 value4844 value1 value2 = (output9680, value5, value1) := by
  rw [input9680_def, output9680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9678]
  dsimp only
  rw [child9679]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9678_skip, output9679_skip]
  kernel_rfl

theorem node9681_cond_eq
    (child9677 : Flapjack.WordAlloc.removeDeadStructural input9677 value4843 value1 value2 = (output9677, value4844, value1))
    (child9680 : Flapjack.WordAlloc.removeDeadStructural input9680 value4844 value1 value2 = (output9680, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9681 value4843 value1 value2 = (output9681, value5, value1) := by
  rw [input9681_def, output9681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9677]
  dsimp only
  rw [child9680]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9677_skip, output9680_skip]
  kernel_rfl

theorem node9682_cond_eq
    (child9676 : Flapjack.WordAlloc.removeDeadStructural input9676 value4842 value1 value2 = (output9676, value4843, value1))
    (child9681 : Flapjack.WordAlloc.removeDeadStructural input9681 value4843 value1 value2 = (output9681, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9682 value4842 value1 value2 = (output9682, value5, value1) := by
  rw [input9682_def, output9682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9676]
  dsimp only
  rw [child9681]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9676_skip, output9681_skip]
  kernel_rfl

theorem node9683_cond_eq
    (child9675 : Flapjack.WordAlloc.removeDeadStructural input9675 value4840 value1 value2 = (output9675, value4842, value1))
    (child9682 : Flapjack.WordAlloc.removeDeadStructural input9682 value4842 value1 value2 = (output9682, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9683 value4840 value1 value2 = (output9683, value5, value1) := by
  rw [input9683_def, output9683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9675]
  dsimp only
  rw [child9682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9675_skip, output9682_skip]
  kernel_rfl

theorem node9684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9684 value5 value1 value2 = (output9684, value4846, value1) := by
  rw [input9684_def, output9684_def]
  kernel_rfl

theorem node9685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9685 value4846 value1 value2 = (output9685, value4847, value1) := by
  rw [input9685_def, output9685_def]
  kernel_rfl

theorem node9686_cond_eq
    (child9684 : Flapjack.WordAlloc.removeDeadStructural input9684 value5 value1 value2 = (output9684, value4846, value1))
    (child9685 : Flapjack.WordAlloc.removeDeadStructural input9685 value4846 value1 value2 = (output9685, value4847, value1)) : Flapjack.WordAlloc.removeDeadStructural input9686 value5 value1 value2 = (output9686, value4847, value1) := by
  rw [input9686_def, output9686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9684]
  dsimp only
  rw [child9685]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9684_skip, output9685_skip]
  kernel_rfl

theorem node9687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9687 value4847 value1 value2 = (output9687, value4848, value1) := by
  rw [input9687_def, output9687_def]
  kernel_rfl

theorem node9688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9688 value4848 value1 value2 = (output9688, value4848, value1) := by
  rw [input9688_def, output9688_def]
  kernel_rfl

theorem node9689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9689 value4848 value1 value2 = (output9689, value4849, value1) := by
  rw [input9689_def, output9689_def]
  kernel_rfl

theorem node9690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9690 value4849 value1 value2 = (output9690, value4850, value1) := by
  rw [input9690_def, output9690_def]
  kernel_rfl

theorem node9691_cond_eq
    (child9689 : Flapjack.WordAlloc.removeDeadStructural input9689 value4848 value1 value2 = (output9689, value4849, value1))
    (child9690 : Flapjack.WordAlloc.removeDeadStructural input9690 value4849 value1 value2 = (output9690, value4850, value1)) : Flapjack.WordAlloc.removeDeadStructural input9691 value4848 value1 value2 = (output9691, value4850, value1) := by
  rw [input9691_def, output9691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9689]
  dsimp only
  rw [child9690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9689_skip, output9690_skip]
  kernel_rfl

theorem node9692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9692 value4850 value1 value2 = (output9692, value4851, value1) := by
  rw [input9692_def, output9692_def]
  kernel_rfl

theorem node9693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9693 value4851 value1 value2 = (output9693, value4852, value1) := by
  rw [input9693_def, output9693_def]
  kernel_rfl

theorem node9694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9694 value4852 value1 value2 = (output9694, value4853, value1) := by
  rw [input9694_def, output9694_def]
  kernel_rfl

theorem node9695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9695 value4853 value1 value2 = (output9695, value5, value1) := by
  rw [input9695_def, output9695_def]
  kernel_rfl

theorem node9696_cond_eq
    (child9694 : Flapjack.WordAlloc.removeDeadStructural input9694 value4852 value1 value2 = (output9694, value4853, value1))
    (child9695 : Flapjack.WordAlloc.removeDeadStructural input9695 value4853 value1 value2 = (output9695, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9696 value4852 value1 value2 = (output9696, value5, value1) := by
  rw [input9696_def, output9696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9694]
  dsimp only
  rw [child9695]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9694_skip, output9695_skip]
  kernel_rfl

theorem node9697_cond_eq
    (child9693 : Flapjack.WordAlloc.removeDeadStructural input9693 value4851 value1 value2 = (output9693, value4852, value1))
    (child9696 : Flapjack.WordAlloc.removeDeadStructural input9696 value4852 value1 value2 = (output9696, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9697 value4851 value1 value2 = (output9697, value5, value1) := by
  rw [input9697_def, output9697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9693]
  dsimp only
  rw [child9696]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9693_skip, output9696_skip]
  kernel_rfl

theorem node9698_cond_eq
    (child9692 : Flapjack.WordAlloc.removeDeadStructural input9692 value4850 value1 value2 = (output9692, value4851, value1))
    (child9697 : Flapjack.WordAlloc.removeDeadStructural input9697 value4851 value1 value2 = (output9697, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9698 value4850 value1 value2 = (output9698, value5, value1) := by
  rw [input9698_def, output9698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9692]
  dsimp only
  rw [child9697]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9692_skip, output9697_skip]
  kernel_rfl

theorem node9699_cond_eq
    (child9691 : Flapjack.WordAlloc.removeDeadStructural input9691 value4848 value1 value2 = (output9691, value4850, value1))
    (child9698 : Flapjack.WordAlloc.removeDeadStructural input9698 value4850 value1 value2 = (output9698, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9699 value4848 value1 value2 = (output9699, value5, value1) := by
  rw [input9699_def, output9699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9691]
  dsimp only
  rw [child9698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9691_skip, output9698_skip]
  kernel_rfl

theorem node9700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9700 value5 value1 value2 = (output9700, value4854, value1) := by
  rw [input9700_def, output9700_def]
  kernel_rfl

theorem node9701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9701 value4854 value1 value2 = (output9701, value4855, value1) := by
  rw [input9701_def, output9701_def]
  kernel_rfl

theorem node9702_cond_eq
    (child9700 : Flapjack.WordAlloc.removeDeadStructural input9700 value5 value1 value2 = (output9700, value4854, value1))
    (child9701 : Flapjack.WordAlloc.removeDeadStructural input9701 value4854 value1 value2 = (output9701, value4855, value1)) : Flapjack.WordAlloc.removeDeadStructural input9702 value5 value1 value2 = (output9702, value4855, value1) := by
  rw [input9702_def, output9702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9700]
  dsimp only
  rw [child9701]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9700_skip, output9701_skip]
  kernel_rfl

theorem node9703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9703 value4855 value1 value2 = (output9703, value4856, value1) := by
  rw [input9703_def, output9703_def]
  kernel_rfl

theorem node9704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9704 value4856 value1 value2 = (output9704, value4856, value1) := by
  rw [input9704_def, output9704_def]
  kernel_rfl

theorem node9705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9705 value4856 value1 value2 = (output9705, value4857, value1) := by
  rw [input9705_def, output9705_def]
  kernel_rfl

theorem node9706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9706 value4857 value1 value2 = (output9706, value4858, value1) := by
  rw [input9706_def, output9706_def]
  kernel_rfl

theorem node9707_cond_eq
    (child9705 : Flapjack.WordAlloc.removeDeadStructural input9705 value4856 value1 value2 = (output9705, value4857, value1))
    (child9706 : Flapjack.WordAlloc.removeDeadStructural input9706 value4857 value1 value2 = (output9706, value4858, value1)) : Flapjack.WordAlloc.removeDeadStructural input9707 value4856 value1 value2 = (output9707, value4858, value1) := by
  rw [input9707_def, output9707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9705]
  dsimp only
  rw [child9706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9705_skip, output9706_skip]
  kernel_rfl

theorem node9708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9708 value4858 value1 value2 = (output9708, value4859, value1) := by
  rw [input9708_def, output9708_def]
  kernel_rfl

theorem node9709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9709 value4859 value1 value2 = (output9709, value4860, value1) := by
  rw [input9709_def, output9709_def]
  kernel_rfl

theorem node9710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9710 value4860 value1 value2 = (output9710, value4861, value1) := by
  rw [input9710_def, output9710_def]
  kernel_rfl

theorem node9711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9711 value4861 value1 value2 = (output9711, value5, value1) := by
  rw [input9711_def, output9711_def]
  kernel_rfl

theorem node9712_cond_eq
    (child9710 : Flapjack.WordAlloc.removeDeadStructural input9710 value4860 value1 value2 = (output9710, value4861, value1))
    (child9711 : Flapjack.WordAlloc.removeDeadStructural input9711 value4861 value1 value2 = (output9711, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9712 value4860 value1 value2 = (output9712, value5, value1) := by
  rw [input9712_def, output9712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9710]
  dsimp only
  rw [child9711]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9710_skip, output9711_skip]
  kernel_rfl

theorem node9713_cond_eq
    (child9709 : Flapjack.WordAlloc.removeDeadStructural input9709 value4859 value1 value2 = (output9709, value4860, value1))
    (child9712 : Flapjack.WordAlloc.removeDeadStructural input9712 value4860 value1 value2 = (output9712, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9713 value4859 value1 value2 = (output9713, value5, value1) := by
  rw [input9713_def, output9713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9709]
  dsimp only
  rw [child9712]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9709_skip, output9712_skip]
  kernel_rfl

theorem node9714_cond_eq
    (child9708 : Flapjack.WordAlloc.removeDeadStructural input9708 value4858 value1 value2 = (output9708, value4859, value1))
    (child9713 : Flapjack.WordAlloc.removeDeadStructural input9713 value4859 value1 value2 = (output9713, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9714 value4858 value1 value2 = (output9714, value5, value1) := by
  rw [input9714_def, output9714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9708]
  dsimp only
  rw [child9713]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9708_skip, output9713_skip]
  kernel_rfl

theorem node9715_cond_eq
    (child9707 : Flapjack.WordAlloc.removeDeadStructural input9707 value4856 value1 value2 = (output9707, value4858, value1))
    (child9714 : Flapjack.WordAlloc.removeDeadStructural input9714 value4858 value1 value2 = (output9714, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9715 value4856 value1 value2 = (output9715, value5, value1) := by
  rw [input9715_def, output9715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9707]
  dsimp only
  rw [child9714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9707_skip, output9714_skip]
  kernel_rfl

theorem node9716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9716 value5 value1 value2 = (output9716, value4862, value1) := by
  rw [input9716_def, output9716_def]
  kernel_rfl

theorem node9717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9717 value4862 value1 value2 = (output9717, value4863, value1) := by
  rw [input9717_def, output9717_def]
  kernel_rfl

theorem node9718_cond_eq
    (child9716 : Flapjack.WordAlloc.removeDeadStructural input9716 value5 value1 value2 = (output9716, value4862, value1))
    (child9717 : Flapjack.WordAlloc.removeDeadStructural input9717 value4862 value1 value2 = (output9717, value4863, value1)) : Flapjack.WordAlloc.removeDeadStructural input9718 value5 value1 value2 = (output9718, value4863, value1) := by
  rw [input9718_def, output9718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9716]
  dsimp only
  rw [child9717]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9716_skip, output9717_skip]
  kernel_rfl

theorem node9719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9719 value4863 value1 value2 = (output9719, value4864, value1) := by
  rw [input9719_def, output9719_def]
  kernel_rfl

theorem node9720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9720 value4864 value1 value2 = (output9720, value4864, value1) := by
  rw [input9720_def, output9720_def]
  kernel_rfl

theorem node9721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9721 value4864 value1 value2 = (output9721, value4865, value1) := by
  rw [input9721_def, output9721_def]
  kernel_rfl

theorem node9722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9722 value4865 value1 value2 = (output9722, value4866, value1) := by
  rw [input9722_def, output9722_def]
  kernel_rfl

theorem node9723_cond_eq
    (child9721 : Flapjack.WordAlloc.removeDeadStructural input9721 value4864 value1 value2 = (output9721, value4865, value1))
    (child9722 : Flapjack.WordAlloc.removeDeadStructural input9722 value4865 value1 value2 = (output9722, value4866, value1)) : Flapjack.WordAlloc.removeDeadStructural input9723 value4864 value1 value2 = (output9723, value4866, value1) := by
  rw [input9723_def, output9723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9721]
  dsimp only
  rw [child9722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9721_skip, output9722_skip]
  kernel_rfl

theorem node9724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9724 value4866 value1 value2 = (output9724, value4867, value1) := by
  rw [input9724_def, output9724_def]
  kernel_rfl

theorem node9725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9725 value4867 value1 value2 = (output9725, value4868, value1) := by
  rw [input9725_def, output9725_def]
  kernel_rfl

theorem node9726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9726 value4868 value1 value2 = (output9726, value4869, value1) := by
  rw [input9726_def, output9726_def]
  kernel_rfl

theorem node9727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9727 value4869 value1 value2 = (output9727, value5, value1) := by
  rw [input9727_def, output9727_def]
  kernel_rfl

#print axioms node9727_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
