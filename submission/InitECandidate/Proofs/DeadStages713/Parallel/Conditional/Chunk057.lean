import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk057
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node14592_cond_eq
    (child11120 : Flapjack.WordAlloc.removeDeadStructural input11120 value5 value1 value2 = (output11120, value5564, value1))
    (child14591 : Flapjack.WordAlloc.removeDeadStructural input14591 value5564 value1 value2 = (output14591, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14592 value5 value1 value2 = (output14592, value6896, value1) := by
  rw [input14592_def, output14592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11120]
  try dsimp only
  rw [child14591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11120_skip, output14591_skip]
  kernel_rfl

theorem node14593_cond_eq
    (child11117 : Flapjack.WordAlloc.removeDeadStructural input11117 value5558 value1 value2 = (output11117, value5, value1))
    (child14592 : Flapjack.WordAlloc.removeDeadStructural input14592 value5 value1 value2 = (output14592, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14593 value5558 value1 value2 = (output14593, value6896, value1) := by
  rw [input14593_def, output14593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11117]
  try dsimp only
  rw [child14592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11117_skip, output14592_skip]
  kernel_rfl

theorem node14594_cond_eq
    (child11108 : Flapjack.WordAlloc.removeDeadStructural input11108 value5558 value1 value2 = (output11108, value5558, value1))
    (child14593 : Flapjack.WordAlloc.removeDeadStructural input14593 value5558 value1 value2 = (output14593, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14594 value5558 value1 value2 = (output14594, value6896, value1) := by
  rw [input14594_def, output14594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11108]
  try dsimp only
  rw [child14593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11108_skip, output14593_skip]
  kernel_rfl

theorem node14595_cond_eq
    (child11107 : Flapjack.WordAlloc.removeDeadStructural input11107 value5557 value1 value2 = (output11107, value5558, value1))
    (child14594 : Flapjack.WordAlloc.removeDeadStructural input14594 value5558 value1 value2 = (output14594, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14595 value5557 value1 value2 = (output14595, value6896, value1) := by
  rw [input14595_def, output14595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11107]
  try dsimp only
  rw [child14594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11107_skip, output14594_skip]
  kernel_rfl

theorem node14596_cond_eq
    (child11106 : Flapjack.WordAlloc.removeDeadStructural input11106 value5 value1 value2 = (output11106, value5557, value1))
    (child14595 : Flapjack.WordAlloc.removeDeadStructural input14595 value5557 value1 value2 = (output14595, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14596 value5 value1 value2 = (output14596, value6896, value1) := by
  rw [input14596_def, output14596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11106]
  try dsimp only
  rw [child14595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11106_skip, output14595_skip]
  kernel_rfl

theorem node14597_cond_eq
    (child11103 : Flapjack.WordAlloc.removeDeadStructural input11103 value5551 value1 value2 = (output11103, value5, value1))
    (child14596 : Flapjack.WordAlloc.removeDeadStructural input14596 value5 value1 value2 = (output14596, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14597 value5551 value1 value2 = (output14597, value6896, value1) := by
  rw [input14597_def, output14597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11103]
  try dsimp only
  rw [child14596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11103_skip, output14596_skip]
  kernel_rfl

theorem node14598_cond_eq
    (child11094 : Flapjack.WordAlloc.removeDeadStructural input11094 value5551 value1 value2 = (output11094, value5551, value1))
    (child14597 : Flapjack.WordAlloc.removeDeadStructural input14597 value5551 value1 value2 = (output14597, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14598 value5551 value1 value2 = (output14598, value6896, value1) := by
  rw [input14598_def, output14598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11094]
  try dsimp only
  rw [child14597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11094_skip, output14597_skip]
  kernel_rfl

theorem node14599_cond_eq
    (child11093 : Flapjack.WordAlloc.removeDeadStructural input11093 value5550 value1 value2 = (output11093, value5551, value1))
    (child14598 : Flapjack.WordAlloc.removeDeadStructural input14598 value5551 value1 value2 = (output14598, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14599 value5550 value1 value2 = (output14599, value6896, value1) := by
  rw [input14599_def, output14599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11093]
  try dsimp only
  rw [child14598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11093_skip, output14598_skip]
  kernel_rfl

theorem node14600_cond_eq
    (child11092 : Flapjack.WordAlloc.removeDeadStructural input11092 value5 value1 value2 = (output11092, value5550, value1))
    (child14599 : Flapjack.WordAlloc.removeDeadStructural input14599 value5550 value1 value2 = (output14599, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14600 value5 value1 value2 = (output14600, value6896, value1) := by
  rw [input14600_def, output14600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11092]
  try dsimp only
  rw [child14599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11092_skip, output14599_skip]
  kernel_rfl

theorem node14601_cond_eq
    (child11089 : Flapjack.WordAlloc.removeDeadStructural input11089 value5544 value1 value2 = (output11089, value5, value1))
    (child14600 : Flapjack.WordAlloc.removeDeadStructural input14600 value5 value1 value2 = (output14600, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14601 value5544 value1 value2 = (output14601, value6896, value1) := by
  rw [input14601_def, output14601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11089]
  try dsimp only
  rw [child14600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11089_skip, output14600_skip]
  kernel_rfl

theorem node14602_cond_eq
    (child11080 : Flapjack.WordAlloc.removeDeadStructural input11080 value5544 value1 value2 = (output11080, value5544, value1))
    (child14601 : Flapjack.WordAlloc.removeDeadStructural input14601 value5544 value1 value2 = (output14601, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14602 value5544 value1 value2 = (output14602, value6896, value1) := by
  rw [input14602_def, output14602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11080]
  try dsimp only
  rw [child14601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11080_skip, output14601_skip]
  kernel_rfl

theorem node14603_cond_eq
    (child11079 : Flapjack.WordAlloc.removeDeadStructural input11079 value5543 value1 value2 = (output11079, value5544, value1))
    (child14602 : Flapjack.WordAlloc.removeDeadStructural input14602 value5544 value1 value2 = (output14602, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14603 value5543 value1 value2 = (output14603, value6896, value1) := by
  rw [input14603_def, output14603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11079]
  try dsimp only
  rw [child14602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11079_skip, output14602_skip]
  kernel_rfl

theorem node14604_cond_eq
    (child11078 : Flapjack.WordAlloc.removeDeadStructural input11078 value5 value1 value2 = (output11078, value5543, value1))
    (child14603 : Flapjack.WordAlloc.removeDeadStructural input14603 value5543 value1 value2 = (output14603, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14604 value5 value1 value2 = (output14604, value6896, value1) := by
  rw [input14604_def, output14604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11078]
  try dsimp only
  rw [child14603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11078_skip, output14603_skip]
  kernel_rfl

theorem node14605_cond_eq
    (child11075 : Flapjack.WordAlloc.removeDeadStructural input11075 value5537 value1 value2 = (output11075, value5, value1))
    (child14604 : Flapjack.WordAlloc.removeDeadStructural input14604 value5 value1 value2 = (output14604, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14605 value5537 value1 value2 = (output14605, value6896, value1) := by
  rw [input14605_def, output14605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11075]
  try dsimp only
  rw [child14604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11075_skip, output14604_skip]
  kernel_rfl

theorem node14606_cond_eq
    (child11066 : Flapjack.WordAlloc.removeDeadStructural input11066 value5537 value1 value2 = (output11066, value5537, value1))
    (child14605 : Flapjack.WordAlloc.removeDeadStructural input14605 value5537 value1 value2 = (output14605, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14606 value5537 value1 value2 = (output14606, value6896, value1) := by
  rw [input14606_def, output14606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11066]
  try dsimp only
  rw [child14605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11066_skip, output14605_skip]
  kernel_rfl

theorem node14607_cond_eq
    (child11065 : Flapjack.WordAlloc.removeDeadStructural input11065 value5536 value1 value2 = (output11065, value5537, value1))
    (child14606 : Flapjack.WordAlloc.removeDeadStructural input14606 value5537 value1 value2 = (output14606, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14607 value5536 value1 value2 = (output14607, value6896, value1) := by
  rw [input14607_def, output14607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11065]
  try dsimp only
  rw [child14606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11065_skip, output14606_skip]
  kernel_rfl

theorem node14608_cond_eq
    (child11064 : Flapjack.WordAlloc.removeDeadStructural input11064 value5 value1 value2 = (output11064, value5536, value1))
    (child14607 : Flapjack.WordAlloc.removeDeadStructural input14607 value5536 value1 value2 = (output14607, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14608 value5 value1 value2 = (output14608, value6896, value1) := by
  rw [input14608_def, output14608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11064]
  try dsimp only
  rw [child14607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11064_skip, output14607_skip]
  kernel_rfl

theorem node14609_cond_eq
    (child11061 : Flapjack.WordAlloc.removeDeadStructural input11061 value5530 value1 value2 = (output11061, value5, value1))
    (child14608 : Flapjack.WordAlloc.removeDeadStructural input14608 value5 value1 value2 = (output14608, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14609 value5530 value1 value2 = (output14609, value6896, value1) := by
  rw [input14609_def, output14609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11061]
  try dsimp only
  rw [child14608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11061_skip, output14608_skip]
  kernel_rfl

theorem node14610_cond_eq
    (child11052 : Flapjack.WordAlloc.removeDeadStructural input11052 value5530 value1 value2 = (output11052, value5530, value1))
    (child14609 : Flapjack.WordAlloc.removeDeadStructural input14609 value5530 value1 value2 = (output14609, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14610 value5530 value1 value2 = (output14610, value6896, value1) := by
  rw [input14610_def, output14610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11052]
  try dsimp only
  rw [child14609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11052_skip, output14609_skip]
  kernel_rfl

theorem node14611_cond_eq
    (child11051 : Flapjack.WordAlloc.removeDeadStructural input11051 value5529 value1 value2 = (output11051, value5530, value1))
    (child14610 : Flapjack.WordAlloc.removeDeadStructural input14610 value5530 value1 value2 = (output14610, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14611 value5529 value1 value2 = (output14611, value6896, value1) := by
  rw [input14611_def, output14611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11051]
  try dsimp only
  rw [child14610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11051_skip, output14610_skip]
  kernel_rfl

theorem node14612_cond_eq
    (child11050 : Flapjack.WordAlloc.removeDeadStructural input11050 value5 value1 value2 = (output11050, value5529, value1))
    (child14611 : Flapjack.WordAlloc.removeDeadStructural input14611 value5529 value1 value2 = (output14611, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14612 value5 value1 value2 = (output14612, value6896, value1) := by
  rw [input14612_def, output14612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11050]
  try dsimp only
  rw [child14611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11050_skip, output14611_skip]
  kernel_rfl

theorem node14613_cond_eq
    (child11047 : Flapjack.WordAlloc.removeDeadStructural input11047 value5523 value1 value2 = (output11047, value5, value1))
    (child14612 : Flapjack.WordAlloc.removeDeadStructural input14612 value5 value1 value2 = (output14612, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14613 value5523 value1 value2 = (output14613, value6896, value1) := by
  rw [input14613_def, output14613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11047]
  try dsimp only
  rw [child14612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11047_skip, output14612_skip]
  kernel_rfl

theorem node14614_cond_eq
    (child11038 : Flapjack.WordAlloc.removeDeadStructural input11038 value5523 value1 value2 = (output11038, value5523, value1))
    (child14613 : Flapjack.WordAlloc.removeDeadStructural input14613 value5523 value1 value2 = (output14613, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14614 value5523 value1 value2 = (output14614, value6896, value1) := by
  rw [input14614_def, output14614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11038]
  try dsimp only
  rw [child14613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11038_skip, output14613_skip]
  kernel_rfl

theorem node14615_cond_eq
    (child11037 : Flapjack.WordAlloc.removeDeadStructural input11037 value5522 value1 value2 = (output11037, value5523, value1))
    (child14614 : Flapjack.WordAlloc.removeDeadStructural input14614 value5523 value1 value2 = (output14614, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14615 value5522 value1 value2 = (output14615, value6896, value1) := by
  rw [input14615_def, output14615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11037]
  try dsimp only
  rw [child14614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11037_skip, output14614_skip]
  kernel_rfl

theorem node14616_cond_eq
    (child11036 : Flapjack.WordAlloc.removeDeadStructural input11036 value5 value1 value2 = (output11036, value5522, value1))
    (child14615 : Flapjack.WordAlloc.removeDeadStructural input14615 value5522 value1 value2 = (output14615, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14616 value5 value1 value2 = (output14616, value6896, value1) := by
  rw [input14616_def, output14616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11036]
  try dsimp only
  rw [child14615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11036_skip, output14615_skip]
  kernel_rfl

theorem node14617_cond_eq
    (child11033 : Flapjack.WordAlloc.removeDeadStructural input11033 value5516 value1 value2 = (output11033, value5, value1))
    (child14616 : Flapjack.WordAlloc.removeDeadStructural input14616 value5 value1 value2 = (output14616, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14617 value5516 value1 value2 = (output14617, value6896, value1) := by
  rw [input14617_def, output14617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11033]
  try dsimp only
  rw [child14616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11033_skip, output14616_skip]
  kernel_rfl

theorem node14618_cond_eq
    (child11024 : Flapjack.WordAlloc.removeDeadStructural input11024 value5516 value1 value2 = (output11024, value5516, value1))
    (child14617 : Flapjack.WordAlloc.removeDeadStructural input14617 value5516 value1 value2 = (output14617, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14618 value5516 value1 value2 = (output14618, value6896, value1) := by
  rw [input14618_def, output14618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11024]
  try dsimp only
  rw [child14617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11024_skip, output14617_skip]
  kernel_rfl

theorem node14619_cond_eq
    (child11023 : Flapjack.WordAlloc.removeDeadStructural input11023 value5515 value1 value2 = (output11023, value5516, value1))
    (child14618 : Flapjack.WordAlloc.removeDeadStructural input14618 value5516 value1 value2 = (output14618, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14619 value5515 value1 value2 = (output14619, value6896, value1) := by
  rw [input14619_def, output14619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11023]
  try dsimp only
  rw [child14618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11023_skip, output14618_skip]
  kernel_rfl

theorem node14620_cond_eq
    (child11022 : Flapjack.WordAlloc.removeDeadStructural input11022 value5 value1 value2 = (output11022, value5515, value1))
    (child14619 : Flapjack.WordAlloc.removeDeadStructural input14619 value5515 value1 value2 = (output14619, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14620 value5 value1 value2 = (output14620, value6896, value1) := by
  rw [input14620_def, output14620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11022]
  try dsimp only
  rw [child14619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11022_skip, output14619_skip]
  kernel_rfl

theorem node14621_cond_eq
    (child11019 : Flapjack.WordAlloc.removeDeadStructural input11019 value5509 value1 value2 = (output11019, value5, value1))
    (child14620 : Flapjack.WordAlloc.removeDeadStructural input14620 value5 value1 value2 = (output14620, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14621 value5509 value1 value2 = (output14621, value6896, value1) := by
  rw [input14621_def, output14621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11019]
  try dsimp only
  rw [child14620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11019_skip, output14620_skip]
  kernel_rfl

theorem node14622_cond_eq
    (child11010 : Flapjack.WordAlloc.removeDeadStructural input11010 value5509 value1 value2 = (output11010, value5509, value1))
    (child14621 : Flapjack.WordAlloc.removeDeadStructural input14621 value5509 value1 value2 = (output14621, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14622 value5509 value1 value2 = (output14622, value6896, value1) := by
  rw [input14622_def, output14622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11010]
  try dsimp only
  rw [child14621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11010_skip, output14621_skip]
  kernel_rfl

theorem node14623_cond_eq
    (child11009 : Flapjack.WordAlloc.removeDeadStructural input11009 value5508 value1 value2 = (output11009, value5509, value1))
    (child14622 : Flapjack.WordAlloc.removeDeadStructural input14622 value5509 value1 value2 = (output14622, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14623 value5508 value1 value2 = (output14623, value6896, value1) := by
  rw [input14623_def, output14623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11009]
  try dsimp only
  rw [child14622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11009_skip, output14622_skip]
  kernel_rfl

theorem node14624_cond_eq
    (child11008 : Flapjack.WordAlloc.removeDeadStructural input11008 value5 value1 value2 = (output11008, value5508, value1))
    (child14623 : Flapjack.WordAlloc.removeDeadStructural input14623 value5508 value1 value2 = (output14623, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14624 value5 value1 value2 = (output14624, value6896, value1) := by
  rw [input14624_def, output14624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11008]
  try dsimp only
  rw [child14623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11008_skip, output14623_skip]
  kernel_rfl

theorem node14625_cond_eq
    (child11005 : Flapjack.WordAlloc.removeDeadStructural input11005 value5502 value1 value2 = (output11005, value5, value1))
    (child14624 : Flapjack.WordAlloc.removeDeadStructural input14624 value5 value1 value2 = (output14624, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14625 value5502 value1 value2 = (output14625, value6896, value1) := by
  rw [input14625_def, output14625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11005]
  try dsimp only
  rw [child14624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11005_skip, output14624_skip]
  kernel_rfl

theorem node14626_cond_eq
    (child10996 : Flapjack.WordAlloc.removeDeadStructural input10996 value5502 value1 value2 = (output10996, value5502, value1))
    (child14625 : Flapjack.WordAlloc.removeDeadStructural input14625 value5502 value1 value2 = (output14625, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14626 value5502 value1 value2 = (output14626, value6896, value1) := by
  rw [input14626_def, output14626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10996]
  try dsimp only
  rw [child14625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10996_skip, output14625_skip]
  kernel_rfl

theorem node14627_cond_eq
    (child10995 : Flapjack.WordAlloc.removeDeadStructural input10995 value5501 value1 value2 = (output10995, value5502, value1))
    (child14626 : Flapjack.WordAlloc.removeDeadStructural input14626 value5502 value1 value2 = (output14626, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14627 value5501 value1 value2 = (output14627, value6896, value1) := by
  rw [input14627_def, output14627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10995]
  try dsimp only
  rw [child14626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10995_skip, output14626_skip]
  kernel_rfl

theorem node14628_cond_eq
    (child10994 : Flapjack.WordAlloc.removeDeadStructural input10994 value5 value1 value2 = (output10994, value5501, value1))
    (child14627 : Flapjack.WordAlloc.removeDeadStructural input14627 value5501 value1 value2 = (output14627, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14628 value5 value1 value2 = (output14628, value6896, value1) := by
  rw [input14628_def, output14628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10994]
  try dsimp only
  rw [child14627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10994_skip, output14627_skip]
  kernel_rfl

theorem node14629_cond_eq
    (child10991 : Flapjack.WordAlloc.removeDeadStructural input10991 value5495 value1 value2 = (output10991, value5, value1))
    (child14628 : Flapjack.WordAlloc.removeDeadStructural input14628 value5 value1 value2 = (output14628, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14629 value5495 value1 value2 = (output14629, value6896, value1) := by
  rw [input14629_def, output14629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10991]
  try dsimp only
  rw [child14628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10991_skip, output14628_skip]
  kernel_rfl

theorem node14630_cond_eq
    (child10982 : Flapjack.WordAlloc.removeDeadStructural input10982 value5495 value1 value2 = (output10982, value5495, value1))
    (child14629 : Flapjack.WordAlloc.removeDeadStructural input14629 value5495 value1 value2 = (output14629, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14630 value5495 value1 value2 = (output14630, value6896, value1) := by
  rw [input14630_def, output14630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10982]
  try dsimp only
  rw [child14629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10982_skip, output14629_skip]
  kernel_rfl

theorem node14631_cond_eq
    (child10981 : Flapjack.WordAlloc.removeDeadStructural input10981 value5494 value1 value2 = (output10981, value5495, value1))
    (child14630 : Flapjack.WordAlloc.removeDeadStructural input14630 value5495 value1 value2 = (output14630, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14631 value5494 value1 value2 = (output14631, value6896, value1) := by
  rw [input14631_def, output14631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10981]
  try dsimp only
  rw [child14630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10981_skip, output14630_skip]
  kernel_rfl

theorem node14632_cond_eq
    (child10980 : Flapjack.WordAlloc.removeDeadStructural input10980 value5 value1 value2 = (output10980, value5494, value1))
    (child14631 : Flapjack.WordAlloc.removeDeadStructural input14631 value5494 value1 value2 = (output14631, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14632 value5 value1 value2 = (output14632, value6896, value1) := by
  rw [input14632_def, output14632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10980]
  try dsimp only
  rw [child14631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10980_skip, output14631_skip]
  kernel_rfl

theorem node14633_cond_eq
    (child10977 : Flapjack.WordAlloc.removeDeadStructural input10977 value5488 value1 value2 = (output10977, value5, value1))
    (child14632 : Flapjack.WordAlloc.removeDeadStructural input14632 value5 value1 value2 = (output14632, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14633 value5488 value1 value2 = (output14633, value6896, value1) := by
  rw [input14633_def, output14633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10977]
  try dsimp only
  rw [child14632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10977_skip, output14632_skip]
  kernel_rfl

theorem node14634_cond_eq
    (child10968 : Flapjack.WordAlloc.removeDeadStructural input10968 value5488 value1 value2 = (output10968, value5488, value1))
    (child14633 : Flapjack.WordAlloc.removeDeadStructural input14633 value5488 value1 value2 = (output14633, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14634 value5488 value1 value2 = (output14634, value6896, value1) := by
  rw [input14634_def, output14634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10968]
  try dsimp only
  rw [child14633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10968_skip, output14633_skip]
  kernel_rfl

theorem node14635_cond_eq
    (child10967 : Flapjack.WordAlloc.removeDeadStructural input10967 value5487 value1 value2 = (output10967, value5488, value1))
    (child14634 : Flapjack.WordAlloc.removeDeadStructural input14634 value5488 value1 value2 = (output14634, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14635 value5487 value1 value2 = (output14635, value6896, value1) := by
  rw [input14635_def, output14635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10967]
  try dsimp only
  rw [child14634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10967_skip, output14634_skip]
  kernel_rfl

theorem node14636_cond_eq
    (child10966 : Flapjack.WordAlloc.removeDeadStructural input10966 value5 value1 value2 = (output10966, value5487, value1))
    (child14635 : Flapjack.WordAlloc.removeDeadStructural input14635 value5487 value1 value2 = (output14635, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14636 value5 value1 value2 = (output14636, value6896, value1) := by
  rw [input14636_def, output14636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10966]
  try dsimp only
  rw [child14635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10966_skip, output14635_skip]
  kernel_rfl

theorem node14637_cond_eq
    (child10963 : Flapjack.WordAlloc.removeDeadStructural input10963 value5481 value1 value2 = (output10963, value5, value1))
    (child14636 : Flapjack.WordAlloc.removeDeadStructural input14636 value5 value1 value2 = (output14636, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14637 value5481 value1 value2 = (output14637, value6896, value1) := by
  rw [input14637_def, output14637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10963]
  try dsimp only
  rw [child14636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10963_skip, output14636_skip]
  kernel_rfl

theorem node14638_cond_eq
    (child10954 : Flapjack.WordAlloc.removeDeadStructural input10954 value5481 value1 value2 = (output10954, value5481, value1))
    (child14637 : Flapjack.WordAlloc.removeDeadStructural input14637 value5481 value1 value2 = (output14637, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14638 value5481 value1 value2 = (output14638, value6896, value1) := by
  rw [input14638_def, output14638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10954]
  try dsimp only
  rw [child14637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10954_skip, output14637_skip]
  kernel_rfl

theorem node14639_cond_eq
    (child10953 : Flapjack.WordAlloc.removeDeadStructural input10953 value5480 value1 value2 = (output10953, value5481, value1))
    (child14638 : Flapjack.WordAlloc.removeDeadStructural input14638 value5481 value1 value2 = (output14638, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14639 value5480 value1 value2 = (output14639, value6896, value1) := by
  rw [input14639_def, output14639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10953]
  try dsimp only
  rw [child14638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10953_skip, output14638_skip]
  kernel_rfl

theorem node14640_cond_eq
    (child10952 : Flapjack.WordAlloc.removeDeadStructural input10952 value5 value1 value2 = (output10952, value5480, value1))
    (child14639 : Flapjack.WordAlloc.removeDeadStructural input14639 value5480 value1 value2 = (output14639, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14640 value5 value1 value2 = (output14640, value6896, value1) := by
  rw [input14640_def, output14640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10952]
  try dsimp only
  rw [child14639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10952_skip, output14639_skip]
  kernel_rfl

theorem node14641_cond_eq
    (child10949 : Flapjack.WordAlloc.removeDeadStructural input10949 value5474 value1 value2 = (output10949, value5, value1))
    (child14640 : Flapjack.WordAlloc.removeDeadStructural input14640 value5 value1 value2 = (output14640, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14641 value5474 value1 value2 = (output14641, value6896, value1) := by
  rw [input14641_def, output14641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10949]
  try dsimp only
  rw [child14640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10949_skip, output14640_skip]
  kernel_rfl

theorem node14642_cond_eq
    (child10940 : Flapjack.WordAlloc.removeDeadStructural input10940 value5474 value1 value2 = (output10940, value5474, value1))
    (child14641 : Flapjack.WordAlloc.removeDeadStructural input14641 value5474 value1 value2 = (output14641, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14642 value5474 value1 value2 = (output14642, value6896, value1) := by
  rw [input14642_def, output14642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10940]
  try dsimp only
  rw [child14641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10940_skip, output14641_skip]
  kernel_rfl

theorem node14643_cond_eq
    (child10939 : Flapjack.WordAlloc.removeDeadStructural input10939 value5473 value1 value2 = (output10939, value5474, value1))
    (child14642 : Flapjack.WordAlloc.removeDeadStructural input14642 value5474 value1 value2 = (output14642, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14643 value5473 value1 value2 = (output14643, value6896, value1) := by
  rw [input14643_def, output14643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10939]
  try dsimp only
  rw [child14642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10939_skip, output14642_skip]
  kernel_rfl

theorem node14644_cond_eq
    (child10938 : Flapjack.WordAlloc.removeDeadStructural input10938 value5 value1 value2 = (output10938, value5473, value1))
    (child14643 : Flapjack.WordAlloc.removeDeadStructural input14643 value5473 value1 value2 = (output14643, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14644 value5 value1 value2 = (output14644, value6896, value1) := by
  rw [input14644_def, output14644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10938]
  try dsimp only
  rw [child14643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10938_skip, output14643_skip]
  kernel_rfl

theorem node14645_cond_eq
    (child10935 : Flapjack.WordAlloc.removeDeadStructural input10935 value5467 value1 value2 = (output10935, value5, value1))
    (child14644 : Flapjack.WordAlloc.removeDeadStructural input14644 value5 value1 value2 = (output14644, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14645 value5467 value1 value2 = (output14645, value6896, value1) := by
  rw [input14645_def, output14645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10935]
  try dsimp only
  rw [child14644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10935_skip, output14644_skip]
  kernel_rfl

theorem node14646_cond_eq
    (child10926 : Flapjack.WordAlloc.removeDeadStructural input10926 value5467 value1 value2 = (output10926, value5467, value1))
    (child14645 : Flapjack.WordAlloc.removeDeadStructural input14645 value5467 value1 value2 = (output14645, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14646 value5467 value1 value2 = (output14646, value6896, value1) := by
  rw [input14646_def, output14646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10926]
  try dsimp only
  rw [child14645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10926_skip, output14645_skip]
  kernel_rfl

theorem node14647_cond_eq
    (child10925 : Flapjack.WordAlloc.removeDeadStructural input10925 value5466 value1 value2 = (output10925, value5467, value1))
    (child14646 : Flapjack.WordAlloc.removeDeadStructural input14646 value5467 value1 value2 = (output14646, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14647 value5466 value1 value2 = (output14647, value6896, value1) := by
  rw [input14647_def, output14647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10925]
  try dsimp only
  rw [child14646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10925_skip, output14646_skip]
  kernel_rfl

theorem node14648_cond_eq
    (child10924 : Flapjack.WordAlloc.removeDeadStructural input10924 value5 value1 value2 = (output10924, value5466, value1))
    (child14647 : Flapjack.WordAlloc.removeDeadStructural input14647 value5466 value1 value2 = (output14647, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14648 value5 value1 value2 = (output14648, value6896, value1) := by
  rw [input14648_def, output14648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10924]
  try dsimp only
  rw [child14647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10924_skip, output14647_skip]
  kernel_rfl

theorem node14649_cond_eq
    (child10921 : Flapjack.WordAlloc.removeDeadStructural input10921 value5460 value1 value2 = (output10921, value5, value1))
    (child14648 : Flapjack.WordAlloc.removeDeadStructural input14648 value5 value1 value2 = (output14648, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14649 value5460 value1 value2 = (output14649, value6896, value1) := by
  rw [input14649_def, output14649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10921]
  try dsimp only
  rw [child14648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10921_skip, output14648_skip]
  kernel_rfl

theorem node14650_cond_eq
    (child10912 : Flapjack.WordAlloc.removeDeadStructural input10912 value5460 value1 value2 = (output10912, value5460, value1))
    (child14649 : Flapjack.WordAlloc.removeDeadStructural input14649 value5460 value1 value2 = (output14649, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14650 value5460 value1 value2 = (output14650, value6896, value1) := by
  rw [input14650_def, output14650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10912]
  try dsimp only
  rw [child14649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10912_skip, output14649_skip]
  kernel_rfl

theorem node14651_cond_eq
    (child10911 : Flapjack.WordAlloc.removeDeadStructural input10911 value5459 value1 value2 = (output10911, value5460, value1))
    (child14650 : Flapjack.WordAlloc.removeDeadStructural input14650 value5460 value1 value2 = (output14650, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14651 value5459 value1 value2 = (output14651, value6896, value1) := by
  rw [input14651_def, output14651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10911]
  try dsimp only
  rw [child14650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10911_skip, output14650_skip]
  kernel_rfl

theorem node14652_cond_eq
    (child10910 : Flapjack.WordAlloc.removeDeadStructural input10910 value5 value1 value2 = (output10910, value5459, value1))
    (child14651 : Flapjack.WordAlloc.removeDeadStructural input14651 value5459 value1 value2 = (output14651, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14652 value5 value1 value2 = (output14652, value6896, value1) := by
  rw [input14652_def, output14652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10910]
  try dsimp only
  rw [child14651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10910_skip, output14651_skip]
  kernel_rfl

theorem node14653_cond_eq
    (child10907 : Flapjack.WordAlloc.removeDeadStructural input10907 value5453 value1 value2 = (output10907, value5, value1))
    (child14652 : Flapjack.WordAlloc.removeDeadStructural input14652 value5 value1 value2 = (output14652, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14653 value5453 value1 value2 = (output14653, value6896, value1) := by
  rw [input14653_def, output14653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10907]
  try dsimp only
  rw [child14652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10907_skip, output14652_skip]
  kernel_rfl

theorem node14654_cond_eq
    (child10898 : Flapjack.WordAlloc.removeDeadStructural input10898 value5453 value1 value2 = (output10898, value5453, value1))
    (child14653 : Flapjack.WordAlloc.removeDeadStructural input14653 value5453 value1 value2 = (output14653, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14654 value5453 value1 value2 = (output14654, value6896, value1) := by
  rw [input14654_def, output14654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10898]
  try dsimp only
  rw [child14653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10898_skip, output14653_skip]
  kernel_rfl

theorem node14655_cond_eq
    (child10897 : Flapjack.WordAlloc.removeDeadStructural input10897 value5452 value1 value2 = (output10897, value5453, value1))
    (child14654 : Flapjack.WordAlloc.removeDeadStructural input14654 value5453 value1 value2 = (output14654, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14655 value5452 value1 value2 = (output14655, value6896, value1) := by
  rw [input14655_def, output14655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10897]
  try dsimp only
  rw [child14654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10897_skip, output14654_skip]
  kernel_rfl

theorem node14656_cond_eq
    (child10896 : Flapjack.WordAlloc.removeDeadStructural input10896 value5 value1 value2 = (output10896, value5452, value1))
    (child14655 : Flapjack.WordAlloc.removeDeadStructural input14655 value5452 value1 value2 = (output14655, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14656 value5 value1 value2 = (output14656, value6896, value1) := by
  rw [input14656_def, output14656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10896]
  try dsimp only
  rw [child14655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10896_skip, output14655_skip]
  kernel_rfl

theorem node14657_cond_eq
    (child10893 : Flapjack.WordAlloc.removeDeadStructural input10893 value5446 value1 value2 = (output10893, value5, value1))
    (child14656 : Flapjack.WordAlloc.removeDeadStructural input14656 value5 value1 value2 = (output14656, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14657 value5446 value1 value2 = (output14657, value6896, value1) := by
  rw [input14657_def, output14657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10893]
  try dsimp only
  rw [child14656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10893_skip, output14656_skip]
  kernel_rfl

theorem node14658_cond_eq
    (child10884 : Flapjack.WordAlloc.removeDeadStructural input10884 value5446 value1 value2 = (output10884, value5446, value1))
    (child14657 : Flapjack.WordAlloc.removeDeadStructural input14657 value5446 value1 value2 = (output14657, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14658 value5446 value1 value2 = (output14658, value6896, value1) := by
  rw [input14658_def, output14658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10884]
  try dsimp only
  rw [child14657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10884_skip, output14657_skip]
  kernel_rfl

theorem node14659_cond_eq
    (child10883 : Flapjack.WordAlloc.removeDeadStructural input10883 value5445 value1 value2 = (output10883, value5446, value1))
    (child14658 : Flapjack.WordAlloc.removeDeadStructural input14658 value5446 value1 value2 = (output14658, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14659 value5445 value1 value2 = (output14659, value6896, value1) := by
  rw [input14659_def, output14659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10883]
  try dsimp only
  rw [child14658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10883_skip, output14658_skip]
  kernel_rfl

theorem node14660_cond_eq
    (child10882 : Flapjack.WordAlloc.removeDeadStructural input10882 value5 value1 value2 = (output10882, value5445, value1))
    (child14659 : Flapjack.WordAlloc.removeDeadStructural input14659 value5445 value1 value2 = (output14659, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14660 value5 value1 value2 = (output14660, value6896, value1) := by
  rw [input14660_def, output14660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10882]
  try dsimp only
  rw [child14659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10882_skip, output14659_skip]
  kernel_rfl

theorem node14661_cond_eq
    (child10879 : Flapjack.WordAlloc.removeDeadStructural input10879 value5439 value1 value2 = (output10879, value5, value1))
    (child14660 : Flapjack.WordAlloc.removeDeadStructural input14660 value5 value1 value2 = (output14660, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14661 value5439 value1 value2 = (output14661, value6896, value1) := by
  rw [input14661_def, output14661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10879]
  try dsimp only
  rw [child14660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10879_skip, output14660_skip]
  kernel_rfl

theorem node14662_cond_eq
    (child10870 : Flapjack.WordAlloc.removeDeadStructural input10870 value5439 value1 value2 = (output10870, value5439, value1))
    (child14661 : Flapjack.WordAlloc.removeDeadStructural input14661 value5439 value1 value2 = (output14661, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14662 value5439 value1 value2 = (output14662, value6896, value1) := by
  rw [input14662_def, output14662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10870]
  try dsimp only
  rw [child14661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10870_skip, output14661_skip]
  kernel_rfl

theorem node14663_cond_eq
    (child10869 : Flapjack.WordAlloc.removeDeadStructural input10869 value5438 value1 value2 = (output10869, value5439, value1))
    (child14662 : Flapjack.WordAlloc.removeDeadStructural input14662 value5439 value1 value2 = (output14662, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14663 value5438 value1 value2 = (output14663, value6896, value1) := by
  rw [input14663_def, output14663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10869]
  try dsimp only
  rw [child14662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10869_skip, output14662_skip]
  kernel_rfl

theorem node14664_cond_eq
    (child10868 : Flapjack.WordAlloc.removeDeadStructural input10868 value5 value1 value2 = (output10868, value5438, value1))
    (child14663 : Flapjack.WordAlloc.removeDeadStructural input14663 value5438 value1 value2 = (output14663, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14664 value5 value1 value2 = (output14664, value6896, value1) := by
  rw [input14664_def, output14664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10868]
  try dsimp only
  rw [child14663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10868_skip, output14663_skip]
  kernel_rfl

theorem node14665_cond_eq
    (child10865 : Flapjack.WordAlloc.removeDeadStructural input10865 value5432 value1 value2 = (output10865, value5, value1))
    (child14664 : Flapjack.WordAlloc.removeDeadStructural input14664 value5 value1 value2 = (output14664, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14665 value5432 value1 value2 = (output14665, value6896, value1) := by
  rw [input14665_def, output14665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10865]
  try dsimp only
  rw [child14664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10865_skip, output14664_skip]
  kernel_rfl

theorem node14666_cond_eq
    (child10856 : Flapjack.WordAlloc.removeDeadStructural input10856 value5432 value1 value2 = (output10856, value5432, value1))
    (child14665 : Flapjack.WordAlloc.removeDeadStructural input14665 value5432 value1 value2 = (output14665, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14666 value5432 value1 value2 = (output14666, value6896, value1) := by
  rw [input14666_def, output14666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10856]
  try dsimp only
  rw [child14665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10856_skip, output14665_skip]
  kernel_rfl

theorem node14667_cond_eq
    (child10855 : Flapjack.WordAlloc.removeDeadStructural input10855 value5431 value1 value2 = (output10855, value5432, value1))
    (child14666 : Flapjack.WordAlloc.removeDeadStructural input14666 value5432 value1 value2 = (output14666, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14667 value5431 value1 value2 = (output14667, value6896, value1) := by
  rw [input14667_def, output14667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10855]
  try dsimp only
  rw [child14666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10855_skip, output14666_skip]
  kernel_rfl

theorem node14668_cond_eq
    (child10854 : Flapjack.WordAlloc.removeDeadStructural input10854 value5 value1 value2 = (output10854, value5431, value1))
    (child14667 : Flapjack.WordAlloc.removeDeadStructural input14667 value5431 value1 value2 = (output14667, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14668 value5 value1 value2 = (output14668, value6896, value1) := by
  rw [input14668_def, output14668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10854]
  try dsimp only
  rw [child14667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10854_skip, output14667_skip]
  kernel_rfl

theorem node14669_cond_eq
    (child10851 : Flapjack.WordAlloc.removeDeadStructural input10851 value5425 value1 value2 = (output10851, value5, value1))
    (child14668 : Flapjack.WordAlloc.removeDeadStructural input14668 value5 value1 value2 = (output14668, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14669 value5425 value1 value2 = (output14669, value6896, value1) := by
  rw [input14669_def, output14669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10851]
  try dsimp only
  rw [child14668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10851_skip, output14668_skip]
  kernel_rfl

theorem node14670_cond_eq
    (child10842 : Flapjack.WordAlloc.removeDeadStructural input10842 value5425 value1 value2 = (output10842, value5425, value1))
    (child14669 : Flapjack.WordAlloc.removeDeadStructural input14669 value5425 value1 value2 = (output14669, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14670 value5425 value1 value2 = (output14670, value6896, value1) := by
  rw [input14670_def, output14670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10842]
  try dsimp only
  rw [child14669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10842_skip, output14669_skip]
  kernel_rfl

theorem node14671_cond_eq
    (child10841 : Flapjack.WordAlloc.removeDeadStructural input10841 value5424 value1 value2 = (output10841, value5425, value1))
    (child14670 : Flapjack.WordAlloc.removeDeadStructural input14670 value5425 value1 value2 = (output14670, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14671 value5424 value1 value2 = (output14671, value6896, value1) := by
  rw [input14671_def, output14671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10841]
  try dsimp only
  rw [child14670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10841_skip, output14670_skip]
  kernel_rfl

theorem node14672_cond_eq
    (child10840 : Flapjack.WordAlloc.removeDeadStructural input10840 value5 value1 value2 = (output10840, value5424, value1))
    (child14671 : Flapjack.WordAlloc.removeDeadStructural input14671 value5424 value1 value2 = (output14671, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14672 value5 value1 value2 = (output14672, value6896, value1) := by
  rw [input14672_def, output14672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10840]
  try dsimp only
  rw [child14671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10840_skip, output14671_skip]
  kernel_rfl

theorem node14673_cond_eq
    (child10837 : Flapjack.WordAlloc.removeDeadStructural input10837 value5418 value1 value2 = (output10837, value5, value1))
    (child14672 : Flapjack.WordAlloc.removeDeadStructural input14672 value5 value1 value2 = (output14672, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14673 value5418 value1 value2 = (output14673, value6896, value1) := by
  rw [input14673_def, output14673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10837]
  try dsimp only
  rw [child14672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10837_skip, output14672_skip]
  kernel_rfl

theorem node14674_cond_eq
    (child10828 : Flapjack.WordAlloc.removeDeadStructural input10828 value5418 value1 value2 = (output10828, value5418, value1))
    (child14673 : Flapjack.WordAlloc.removeDeadStructural input14673 value5418 value1 value2 = (output14673, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14674 value5418 value1 value2 = (output14674, value6896, value1) := by
  rw [input14674_def, output14674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10828]
  try dsimp only
  rw [child14673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10828_skip, output14673_skip]
  kernel_rfl

theorem node14675_cond_eq
    (child10827 : Flapjack.WordAlloc.removeDeadStructural input10827 value5417 value1 value2 = (output10827, value5418, value1))
    (child14674 : Flapjack.WordAlloc.removeDeadStructural input14674 value5418 value1 value2 = (output14674, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14675 value5417 value1 value2 = (output14675, value6896, value1) := by
  rw [input14675_def, output14675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10827]
  try dsimp only
  rw [child14674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10827_skip, output14674_skip]
  kernel_rfl

theorem node14676_cond_eq
    (child10826 : Flapjack.WordAlloc.removeDeadStructural input10826 value5 value1 value2 = (output10826, value5417, value1))
    (child14675 : Flapjack.WordAlloc.removeDeadStructural input14675 value5417 value1 value2 = (output14675, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14676 value5 value1 value2 = (output14676, value6896, value1) := by
  rw [input14676_def, output14676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10826]
  try dsimp only
  rw [child14675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10826_skip, output14675_skip]
  kernel_rfl

theorem node14677_cond_eq
    (child10823 : Flapjack.WordAlloc.removeDeadStructural input10823 value5411 value1 value2 = (output10823, value5, value1))
    (child14676 : Flapjack.WordAlloc.removeDeadStructural input14676 value5 value1 value2 = (output14676, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14677 value5411 value1 value2 = (output14677, value6896, value1) := by
  rw [input14677_def, output14677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10823]
  try dsimp only
  rw [child14676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10823_skip, output14676_skip]
  kernel_rfl

theorem node14678_cond_eq
    (child10814 : Flapjack.WordAlloc.removeDeadStructural input10814 value5411 value1 value2 = (output10814, value5411, value1))
    (child14677 : Flapjack.WordAlloc.removeDeadStructural input14677 value5411 value1 value2 = (output14677, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14678 value5411 value1 value2 = (output14678, value6896, value1) := by
  rw [input14678_def, output14678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10814]
  try dsimp only
  rw [child14677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10814_skip, output14677_skip]
  kernel_rfl

theorem node14679_cond_eq
    (child10813 : Flapjack.WordAlloc.removeDeadStructural input10813 value5410 value1 value2 = (output10813, value5411, value1))
    (child14678 : Flapjack.WordAlloc.removeDeadStructural input14678 value5411 value1 value2 = (output14678, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14679 value5410 value1 value2 = (output14679, value6896, value1) := by
  rw [input14679_def, output14679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10813]
  try dsimp only
  rw [child14678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10813_skip, output14678_skip]
  kernel_rfl

theorem node14680_cond_eq
    (child10812 : Flapjack.WordAlloc.removeDeadStructural input10812 value5 value1 value2 = (output10812, value5410, value1))
    (child14679 : Flapjack.WordAlloc.removeDeadStructural input14679 value5410 value1 value2 = (output14679, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14680 value5 value1 value2 = (output14680, value6896, value1) := by
  rw [input14680_def, output14680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10812]
  try dsimp only
  rw [child14679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10812_skip, output14679_skip]
  kernel_rfl

theorem node14681_cond_eq
    (child10809 : Flapjack.WordAlloc.removeDeadStructural input10809 value5404 value1 value2 = (output10809, value5, value1))
    (child14680 : Flapjack.WordAlloc.removeDeadStructural input14680 value5 value1 value2 = (output14680, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14681 value5404 value1 value2 = (output14681, value6896, value1) := by
  rw [input14681_def, output14681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10809]
  try dsimp only
  rw [child14680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10809_skip, output14680_skip]
  kernel_rfl

theorem node14682_cond_eq
    (child10800 : Flapjack.WordAlloc.removeDeadStructural input10800 value5404 value1 value2 = (output10800, value5404, value1))
    (child14681 : Flapjack.WordAlloc.removeDeadStructural input14681 value5404 value1 value2 = (output14681, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14682 value5404 value1 value2 = (output14682, value6896, value1) := by
  rw [input14682_def, output14682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10800]
  try dsimp only
  rw [child14681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10800_skip, output14681_skip]
  kernel_rfl

theorem node14683_cond_eq
    (child10799 : Flapjack.WordAlloc.removeDeadStructural input10799 value5403 value1 value2 = (output10799, value5404, value1))
    (child14682 : Flapjack.WordAlloc.removeDeadStructural input14682 value5404 value1 value2 = (output14682, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14683 value5403 value1 value2 = (output14683, value6896, value1) := by
  rw [input14683_def, output14683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10799]
  try dsimp only
  rw [child14682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10799_skip, output14682_skip]
  kernel_rfl

theorem node14684_cond_eq
    (child10798 : Flapjack.WordAlloc.removeDeadStructural input10798 value5 value1 value2 = (output10798, value5403, value1))
    (child14683 : Flapjack.WordAlloc.removeDeadStructural input14683 value5403 value1 value2 = (output14683, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14684 value5 value1 value2 = (output14684, value6896, value1) := by
  rw [input14684_def, output14684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10798]
  try dsimp only
  rw [child14683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10798_skip, output14683_skip]
  kernel_rfl

theorem node14685_cond_eq
    (child10795 : Flapjack.WordAlloc.removeDeadStructural input10795 value5397 value1 value2 = (output10795, value5, value1))
    (child14684 : Flapjack.WordAlloc.removeDeadStructural input14684 value5 value1 value2 = (output14684, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14685 value5397 value1 value2 = (output14685, value6896, value1) := by
  rw [input14685_def, output14685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10795]
  try dsimp only
  rw [child14684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10795_skip, output14684_skip]
  kernel_rfl

theorem node14686_cond_eq
    (child10786 : Flapjack.WordAlloc.removeDeadStructural input10786 value5397 value1 value2 = (output10786, value5397, value1))
    (child14685 : Flapjack.WordAlloc.removeDeadStructural input14685 value5397 value1 value2 = (output14685, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14686 value5397 value1 value2 = (output14686, value6896, value1) := by
  rw [input14686_def, output14686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10786]
  try dsimp only
  rw [child14685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10786_skip, output14685_skip]
  kernel_rfl

theorem node14687_cond_eq
    (child10785 : Flapjack.WordAlloc.removeDeadStructural input10785 value5396 value1 value2 = (output10785, value5397, value1))
    (child14686 : Flapjack.WordAlloc.removeDeadStructural input14686 value5397 value1 value2 = (output14686, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14687 value5396 value1 value2 = (output14687, value6896, value1) := by
  rw [input14687_def, output14687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10785]
  try dsimp only
  rw [child14686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10785_skip, output14686_skip]
  kernel_rfl

theorem node14688_cond_eq
    (child10784 : Flapjack.WordAlloc.removeDeadStructural input10784 value5 value1 value2 = (output10784, value5396, value1))
    (child14687 : Flapjack.WordAlloc.removeDeadStructural input14687 value5396 value1 value2 = (output14687, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14688 value5 value1 value2 = (output14688, value6896, value1) := by
  rw [input14688_def, output14688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10784]
  try dsimp only
  rw [child14687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10784_skip, output14687_skip]
  kernel_rfl

theorem node14689_cond_eq
    (child10781 : Flapjack.WordAlloc.removeDeadStructural input10781 value5390 value1 value2 = (output10781, value5, value1))
    (child14688 : Flapjack.WordAlloc.removeDeadStructural input14688 value5 value1 value2 = (output14688, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14689 value5390 value1 value2 = (output14689, value6896, value1) := by
  rw [input14689_def, output14689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10781]
  try dsimp only
  rw [child14688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10781_skip, output14688_skip]
  kernel_rfl

theorem node14690_cond_eq
    (child10772 : Flapjack.WordAlloc.removeDeadStructural input10772 value5390 value1 value2 = (output10772, value5390, value1))
    (child14689 : Flapjack.WordAlloc.removeDeadStructural input14689 value5390 value1 value2 = (output14689, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14690 value5390 value1 value2 = (output14690, value6896, value1) := by
  rw [input14690_def, output14690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10772]
  try dsimp only
  rw [child14689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10772_skip, output14689_skip]
  kernel_rfl

theorem node14691_cond_eq
    (child10771 : Flapjack.WordAlloc.removeDeadStructural input10771 value5389 value1 value2 = (output10771, value5390, value1))
    (child14690 : Flapjack.WordAlloc.removeDeadStructural input14690 value5390 value1 value2 = (output14690, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14691 value5389 value1 value2 = (output14691, value6896, value1) := by
  rw [input14691_def, output14691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10771]
  try dsimp only
  rw [child14690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10771_skip, output14690_skip]
  kernel_rfl

theorem node14692_cond_eq
    (child10770 : Flapjack.WordAlloc.removeDeadStructural input10770 value5 value1 value2 = (output10770, value5389, value1))
    (child14691 : Flapjack.WordAlloc.removeDeadStructural input14691 value5389 value1 value2 = (output14691, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14692 value5 value1 value2 = (output14692, value6896, value1) := by
  rw [input14692_def, output14692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10770]
  try dsimp only
  rw [child14691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10770_skip, output14691_skip]
  kernel_rfl

theorem node14693_cond_eq
    (child10767 : Flapjack.WordAlloc.removeDeadStructural input10767 value5383 value1 value2 = (output10767, value5, value1))
    (child14692 : Flapjack.WordAlloc.removeDeadStructural input14692 value5 value1 value2 = (output14692, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14693 value5383 value1 value2 = (output14693, value6896, value1) := by
  rw [input14693_def, output14693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10767]
  try dsimp only
  rw [child14692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10767_skip, output14692_skip]
  kernel_rfl

theorem node14694_cond_eq
    (child10758 : Flapjack.WordAlloc.removeDeadStructural input10758 value5383 value1 value2 = (output10758, value5383, value1))
    (child14693 : Flapjack.WordAlloc.removeDeadStructural input14693 value5383 value1 value2 = (output14693, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14694 value5383 value1 value2 = (output14694, value6896, value1) := by
  rw [input14694_def, output14694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10758]
  try dsimp only
  rw [child14693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10758_skip, output14693_skip]
  kernel_rfl

theorem node14695_cond_eq
    (child10757 : Flapjack.WordAlloc.removeDeadStructural input10757 value5382 value1 value2 = (output10757, value5383, value1))
    (child14694 : Flapjack.WordAlloc.removeDeadStructural input14694 value5383 value1 value2 = (output14694, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14695 value5382 value1 value2 = (output14695, value6896, value1) := by
  rw [input14695_def, output14695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10757]
  try dsimp only
  rw [child14694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10757_skip, output14694_skip]
  kernel_rfl

theorem node14696_cond_eq
    (child10756 : Flapjack.WordAlloc.removeDeadStructural input10756 value5 value1 value2 = (output10756, value5382, value1))
    (child14695 : Flapjack.WordAlloc.removeDeadStructural input14695 value5382 value1 value2 = (output14695, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14696 value5 value1 value2 = (output14696, value6896, value1) := by
  rw [input14696_def, output14696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10756]
  try dsimp only
  rw [child14695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10756_skip, output14695_skip]
  kernel_rfl

theorem node14697_cond_eq
    (child10753 : Flapjack.WordAlloc.removeDeadStructural input10753 value5376 value1 value2 = (output10753, value5, value1))
    (child14696 : Flapjack.WordAlloc.removeDeadStructural input14696 value5 value1 value2 = (output14696, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14697 value5376 value1 value2 = (output14697, value6896, value1) := by
  rw [input14697_def, output14697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10753]
  try dsimp only
  rw [child14696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10753_skip, output14696_skip]
  kernel_rfl

theorem node14698_cond_eq
    (child10744 : Flapjack.WordAlloc.removeDeadStructural input10744 value5376 value1 value2 = (output10744, value5376, value1))
    (child14697 : Flapjack.WordAlloc.removeDeadStructural input14697 value5376 value1 value2 = (output14697, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14698 value5376 value1 value2 = (output14698, value6896, value1) := by
  rw [input14698_def, output14698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10744]
  try dsimp only
  rw [child14697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10744_skip, output14697_skip]
  kernel_rfl

theorem node14699_cond_eq
    (child10743 : Flapjack.WordAlloc.removeDeadStructural input10743 value5375 value1 value2 = (output10743, value5376, value1))
    (child14698 : Flapjack.WordAlloc.removeDeadStructural input14698 value5376 value1 value2 = (output14698, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14699 value5375 value1 value2 = (output14699, value6896, value1) := by
  rw [input14699_def, output14699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10743]
  try dsimp only
  rw [child14698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10743_skip, output14698_skip]
  kernel_rfl

theorem node14700_cond_eq
    (child10742 : Flapjack.WordAlloc.removeDeadStructural input10742 value5 value1 value2 = (output10742, value5375, value1))
    (child14699 : Flapjack.WordAlloc.removeDeadStructural input14699 value5375 value1 value2 = (output14699, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14700 value5 value1 value2 = (output14700, value6896, value1) := by
  rw [input14700_def, output14700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10742]
  try dsimp only
  rw [child14699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10742_skip, output14699_skip]
  kernel_rfl

theorem node14701_cond_eq
    (child10739 : Flapjack.WordAlloc.removeDeadStructural input10739 value5369 value1 value2 = (output10739, value5, value1))
    (child14700 : Flapjack.WordAlloc.removeDeadStructural input14700 value5 value1 value2 = (output14700, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14701 value5369 value1 value2 = (output14701, value6896, value1) := by
  rw [input14701_def, output14701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10739]
  try dsimp only
  rw [child14700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10739_skip, output14700_skip]
  kernel_rfl

theorem node14702_cond_eq
    (child10730 : Flapjack.WordAlloc.removeDeadStructural input10730 value5369 value1 value2 = (output10730, value5369, value1))
    (child14701 : Flapjack.WordAlloc.removeDeadStructural input14701 value5369 value1 value2 = (output14701, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14702 value5369 value1 value2 = (output14702, value6896, value1) := by
  rw [input14702_def, output14702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10730]
  try dsimp only
  rw [child14701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10730_skip, output14701_skip]
  kernel_rfl

theorem node14703_cond_eq
    (child10729 : Flapjack.WordAlloc.removeDeadStructural input10729 value5368 value1 value2 = (output10729, value5369, value1))
    (child14702 : Flapjack.WordAlloc.removeDeadStructural input14702 value5369 value1 value2 = (output14702, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14703 value5368 value1 value2 = (output14703, value6896, value1) := by
  rw [input14703_def, output14703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10729]
  try dsimp only
  rw [child14702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10729_skip, output14702_skip]
  kernel_rfl

theorem node14704_cond_eq
    (child10728 : Flapjack.WordAlloc.removeDeadStructural input10728 value5 value1 value2 = (output10728, value5368, value1))
    (child14703 : Flapjack.WordAlloc.removeDeadStructural input14703 value5368 value1 value2 = (output14703, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14704 value5 value1 value2 = (output14704, value6896, value1) := by
  rw [input14704_def, output14704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10728]
  try dsimp only
  rw [child14703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10728_skip, output14703_skip]
  kernel_rfl

theorem node14705_cond_eq
    (child10725 : Flapjack.WordAlloc.removeDeadStructural input10725 value5362 value1 value2 = (output10725, value5, value1))
    (child14704 : Flapjack.WordAlloc.removeDeadStructural input14704 value5 value1 value2 = (output14704, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14705 value5362 value1 value2 = (output14705, value6896, value1) := by
  rw [input14705_def, output14705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10725]
  try dsimp only
  rw [child14704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10725_skip, output14704_skip]
  kernel_rfl

theorem node14706_cond_eq
    (child10716 : Flapjack.WordAlloc.removeDeadStructural input10716 value5362 value1 value2 = (output10716, value5362, value1))
    (child14705 : Flapjack.WordAlloc.removeDeadStructural input14705 value5362 value1 value2 = (output14705, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14706 value5362 value1 value2 = (output14706, value6896, value1) := by
  rw [input14706_def, output14706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10716]
  try dsimp only
  rw [child14705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10716_skip, output14705_skip]
  kernel_rfl

theorem node14707_cond_eq
    (child10715 : Flapjack.WordAlloc.removeDeadStructural input10715 value5361 value1 value2 = (output10715, value5362, value1))
    (child14706 : Flapjack.WordAlloc.removeDeadStructural input14706 value5362 value1 value2 = (output14706, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14707 value5361 value1 value2 = (output14707, value6896, value1) := by
  rw [input14707_def, output14707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10715]
  try dsimp only
  rw [child14706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10715_skip, output14706_skip]
  kernel_rfl

theorem node14708_cond_eq
    (child10714 : Flapjack.WordAlloc.removeDeadStructural input10714 value5 value1 value2 = (output10714, value5361, value1))
    (child14707 : Flapjack.WordAlloc.removeDeadStructural input14707 value5361 value1 value2 = (output14707, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14708 value5 value1 value2 = (output14708, value6896, value1) := by
  rw [input14708_def, output14708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10714]
  try dsimp only
  rw [child14707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10714_skip, output14707_skip]
  kernel_rfl

theorem node14709_cond_eq
    (child10711 : Flapjack.WordAlloc.removeDeadStructural input10711 value5355 value1 value2 = (output10711, value5, value1))
    (child14708 : Flapjack.WordAlloc.removeDeadStructural input14708 value5 value1 value2 = (output14708, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14709 value5355 value1 value2 = (output14709, value6896, value1) := by
  rw [input14709_def, output14709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10711]
  try dsimp only
  rw [child14708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10711_skip, output14708_skip]
  kernel_rfl

theorem node14710_cond_eq
    (child10702 : Flapjack.WordAlloc.removeDeadStructural input10702 value5355 value1 value2 = (output10702, value5355, value1))
    (child14709 : Flapjack.WordAlloc.removeDeadStructural input14709 value5355 value1 value2 = (output14709, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14710 value5355 value1 value2 = (output14710, value6896, value1) := by
  rw [input14710_def, output14710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10702]
  try dsimp only
  rw [child14709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10702_skip, output14709_skip]
  kernel_rfl

theorem node14711_cond_eq
    (child10701 : Flapjack.WordAlloc.removeDeadStructural input10701 value5354 value1 value2 = (output10701, value5355, value1))
    (child14710 : Flapjack.WordAlloc.removeDeadStructural input14710 value5355 value1 value2 = (output14710, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14711 value5354 value1 value2 = (output14711, value6896, value1) := by
  rw [input14711_def, output14711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10701]
  try dsimp only
  rw [child14710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10701_skip, output14710_skip]
  kernel_rfl

theorem node14712_cond_eq
    (child10700 : Flapjack.WordAlloc.removeDeadStructural input10700 value5 value1 value2 = (output10700, value5354, value1))
    (child14711 : Flapjack.WordAlloc.removeDeadStructural input14711 value5354 value1 value2 = (output14711, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14712 value5 value1 value2 = (output14712, value6896, value1) := by
  rw [input14712_def, output14712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10700]
  try dsimp only
  rw [child14711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10700_skip, output14711_skip]
  kernel_rfl

theorem node14713_cond_eq
    (child10697 : Flapjack.WordAlloc.removeDeadStructural input10697 value5348 value1 value2 = (output10697, value5, value1))
    (child14712 : Flapjack.WordAlloc.removeDeadStructural input14712 value5 value1 value2 = (output14712, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14713 value5348 value1 value2 = (output14713, value6896, value1) := by
  rw [input14713_def, output14713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10697]
  try dsimp only
  rw [child14712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10697_skip, output14712_skip]
  kernel_rfl

theorem node14714_cond_eq
    (child10688 : Flapjack.WordAlloc.removeDeadStructural input10688 value5348 value1 value2 = (output10688, value5348, value1))
    (child14713 : Flapjack.WordAlloc.removeDeadStructural input14713 value5348 value1 value2 = (output14713, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14714 value5348 value1 value2 = (output14714, value6896, value1) := by
  rw [input14714_def, output14714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10688]
  try dsimp only
  rw [child14713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10688_skip, output14713_skip]
  kernel_rfl

theorem node14715_cond_eq
    (child10687 : Flapjack.WordAlloc.removeDeadStructural input10687 value5347 value1 value2 = (output10687, value5348, value1))
    (child14714 : Flapjack.WordAlloc.removeDeadStructural input14714 value5348 value1 value2 = (output14714, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14715 value5347 value1 value2 = (output14715, value6896, value1) := by
  rw [input14715_def, output14715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10687]
  try dsimp only
  rw [child14714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10687_skip, output14714_skip]
  kernel_rfl

theorem node14716_cond_eq
    (child10686 : Flapjack.WordAlloc.removeDeadStructural input10686 value5 value1 value2 = (output10686, value5347, value1))
    (child14715 : Flapjack.WordAlloc.removeDeadStructural input14715 value5347 value1 value2 = (output14715, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14716 value5 value1 value2 = (output14716, value6896, value1) := by
  rw [input14716_def, output14716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10686]
  try dsimp only
  rw [child14715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10686_skip, output14715_skip]
  kernel_rfl

theorem node14717_cond_eq
    (child10683 : Flapjack.WordAlloc.removeDeadStructural input10683 value5341 value1 value2 = (output10683, value5, value1))
    (child14716 : Flapjack.WordAlloc.removeDeadStructural input14716 value5 value1 value2 = (output14716, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14717 value5341 value1 value2 = (output14717, value6896, value1) := by
  rw [input14717_def, output14717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10683]
  try dsimp only
  rw [child14716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10683_skip, output14716_skip]
  kernel_rfl

theorem node14718_cond_eq
    (child10674 : Flapjack.WordAlloc.removeDeadStructural input10674 value5341 value1 value2 = (output10674, value5341, value1))
    (child14717 : Flapjack.WordAlloc.removeDeadStructural input14717 value5341 value1 value2 = (output14717, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14718 value5341 value1 value2 = (output14718, value6896, value1) := by
  rw [input14718_def, output14718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10674]
  try dsimp only
  rw [child14717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10674_skip, output14717_skip]
  kernel_rfl

theorem node14719_cond_eq
    (child10673 : Flapjack.WordAlloc.removeDeadStructural input10673 value5340 value1 value2 = (output10673, value5341, value1))
    (child14718 : Flapjack.WordAlloc.removeDeadStructural input14718 value5341 value1 value2 = (output14718, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14719 value5340 value1 value2 = (output14719, value6896, value1) := by
  rw [input14719_def, output14719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10673]
  try dsimp only
  rw [child14718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10673_skip, output14718_skip]
  kernel_rfl

theorem node14720_cond_eq
    (child10672 : Flapjack.WordAlloc.removeDeadStructural input10672 value5 value1 value2 = (output10672, value5340, value1))
    (child14719 : Flapjack.WordAlloc.removeDeadStructural input14719 value5340 value1 value2 = (output14719, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14720 value5 value1 value2 = (output14720, value6896, value1) := by
  rw [input14720_def, output14720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10672]
  try dsimp only
  rw [child14719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10672_skip, output14719_skip]
  kernel_rfl

theorem node14721_cond_eq
    (child10669 : Flapjack.WordAlloc.removeDeadStructural input10669 value5334 value1 value2 = (output10669, value5, value1))
    (child14720 : Flapjack.WordAlloc.removeDeadStructural input14720 value5 value1 value2 = (output14720, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14721 value5334 value1 value2 = (output14721, value6896, value1) := by
  rw [input14721_def, output14721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10669]
  try dsimp only
  rw [child14720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10669_skip, output14720_skip]
  kernel_rfl

theorem node14722_cond_eq
    (child10660 : Flapjack.WordAlloc.removeDeadStructural input10660 value5334 value1 value2 = (output10660, value5334, value1))
    (child14721 : Flapjack.WordAlloc.removeDeadStructural input14721 value5334 value1 value2 = (output14721, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14722 value5334 value1 value2 = (output14722, value6896, value1) := by
  rw [input14722_def, output14722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10660]
  try dsimp only
  rw [child14721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10660_skip, output14721_skip]
  kernel_rfl

theorem node14723_cond_eq
    (child10659 : Flapjack.WordAlloc.removeDeadStructural input10659 value5333 value1 value2 = (output10659, value5334, value1))
    (child14722 : Flapjack.WordAlloc.removeDeadStructural input14722 value5334 value1 value2 = (output14722, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14723 value5333 value1 value2 = (output14723, value6896, value1) := by
  rw [input14723_def, output14723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10659]
  try dsimp only
  rw [child14722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10659_skip, output14722_skip]
  kernel_rfl

theorem node14724_cond_eq
    (child10658 : Flapjack.WordAlloc.removeDeadStructural input10658 value5 value1 value2 = (output10658, value5333, value1))
    (child14723 : Flapjack.WordAlloc.removeDeadStructural input14723 value5333 value1 value2 = (output14723, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14724 value5 value1 value2 = (output14724, value6896, value1) := by
  rw [input14724_def, output14724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10658]
  try dsimp only
  rw [child14723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10658_skip, output14723_skip]
  kernel_rfl

theorem node14725_cond_eq
    (child10655 : Flapjack.WordAlloc.removeDeadStructural input10655 value5327 value1 value2 = (output10655, value5, value1))
    (child14724 : Flapjack.WordAlloc.removeDeadStructural input14724 value5 value1 value2 = (output14724, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14725 value5327 value1 value2 = (output14725, value6896, value1) := by
  rw [input14725_def, output14725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10655]
  try dsimp only
  rw [child14724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10655_skip, output14724_skip]
  kernel_rfl

theorem node14726_cond_eq
    (child10646 : Flapjack.WordAlloc.removeDeadStructural input10646 value5327 value1 value2 = (output10646, value5327, value1))
    (child14725 : Flapjack.WordAlloc.removeDeadStructural input14725 value5327 value1 value2 = (output14725, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14726 value5327 value1 value2 = (output14726, value6896, value1) := by
  rw [input14726_def, output14726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10646]
  try dsimp only
  rw [child14725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10646_skip, output14725_skip]
  kernel_rfl

theorem node14727_cond_eq
    (child10645 : Flapjack.WordAlloc.removeDeadStructural input10645 value5326 value1 value2 = (output10645, value5327, value1))
    (child14726 : Flapjack.WordAlloc.removeDeadStructural input14726 value5327 value1 value2 = (output14726, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14727 value5326 value1 value2 = (output14727, value6896, value1) := by
  rw [input14727_def, output14727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10645]
  try dsimp only
  rw [child14726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10645_skip, output14726_skip]
  kernel_rfl

theorem node14728_cond_eq
    (child10644 : Flapjack.WordAlloc.removeDeadStructural input10644 value5 value1 value2 = (output10644, value5326, value1))
    (child14727 : Flapjack.WordAlloc.removeDeadStructural input14727 value5326 value1 value2 = (output14727, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14728 value5 value1 value2 = (output14728, value6896, value1) := by
  rw [input14728_def, output14728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10644]
  try dsimp only
  rw [child14727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10644_skip, output14727_skip]
  kernel_rfl

theorem node14729_cond_eq
    (child10641 : Flapjack.WordAlloc.removeDeadStructural input10641 value5320 value1 value2 = (output10641, value5, value1))
    (child14728 : Flapjack.WordAlloc.removeDeadStructural input14728 value5 value1 value2 = (output14728, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14729 value5320 value1 value2 = (output14729, value6896, value1) := by
  rw [input14729_def, output14729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10641]
  try dsimp only
  rw [child14728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10641_skip, output14728_skip]
  kernel_rfl

theorem node14730_cond_eq
    (child10632 : Flapjack.WordAlloc.removeDeadStructural input10632 value5320 value1 value2 = (output10632, value5320, value1))
    (child14729 : Flapjack.WordAlloc.removeDeadStructural input14729 value5320 value1 value2 = (output14729, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14730 value5320 value1 value2 = (output14730, value6896, value1) := by
  rw [input14730_def, output14730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10632]
  try dsimp only
  rw [child14729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10632_skip, output14729_skip]
  kernel_rfl

theorem node14731_cond_eq
    (child10631 : Flapjack.WordAlloc.removeDeadStructural input10631 value5319 value1 value2 = (output10631, value5320, value1))
    (child14730 : Flapjack.WordAlloc.removeDeadStructural input14730 value5320 value1 value2 = (output14730, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14731 value5319 value1 value2 = (output14731, value6896, value1) := by
  rw [input14731_def, output14731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10631]
  try dsimp only
  rw [child14730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10631_skip, output14730_skip]
  kernel_rfl

theorem node14732_cond_eq
    (child10630 : Flapjack.WordAlloc.removeDeadStructural input10630 value5 value1 value2 = (output10630, value5319, value1))
    (child14731 : Flapjack.WordAlloc.removeDeadStructural input14731 value5319 value1 value2 = (output14731, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14732 value5 value1 value2 = (output14732, value6896, value1) := by
  rw [input14732_def, output14732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10630]
  try dsimp only
  rw [child14731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10630_skip, output14731_skip]
  kernel_rfl

theorem node14733_cond_eq
    (child10627 : Flapjack.WordAlloc.removeDeadStructural input10627 value5313 value1 value2 = (output10627, value5, value1))
    (child14732 : Flapjack.WordAlloc.removeDeadStructural input14732 value5 value1 value2 = (output14732, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14733 value5313 value1 value2 = (output14733, value6896, value1) := by
  rw [input14733_def, output14733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10627]
  try dsimp only
  rw [child14732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10627_skip, output14732_skip]
  kernel_rfl

theorem node14734_cond_eq
    (child10618 : Flapjack.WordAlloc.removeDeadStructural input10618 value5313 value1 value2 = (output10618, value5313, value1))
    (child14733 : Flapjack.WordAlloc.removeDeadStructural input14733 value5313 value1 value2 = (output14733, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14734 value5313 value1 value2 = (output14734, value6896, value1) := by
  rw [input14734_def, output14734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10618]
  try dsimp only
  rw [child14733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10618_skip, output14733_skip]
  kernel_rfl

theorem node14735_cond_eq
    (child10617 : Flapjack.WordAlloc.removeDeadStructural input10617 value5312 value1 value2 = (output10617, value5313, value1))
    (child14734 : Flapjack.WordAlloc.removeDeadStructural input14734 value5313 value1 value2 = (output14734, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14735 value5312 value1 value2 = (output14735, value6896, value1) := by
  rw [input14735_def, output14735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10617]
  try dsimp only
  rw [child14734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10617_skip, output14734_skip]
  kernel_rfl

theorem node14736_cond_eq
    (child10616 : Flapjack.WordAlloc.removeDeadStructural input10616 value5 value1 value2 = (output10616, value5312, value1))
    (child14735 : Flapjack.WordAlloc.removeDeadStructural input14735 value5312 value1 value2 = (output14735, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14736 value5 value1 value2 = (output14736, value6896, value1) := by
  rw [input14736_def, output14736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10616]
  try dsimp only
  rw [child14735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10616_skip, output14735_skip]
  kernel_rfl

theorem node14737_cond_eq
    (child10613 : Flapjack.WordAlloc.removeDeadStructural input10613 value5306 value1 value2 = (output10613, value5, value1))
    (child14736 : Flapjack.WordAlloc.removeDeadStructural input14736 value5 value1 value2 = (output14736, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14737 value5306 value1 value2 = (output14737, value6896, value1) := by
  rw [input14737_def, output14737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10613]
  try dsimp only
  rw [child14736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10613_skip, output14736_skip]
  kernel_rfl

theorem node14738_cond_eq
    (child10604 : Flapjack.WordAlloc.removeDeadStructural input10604 value5306 value1 value2 = (output10604, value5306, value1))
    (child14737 : Flapjack.WordAlloc.removeDeadStructural input14737 value5306 value1 value2 = (output14737, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14738 value5306 value1 value2 = (output14738, value6896, value1) := by
  rw [input14738_def, output14738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10604]
  try dsimp only
  rw [child14737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10604_skip, output14737_skip]
  kernel_rfl

theorem node14739_cond_eq
    (child10603 : Flapjack.WordAlloc.removeDeadStructural input10603 value5305 value1 value2 = (output10603, value5306, value1))
    (child14738 : Flapjack.WordAlloc.removeDeadStructural input14738 value5306 value1 value2 = (output14738, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14739 value5305 value1 value2 = (output14739, value6896, value1) := by
  rw [input14739_def, output14739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10603]
  try dsimp only
  rw [child14738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10603_skip, output14738_skip]
  kernel_rfl

theorem node14740_cond_eq
    (child10602 : Flapjack.WordAlloc.removeDeadStructural input10602 value5 value1 value2 = (output10602, value5305, value1))
    (child14739 : Flapjack.WordAlloc.removeDeadStructural input14739 value5305 value1 value2 = (output14739, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14740 value5 value1 value2 = (output14740, value6896, value1) := by
  rw [input14740_def, output14740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10602]
  try dsimp only
  rw [child14739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10602_skip, output14739_skip]
  kernel_rfl

theorem node14741_cond_eq
    (child10599 : Flapjack.WordAlloc.removeDeadStructural input10599 value5299 value1 value2 = (output10599, value5, value1))
    (child14740 : Flapjack.WordAlloc.removeDeadStructural input14740 value5 value1 value2 = (output14740, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14741 value5299 value1 value2 = (output14741, value6896, value1) := by
  rw [input14741_def, output14741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10599]
  try dsimp only
  rw [child14740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10599_skip, output14740_skip]
  kernel_rfl

theorem node14742_cond_eq
    (child10590 : Flapjack.WordAlloc.removeDeadStructural input10590 value5299 value1 value2 = (output10590, value5299, value1))
    (child14741 : Flapjack.WordAlloc.removeDeadStructural input14741 value5299 value1 value2 = (output14741, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14742 value5299 value1 value2 = (output14742, value6896, value1) := by
  rw [input14742_def, output14742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10590]
  try dsimp only
  rw [child14741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10590_skip, output14741_skip]
  kernel_rfl

theorem node14743_cond_eq
    (child10589 : Flapjack.WordAlloc.removeDeadStructural input10589 value5298 value1 value2 = (output10589, value5299, value1))
    (child14742 : Flapjack.WordAlloc.removeDeadStructural input14742 value5299 value1 value2 = (output14742, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14743 value5298 value1 value2 = (output14743, value6896, value1) := by
  rw [input14743_def, output14743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10589]
  try dsimp only
  rw [child14742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10589_skip, output14742_skip]
  kernel_rfl

theorem node14744_cond_eq
    (child10588 : Flapjack.WordAlloc.removeDeadStructural input10588 value5 value1 value2 = (output10588, value5298, value1))
    (child14743 : Flapjack.WordAlloc.removeDeadStructural input14743 value5298 value1 value2 = (output14743, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14744 value5 value1 value2 = (output14744, value6896, value1) := by
  rw [input14744_def, output14744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10588]
  try dsimp only
  rw [child14743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10588_skip, output14743_skip]
  kernel_rfl

theorem node14745_cond_eq
    (child10585 : Flapjack.WordAlloc.removeDeadStructural input10585 value5292 value1 value2 = (output10585, value5, value1))
    (child14744 : Flapjack.WordAlloc.removeDeadStructural input14744 value5 value1 value2 = (output14744, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14745 value5292 value1 value2 = (output14745, value6896, value1) := by
  rw [input14745_def, output14745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10585]
  try dsimp only
  rw [child14744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10585_skip, output14744_skip]
  kernel_rfl

theorem node14746_cond_eq
    (child10576 : Flapjack.WordAlloc.removeDeadStructural input10576 value5292 value1 value2 = (output10576, value5292, value1))
    (child14745 : Flapjack.WordAlloc.removeDeadStructural input14745 value5292 value1 value2 = (output14745, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14746 value5292 value1 value2 = (output14746, value6896, value1) := by
  rw [input14746_def, output14746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10576]
  try dsimp only
  rw [child14745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10576_skip, output14745_skip]
  kernel_rfl

theorem node14747_cond_eq
    (child10575 : Flapjack.WordAlloc.removeDeadStructural input10575 value5291 value1 value2 = (output10575, value5292, value1))
    (child14746 : Flapjack.WordAlloc.removeDeadStructural input14746 value5292 value1 value2 = (output14746, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14747 value5291 value1 value2 = (output14747, value6896, value1) := by
  rw [input14747_def, output14747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10575]
  try dsimp only
  rw [child14746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10575_skip, output14746_skip]
  kernel_rfl

theorem node14748_cond_eq
    (child10574 : Flapjack.WordAlloc.removeDeadStructural input10574 value5 value1 value2 = (output10574, value5291, value1))
    (child14747 : Flapjack.WordAlloc.removeDeadStructural input14747 value5291 value1 value2 = (output14747, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14748 value5 value1 value2 = (output14748, value6896, value1) := by
  rw [input14748_def, output14748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10574]
  try dsimp only
  rw [child14747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10574_skip, output14747_skip]
  kernel_rfl

theorem node14749_cond_eq
    (child10571 : Flapjack.WordAlloc.removeDeadStructural input10571 value5285 value1 value2 = (output10571, value5, value1))
    (child14748 : Flapjack.WordAlloc.removeDeadStructural input14748 value5 value1 value2 = (output14748, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14749 value5285 value1 value2 = (output14749, value6896, value1) := by
  rw [input14749_def, output14749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10571]
  try dsimp only
  rw [child14748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10571_skip, output14748_skip]
  kernel_rfl

theorem node14750_cond_eq
    (child10562 : Flapjack.WordAlloc.removeDeadStructural input10562 value5285 value1 value2 = (output10562, value5285, value1))
    (child14749 : Flapjack.WordAlloc.removeDeadStructural input14749 value5285 value1 value2 = (output14749, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14750 value5285 value1 value2 = (output14750, value6896, value1) := by
  rw [input14750_def, output14750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10562]
  try dsimp only
  rw [child14749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10562_skip, output14749_skip]
  kernel_rfl

theorem node14751_cond_eq
    (child10561 : Flapjack.WordAlloc.removeDeadStructural input10561 value5284 value1 value2 = (output10561, value5285, value1))
    (child14750 : Flapjack.WordAlloc.removeDeadStructural input14750 value5285 value1 value2 = (output14750, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14751 value5284 value1 value2 = (output14751, value6896, value1) := by
  rw [input14751_def, output14751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10561]
  try dsimp only
  rw [child14750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10561_skip, output14750_skip]
  kernel_rfl

theorem node14752_cond_eq
    (child10560 : Flapjack.WordAlloc.removeDeadStructural input10560 value5 value1 value2 = (output10560, value5284, value1))
    (child14751 : Flapjack.WordAlloc.removeDeadStructural input14751 value5284 value1 value2 = (output14751, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14752 value5 value1 value2 = (output14752, value6896, value1) := by
  rw [input14752_def, output14752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10560]
  try dsimp only
  rw [child14751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10560_skip, output14751_skip]
  kernel_rfl

theorem node14753_cond_eq
    (child10557 : Flapjack.WordAlloc.removeDeadStructural input10557 value5278 value1 value2 = (output10557, value5, value1))
    (child14752 : Flapjack.WordAlloc.removeDeadStructural input14752 value5 value1 value2 = (output14752, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14753 value5278 value1 value2 = (output14753, value6896, value1) := by
  rw [input14753_def, output14753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10557]
  try dsimp only
  rw [child14752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10557_skip, output14752_skip]
  kernel_rfl

theorem node14754_cond_eq
    (child10548 : Flapjack.WordAlloc.removeDeadStructural input10548 value5278 value1 value2 = (output10548, value5278, value1))
    (child14753 : Flapjack.WordAlloc.removeDeadStructural input14753 value5278 value1 value2 = (output14753, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14754 value5278 value1 value2 = (output14754, value6896, value1) := by
  rw [input14754_def, output14754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10548]
  try dsimp only
  rw [child14753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10548_skip, output14753_skip]
  kernel_rfl

theorem node14755_cond_eq
    (child10547 : Flapjack.WordAlloc.removeDeadStructural input10547 value5277 value1 value2 = (output10547, value5278, value1))
    (child14754 : Flapjack.WordAlloc.removeDeadStructural input14754 value5278 value1 value2 = (output14754, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14755 value5277 value1 value2 = (output14755, value6896, value1) := by
  rw [input14755_def, output14755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10547]
  try dsimp only
  rw [child14754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10547_skip, output14754_skip]
  kernel_rfl

theorem node14756_cond_eq
    (child10546 : Flapjack.WordAlloc.removeDeadStructural input10546 value5 value1 value2 = (output10546, value5277, value1))
    (child14755 : Flapjack.WordAlloc.removeDeadStructural input14755 value5277 value1 value2 = (output14755, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14756 value5 value1 value2 = (output14756, value6896, value1) := by
  rw [input14756_def, output14756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10546]
  try dsimp only
  rw [child14755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10546_skip, output14755_skip]
  kernel_rfl

theorem node14757_cond_eq
    (child10543 : Flapjack.WordAlloc.removeDeadStructural input10543 value5271 value1 value2 = (output10543, value5, value1))
    (child14756 : Flapjack.WordAlloc.removeDeadStructural input14756 value5 value1 value2 = (output14756, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14757 value5271 value1 value2 = (output14757, value6896, value1) := by
  rw [input14757_def, output14757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10543]
  try dsimp only
  rw [child14756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10543_skip, output14756_skip]
  kernel_rfl

theorem node14758_cond_eq
    (child10534 : Flapjack.WordAlloc.removeDeadStructural input10534 value5271 value1 value2 = (output10534, value5271, value1))
    (child14757 : Flapjack.WordAlloc.removeDeadStructural input14757 value5271 value1 value2 = (output14757, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14758 value5271 value1 value2 = (output14758, value6896, value1) := by
  rw [input14758_def, output14758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10534]
  try dsimp only
  rw [child14757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10534_skip, output14757_skip]
  kernel_rfl

theorem node14759_cond_eq
    (child10533 : Flapjack.WordAlloc.removeDeadStructural input10533 value5270 value1 value2 = (output10533, value5271, value1))
    (child14758 : Flapjack.WordAlloc.removeDeadStructural input14758 value5271 value1 value2 = (output14758, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14759 value5270 value1 value2 = (output14759, value6896, value1) := by
  rw [input14759_def, output14759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10533]
  try dsimp only
  rw [child14758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10533_skip, output14758_skip]
  kernel_rfl

theorem node14760_cond_eq
    (child10532 : Flapjack.WordAlloc.removeDeadStructural input10532 value5 value1 value2 = (output10532, value5270, value1))
    (child14759 : Flapjack.WordAlloc.removeDeadStructural input14759 value5270 value1 value2 = (output14759, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14760 value5 value1 value2 = (output14760, value6896, value1) := by
  rw [input14760_def, output14760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10532]
  try dsimp only
  rw [child14759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10532_skip, output14759_skip]
  kernel_rfl

theorem node14761_cond_eq
    (child10529 : Flapjack.WordAlloc.removeDeadStructural input10529 value5264 value1 value2 = (output10529, value5, value1))
    (child14760 : Flapjack.WordAlloc.removeDeadStructural input14760 value5 value1 value2 = (output14760, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14761 value5264 value1 value2 = (output14761, value6896, value1) := by
  rw [input14761_def, output14761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10529]
  try dsimp only
  rw [child14760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10529_skip, output14760_skip]
  kernel_rfl

theorem node14762_cond_eq
    (child10520 : Flapjack.WordAlloc.removeDeadStructural input10520 value5264 value1 value2 = (output10520, value5264, value1))
    (child14761 : Flapjack.WordAlloc.removeDeadStructural input14761 value5264 value1 value2 = (output14761, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14762 value5264 value1 value2 = (output14762, value6896, value1) := by
  rw [input14762_def, output14762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10520]
  try dsimp only
  rw [child14761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10520_skip, output14761_skip]
  kernel_rfl

theorem node14763_cond_eq
    (child10519 : Flapjack.WordAlloc.removeDeadStructural input10519 value5263 value1 value2 = (output10519, value5264, value1))
    (child14762 : Flapjack.WordAlloc.removeDeadStructural input14762 value5264 value1 value2 = (output14762, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14763 value5263 value1 value2 = (output14763, value6896, value1) := by
  rw [input14763_def, output14763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10519]
  try dsimp only
  rw [child14762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10519_skip, output14762_skip]
  kernel_rfl

theorem node14764_cond_eq
    (child10518 : Flapjack.WordAlloc.removeDeadStructural input10518 value5 value1 value2 = (output10518, value5263, value1))
    (child14763 : Flapjack.WordAlloc.removeDeadStructural input14763 value5263 value1 value2 = (output14763, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14764 value5 value1 value2 = (output14764, value6896, value1) := by
  rw [input14764_def, output14764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10518]
  try dsimp only
  rw [child14763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10518_skip, output14763_skip]
  kernel_rfl

theorem node14765_cond_eq
    (child10515 : Flapjack.WordAlloc.removeDeadStructural input10515 value5257 value1 value2 = (output10515, value5, value1))
    (child14764 : Flapjack.WordAlloc.removeDeadStructural input14764 value5 value1 value2 = (output14764, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14765 value5257 value1 value2 = (output14765, value6896, value1) := by
  rw [input14765_def, output14765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10515]
  try dsimp only
  rw [child14764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10515_skip, output14764_skip]
  kernel_rfl

theorem node14766_cond_eq
    (child10506 : Flapjack.WordAlloc.removeDeadStructural input10506 value5257 value1 value2 = (output10506, value5257, value1))
    (child14765 : Flapjack.WordAlloc.removeDeadStructural input14765 value5257 value1 value2 = (output14765, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14766 value5257 value1 value2 = (output14766, value6896, value1) := by
  rw [input14766_def, output14766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10506]
  try dsimp only
  rw [child14765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10506_skip, output14765_skip]
  kernel_rfl

theorem node14767_cond_eq
    (child10505 : Flapjack.WordAlloc.removeDeadStructural input10505 value5256 value1 value2 = (output10505, value5257, value1))
    (child14766 : Flapjack.WordAlloc.removeDeadStructural input14766 value5257 value1 value2 = (output14766, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14767 value5256 value1 value2 = (output14767, value6896, value1) := by
  rw [input14767_def, output14767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10505]
  try dsimp only
  rw [child14766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10505_skip, output14766_skip]
  kernel_rfl

theorem node14768_cond_eq
    (child10504 : Flapjack.WordAlloc.removeDeadStructural input10504 value5 value1 value2 = (output10504, value5256, value1))
    (child14767 : Flapjack.WordAlloc.removeDeadStructural input14767 value5256 value1 value2 = (output14767, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14768 value5 value1 value2 = (output14768, value6896, value1) := by
  rw [input14768_def, output14768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10504]
  try dsimp only
  rw [child14767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10504_skip, output14767_skip]
  kernel_rfl

theorem node14769_cond_eq
    (child10501 : Flapjack.WordAlloc.removeDeadStructural input10501 value5250 value1 value2 = (output10501, value5, value1))
    (child14768 : Flapjack.WordAlloc.removeDeadStructural input14768 value5 value1 value2 = (output14768, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14769 value5250 value1 value2 = (output14769, value6896, value1) := by
  rw [input14769_def, output14769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10501]
  try dsimp only
  rw [child14768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10501_skip, output14768_skip]
  kernel_rfl

theorem node14770_cond_eq
    (child10492 : Flapjack.WordAlloc.removeDeadStructural input10492 value5250 value1 value2 = (output10492, value5250, value1))
    (child14769 : Flapjack.WordAlloc.removeDeadStructural input14769 value5250 value1 value2 = (output14769, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14770 value5250 value1 value2 = (output14770, value6896, value1) := by
  rw [input14770_def, output14770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10492]
  try dsimp only
  rw [child14769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10492_skip, output14769_skip]
  kernel_rfl

theorem node14771_cond_eq
    (child10491 : Flapjack.WordAlloc.removeDeadStructural input10491 value5249 value1 value2 = (output10491, value5250, value1))
    (child14770 : Flapjack.WordAlloc.removeDeadStructural input14770 value5250 value1 value2 = (output14770, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14771 value5249 value1 value2 = (output14771, value6896, value1) := by
  rw [input14771_def, output14771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10491]
  try dsimp only
  rw [child14770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10491_skip, output14770_skip]
  kernel_rfl

theorem node14772_cond_eq
    (child10490 : Flapjack.WordAlloc.removeDeadStructural input10490 value5 value1 value2 = (output10490, value5249, value1))
    (child14771 : Flapjack.WordAlloc.removeDeadStructural input14771 value5249 value1 value2 = (output14771, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14772 value5 value1 value2 = (output14772, value6896, value1) := by
  rw [input14772_def, output14772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10490]
  try dsimp only
  rw [child14771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10490_skip, output14771_skip]
  kernel_rfl

theorem node14773_cond_eq
    (child10487 : Flapjack.WordAlloc.removeDeadStructural input10487 value5243 value1 value2 = (output10487, value5, value1))
    (child14772 : Flapjack.WordAlloc.removeDeadStructural input14772 value5 value1 value2 = (output14772, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14773 value5243 value1 value2 = (output14773, value6896, value1) := by
  rw [input14773_def, output14773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10487]
  try dsimp only
  rw [child14772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10487_skip, output14772_skip]
  kernel_rfl

theorem node14774_cond_eq
    (child10478 : Flapjack.WordAlloc.removeDeadStructural input10478 value5243 value1 value2 = (output10478, value5243, value1))
    (child14773 : Flapjack.WordAlloc.removeDeadStructural input14773 value5243 value1 value2 = (output14773, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14774 value5243 value1 value2 = (output14774, value6896, value1) := by
  rw [input14774_def, output14774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10478]
  try dsimp only
  rw [child14773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10478_skip, output14773_skip]
  kernel_rfl

theorem node14775_cond_eq
    (child10477 : Flapjack.WordAlloc.removeDeadStructural input10477 value5242 value1 value2 = (output10477, value5243, value1))
    (child14774 : Flapjack.WordAlloc.removeDeadStructural input14774 value5243 value1 value2 = (output14774, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14775 value5242 value1 value2 = (output14775, value6896, value1) := by
  rw [input14775_def, output14775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10477]
  try dsimp only
  rw [child14774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10477_skip, output14774_skip]
  kernel_rfl

theorem node14776_cond_eq
    (child10476 : Flapjack.WordAlloc.removeDeadStructural input10476 value5 value1 value2 = (output10476, value5242, value1))
    (child14775 : Flapjack.WordAlloc.removeDeadStructural input14775 value5242 value1 value2 = (output14775, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14776 value5 value1 value2 = (output14776, value6896, value1) := by
  rw [input14776_def, output14776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10476]
  try dsimp only
  rw [child14775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10476_skip, output14775_skip]
  kernel_rfl

theorem node14777_cond_eq
    (child10473 : Flapjack.WordAlloc.removeDeadStructural input10473 value5236 value1 value2 = (output10473, value5, value1))
    (child14776 : Flapjack.WordAlloc.removeDeadStructural input14776 value5 value1 value2 = (output14776, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14777 value5236 value1 value2 = (output14777, value6896, value1) := by
  rw [input14777_def, output14777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10473]
  try dsimp only
  rw [child14776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10473_skip, output14776_skip]
  kernel_rfl

theorem node14778_cond_eq
    (child10464 : Flapjack.WordAlloc.removeDeadStructural input10464 value5236 value1 value2 = (output10464, value5236, value1))
    (child14777 : Flapjack.WordAlloc.removeDeadStructural input14777 value5236 value1 value2 = (output14777, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14778 value5236 value1 value2 = (output14778, value6896, value1) := by
  rw [input14778_def, output14778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10464]
  try dsimp only
  rw [child14777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10464_skip, output14777_skip]
  kernel_rfl

theorem node14779_cond_eq
    (child10463 : Flapjack.WordAlloc.removeDeadStructural input10463 value5235 value1 value2 = (output10463, value5236, value1))
    (child14778 : Flapjack.WordAlloc.removeDeadStructural input14778 value5236 value1 value2 = (output14778, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14779 value5235 value1 value2 = (output14779, value6896, value1) := by
  rw [input14779_def, output14779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10463]
  try dsimp only
  rw [child14778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10463_skip, output14778_skip]
  kernel_rfl

theorem node14780_cond_eq
    (child10462 : Flapjack.WordAlloc.removeDeadStructural input10462 value5 value1 value2 = (output10462, value5235, value1))
    (child14779 : Flapjack.WordAlloc.removeDeadStructural input14779 value5235 value1 value2 = (output14779, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14780 value5 value1 value2 = (output14780, value6896, value1) := by
  rw [input14780_def, output14780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10462]
  try dsimp only
  rw [child14779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10462_skip, output14779_skip]
  kernel_rfl

theorem node14781_cond_eq
    (child10459 : Flapjack.WordAlloc.removeDeadStructural input10459 value5229 value1 value2 = (output10459, value5, value1))
    (child14780 : Flapjack.WordAlloc.removeDeadStructural input14780 value5 value1 value2 = (output14780, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14781 value5229 value1 value2 = (output14781, value6896, value1) := by
  rw [input14781_def, output14781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10459]
  try dsimp only
  rw [child14780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10459_skip, output14780_skip]
  kernel_rfl

theorem node14782_cond_eq
    (child10450 : Flapjack.WordAlloc.removeDeadStructural input10450 value5229 value1 value2 = (output10450, value5229, value1))
    (child14781 : Flapjack.WordAlloc.removeDeadStructural input14781 value5229 value1 value2 = (output14781, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14782 value5229 value1 value2 = (output14782, value6896, value1) := by
  rw [input14782_def, output14782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10450]
  try dsimp only
  rw [child14781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10450_skip, output14781_skip]
  kernel_rfl

theorem node14783_cond_eq
    (child10449 : Flapjack.WordAlloc.removeDeadStructural input10449 value5228 value1 value2 = (output10449, value5229, value1))
    (child14782 : Flapjack.WordAlloc.removeDeadStructural input14782 value5229 value1 value2 = (output14782, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14783 value5228 value1 value2 = (output14783, value6896, value1) := by
  rw [input14783_def, output14783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10449]
  try dsimp only
  rw [child14782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10449_skip, output14782_skip]
  kernel_rfl

theorem node14784_cond_eq
    (child10448 : Flapjack.WordAlloc.removeDeadStructural input10448 value5 value1 value2 = (output10448, value5228, value1))
    (child14783 : Flapjack.WordAlloc.removeDeadStructural input14783 value5228 value1 value2 = (output14783, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14784 value5 value1 value2 = (output14784, value6896, value1) := by
  rw [input14784_def, output14784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10448]
  try dsimp only
  rw [child14783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10448_skip, output14783_skip]
  kernel_rfl

theorem node14785_cond_eq
    (child10445 : Flapjack.WordAlloc.removeDeadStructural input10445 value5222 value1 value2 = (output10445, value5, value1))
    (child14784 : Flapjack.WordAlloc.removeDeadStructural input14784 value5 value1 value2 = (output14784, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14785 value5222 value1 value2 = (output14785, value6896, value1) := by
  rw [input14785_def, output14785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10445]
  try dsimp only
  rw [child14784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10445_skip, output14784_skip]
  kernel_rfl

theorem node14786_cond_eq
    (child10436 : Flapjack.WordAlloc.removeDeadStructural input10436 value5222 value1 value2 = (output10436, value5222, value1))
    (child14785 : Flapjack.WordAlloc.removeDeadStructural input14785 value5222 value1 value2 = (output14785, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14786 value5222 value1 value2 = (output14786, value6896, value1) := by
  rw [input14786_def, output14786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10436]
  try dsimp only
  rw [child14785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10436_skip, output14785_skip]
  kernel_rfl

theorem node14787_cond_eq
    (child10435 : Flapjack.WordAlloc.removeDeadStructural input10435 value5221 value1 value2 = (output10435, value5222, value1))
    (child14786 : Flapjack.WordAlloc.removeDeadStructural input14786 value5222 value1 value2 = (output14786, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14787 value5221 value1 value2 = (output14787, value6896, value1) := by
  rw [input14787_def, output14787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10435]
  try dsimp only
  rw [child14786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10435_skip, output14786_skip]
  kernel_rfl

theorem node14788_cond_eq
    (child10434 : Flapjack.WordAlloc.removeDeadStructural input10434 value5 value1 value2 = (output10434, value5221, value1))
    (child14787 : Flapjack.WordAlloc.removeDeadStructural input14787 value5221 value1 value2 = (output14787, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14788 value5 value1 value2 = (output14788, value6896, value1) := by
  rw [input14788_def, output14788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10434]
  try dsimp only
  rw [child14787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10434_skip, output14787_skip]
  kernel_rfl

theorem node14789_cond_eq
    (child10431 : Flapjack.WordAlloc.removeDeadStructural input10431 value5215 value1 value2 = (output10431, value5, value1))
    (child14788 : Flapjack.WordAlloc.removeDeadStructural input14788 value5 value1 value2 = (output14788, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14789 value5215 value1 value2 = (output14789, value6896, value1) := by
  rw [input14789_def, output14789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10431]
  try dsimp only
  rw [child14788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10431_skip, output14788_skip]
  kernel_rfl

theorem node14790_cond_eq
    (child10422 : Flapjack.WordAlloc.removeDeadStructural input10422 value5215 value1 value2 = (output10422, value5215, value1))
    (child14789 : Flapjack.WordAlloc.removeDeadStructural input14789 value5215 value1 value2 = (output14789, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14790 value5215 value1 value2 = (output14790, value6896, value1) := by
  rw [input14790_def, output14790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10422]
  try dsimp only
  rw [child14789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10422_skip, output14789_skip]
  kernel_rfl

theorem node14791_cond_eq
    (child10421 : Flapjack.WordAlloc.removeDeadStructural input10421 value5214 value1 value2 = (output10421, value5215, value1))
    (child14790 : Flapjack.WordAlloc.removeDeadStructural input14790 value5215 value1 value2 = (output14790, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14791 value5214 value1 value2 = (output14791, value6896, value1) := by
  rw [input14791_def, output14791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10421]
  try dsimp only
  rw [child14790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10421_skip, output14790_skip]
  kernel_rfl

theorem node14792_cond_eq
    (child10420 : Flapjack.WordAlloc.removeDeadStructural input10420 value5 value1 value2 = (output10420, value5214, value1))
    (child14791 : Flapjack.WordAlloc.removeDeadStructural input14791 value5214 value1 value2 = (output14791, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14792 value5 value1 value2 = (output14792, value6896, value1) := by
  rw [input14792_def, output14792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10420]
  try dsimp only
  rw [child14791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10420_skip, output14791_skip]
  kernel_rfl

theorem node14793_cond_eq
    (child10417 : Flapjack.WordAlloc.removeDeadStructural input10417 value5208 value1 value2 = (output10417, value5, value1))
    (child14792 : Flapjack.WordAlloc.removeDeadStructural input14792 value5 value1 value2 = (output14792, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14793 value5208 value1 value2 = (output14793, value6896, value1) := by
  rw [input14793_def, output14793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10417]
  try dsimp only
  rw [child14792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10417_skip, output14792_skip]
  kernel_rfl

theorem node14794_cond_eq
    (child10408 : Flapjack.WordAlloc.removeDeadStructural input10408 value5208 value1 value2 = (output10408, value5208, value1))
    (child14793 : Flapjack.WordAlloc.removeDeadStructural input14793 value5208 value1 value2 = (output14793, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14794 value5208 value1 value2 = (output14794, value6896, value1) := by
  rw [input14794_def, output14794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10408]
  try dsimp only
  rw [child14793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10408_skip, output14793_skip]
  kernel_rfl

theorem node14795_cond_eq
    (child10407 : Flapjack.WordAlloc.removeDeadStructural input10407 value5207 value1 value2 = (output10407, value5208, value1))
    (child14794 : Flapjack.WordAlloc.removeDeadStructural input14794 value5208 value1 value2 = (output14794, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14795 value5207 value1 value2 = (output14795, value6896, value1) := by
  rw [input14795_def, output14795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10407]
  try dsimp only
  rw [child14794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10407_skip, output14794_skip]
  kernel_rfl

theorem node14796_cond_eq
    (child10406 : Flapjack.WordAlloc.removeDeadStructural input10406 value5 value1 value2 = (output10406, value5207, value1))
    (child14795 : Flapjack.WordAlloc.removeDeadStructural input14795 value5207 value1 value2 = (output14795, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14796 value5 value1 value2 = (output14796, value6896, value1) := by
  rw [input14796_def, output14796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10406]
  try dsimp only
  rw [child14795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10406_skip, output14795_skip]
  kernel_rfl

theorem node14797_cond_eq
    (child10403 : Flapjack.WordAlloc.removeDeadStructural input10403 value5201 value1 value2 = (output10403, value5, value1))
    (child14796 : Flapjack.WordAlloc.removeDeadStructural input14796 value5 value1 value2 = (output14796, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14797 value5201 value1 value2 = (output14797, value6896, value1) := by
  rw [input14797_def, output14797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10403]
  try dsimp only
  rw [child14796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10403_skip, output14796_skip]
  kernel_rfl

theorem node14798_cond_eq
    (child10394 : Flapjack.WordAlloc.removeDeadStructural input10394 value5201 value1 value2 = (output10394, value5201, value1))
    (child14797 : Flapjack.WordAlloc.removeDeadStructural input14797 value5201 value1 value2 = (output14797, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14798 value5201 value1 value2 = (output14798, value6896, value1) := by
  rw [input14798_def, output14798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10394]
  try dsimp only
  rw [child14797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10394_skip, output14797_skip]
  kernel_rfl

theorem node14799_cond_eq
    (child10393 : Flapjack.WordAlloc.removeDeadStructural input10393 value5200 value1 value2 = (output10393, value5201, value1))
    (child14798 : Flapjack.WordAlloc.removeDeadStructural input14798 value5201 value1 value2 = (output14798, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14799 value5200 value1 value2 = (output14799, value6896, value1) := by
  rw [input14799_def, output14799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10393]
  try dsimp only
  rw [child14798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10393_skip, output14798_skip]
  kernel_rfl

theorem node14800_cond_eq
    (child10392 : Flapjack.WordAlloc.removeDeadStructural input10392 value5 value1 value2 = (output10392, value5200, value1))
    (child14799 : Flapjack.WordAlloc.removeDeadStructural input14799 value5200 value1 value2 = (output14799, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14800 value5 value1 value2 = (output14800, value6896, value1) := by
  rw [input14800_def, output14800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10392]
  try dsimp only
  rw [child14799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10392_skip, output14799_skip]
  kernel_rfl

theorem node14801_cond_eq
    (child10389 : Flapjack.WordAlloc.removeDeadStructural input10389 value5194 value1 value2 = (output10389, value5, value1))
    (child14800 : Flapjack.WordAlloc.removeDeadStructural input14800 value5 value1 value2 = (output14800, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14801 value5194 value1 value2 = (output14801, value6896, value1) := by
  rw [input14801_def, output14801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10389]
  try dsimp only
  rw [child14800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10389_skip, output14800_skip]
  kernel_rfl

theorem node14802_cond_eq
    (child10380 : Flapjack.WordAlloc.removeDeadStructural input10380 value5194 value1 value2 = (output10380, value5194, value1))
    (child14801 : Flapjack.WordAlloc.removeDeadStructural input14801 value5194 value1 value2 = (output14801, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14802 value5194 value1 value2 = (output14802, value6896, value1) := by
  rw [input14802_def, output14802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10380]
  try dsimp only
  rw [child14801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10380_skip, output14801_skip]
  kernel_rfl

theorem node14803_cond_eq
    (child10379 : Flapjack.WordAlloc.removeDeadStructural input10379 value5193 value1 value2 = (output10379, value5194, value1))
    (child14802 : Flapjack.WordAlloc.removeDeadStructural input14802 value5194 value1 value2 = (output14802, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14803 value5193 value1 value2 = (output14803, value6896, value1) := by
  rw [input14803_def, output14803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10379]
  try dsimp only
  rw [child14802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10379_skip, output14802_skip]
  kernel_rfl

theorem node14804_cond_eq
    (child10378 : Flapjack.WordAlloc.removeDeadStructural input10378 value5 value1 value2 = (output10378, value5193, value1))
    (child14803 : Flapjack.WordAlloc.removeDeadStructural input14803 value5193 value1 value2 = (output14803, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14804 value5 value1 value2 = (output14804, value6896, value1) := by
  rw [input14804_def, output14804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10378]
  try dsimp only
  rw [child14803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10378_skip, output14803_skip]
  kernel_rfl

theorem node14805_cond_eq
    (child10375 : Flapjack.WordAlloc.removeDeadStructural input10375 value5187 value1 value2 = (output10375, value5, value1))
    (child14804 : Flapjack.WordAlloc.removeDeadStructural input14804 value5 value1 value2 = (output14804, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14805 value5187 value1 value2 = (output14805, value6896, value1) := by
  rw [input14805_def, output14805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10375]
  try dsimp only
  rw [child14804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10375_skip, output14804_skip]
  kernel_rfl

theorem node14806_cond_eq
    (child10366 : Flapjack.WordAlloc.removeDeadStructural input10366 value5187 value1 value2 = (output10366, value5187, value1))
    (child14805 : Flapjack.WordAlloc.removeDeadStructural input14805 value5187 value1 value2 = (output14805, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14806 value5187 value1 value2 = (output14806, value6896, value1) := by
  rw [input14806_def, output14806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10366]
  try dsimp only
  rw [child14805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10366_skip, output14805_skip]
  kernel_rfl

theorem node14807_cond_eq
    (child10365 : Flapjack.WordAlloc.removeDeadStructural input10365 value5186 value1 value2 = (output10365, value5187, value1))
    (child14806 : Flapjack.WordAlloc.removeDeadStructural input14806 value5187 value1 value2 = (output14806, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14807 value5186 value1 value2 = (output14807, value6896, value1) := by
  rw [input14807_def, output14807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10365]
  try dsimp only
  rw [child14806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10365_skip, output14806_skip]
  kernel_rfl

theorem node14808_cond_eq
    (child10364 : Flapjack.WordAlloc.removeDeadStructural input10364 value5 value1 value2 = (output10364, value5186, value1))
    (child14807 : Flapjack.WordAlloc.removeDeadStructural input14807 value5186 value1 value2 = (output14807, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14808 value5 value1 value2 = (output14808, value6896, value1) := by
  rw [input14808_def, output14808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10364]
  try dsimp only
  rw [child14807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10364_skip, output14807_skip]
  kernel_rfl

theorem node14809_cond_eq
    (child10361 : Flapjack.WordAlloc.removeDeadStructural input10361 value5180 value1 value2 = (output10361, value5, value1))
    (child14808 : Flapjack.WordAlloc.removeDeadStructural input14808 value5 value1 value2 = (output14808, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14809 value5180 value1 value2 = (output14809, value6896, value1) := by
  rw [input14809_def, output14809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10361]
  try dsimp only
  rw [child14808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10361_skip, output14808_skip]
  kernel_rfl

theorem node14810_cond_eq
    (child10352 : Flapjack.WordAlloc.removeDeadStructural input10352 value5180 value1 value2 = (output10352, value5180, value1))
    (child14809 : Flapjack.WordAlloc.removeDeadStructural input14809 value5180 value1 value2 = (output14809, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14810 value5180 value1 value2 = (output14810, value6896, value1) := by
  rw [input14810_def, output14810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10352]
  try dsimp only
  rw [child14809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10352_skip, output14809_skip]
  kernel_rfl

theorem node14811_cond_eq
    (child10351 : Flapjack.WordAlloc.removeDeadStructural input10351 value5179 value1 value2 = (output10351, value5180, value1))
    (child14810 : Flapjack.WordAlloc.removeDeadStructural input14810 value5180 value1 value2 = (output14810, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14811 value5179 value1 value2 = (output14811, value6896, value1) := by
  rw [input14811_def, output14811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10351]
  try dsimp only
  rw [child14810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10351_skip, output14810_skip]
  kernel_rfl

theorem node14812_cond_eq
    (child10350 : Flapjack.WordAlloc.removeDeadStructural input10350 value5 value1 value2 = (output10350, value5179, value1))
    (child14811 : Flapjack.WordAlloc.removeDeadStructural input14811 value5179 value1 value2 = (output14811, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14812 value5 value1 value2 = (output14812, value6896, value1) := by
  rw [input14812_def, output14812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10350]
  try dsimp only
  rw [child14811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10350_skip, output14811_skip]
  kernel_rfl

theorem node14813_cond_eq
    (child10347 : Flapjack.WordAlloc.removeDeadStructural input10347 value5173 value1 value2 = (output10347, value5, value1))
    (child14812 : Flapjack.WordAlloc.removeDeadStructural input14812 value5 value1 value2 = (output14812, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14813 value5173 value1 value2 = (output14813, value6896, value1) := by
  rw [input14813_def, output14813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10347]
  try dsimp only
  rw [child14812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10347_skip, output14812_skip]
  kernel_rfl

theorem node14814_cond_eq
    (child10338 : Flapjack.WordAlloc.removeDeadStructural input10338 value5173 value1 value2 = (output10338, value5173, value1))
    (child14813 : Flapjack.WordAlloc.removeDeadStructural input14813 value5173 value1 value2 = (output14813, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14814 value5173 value1 value2 = (output14814, value6896, value1) := by
  rw [input14814_def, output14814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10338]
  try dsimp only
  rw [child14813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10338_skip, output14813_skip]
  kernel_rfl

theorem node14815_cond_eq
    (child10337 : Flapjack.WordAlloc.removeDeadStructural input10337 value5172 value1 value2 = (output10337, value5173, value1))
    (child14814 : Flapjack.WordAlloc.removeDeadStructural input14814 value5173 value1 value2 = (output14814, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14815 value5172 value1 value2 = (output14815, value6896, value1) := by
  rw [input14815_def, output14815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10337]
  try dsimp only
  rw [child14814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10337_skip, output14814_skip]
  kernel_rfl

theorem node14816_cond_eq
    (child10336 : Flapjack.WordAlloc.removeDeadStructural input10336 value5 value1 value2 = (output10336, value5172, value1))
    (child14815 : Flapjack.WordAlloc.removeDeadStructural input14815 value5172 value1 value2 = (output14815, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14816 value5 value1 value2 = (output14816, value6896, value1) := by
  rw [input14816_def, output14816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10336]
  try dsimp only
  rw [child14815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10336_skip, output14815_skip]
  kernel_rfl

theorem node14817_cond_eq
    (child10333 : Flapjack.WordAlloc.removeDeadStructural input10333 value5166 value1 value2 = (output10333, value5, value1))
    (child14816 : Flapjack.WordAlloc.removeDeadStructural input14816 value5 value1 value2 = (output14816, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14817 value5166 value1 value2 = (output14817, value6896, value1) := by
  rw [input14817_def, output14817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10333]
  try dsimp only
  rw [child14816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10333_skip, output14816_skip]
  kernel_rfl

theorem node14818_cond_eq
    (child10324 : Flapjack.WordAlloc.removeDeadStructural input10324 value5166 value1 value2 = (output10324, value5166, value1))
    (child14817 : Flapjack.WordAlloc.removeDeadStructural input14817 value5166 value1 value2 = (output14817, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14818 value5166 value1 value2 = (output14818, value6896, value1) := by
  rw [input14818_def, output14818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10324]
  try dsimp only
  rw [child14817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10324_skip, output14817_skip]
  kernel_rfl

theorem node14819_cond_eq
    (child10323 : Flapjack.WordAlloc.removeDeadStructural input10323 value5165 value1 value2 = (output10323, value5166, value1))
    (child14818 : Flapjack.WordAlloc.removeDeadStructural input14818 value5166 value1 value2 = (output14818, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14819 value5165 value1 value2 = (output14819, value6896, value1) := by
  rw [input14819_def, output14819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10323]
  try dsimp only
  rw [child14818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10323_skip, output14818_skip]
  kernel_rfl

theorem node14820_cond_eq
    (child10322 : Flapjack.WordAlloc.removeDeadStructural input10322 value5 value1 value2 = (output10322, value5165, value1))
    (child14819 : Flapjack.WordAlloc.removeDeadStructural input14819 value5165 value1 value2 = (output14819, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14820 value5 value1 value2 = (output14820, value6896, value1) := by
  rw [input14820_def, output14820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10322]
  try dsimp only
  rw [child14819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10322_skip, output14819_skip]
  kernel_rfl

theorem node14821_cond_eq
    (child10319 : Flapjack.WordAlloc.removeDeadStructural input10319 value5159 value1 value2 = (output10319, value5, value1))
    (child14820 : Flapjack.WordAlloc.removeDeadStructural input14820 value5 value1 value2 = (output14820, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14821 value5159 value1 value2 = (output14821, value6896, value1) := by
  rw [input14821_def, output14821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10319]
  try dsimp only
  rw [child14820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10319_skip, output14820_skip]
  kernel_rfl

theorem node14822_cond_eq
    (child10310 : Flapjack.WordAlloc.removeDeadStructural input10310 value5159 value1 value2 = (output10310, value5159, value1))
    (child14821 : Flapjack.WordAlloc.removeDeadStructural input14821 value5159 value1 value2 = (output14821, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14822 value5159 value1 value2 = (output14822, value6896, value1) := by
  rw [input14822_def, output14822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10310]
  try dsimp only
  rw [child14821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10310_skip, output14821_skip]
  kernel_rfl

theorem node14823_cond_eq
    (child10309 : Flapjack.WordAlloc.removeDeadStructural input10309 value5158 value1 value2 = (output10309, value5159, value1))
    (child14822 : Flapjack.WordAlloc.removeDeadStructural input14822 value5159 value1 value2 = (output14822, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14823 value5158 value1 value2 = (output14823, value6896, value1) := by
  rw [input14823_def, output14823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10309]
  try dsimp only
  rw [child14822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10309_skip, output14822_skip]
  kernel_rfl

theorem node14824_cond_eq
    (child10308 : Flapjack.WordAlloc.removeDeadStructural input10308 value5 value1 value2 = (output10308, value5158, value1))
    (child14823 : Flapjack.WordAlloc.removeDeadStructural input14823 value5158 value1 value2 = (output14823, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14824 value5 value1 value2 = (output14824, value6896, value1) := by
  rw [input14824_def, output14824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10308]
  try dsimp only
  rw [child14823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10308_skip, output14823_skip]
  kernel_rfl

theorem node14825_cond_eq
    (child10305 : Flapjack.WordAlloc.removeDeadStructural input10305 value5152 value1 value2 = (output10305, value5, value1))
    (child14824 : Flapjack.WordAlloc.removeDeadStructural input14824 value5 value1 value2 = (output14824, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14825 value5152 value1 value2 = (output14825, value6896, value1) := by
  rw [input14825_def, output14825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10305]
  try dsimp only
  rw [child14824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10305_skip, output14824_skip]
  kernel_rfl

theorem node14826_cond_eq
    (child10296 : Flapjack.WordAlloc.removeDeadStructural input10296 value5152 value1 value2 = (output10296, value5152, value1))
    (child14825 : Flapjack.WordAlloc.removeDeadStructural input14825 value5152 value1 value2 = (output14825, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14826 value5152 value1 value2 = (output14826, value6896, value1) := by
  rw [input14826_def, output14826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10296]
  try dsimp only
  rw [child14825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10296_skip, output14825_skip]
  kernel_rfl

theorem node14827_cond_eq
    (child10295 : Flapjack.WordAlloc.removeDeadStructural input10295 value5151 value1 value2 = (output10295, value5152, value1))
    (child14826 : Flapjack.WordAlloc.removeDeadStructural input14826 value5152 value1 value2 = (output14826, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14827 value5151 value1 value2 = (output14827, value6896, value1) := by
  rw [input14827_def, output14827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10295]
  try dsimp only
  rw [child14826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10295_skip, output14826_skip]
  kernel_rfl

theorem node14828_cond_eq
    (child10294 : Flapjack.WordAlloc.removeDeadStructural input10294 value5 value1 value2 = (output10294, value5151, value1))
    (child14827 : Flapjack.WordAlloc.removeDeadStructural input14827 value5151 value1 value2 = (output14827, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14828 value5 value1 value2 = (output14828, value6896, value1) := by
  rw [input14828_def, output14828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10294]
  try dsimp only
  rw [child14827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10294_skip, output14827_skip]
  kernel_rfl

theorem node14829_cond_eq
    (child10291 : Flapjack.WordAlloc.removeDeadStructural input10291 value5145 value1 value2 = (output10291, value5, value1))
    (child14828 : Flapjack.WordAlloc.removeDeadStructural input14828 value5 value1 value2 = (output14828, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14829 value5145 value1 value2 = (output14829, value6896, value1) := by
  rw [input14829_def, output14829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10291]
  try dsimp only
  rw [child14828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10291_skip, output14828_skip]
  kernel_rfl

theorem node14830_cond_eq
    (child10282 : Flapjack.WordAlloc.removeDeadStructural input10282 value5145 value1 value2 = (output10282, value5145, value1))
    (child14829 : Flapjack.WordAlloc.removeDeadStructural input14829 value5145 value1 value2 = (output14829, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14830 value5145 value1 value2 = (output14830, value6896, value1) := by
  rw [input14830_def, output14830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10282]
  try dsimp only
  rw [child14829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10282_skip, output14829_skip]
  kernel_rfl

theorem node14831_cond_eq
    (child10281 : Flapjack.WordAlloc.removeDeadStructural input10281 value5144 value1 value2 = (output10281, value5145, value1))
    (child14830 : Flapjack.WordAlloc.removeDeadStructural input14830 value5145 value1 value2 = (output14830, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14831 value5144 value1 value2 = (output14831, value6896, value1) := by
  rw [input14831_def, output14831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10281]
  try dsimp only
  rw [child14830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10281_skip, output14830_skip]
  kernel_rfl

theorem node14832_cond_eq
    (child10280 : Flapjack.WordAlloc.removeDeadStructural input10280 value5 value1 value2 = (output10280, value5144, value1))
    (child14831 : Flapjack.WordAlloc.removeDeadStructural input14831 value5144 value1 value2 = (output14831, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14832 value5 value1 value2 = (output14832, value6896, value1) := by
  rw [input14832_def, output14832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10280]
  try dsimp only
  rw [child14831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10280_skip, output14831_skip]
  kernel_rfl

theorem node14833_cond_eq
    (child10277 : Flapjack.WordAlloc.removeDeadStructural input10277 value5138 value1 value2 = (output10277, value5, value1))
    (child14832 : Flapjack.WordAlloc.removeDeadStructural input14832 value5 value1 value2 = (output14832, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14833 value5138 value1 value2 = (output14833, value6896, value1) := by
  rw [input14833_def, output14833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10277]
  try dsimp only
  rw [child14832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10277_skip, output14832_skip]
  kernel_rfl

theorem node14834_cond_eq
    (child10268 : Flapjack.WordAlloc.removeDeadStructural input10268 value5138 value1 value2 = (output10268, value5138, value1))
    (child14833 : Flapjack.WordAlloc.removeDeadStructural input14833 value5138 value1 value2 = (output14833, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14834 value5138 value1 value2 = (output14834, value6896, value1) := by
  rw [input14834_def, output14834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10268]
  try dsimp only
  rw [child14833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10268_skip, output14833_skip]
  kernel_rfl

theorem node14835_cond_eq
    (child10267 : Flapjack.WordAlloc.removeDeadStructural input10267 value5137 value1 value2 = (output10267, value5138, value1))
    (child14834 : Flapjack.WordAlloc.removeDeadStructural input14834 value5138 value1 value2 = (output14834, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14835 value5137 value1 value2 = (output14835, value6896, value1) := by
  rw [input14835_def, output14835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10267]
  try dsimp only
  rw [child14834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10267_skip, output14834_skip]
  kernel_rfl

theorem node14836_cond_eq
    (child10266 : Flapjack.WordAlloc.removeDeadStructural input10266 value5 value1 value2 = (output10266, value5137, value1))
    (child14835 : Flapjack.WordAlloc.removeDeadStructural input14835 value5137 value1 value2 = (output14835, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14836 value5 value1 value2 = (output14836, value6896, value1) := by
  rw [input14836_def, output14836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10266]
  try dsimp only
  rw [child14835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10266_skip, output14835_skip]
  kernel_rfl

theorem node14837_cond_eq
    (child10263 : Flapjack.WordAlloc.removeDeadStructural input10263 value5131 value1 value2 = (output10263, value5, value1))
    (child14836 : Flapjack.WordAlloc.removeDeadStructural input14836 value5 value1 value2 = (output14836, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14837 value5131 value1 value2 = (output14837, value6896, value1) := by
  rw [input14837_def, output14837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10263]
  try dsimp only
  rw [child14836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10263_skip, output14836_skip]
  kernel_rfl

theorem node14838_cond_eq
    (child10254 : Flapjack.WordAlloc.removeDeadStructural input10254 value5131 value1 value2 = (output10254, value5131, value1))
    (child14837 : Flapjack.WordAlloc.removeDeadStructural input14837 value5131 value1 value2 = (output14837, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14838 value5131 value1 value2 = (output14838, value6896, value1) := by
  rw [input14838_def, output14838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10254]
  try dsimp only
  rw [child14837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10254_skip, output14837_skip]
  kernel_rfl

theorem node14839_cond_eq
    (child10253 : Flapjack.WordAlloc.removeDeadStructural input10253 value5130 value1 value2 = (output10253, value5131, value1))
    (child14838 : Flapjack.WordAlloc.removeDeadStructural input14838 value5131 value1 value2 = (output14838, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14839 value5130 value1 value2 = (output14839, value6896, value1) := by
  rw [input14839_def, output14839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10253]
  try dsimp only
  rw [child14838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10253_skip, output14838_skip]
  kernel_rfl

theorem node14840_cond_eq
    (child10252 : Flapjack.WordAlloc.removeDeadStructural input10252 value5 value1 value2 = (output10252, value5130, value1))
    (child14839 : Flapjack.WordAlloc.removeDeadStructural input14839 value5130 value1 value2 = (output14839, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14840 value5 value1 value2 = (output14840, value6896, value1) := by
  rw [input14840_def, output14840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10252]
  try dsimp only
  rw [child14839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10252_skip, output14839_skip]
  kernel_rfl

theorem node14841_cond_eq
    (child10249 : Flapjack.WordAlloc.removeDeadStructural input10249 value5124 value1 value2 = (output10249, value5, value1))
    (child14840 : Flapjack.WordAlloc.removeDeadStructural input14840 value5 value1 value2 = (output14840, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14841 value5124 value1 value2 = (output14841, value6896, value1) := by
  rw [input14841_def, output14841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10249]
  try dsimp only
  rw [child14840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10249_skip, output14840_skip]
  kernel_rfl

theorem node14842_cond_eq
    (child10240 : Flapjack.WordAlloc.removeDeadStructural input10240 value5124 value1 value2 = (output10240, value5124, value1))
    (child14841 : Flapjack.WordAlloc.removeDeadStructural input14841 value5124 value1 value2 = (output14841, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14842 value5124 value1 value2 = (output14842, value6896, value1) := by
  rw [input14842_def, output14842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10240]
  try dsimp only
  rw [child14841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10240_skip, output14841_skip]
  kernel_rfl

theorem node14843_cond_eq
    (child10239 : Flapjack.WordAlloc.removeDeadStructural input10239 value5123 value1 value2 = (output10239, value5124, value1))
    (child14842 : Flapjack.WordAlloc.removeDeadStructural input14842 value5124 value1 value2 = (output14842, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14843 value5123 value1 value2 = (output14843, value6896, value1) := by
  rw [input14843_def, output14843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10239]
  try dsimp only
  rw [child14842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10239_skip, output14842_skip]
  kernel_rfl

theorem node14844_cond_eq
    (child10238 : Flapjack.WordAlloc.removeDeadStructural input10238 value5 value1 value2 = (output10238, value5123, value1))
    (child14843 : Flapjack.WordAlloc.removeDeadStructural input14843 value5123 value1 value2 = (output14843, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14844 value5 value1 value2 = (output14844, value6896, value1) := by
  rw [input14844_def, output14844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10238]
  try dsimp only
  rw [child14843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10238_skip, output14843_skip]
  kernel_rfl

theorem node14845_cond_eq
    (child10235 : Flapjack.WordAlloc.removeDeadStructural input10235 value5117 value1 value2 = (output10235, value5, value1))
    (child14844 : Flapjack.WordAlloc.removeDeadStructural input14844 value5 value1 value2 = (output14844, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14845 value5117 value1 value2 = (output14845, value6896, value1) := by
  rw [input14845_def, output14845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10235]
  try dsimp only
  rw [child14844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10235_skip, output14844_skip]
  kernel_rfl

theorem node14846_cond_eq
    (child10226 : Flapjack.WordAlloc.removeDeadStructural input10226 value5117 value1 value2 = (output10226, value5117, value1))
    (child14845 : Flapjack.WordAlloc.removeDeadStructural input14845 value5117 value1 value2 = (output14845, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14846 value5117 value1 value2 = (output14846, value6896, value1) := by
  rw [input14846_def, output14846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10226]
  try dsimp only
  rw [child14845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10226_skip, output14845_skip]
  kernel_rfl

theorem node14847_cond_eq
    (child10225 : Flapjack.WordAlloc.removeDeadStructural input10225 value5116 value1 value2 = (output10225, value5117, value1))
    (child14846 : Flapjack.WordAlloc.removeDeadStructural input14846 value5117 value1 value2 = (output14846, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14847 value5116 value1 value2 = (output14847, value6896, value1) := by
  rw [input14847_def, output14847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10225]
  try dsimp only
  rw [child14846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10225_skip, output14846_skip]
  kernel_rfl

#print axioms node14847_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
