import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk018
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node4608_cond_eq
    (child4606 : Flapjack.WordAlloc.removeDeadStructural input4606 value2308 value1 value2 = (output4606, value2309, value1))
    (child4607 : Flapjack.WordAlloc.removeDeadStructural input4607 value2309 value1 value2 = (output4607, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4608 value2308 value1 value2 = (output4608, value5, value1) := by
  rw [input4608_def, output4608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4606]
  dsimp only
  rw [child4607]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4606_skip, output4607_skip]
  kernel_rfl

theorem node4609_cond_eq
    (child4605 : Flapjack.WordAlloc.removeDeadStructural input4605 value2307 value1 value2 = (output4605, value2308, value1))
    (child4608 : Flapjack.WordAlloc.removeDeadStructural input4608 value2308 value1 value2 = (output4608, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4609 value2307 value1 value2 = (output4609, value5, value1) := by
  rw [input4609_def, output4609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4605]
  dsimp only
  rw [child4608]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4605_skip, output4608_skip]
  kernel_rfl

theorem node4610_cond_eq
    (child4604 : Flapjack.WordAlloc.removeDeadStructural input4604 value2306 value1 value2 = (output4604, value2307, value1))
    (child4609 : Flapjack.WordAlloc.removeDeadStructural input4609 value2307 value1 value2 = (output4609, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4610 value2306 value1 value2 = (output4610, value5, value1) := by
  rw [input4610_def, output4610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4604]
  dsimp only
  rw [child4609]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4604_skip, output4609_skip]
  kernel_rfl

theorem node4611_cond_eq
    (child4603 : Flapjack.WordAlloc.removeDeadStructural input4603 value2304 value1 value2 = (output4603, value2306, value1))
    (child4610 : Flapjack.WordAlloc.removeDeadStructural input4610 value2306 value1 value2 = (output4610, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4611 value2304 value1 value2 = (output4611, value5, value1) := by
  rw [input4611_def, output4611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4603]
  dsimp only
  rw [child4610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4603_skip, output4610_skip]
  kernel_rfl

theorem node4612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4612 value5 value1 value2 = (output4612, value2310, value1) := by
  rw [input4612_def, output4612_def]
  kernel_rfl

theorem node4613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4613 value2310 value1 value2 = (output4613, value2311, value1) := by
  rw [input4613_def, output4613_def]
  kernel_rfl

theorem node4614_cond_eq
    (child4612 : Flapjack.WordAlloc.removeDeadStructural input4612 value5 value1 value2 = (output4612, value2310, value1))
    (child4613 : Flapjack.WordAlloc.removeDeadStructural input4613 value2310 value1 value2 = (output4613, value2311, value1)) : Flapjack.WordAlloc.removeDeadStructural input4614 value5 value1 value2 = (output4614, value2311, value1) := by
  rw [input4614_def, output4614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4612]
  dsimp only
  rw [child4613]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4612_skip, output4613_skip]
  kernel_rfl

theorem node4615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4615 value2311 value1 value2 = (output4615, value2312, value1) := by
  rw [input4615_def, output4615_def]
  kernel_rfl

theorem node4616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4616 value2312 value1 value2 = (output4616, value2312, value1) := by
  rw [input4616_def, output4616_def]
  kernel_rfl

theorem node4617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4617 value2312 value1 value2 = (output4617, value2313, value1) := by
  rw [input4617_def, output4617_def]
  kernel_rfl

theorem node4618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4618 value2313 value1 value2 = (output4618, value2314, value1) := by
  rw [input4618_def, output4618_def]
  kernel_rfl

theorem node4619_cond_eq
    (child4617 : Flapjack.WordAlloc.removeDeadStructural input4617 value2312 value1 value2 = (output4617, value2313, value1))
    (child4618 : Flapjack.WordAlloc.removeDeadStructural input4618 value2313 value1 value2 = (output4618, value2314, value1)) : Flapjack.WordAlloc.removeDeadStructural input4619 value2312 value1 value2 = (output4619, value2314, value1) := by
  rw [input4619_def, output4619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4617]
  dsimp only
  rw [child4618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4617_skip, output4618_skip]
  kernel_rfl

theorem node4620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4620 value2314 value1 value2 = (output4620, value2315, value1) := by
  rw [input4620_def, output4620_def]
  kernel_rfl

theorem node4621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4621 value2315 value1 value2 = (output4621, value2316, value1) := by
  rw [input4621_def, output4621_def]
  kernel_rfl

theorem node4622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4622 value2316 value1 value2 = (output4622, value2317, value1) := by
  rw [input4622_def, output4622_def]
  kernel_rfl

theorem node4623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4623 value2317 value1 value2 = (output4623, value5, value1) := by
  rw [input4623_def, output4623_def]
  kernel_rfl

theorem node4624_cond_eq
    (child4622 : Flapjack.WordAlloc.removeDeadStructural input4622 value2316 value1 value2 = (output4622, value2317, value1))
    (child4623 : Flapjack.WordAlloc.removeDeadStructural input4623 value2317 value1 value2 = (output4623, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4624 value2316 value1 value2 = (output4624, value5, value1) := by
  rw [input4624_def, output4624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4622]
  dsimp only
  rw [child4623]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4622_skip, output4623_skip]
  kernel_rfl

theorem node4625_cond_eq
    (child4621 : Flapjack.WordAlloc.removeDeadStructural input4621 value2315 value1 value2 = (output4621, value2316, value1))
    (child4624 : Flapjack.WordAlloc.removeDeadStructural input4624 value2316 value1 value2 = (output4624, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4625 value2315 value1 value2 = (output4625, value5, value1) := by
  rw [input4625_def, output4625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4621]
  dsimp only
  rw [child4624]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4621_skip, output4624_skip]
  kernel_rfl

theorem node4626_cond_eq
    (child4620 : Flapjack.WordAlloc.removeDeadStructural input4620 value2314 value1 value2 = (output4620, value2315, value1))
    (child4625 : Flapjack.WordAlloc.removeDeadStructural input4625 value2315 value1 value2 = (output4625, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4626 value2314 value1 value2 = (output4626, value5, value1) := by
  rw [input4626_def, output4626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4620]
  dsimp only
  rw [child4625]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4620_skip, output4625_skip]
  kernel_rfl

theorem node4627_cond_eq
    (child4619 : Flapjack.WordAlloc.removeDeadStructural input4619 value2312 value1 value2 = (output4619, value2314, value1))
    (child4626 : Flapjack.WordAlloc.removeDeadStructural input4626 value2314 value1 value2 = (output4626, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4627 value2312 value1 value2 = (output4627, value5, value1) := by
  rw [input4627_def, output4627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4619]
  dsimp only
  rw [child4626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4619_skip, output4626_skip]
  kernel_rfl

theorem node4628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4628 value5 value1 value2 = (output4628, value2318, value1) := by
  rw [input4628_def, output4628_def]
  kernel_rfl

theorem node4629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4629 value2318 value1 value2 = (output4629, value2319, value1) := by
  rw [input4629_def, output4629_def]
  kernel_rfl

theorem node4630_cond_eq
    (child4628 : Flapjack.WordAlloc.removeDeadStructural input4628 value5 value1 value2 = (output4628, value2318, value1))
    (child4629 : Flapjack.WordAlloc.removeDeadStructural input4629 value2318 value1 value2 = (output4629, value2319, value1)) : Flapjack.WordAlloc.removeDeadStructural input4630 value5 value1 value2 = (output4630, value2319, value1) := by
  rw [input4630_def, output4630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4628]
  dsimp only
  rw [child4629]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4628_skip, output4629_skip]
  kernel_rfl

theorem node4631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4631 value2319 value1 value2 = (output4631, value2320, value1) := by
  rw [input4631_def, output4631_def]
  kernel_rfl

theorem node4632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4632 value2320 value1 value2 = (output4632, value2320, value1) := by
  rw [input4632_def, output4632_def]
  kernel_rfl

theorem node4633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4633 value2320 value1 value2 = (output4633, value2321, value1) := by
  rw [input4633_def, output4633_def]
  kernel_rfl

theorem node4634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4634 value2321 value1 value2 = (output4634, value2322, value1) := by
  rw [input4634_def, output4634_def]
  kernel_rfl

theorem node4635_cond_eq
    (child4633 : Flapjack.WordAlloc.removeDeadStructural input4633 value2320 value1 value2 = (output4633, value2321, value1))
    (child4634 : Flapjack.WordAlloc.removeDeadStructural input4634 value2321 value1 value2 = (output4634, value2322, value1)) : Flapjack.WordAlloc.removeDeadStructural input4635 value2320 value1 value2 = (output4635, value2322, value1) := by
  rw [input4635_def, output4635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4633]
  dsimp only
  rw [child4634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4633_skip, output4634_skip]
  kernel_rfl

theorem node4636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4636 value2322 value1 value2 = (output4636, value2323, value1) := by
  rw [input4636_def, output4636_def]
  kernel_rfl

theorem node4637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4637 value2323 value1 value2 = (output4637, value2324, value1) := by
  rw [input4637_def, output4637_def]
  kernel_rfl

theorem node4638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4638 value2324 value1 value2 = (output4638, value2325, value1) := by
  rw [input4638_def, output4638_def]
  kernel_rfl

theorem node4639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4639 value2325 value1 value2 = (output4639, value5, value1) := by
  rw [input4639_def, output4639_def]
  kernel_rfl

theorem node4640_cond_eq
    (child4638 : Flapjack.WordAlloc.removeDeadStructural input4638 value2324 value1 value2 = (output4638, value2325, value1))
    (child4639 : Flapjack.WordAlloc.removeDeadStructural input4639 value2325 value1 value2 = (output4639, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4640 value2324 value1 value2 = (output4640, value5, value1) := by
  rw [input4640_def, output4640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4638]
  dsimp only
  rw [child4639]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4638_skip, output4639_skip]
  kernel_rfl

theorem node4641_cond_eq
    (child4637 : Flapjack.WordAlloc.removeDeadStructural input4637 value2323 value1 value2 = (output4637, value2324, value1))
    (child4640 : Flapjack.WordAlloc.removeDeadStructural input4640 value2324 value1 value2 = (output4640, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4641 value2323 value1 value2 = (output4641, value5, value1) := by
  rw [input4641_def, output4641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4637]
  dsimp only
  rw [child4640]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4637_skip, output4640_skip]
  kernel_rfl

theorem node4642_cond_eq
    (child4636 : Flapjack.WordAlloc.removeDeadStructural input4636 value2322 value1 value2 = (output4636, value2323, value1))
    (child4641 : Flapjack.WordAlloc.removeDeadStructural input4641 value2323 value1 value2 = (output4641, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4642 value2322 value1 value2 = (output4642, value5, value1) := by
  rw [input4642_def, output4642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4636]
  dsimp only
  rw [child4641]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4636_skip, output4641_skip]
  kernel_rfl

theorem node4643_cond_eq
    (child4635 : Flapjack.WordAlloc.removeDeadStructural input4635 value2320 value1 value2 = (output4635, value2322, value1))
    (child4642 : Flapjack.WordAlloc.removeDeadStructural input4642 value2322 value1 value2 = (output4642, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4643 value2320 value1 value2 = (output4643, value5, value1) := by
  rw [input4643_def, output4643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4635]
  dsimp only
  rw [child4642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4635_skip, output4642_skip]
  kernel_rfl

theorem node4644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4644 value5 value1 value2 = (output4644, value2326, value1) := by
  rw [input4644_def, output4644_def]
  kernel_rfl

theorem node4645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4645 value2326 value1 value2 = (output4645, value2327, value1) := by
  rw [input4645_def, output4645_def]
  kernel_rfl

theorem node4646_cond_eq
    (child4644 : Flapjack.WordAlloc.removeDeadStructural input4644 value5 value1 value2 = (output4644, value2326, value1))
    (child4645 : Flapjack.WordAlloc.removeDeadStructural input4645 value2326 value1 value2 = (output4645, value2327, value1)) : Flapjack.WordAlloc.removeDeadStructural input4646 value5 value1 value2 = (output4646, value2327, value1) := by
  rw [input4646_def, output4646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4644]
  dsimp only
  rw [child4645]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4644_skip, output4645_skip]
  kernel_rfl

theorem node4647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4647 value2327 value1 value2 = (output4647, value2328, value1) := by
  rw [input4647_def, output4647_def]
  kernel_rfl

theorem node4648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4648 value2328 value1 value2 = (output4648, value2328, value1) := by
  rw [input4648_def, output4648_def]
  kernel_rfl

theorem node4649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4649 value2328 value1 value2 = (output4649, value2329, value1) := by
  rw [input4649_def, output4649_def]
  kernel_rfl

theorem node4650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4650 value2329 value1 value2 = (output4650, value2330, value1) := by
  rw [input4650_def, output4650_def]
  kernel_rfl

theorem node4651_cond_eq
    (child4649 : Flapjack.WordAlloc.removeDeadStructural input4649 value2328 value1 value2 = (output4649, value2329, value1))
    (child4650 : Flapjack.WordAlloc.removeDeadStructural input4650 value2329 value1 value2 = (output4650, value2330, value1)) : Flapjack.WordAlloc.removeDeadStructural input4651 value2328 value1 value2 = (output4651, value2330, value1) := by
  rw [input4651_def, output4651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4649]
  dsimp only
  rw [child4650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4649_skip, output4650_skip]
  kernel_rfl

theorem node4652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4652 value2330 value1 value2 = (output4652, value2331, value1) := by
  rw [input4652_def, output4652_def]
  kernel_rfl

theorem node4653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4653 value2331 value1 value2 = (output4653, value2332, value1) := by
  rw [input4653_def, output4653_def]
  kernel_rfl

theorem node4654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4654 value2332 value1 value2 = (output4654, value2333, value1) := by
  rw [input4654_def, output4654_def]
  kernel_rfl

theorem node4655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4655 value2333 value1 value2 = (output4655, value5, value1) := by
  rw [input4655_def, output4655_def]
  kernel_rfl

theorem node4656_cond_eq
    (child4654 : Flapjack.WordAlloc.removeDeadStructural input4654 value2332 value1 value2 = (output4654, value2333, value1))
    (child4655 : Flapjack.WordAlloc.removeDeadStructural input4655 value2333 value1 value2 = (output4655, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4656 value2332 value1 value2 = (output4656, value5, value1) := by
  rw [input4656_def, output4656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4654]
  dsimp only
  rw [child4655]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4654_skip, output4655_skip]
  kernel_rfl

theorem node4657_cond_eq
    (child4653 : Flapjack.WordAlloc.removeDeadStructural input4653 value2331 value1 value2 = (output4653, value2332, value1))
    (child4656 : Flapjack.WordAlloc.removeDeadStructural input4656 value2332 value1 value2 = (output4656, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4657 value2331 value1 value2 = (output4657, value5, value1) := by
  rw [input4657_def, output4657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4653]
  dsimp only
  rw [child4656]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4653_skip, output4656_skip]
  kernel_rfl

theorem node4658_cond_eq
    (child4652 : Flapjack.WordAlloc.removeDeadStructural input4652 value2330 value1 value2 = (output4652, value2331, value1))
    (child4657 : Flapjack.WordAlloc.removeDeadStructural input4657 value2331 value1 value2 = (output4657, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4658 value2330 value1 value2 = (output4658, value5, value1) := by
  rw [input4658_def, output4658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4652]
  dsimp only
  rw [child4657]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4652_skip, output4657_skip]
  kernel_rfl

theorem node4659_cond_eq
    (child4651 : Flapjack.WordAlloc.removeDeadStructural input4651 value2328 value1 value2 = (output4651, value2330, value1))
    (child4658 : Flapjack.WordAlloc.removeDeadStructural input4658 value2330 value1 value2 = (output4658, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4659 value2328 value1 value2 = (output4659, value5, value1) := by
  rw [input4659_def, output4659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4651]
  dsimp only
  rw [child4658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4651_skip, output4658_skip]
  kernel_rfl

theorem node4660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4660 value5 value1 value2 = (output4660, value2334, value1) := by
  rw [input4660_def, output4660_def]
  kernel_rfl

theorem node4661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4661 value2334 value1 value2 = (output4661, value2335, value1) := by
  rw [input4661_def, output4661_def]
  kernel_rfl

theorem node4662_cond_eq
    (child4660 : Flapjack.WordAlloc.removeDeadStructural input4660 value5 value1 value2 = (output4660, value2334, value1))
    (child4661 : Flapjack.WordAlloc.removeDeadStructural input4661 value2334 value1 value2 = (output4661, value2335, value1)) : Flapjack.WordAlloc.removeDeadStructural input4662 value5 value1 value2 = (output4662, value2335, value1) := by
  rw [input4662_def, output4662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4660]
  dsimp only
  rw [child4661]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4660_skip, output4661_skip]
  kernel_rfl

theorem node4663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4663 value2335 value1 value2 = (output4663, value2336, value1) := by
  rw [input4663_def, output4663_def]
  kernel_rfl

theorem node4664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4664 value2336 value1 value2 = (output4664, value2336, value1) := by
  rw [input4664_def, output4664_def]
  kernel_rfl

theorem node4665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4665 value2336 value1 value2 = (output4665, value2337, value1) := by
  rw [input4665_def, output4665_def]
  kernel_rfl

theorem node4666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4666 value2337 value1 value2 = (output4666, value2338, value1) := by
  rw [input4666_def, output4666_def]
  kernel_rfl

theorem node4667_cond_eq
    (child4665 : Flapjack.WordAlloc.removeDeadStructural input4665 value2336 value1 value2 = (output4665, value2337, value1))
    (child4666 : Flapjack.WordAlloc.removeDeadStructural input4666 value2337 value1 value2 = (output4666, value2338, value1)) : Flapjack.WordAlloc.removeDeadStructural input4667 value2336 value1 value2 = (output4667, value2338, value1) := by
  rw [input4667_def, output4667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4665]
  dsimp only
  rw [child4666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4665_skip, output4666_skip]
  kernel_rfl

theorem node4668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4668 value2338 value1 value2 = (output4668, value2339, value1) := by
  rw [input4668_def, output4668_def]
  kernel_rfl

theorem node4669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4669 value2339 value1 value2 = (output4669, value2340, value1) := by
  rw [input4669_def, output4669_def]
  kernel_rfl

theorem node4670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4670 value2340 value1 value2 = (output4670, value2341, value1) := by
  rw [input4670_def, output4670_def]
  kernel_rfl

theorem node4671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4671 value2341 value1 value2 = (output4671, value5, value1) := by
  rw [input4671_def, output4671_def]
  kernel_rfl

theorem node4672_cond_eq
    (child4670 : Flapjack.WordAlloc.removeDeadStructural input4670 value2340 value1 value2 = (output4670, value2341, value1))
    (child4671 : Flapjack.WordAlloc.removeDeadStructural input4671 value2341 value1 value2 = (output4671, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4672 value2340 value1 value2 = (output4672, value5, value1) := by
  rw [input4672_def, output4672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4670]
  dsimp only
  rw [child4671]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4670_skip, output4671_skip]
  kernel_rfl

theorem node4673_cond_eq
    (child4669 : Flapjack.WordAlloc.removeDeadStructural input4669 value2339 value1 value2 = (output4669, value2340, value1))
    (child4672 : Flapjack.WordAlloc.removeDeadStructural input4672 value2340 value1 value2 = (output4672, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4673 value2339 value1 value2 = (output4673, value5, value1) := by
  rw [input4673_def, output4673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4669]
  dsimp only
  rw [child4672]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4669_skip, output4672_skip]
  kernel_rfl

theorem node4674_cond_eq
    (child4668 : Flapjack.WordAlloc.removeDeadStructural input4668 value2338 value1 value2 = (output4668, value2339, value1))
    (child4673 : Flapjack.WordAlloc.removeDeadStructural input4673 value2339 value1 value2 = (output4673, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4674 value2338 value1 value2 = (output4674, value5, value1) := by
  rw [input4674_def, output4674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4668]
  dsimp only
  rw [child4673]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4668_skip, output4673_skip]
  kernel_rfl

theorem node4675_cond_eq
    (child4667 : Flapjack.WordAlloc.removeDeadStructural input4667 value2336 value1 value2 = (output4667, value2338, value1))
    (child4674 : Flapjack.WordAlloc.removeDeadStructural input4674 value2338 value1 value2 = (output4674, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4675 value2336 value1 value2 = (output4675, value5, value1) := by
  rw [input4675_def, output4675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4667]
  dsimp only
  rw [child4674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4667_skip, output4674_skip]
  kernel_rfl

theorem node4676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4676 value5 value1 value2 = (output4676, value2342, value1) := by
  rw [input4676_def, output4676_def]
  kernel_rfl

theorem node4677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4677 value2342 value1 value2 = (output4677, value2343, value1) := by
  rw [input4677_def, output4677_def]
  kernel_rfl

theorem node4678_cond_eq
    (child4676 : Flapjack.WordAlloc.removeDeadStructural input4676 value5 value1 value2 = (output4676, value2342, value1))
    (child4677 : Flapjack.WordAlloc.removeDeadStructural input4677 value2342 value1 value2 = (output4677, value2343, value1)) : Flapjack.WordAlloc.removeDeadStructural input4678 value5 value1 value2 = (output4678, value2343, value1) := by
  rw [input4678_def, output4678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4676]
  dsimp only
  rw [child4677]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4676_skip, output4677_skip]
  kernel_rfl

theorem node4679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4679 value2343 value1 value2 = (output4679, value2344, value1) := by
  rw [input4679_def, output4679_def]
  kernel_rfl

theorem node4680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4680 value2344 value1 value2 = (output4680, value2344, value1) := by
  rw [input4680_def, output4680_def]
  kernel_rfl

theorem node4681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4681 value2344 value1 value2 = (output4681, value2345, value1) := by
  rw [input4681_def, output4681_def]
  kernel_rfl

theorem node4682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4682 value2345 value1 value2 = (output4682, value2346, value1) := by
  rw [input4682_def, output4682_def]
  kernel_rfl

theorem node4683_cond_eq
    (child4681 : Flapjack.WordAlloc.removeDeadStructural input4681 value2344 value1 value2 = (output4681, value2345, value1))
    (child4682 : Flapjack.WordAlloc.removeDeadStructural input4682 value2345 value1 value2 = (output4682, value2346, value1)) : Flapjack.WordAlloc.removeDeadStructural input4683 value2344 value1 value2 = (output4683, value2346, value1) := by
  rw [input4683_def, output4683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4681]
  dsimp only
  rw [child4682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4681_skip, output4682_skip]
  kernel_rfl

theorem node4684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4684 value2346 value1 value2 = (output4684, value2347, value1) := by
  rw [input4684_def, output4684_def]
  kernel_rfl

theorem node4685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4685 value2347 value1 value2 = (output4685, value2348, value1) := by
  rw [input4685_def, output4685_def]
  kernel_rfl

theorem node4686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4686 value2348 value1 value2 = (output4686, value2349, value1) := by
  rw [input4686_def, output4686_def]
  kernel_rfl

theorem node4687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4687 value2349 value1 value2 = (output4687, value5, value1) := by
  rw [input4687_def, output4687_def]
  kernel_rfl

theorem node4688_cond_eq
    (child4686 : Flapjack.WordAlloc.removeDeadStructural input4686 value2348 value1 value2 = (output4686, value2349, value1))
    (child4687 : Flapjack.WordAlloc.removeDeadStructural input4687 value2349 value1 value2 = (output4687, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4688 value2348 value1 value2 = (output4688, value5, value1) := by
  rw [input4688_def, output4688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4686]
  dsimp only
  rw [child4687]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4686_skip, output4687_skip]
  kernel_rfl

theorem node4689_cond_eq
    (child4685 : Flapjack.WordAlloc.removeDeadStructural input4685 value2347 value1 value2 = (output4685, value2348, value1))
    (child4688 : Flapjack.WordAlloc.removeDeadStructural input4688 value2348 value1 value2 = (output4688, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4689 value2347 value1 value2 = (output4689, value5, value1) := by
  rw [input4689_def, output4689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4685]
  dsimp only
  rw [child4688]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4685_skip, output4688_skip]
  kernel_rfl

theorem node4690_cond_eq
    (child4684 : Flapjack.WordAlloc.removeDeadStructural input4684 value2346 value1 value2 = (output4684, value2347, value1))
    (child4689 : Flapjack.WordAlloc.removeDeadStructural input4689 value2347 value1 value2 = (output4689, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4690 value2346 value1 value2 = (output4690, value5, value1) := by
  rw [input4690_def, output4690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4684]
  dsimp only
  rw [child4689]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4684_skip, output4689_skip]
  kernel_rfl

theorem node4691_cond_eq
    (child4683 : Flapjack.WordAlloc.removeDeadStructural input4683 value2344 value1 value2 = (output4683, value2346, value1))
    (child4690 : Flapjack.WordAlloc.removeDeadStructural input4690 value2346 value1 value2 = (output4690, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4691 value2344 value1 value2 = (output4691, value5, value1) := by
  rw [input4691_def, output4691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4683]
  dsimp only
  rw [child4690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4683_skip, output4690_skip]
  kernel_rfl

theorem node4692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4692 value5 value1 value2 = (output4692, value2350, value1) := by
  rw [input4692_def, output4692_def]
  kernel_rfl

theorem node4693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4693 value2350 value1 value2 = (output4693, value2351, value1) := by
  rw [input4693_def, output4693_def]
  kernel_rfl

theorem node4694_cond_eq
    (child4692 : Flapjack.WordAlloc.removeDeadStructural input4692 value5 value1 value2 = (output4692, value2350, value1))
    (child4693 : Flapjack.WordAlloc.removeDeadStructural input4693 value2350 value1 value2 = (output4693, value2351, value1)) : Flapjack.WordAlloc.removeDeadStructural input4694 value5 value1 value2 = (output4694, value2351, value1) := by
  rw [input4694_def, output4694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4692]
  dsimp only
  rw [child4693]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4692_skip, output4693_skip]
  kernel_rfl

theorem node4695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4695 value2351 value1 value2 = (output4695, value2352, value1) := by
  rw [input4695_def, output4695_def]
  kernel_rfl

theorem node4696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4696 value2352 value1 value2 = (output4696, value2352, value1) := by
  rw [input4696_def, output4696_def]
  kernel_rfl

theorem node4697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4697 value2352 value1 value2 = (output4697, value2353, value1) := by
  rw [input4697_def, output4697_def]
  kernel_rfl

theorem node4698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4698 value2353 value1 value2 = (output4698, value2354, value1) := by
  rw [input4698_def, output4698_def]
  kernel_rfl

theorem node4699_cond_eq
    (child4697 : Flapjack.WordAlloc.removeDeadStructural input4697 value2352 value1 value2 = (output4697, value2353, value1))
    (child4698 : Flapjack.WordAlloc.removeDeadStructural input4698 value2353 value1 value2 = (output4698, value2354, value1)) : Flapjack.WordAlloc.removeDeadStructural input4699 value2352 value1 value2 = (output4699, value2354, value1) := by
  rw [input4699_def, output4699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4697]
  dsimp only
  rw [child4698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4697_skip, output4698_skip]
  kernel_rfl

theorem node4700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4700 value2354 value1 value2 = (output4700, value2355, value1) := by
  rw [input4700_def, output4700_def]
  kernel_rfl

theorem node4701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4701 value2355 value1 value2 = (output4701, value2356, value1) := by
  rw [input4701_def, output4701_def]
  kernel_rfl

theorem node4702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4702 value2356 value1 value2 = (output4702, value2357, value1) := by
  rw [input4702_def, output4702_def]
  kernel_rfl

theorem node4703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4703 value2357 value1 value2 = (output4703, value5, value1) := by
  rw [input4703_def, output4703_def]
  kernel_rfl

theorem node4704_cond_eq
    (child4702 : Flapjack.WordAlloc.removeDeadStructural input4702 value2356 value1 value2 = (output4702, value2357, value1))
    (child4703 : Flapjack.WordAlloc.removeDeadStructural input4703 value2357 value1 value2 = (output4703, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4704 value2356 value1 value2 = (output4704, value5, value1) := by
  rw [input4704_def, output4704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4702]
  dsimp only
  rw [child4703]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4702_skip, output4703_skip]
  kernel_rfl

theorem node4705_cond_eq
    (child4701 : Flapjack.WordAlloc.removeDeadStructural input4701 value2355 value1 value2 = (output4701, value2356, value1))
    (child4704 : Flapjack.WordAlloc.removeDeadStructural input4704 value2356 value1 value2 = (output4704, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4705 value2355 value1 value2 = (output4705, value5, value1) := by
  rw [input4705_def, output4705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4701]
  dsimp only
  rw [child4704]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4701_skip, output4704_skip]
  kernel_rfl

theorem node4706_cond_eq
    (child4700 : Flapjack.WordAlloc.removeDeadStructural input4700 value2354 value1 value2 = (output4700, value2355, value1))
    (child4705 : Flapjack.WordAlloc.removeDeadStructural input4705 value2355 value1 value2 = (output4705, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4706 value2354 value1 value2 = (output4706, value5, value1) := by
  rw [input4706_def, output4706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4700]
  dsimp only
  rw [child4705]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4700_skip, output4705_skip]
  kernel_rfl

theorem node4707_cond_eq
    (child4699 : Flapjack.WordAlloc.removeDeadStructural input4699 value2352 value1 value2 = (output4699, value2354, value1))
    (child4706 : Flapjack.WordAlloc.removeDeadStructural input4706 value2354 value1 value2 = (output4706, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4707 value2352 value1 value2 = (output4707, value5, value1) := by
  rw [input4707_def, output4707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4699]
  dsimp only
  rw [child4706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4699_skip, output4706_skip]
  kernel_rfl

theorem node4708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4708 value5 value1 value2 = (output4708, value2358, value1) := by
  rw [input4708_def, output4708_def]
  kernel_rfl

theorem node4709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4709 value2358 value1 value2 = (output4709, value2359, value1) := by
  rw [input4709_def, output4709_def]
  kernel_rfl

theorem node4710_cond_eq
    (child4708 : Flapjack.WordAlloc.removeDeadStructural input4708 value5 value1 value2 = (output4708, value2358, value1))
    (child4709 : Flapjack.WordAlloc.removeDeadStructural input4709 value2358 value1 value2 = (output4709, value2359, value1)) : Flapjack.WordAlloc.removeDeadStructural input4710 value5 value1 value2 = (output4710, value2359, value1) := by
  rw [input4710_def, output4710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4708]
  dsimp only
  rw [child4709]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4708_skip, output4709_skip]
  kernel_rfl

theorem node4711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4711 value2359 value1 value2 = (output4711, value2360, value1) := by
  rw [input4711_def, output4711_def]
  kernel_rfl

theorem node4712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4712 value2360 value1 value2 = (output4712, value2360, value1) := by
  rw [input4712_def, output4712_def]
  kernel_rfl

theorem node4713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4713 value2360 value1 value2 = (output4713, value2361, value1) := by
  rw [input4713_def, output4713_def]
  kernel_rfl

theorem node4714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4714 value2361 value1 value2 = (output4714, value2362, value1) := by
  rw [input4714_def, output4714_def]
  kernel_rfl

theorem node4715_cond_eq
    (child4713 : Flapjack.WordAlloc.removeDeadStructural input4713 value2360 value1 value2 = (output4713, value2361, value1))
    (child4714 : Flapjack.WordAlloc.removeDeadStructural input4714 value2361 value1 value2 = (output4714, value2362, value1)) : Flapjack.WordAlloc.removeDeadStructural input4715 value2360 value1 value2 = (output4715, value2362, value1) := by
  rw [input4715_def, output4715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4713]
  dsimp only
  rw [child4714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4713_skip, output4714_skip]
  kernel_rfl

theorem node4716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4716 value2362 value1 value2 = (output4716, value2363, value1) := by
  rw [input4716_def, output4716_def]
  kernel_rfl

theorem node4717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4717 value2363 value1 value2 = (output4717, value2364, value1) := by
  rw [input4717_def, output4717_def]
  kernel_rfl

theorem node4718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4718 value2364 value1 value2 = (output4718, value2365, value1) := by
  rw [input4718_def, output4718_def]
  kernel_rfl

theorem node4719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4719 value2365 value1 value2 = (output4719, value5, value1) := by
  rw [input4719_def, output4719_def]
  kernel_rfl

theorem node4720_cond_eq
    (child4718 : Flapjack.WordAlloc.removeDeadStructural input4718 value2364 value1 value2 = (output4718, value2365, value1))
    (child4719 : Flapjack.WordAlloc.removeDeadStructural input4719 value2365 value1 value2 = (output4719, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4720 value2364 value1 value2 = (output4720, value5, value1) := by
  rw [input4720_def, output4720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4718]
  dsimp only
  rw [child4719]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4718_skip, output4719_skip]
  kernel_rfl

theorem node4721_cond_eq
    (child4717 : Flapjack.WordAlloc.removeDeadStructural input4717 value2363 value1 value2 = (output4717, value2364, value1))
    (child4720 : Flapjack.WordAlloc.removeDeadStructural input4720 value2364 value1 value2 = (output4720, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4721 value2363 value1 value2 = (output4721, value5, value1) := by
  rw [input4721_def, output4721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4717]
  dsimp only
  rw [child4720]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4717_skip, output4720_skip]
  kernel_rfl

theorem node4722_cond_eq
    (child4716 : Flapjack.WordAlloc.removeDeadStructural input4716 value2362 value1 value2 = (output4716, value2363, value1))
    (child4721 : Flapjack.WordAlloc.removeDeadStructural input4721 value2363 value1 value2 = (output4721, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4722 value2362 value1 value2 = (output4722, value5, value1) := by
  rw [input4722_def, output4722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4716]
  dsimp only
  rw [child4721]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4716_skip, output4721_skip]
  kernel_rfl

theorem node4723_cond_eq
    (child4715 : Flapjack.WordAlloc.removeDeadStructural input4715 value2360 value1 value2 = (output4715, value2362, value1))
    (child4722 : Flapjack.WordAlloc.removeDeadStructural input4722 value2362 value1 value2 = (output4722, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4723 value2360 value1 value2 = (output4723, value5, value1) := by
  rw [input4723_def, output4723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4715]
  dsimp only
  rw [child4722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4715_skip, output4722_skip]
  kernel_rfl

theorem node4724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4724 value5 value1 value2 = (output4724, value2366, value1) := by
  rw [input4724_def, output4724_def]
  kernel_rfl

theorem node4725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4725 value2366 value1 value2 = (output4725, value2367, value1) := by
  rw [input4725_def, output4725_def]
  kernel_rfl

theorem node4726_cond_eq
    (child4724 : Flapjack.WordAlloc.removeDeadStructural input4724 value5 value1 value2 = (output4724, value2366, value1))
    (child4725 : Flapjack.WordAlloc.removeDeadStructural input4725 value2366 value1 value2 = (output4725, value2367, value1)) : Flapjack.WordAlloc.removeDeadStructural input4726 value5 value1 value2 = (output4726, value2367, value1) := by
  rw [input4726_def, output4726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4724]
  dsimp only
  rw [child4725]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4724_skip, output4725_skip]
  kernel_rfl

theorem node4727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4727 value2367 value1 value2 = (output4727, value2368, value1) := by
  rw [input4727_def, output4727_def]
  kernel_rfl

theorem node4728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4728 value2368 value1 value2 = (output4728, value2368, value1) := by
  rw [input4728_def, output4728_def]
  kernel_rfl

theorem node4729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4729 value2368 value1 value2 = (output4729, value2369, value1) := by
  rw [input4729_def, output4729_def]
  kernel_rfl

theorem node4730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4730 value2369 value1 value2 = (output4730, value2370, value1) := by
  rw [input4730_def, output4730_def]
  kernel_rfl

theorem node4731_cond_eq
    (child4729 : Flapjack.WordAlloc.removeDeadStructural input4729 value2368 value1 value2 = (output4729, value2369, value1))
    (child4730 : Flapjack.WordAlloc.removeDeadStructural input4730 value2369 value1 value2 = (output4730, value2370, value1)) : Flapjack.WordAlloc.removeDeadStructural input4731 value2368 value1 value2 = (output4731, value2370, value1) := by
  rw [input4731_def, output4731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4729]
  dsimp only
  rw [child4730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4729_skip, output4730_skip]
  kernel_rfl

theorem node4732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4732 value2370 value1 value2 = (output4732, value2371, value1) := by
  rw [input4732_def, output4732_def]
  kernel_rfl

theorem node4733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4733 value2371 value1 value2 = (output4733, value2372, value1) := by
  rw [input4733_def, output4733_def]
  kernel_rfl

theorem node4734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4734 value2372 value1 value2 = (output4734, value2373, value1) := by
  rw [input4734_def, output4734_def]
  kernel_rfl

theorem node4735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4735 value2373 value1 value2 = (output4735, value5, value1) := by
  rw [input4735_def, output4735_def]
  kernel_rfl

theorem node4736_cond_eq
    (child4734 : Flapjack.WordAlloc.removeDeadStructural input4734 value2372 value1 value2 = (output4734, value2373, value1))
    (child4735 : Flapjack.WordAlloc.removeDeadStructural input4735 value2373 value1 value2 = (output4735, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4736 value2372 value1 value2 = (output4736, value5, value1) := by
  rw [input4736_def, output4736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4734]
  dsimp only
  rw [child4735]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4734_skip, output4735_skip]
  kernel_rfl

theorem node4737_cond_eq
    (child4733 : Flapjack.WordAlloc.removeDeadStructural input4733 value2371 value1 value2 = (output4733, value2372, value1))
    (child4736 : Flapjack.WordAlloc.removeDeadStructural input4736 value2372 value1 value2 = (output4736, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4737 value2371 value1 value2 = (output4737, value5, value1) := by
  rw [input4737_def, output4737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4733]
  dsimp only
  rw [child4736]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4733_skip, output4736_skip]
  kernel_rfl

theorem node4738_cond_eq
    (child4732 : Flapjack.WordAlloc.removeDeadStructural input4732 value2370 value1 value2 = (output4732, value2371, value1))
    (child4737 : Flapjack.WordAlloc.removeDeadStructural input4737 value2371 value1 value2 = (output4737, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4738 value2370 value1 value2 = (output4738, value5, value1) := by
  rw [input4738_def, output4738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4732]
  dsimp only
  rw [child4737]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4732_skip, output4737_skip]
  kernel_rfl

theorem node4739_cond_eq
    (child4731 : Flapjack.WordAlloc.removeDeadStructural input4731 value2368 value1 value2 = (output4731, value2370, value1))
    (child4738 : Flapjack.WordAlloc.removeDeadStructural input4738 value2370 value1 value2 = (output4738, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4739 value2368 value1 value2 = (output4739, value5, value1) := by
  rw [input4739_def, output4739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4731]
  dsimp only
  rw [child4738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4731_skip, output4738_skip]
  kernel_rfl

theorem node4740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4740 value5 value1 value2 = (output4740, value2374, value1) := by
  rw [input4740_def, output4740_def]
  kernel_rfl

theorem node4741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4741 value2374 value1 value2 = (output4741, value2375, value1) := by
  rw [input4741_def, output4741_def]
  kernel_rfl

theorem node4742_cond_eq
    (child4740 : Flapjack.WordAlloc.removeDeadStructural input4740 value5 value1 value2 = (output4740, value2374, value1))
    (child4741 : Flapjack.WordAlloc.removeDeadStructural input4741 value2374 value1 value2 = (output4741, value2375, value1)) : Flapjack.WordAlloc.removeDeadStructural input4742 value5 value1 value2 = (output4742, value2375, value1) := by
  rw [input4742_def, output4742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4740]
  dsimp only
  rw [child4741]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4740_skip, output4741_skip]
  kernel_rfl

theorem node4743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4743 value2375 value1 value2 = (output4743, value2376, value1) := by
  rw [input4743_def, output4743_def]
  kernel_rfl

theorem node4744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4744 value2376 value1 value2 = (output4744, value2376, value1) := by
  rw [input4744_def, output4744_def]
  kernel_rfl

theorem node4745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4745 value2376 value1 value2 = (output4745, value2377, value1) := by
  rw [input4745_def, output4745_def]
  kernel_rfl

theorem node4746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4746 value2377 value1 value2 = (output4746, value2378, value1) := by
  rw [input4746_def, output4746_def]
  kernel_rfl

theorem node4747_cond_eq
    (child4745 : Flapjack.WordAlloc.removeDeadStructural input4745 value2376 value1 value2 = (output4745, value2377, value1))
    (child4746 : Flapjack.WordAlloc.removeDeadStructural input4746 value2377 value1 value2 = (output4746, value2378, value1)) : Flapjack.WordAlloc.removeDeadStructural input4747 value2376 value1 value2 = (output4747, value2378, value1) := by
  rw [input4747_def, output4747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4745]
  dsimp only
  rw [child4746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4745_skip, output4746_skip]
  kernel_rfl

theorem node4748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4748 value2378 value1 value2 = (output4748, value2379, value1) := by
  rw [input4748_def, output4748_def]
  kernel_rfl

theorem node4749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4749 value2379 value1 value2 = (output4749, value2380, value1) := by
  rw [input4749_def, output4749_def]
  kernel_rfl

theorem node4750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4750 value2380 value1 value2 = (output4750, value2381, value1) := by
  rw [input4750_def, output4750_def]
  kernel_rfl

theorem node4751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4751 value2381 value1 value2 = (output4751, value5, value1) := by
  rw [input4751_def, output4751_def]
  kernel_rfl

theorem node4752_cond_eq
    (child4750 : Flapjack.WordAlloc.removeDeadStructural input4750 value2380 value1 value2 = (output4750, value2381, value1))
    (child4751 : Flapjack.WordAlloc.removeDeadStructural input4751 value2381 value1 value2 = (output4751, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4752 value2380 value1 value2 = (output4752, value5, value1) := by
  rw [input4752_def, output4752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4750]
  dsimp only
  rw [child4751]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4750_skip, output4751_skip]
  kernel_rfl

theorem node4753_cond_eq
    (child4749 : Flapjack.WordAlloc.removeDeadStructural input4749 value2379 value1 value2 = (output4749, value2380, value1))
    (child4752 : Flapjack.WordAlloc.removeDeadStructural input4752 value2380 value1 value2 = (output4752, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4753 value2379 value1 value2 = (output4753, value5, value1) := by
  rw [input4753_def, output4753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4749]
  dsimp only
  rw [child4752]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4749_skip, output4752_skip]
  kernel_rfl

theorem node4754_cond_eq
    (child4748 : Flapjack.WordAlloc.removeDeadStructural input4748 value2378 value1 value2 = (output4748, value2379, value1))
    (child4753 : Flapjack.WordAlloc.removeDeadStructural input4753 value2379 value1 value2 = (output4753, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4754 value2378 value1 value2 = (output4754, value5, value1) := by
  rw [input4754_def, output4754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4748]
  dsimp only
  rw [child4753]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4748_skip, output4753_skip]
  kernel_rfl

theorem node4755_cond_eq
    (child4747 : Flapjack.WordAlloc.removeDeadStructural input4747 value2376 value1 value2 = (output4747, value2378, value1))
    (child4754 : Flapjack.WordAlloc.removeDeadStructural input4754 value2378 value1 value2 = (output4754, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4755 value2376 value1 value2 = (output4755, value5, value1) := by
  rw [input4755_def, output4755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4747]
  dsimp only
  rw [child4754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4747_skip, output4754_skip]
  kernel_rfl

theorem node4756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4756 value5 value1 value2 = (output4756, value2382, value1) := by
  rw [input4756_def, output4756_def]
  kernel_rfl

theorem node4757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4757 value2382 value1 value2 = (output4757, value2383, value1) := by
  rw [input4757_def, output4757_def]
  kernel_rfl

theorem node4758_cond_eq
    (child4756 : Flapjack.WordAlloc.removeDeadStructural input4756 value5 value1 value2 = (output4756, value2382, value1))
    (child4757 : Flapjack.WordAlloc.removeDeadStructural input4757 value2382 value1 value2 = (output4757, value2383, value1)) : Flapjack.WordAlloc.removeDeadStructural input4758 value5 value1 value2 = (output4758, value2383, value1) := by
  rw [input4758_def, output4758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4756]
  dsimp only
  rw [child4757]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4756_skip, output4757_skip]
  kernel_rfl

theorem node4759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4759 value2383 value1 value2 = (output4759, value2384, value1) := by
  rw [input4759_def, output4759_def]
  kernel_rfl

theorem node4760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4760 value2384 value1 value2 = (output4760, value2384, value1) := by
  rw [input4760_def, output4760_def]
  kernel_rfl

theorem node4761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4761 value2384 value1 value2 = (output4761, value2385, value1) := by
  rw [input4761_def, output4761_def]
  kernel_rfl

theorem node4762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4762 value2385 value1 value2 = (output4762, value2386, value1) := by
  rw [input4762_def, output4762_def]
  kernel_rfl

theorem node4763_cond_eq
    (child4761 : Flapjack.WordAlloc.removeDeadStructural input4761 value2384 value1 value2 = (output4761, value2385, value1))
    (child4762 : Flapjack.WordAlloc.removeDeadStructural input4762 value2385 value1 value2 = (output4762, value2386, value1)) : Flapjack.WordAlloc.removeDeadStructural input4763 value2384 value1 value2 = (output4763, value2386, value1) := by
  rw [input4763_def, output4763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4761]
  dsimp only
  rw [child4762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4761_skip, output4762_skip]
  kernel_rfl

theorem node4764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4764 value2386 value1 value2 = (output4764, value2387, value1) := by
  rw [input4764_def, output4764_def]
  kernel_rfl

theorem node4765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4765 value2387 value1 value2 = (output4765, value2388, value1) := by
  rw [input4765_def, output4765_def]
  kernel_rfl

theorem node4766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4766 value2388 value1 value2 = (output4766, value2389, value1) := by
  rw [input4766_def, output4766_def]
  kernel_rfl

theorem node4767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4767 value2389 value1 value2 = (output4767, value5, value1) := by
  rw [input4767_def, output4767_def]
  kernel_rfl

theorem node4768_cond_eq
    (child4766 : Flapjack.WordAlloc.removeDeadStructural input4766 value2388 value1 value2 = (output4766, value2389, value1))
    (child4767 : Flapjack.WordAlloc.removeDeadStructural input4767 value2389 value1 value2 = (output4767, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4768 value2388 value1 value2 = (output4768, value5, value1) := by
  rw [input4768_def, output4768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4766]
  dsimp only
  rw [child4767]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4766_skip, output4767_skip]
  kernel_rfl

theorem node4769_cond_eq
    (child4765 : Flapjack.WordAlloc.removeDeadStructural input4765 value2387 value1 value2 = (output4765, value2388, value1))
    (child4768 : Flapjack.WordAlloc.removeDeadStructural input4768 value2388 value1 value2 = (output4768, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4769 value2387 value1 value2 = (output4769, value5, value1) := by
  rw [input4769_def, output4769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4765]
  dsimp only
  rw [child4768]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4765_skip, output4768_skip]
  kernel_rfl

theorem node4770_cond_eq
    (child4764 : Flapjack.WordAlloc.removeDeadStructural input4764 value2386 value1 value2 = (output4764, value2387, value1))
    (child4769 : Flapjack.WordAlloc.removeDeadStructural input4769 value2387 value1 value2 = (output4769, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4770 value2386 value1 value2 = (output4770, value5, value1) := by
  rw [input4770_def, output4770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4764]
  dsimp only
  rw [child4769]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4764_skip, output4769_skip]
  kernel_rfl

theorem node4771_cond_eq
    (child4763 : Flapjack.WordAlloc.removeDeadStructural input4763 value2384 value1 value2 = (output4763, value2386, value1))
    (child4770 : Flapjack.WordAlloc.removeDeadStructural input4770 value2386 value1 value2 = (output4770, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4771 value2384 value1 value2 = (output4771, value5, value1) := by
  rw [input4771_def, output4771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4763]
  dsimp only
  rw [child4770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4763_skip, output4770_skip]
  kernel_rfl

theorem node4772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4772 value5 value1 value2 = (output4772, value2390, value1) := by
  rw [input4772_def, output4772_def]
  kernel_rfl

theorem node4773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4773 value2390 value1 value2 = (output4773, value2391, value1) := by
  rw [input4773_def, output4773_def]
  kernel_rfl

theorem node4774_cond_eq
    (child4772 : Flapjack.WordAlloc.removeDeadStructural input4772 value5 value1 value2 = (output4772, value2390, value1))
    (child4773 : Flapjack.WordAlloc.removeDeadStructural input4773 value2390 value1 value2 = (output4773, value2391, value1)) : Flapjack.WordAlloc.removeDeadStructural input4774 value5 value1 value2 = (output4774, value2391, value1) := by
  rw [input4774_def, output4774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4772]
  dsimp only
  rw [child4773]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4772_skip, output4773_skip]
  kernel_rfl

theorem node4775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4775 value2391 value1 value2 = (output4775, value2392, value1) := by
  rw [input4775_def, output4775_def]
  kernel_rfl

theorem node4776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4776 value2392 value1 value2 = (output4776, value2392, value1) := by
  rw [input4776_def, output4776_def]
  kernel_rfl

theorem node4777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4777 value2392 value1 value2 = (output4777, value2393, value1) := by
  rw [input4777_def, output4777_def]
  kernel_rfl

theorem node4778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4778 value2393 value1 value2 = (output4778, value2394, value1) := by
  rw [input4778_def, output4778_def]
  kernel_rfl

theorem node4779_cond_eq
    (child4777 : Flapjack.WordAlloc.removeDeadStructural input4777 value2392 value1 value2 = (output4777, value2393, value1))
    (child4778 : Flapjack.WordAlloc.removeDeadStructural input4778 value2393 value1 value2 = (output4778, value2394, value1)) : Flapjack.WordAlloc.removeDeadStructural input4779 value2392 value1 value2 = (output4779, value2394, value1) := by
  rw [input4779_def, output4779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4777]
  dsimp only
  rw [child4778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4777_skip, output4778_skip]
  kernel_rfl

theorem node4780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4780 value2394 value1 value2 = (output4780, value2395, value1) := by
  rw [input4780_def, output4780_def]
  kernel_rfl

theorem node4781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4781 value2395 value1 value2 = (output4781, value2396, value1) := by
  rw [input4781_def, output4781_def]
  kernel_rfl

theorem node4782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4782 value2396 value1 value2 = (output4782, value2397, value1) := by
  rw [input4782_def, output4782_def]
  kernel_rfl

theorem node4783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4783 value2397 value1 value2 = (output4783, value5, value1) := by
  rw [input4783_def, output4783_def]
  kernel_rfl

theorem node4784_cond_eq
    (child4782 : Flapjack.WordAlloc.removeDeadStructural input4782 value2396 value1 value2 = (output4782, value2397, value1))
    (child4783 : Flapjack.WordAlloc.removeDeadStructural input4783 value2397 value1 value2 = (output4783, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4784 value2396 value1 value2 = (output4784, value5, value1) := by
  rw [input4784_def, output4784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4782]
  dsimp only
  rw [child4783]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4782_skip, output4783_skip]
  kernel_rfl

theorem node4785_cond_eq
    (child4781 : Flapjack.WordAlloc.removeDeadStructural input4781 value2395 value1 value2 = (output4781, value2396, value1))
    (child4784 : Flapjack.WordAlloc.removeDeadStructural input4784 value2396 value1 value2 = (output4784, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4785 value2395 value1 value2 = (output4785, value5, value1) := by
  rw [input4785_def, output4785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4781]
  dsimp only
  rw [child4784]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4781_skip, output4784_skip]
  kernel_rfl

theorem node4786_cond_eq
    (child4780 : Flapjack.WordAlloc.removeDeadStructural input4780 value2394 value1 value2 = (output4780, value2395, value1))
    (child4785 : Flapjack.WordAlloc.removeDeadStructural input4785 value2395 value1 value2 = (output4785, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4786 value2394 value1 value2 = (output4786, value5, value1) := by
  rw [input4786_def, output4786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4780]
  dsimp only
  rw [child4785]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4780_skip, output4785_skip]
  kernel_rfl

theorem node4787_cond_eq
    (child4779 : Flapjack.WordAlloc.removeDeadStructural input4779 value2392 value1 value2 = (output4779, value2394, value1))
    (child4786 : Flapjack.WordAlloc.removeDeadStructural input4786 value2394 value1 value2 = (output4786, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4787 value2392 value1 value2 = (output4787, value5, value1) := by
  rw [input4787_def, output4787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4779]
  dsimp only
  rw [child4786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4779_skip, output4786_skip]
  kernel_rfl

theorem node4788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4788 value5 value1 value2 = (output4788, value2398, value1) := by
  rw [input4788_def, output4788_def]
  kernel_rfl

theorem node4789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4789 value2398 value1 value2 = (output4789, value2399, value1) := by
  rw [input4789_def, output4789_def]
  kernel_rfl

theorem node4790_cond_eq
    (child4788 : Flapjack.WordAlloc.removeDeadStructural input4788 value5 value1 value2 = (output4788, value2398, value1))
    (child4789 : Flapjack.WordAlloc.removeDeadStructural input4789 value2398 value1 value2 = (output4789, value2399, value1)) : Flapjack.WordAlloc.removeDeadStructural input4790 value5 value1 value2 = (output4790, value2399, value1) := by
  rw [input4790_def, output4790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4788]
  dsimp only
  rw [child4789]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4788_skip, output4789_skip]
  kernel_rfl

theorem node4791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4791 value2399 value1 value2 = (output4791, value2400, value1) := by
  rw [input4791_def, output4791_def]
  kernel_rfl

theorem node4792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4792 value2400 value1 value2 = (output4792, value2400, value1) := by
  rw [input4792_def, output4792_def]
  kernel_rfl

theorem node4793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4793 value2400 value1 value2 = (output4793, value2401, value1) := by
  rw [input4793_def, output4793_def]
  kernel_rfl

theorem node4794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4794 value2401 value1 value2 = (output4794, value2402, value1) := by
  rw [input4794_def, output4794_def]
  kernel_rfl

theorem node4795_cond_eq
    (child4793 : Flapjack.WordAlloc.removeDeadStructural input4793 value2400 value1 value2 = (output4793, value2401, value1))
    (child4794 : Flapjack.WordAlloc.removeDeadStructural input4794 value2401 value1 value2 = (output4794, value2402, value1)) : Flapjack.WordAlloc.removeDeadStructural input4795 value2400 value1 value2 = (output4795, value2402, value1) := by
  rw [input4795_def, output4795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4793]
  dsimp only
  rw [child4794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4793_skip, output4794_skip]
  kernel_rfl

theorem node4796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4796 value2402 value1 value2 = (output4796, value2403, value1) := by
  rw [input4796_def, output4796_def]
  kernel_rfl

theorem node4797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4797 value2403 value1 value2 = (output4797, value2404, value1) := by
  rw [input4797_def, output4797_def]
  kernel_rfl

theorem node4798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4798 value2404 value1 value2 = (output4798, value2405, value1) := by
  rw [input4798_def, output4798_def]
  kernel_rfl

theorem node4799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4799 value2405 value1 value2 = (output4799, value5, value1) := by
  rw [input4799_def, output4799_def]
  kernel_rfl

theorem node4800_cond_eq
    (child4798 : Flapjack.WordAlloc.removeDeadStructural input4798 value2404 value1 value2 = (output4798, value2405, value1))
    (child4799 : Flapjack.WordAlloc.removeDeadStructural input4799 value2405 value1 value2 = (output4799, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4800 value2404 value1 value2 = (output4800, value5, value1) := by
  rw [input4800_def, output4800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4798]
  dsimp only
  rw [child4799]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4798_skip, output4799_skip]
  kernel_rfl

theorem node4801_cond_eq
    (child4797 : Flapjack.WordAlloc.removeDeadStructural input4797 value2403 value1 value2 = (output4797, value2404, value1))
    (child4800 : Flapjack.WordAlloc.removeDeadStructural input4800 value2404 value1 value2 = (output4800, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4801 value2403 value1 value2 = (output4801, value5, value1) := by
  rw [input4801_def, output4801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4797]
  dsimp only
  rw [child4800]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4797_skip, output4800_skip]
  kernel_rfl

theorem node4802_cond_eq
    (child4796 : Flapjack.WordAlloc.removeDeadStructural input4796 value2402 value1 value2 = (output4796, value2403, value1))
    (child4801 : Flapjack.WordAlloc.removeDeadStructural input4801 value2403 value1 value2 = (output4801, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4802 value2402 value1 value2 = (output4802, value5, value1) := by
  rw [input4802_def, output4802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4796]
  dsimp only
  rw [child4801]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4796_skip, output4801_skip]
  kernel_rfl

theorem node4803_cond_eq
    (child4795 : Flapjack.WordAlloc.removeDeadStructural input4795 value2400 value1 value2 = (output4795, value2402, value1))
    (child4802 : Flapjack.WordAlloc.removeDeadStructural input4802 value2402 value1 value2 = (output4802, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4803 value2400 value1 value2 = (output4803, value5, value1) := by
  rw [input4803_def, output4803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4795]
  dsimp only
  rw [child4802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4795_skip, output4802_skip]
  kernel_rfl

theorem node4804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4804 value5 value1 value2 = (output4804, value2406, value1) := by
  rw [input4804_def, output4804_def]
  kernel_rfl

theorem node4805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4805 value2406 value1 value2 = (output4805, value2407, value1) := by
  rw [input4805_def, output4805_def]
  kernel_rfl

theorem node4806_cond_eq
    (child4804 : Flapjack.WordAlloc.removeDeadStructural input4804 value5 value1 value2 = (output4804, value2406, value1))
    (child4805 : Flapjack.WordAlloc.removeDeadStructural input4805 value2406 value1 value2 = (output4805, value2407, value1)) : Flapjack.WordAlloc.removeDeadStructural input4806 value5 value1 value2 = (output4806, value2407, value1) := by
  rw [input4806_def, output4806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4804]
  dsimp only
  rw [child4805]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4804_skip, output4805_skip]
  kernel_rfl

theorem node4807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4807 value2407 value1 value2 = (output4807, value2408, value1) := by
  rw [input4807_def, output4807_def]
  kernel_rfl

theorem node4808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4808 value2408 value1 value2 = (output4808, value2408, value1) := by
  rw [input4808_def, output4808_def]
  kernel_rfl

theorem node4809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4809 value2408 value1 value2 = (output4809, value2409, value1) := by
  rw [input4809_def, output4809_def]
  kernel_rfl

theorem node4810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4810 value2409 value1 value2 = (output4810, value2410, value1) := by
  rw [input4810_def, output4810_def]
  kernel_rfl

theorem node4811_cond_eq
    (child4809 : Flapjack.WordAlloc.removeDeadStructural input4809 value2408 value1 value2 = (output4809, value2409, value1))
    (child4810 : Flapjack.WordAlloc.removeDeadStructural input4810 value2409 value1 value2 = (output4810, value2410, value1)) : Flapjack.WordAlloc.removeDeadStructural input4811 value2408 value1 value2 = (output4811, value2410, value1) := by
  rw [input4811_def, output4811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4809]
  dsimp only
  rw [child4810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4809_skip, output4810_skip]
  kernel_rfl

theorem node4812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4812 value2410 value1 value2 = (output4812, value2411, value1) := by
  rw [input4812_def, output4812_def]
  kernel_rfl

theorem node4813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4813 value2411 value1 value2 = (output4813, value2412, value1) := by
  rw [input4813_def, output4813_def]
  kernel_rfl

theorem node4814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4814 value2412 value1 value2 = (output4814, value2413, value1) := by
  rw [input4814_def, output4814_def]
  kernel_rfl

theorem node4815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4815 value2413 value1 value2 = (output4815, value5, value1) := by
  rw [input4815_def, output4815_def]
  kernel_rfl

theorem node4816_cond_eq
    (child4814 : Flapjack.WordAlloc.removeDeadStructural input4814 value2412 value1 value2 = (output4814, value2413, value1))
    (child4815 : Flapjack.WordAlloc.removeDeadStructural input4815 value2413 value1 value2 = (output4815, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4816 value2412 value1 value2 = (output4816, value5, value1) := by
  rw [input4816_def, output4816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4814]
  dsimp only
  rw [child4815]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4814_skip, output4815_skip]
  kernel_rfl

theorem node4817_cond_eq
    (child4813 : Flapjack.WordAlloc.removeDeadStructural input4813 value2411 value1 value2 = (output4813, value2412, value1))
    (child4816 : Flapjack.WordAlloc.removeDeadStructural input4816 value2412 value1 value2 = (output4816, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4817 value2411 value1 value2 = (output4817, value5, value1) := by
  rw [input4817_def, output4817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4813]
  dsimp only
  rw [child4816]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4813_skip, output4816_skip]
  kernel_rfl

theorem node4818_cond_eq
    (child4812 : Flapjack.WordAlloc.removeDeadStructural input4812 value2410 value1 value2 = (output4812, value2411, value1))
    (child4817 : Flapjack.WordAlloc.removeDeadStructural input4817 value2411 value1 value2 = (output4817, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4818 value2410 value1 value2 = (output4818, value5, value1) := by
  rw [input4818_def, output4818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4812]
  dsimp only
  rw [child4817]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4812_skip, output4817_skip]
  kernel_rfl

theorem node4819_cond_eq
    (child4811 : Flapjack.WordAlloc.removeDeadStructural input4811 value2408 value1 value2 = (output4811, value2410, value1))
    (child4818 : Flapjack.WordAlloc.removeDeadStructural input4818 value2410 value1 value2 = (output4818, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4819 value2408 value1 value2 = (output4819, value5, value1) := by
  rw [input4819_def, output4819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4811]
  dsimp only
  rw [child4818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4811_skip, output4818_skip]
  kernel_rfl

theorem node4820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4820 value5 value1 value2 = (output4820, value2414, value1) := by
  rw [input4820_def, output4820_def]
  kernel_rfl

theorem node4821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4821 value2414 value1 value2 = (output4821, value2415, value1) := by
  rw [input4821_def, output4821_def]
  kernel_rfl

theorem node4822_cond_eq
    (child4820 : Flapjack.WordAlloc.removeDeadStructural input4820 value5 value1 value2 = (output4820, value2414, value1))
    (child4821 : Flapjack.WordAlloc.removeDeadStructural input4821 value2414 value1 value2 = (output4821, value2415, value1)) : Flapjack.WordAlloc.removeDeadStructural input4822 value5 value1 value2 = (output4822, value2415, value1) := by
  rw [input4822_def, output4822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4820]
  dsimp only
  rw [child4821]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4820_skip, output4821_skip]
  kernel_rfl

theorem node4823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4823 value2415 value1 value2 = (output4823, value2416, value1) := by
  rw [input4823_def, output4823_def]
  kernel_rfl

theorem node4824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4824 value2416 value1 value2 = (output4824, value2416, value1) := by
  rw [input4824_def, output4824_def]
  kernel_rfl

theorem node4825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4825 value2416 value1 value2 = (output4825, value2417, value1) := by
  rw [input4825_def, output4825_def]
  kernel_rfl

theorem node4826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4826 value2417 value1 value2 = (output4826, value2418, value1) := by
  rw [input4826_def, output4826_def]
  kernel_rfl

theorem node4827_cond_eq
    (child4825 : Flapjack.WordAlloc.removeDeadStructural input4825 value2416 value1 value2 = (output4825, value2417, value1))
    (child4826 : Flapjack.WordAlloc.removeDeadStructural input4826 value2417 value1 value2 = (output4826, value2418, value1)) : Flapjack.WordAlloc.removeDeadStructural input4827 value2416 value1 value2 = (output4827, value2418, value1) := by
  rw [input4827_def, output4827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4825]
  dsimp only
  rw [child4826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4825_skip, output4826_skip]
  kernel_rfl

theorem node4828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4828 value2418 value1 value2 = (output4828, value2419, value1) := by
  rw [input4828_def, output4828_def]
  kernel_rfl

theorem node4829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4829 value2419 value1 value2 = (output4829, value2420, value1) := by
  rw [input4829_def, output4829_def]
  kernel_rfl

theorem node4830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4830 value2420 value1 value2 = (output4830, value2421, value1) := by
  rw [input4830_def, output4830_def]
  kernel_rfl

theorem node4831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4831 value2421 value1 value2 = (output4831, value5, value1) := by
  rw [input4831_def, output4831_def]
  kernel_rfl

theorem node4832_cond_eq
    (child4830 : Flapjack.WordAlloc.removeDeadStructural input4830 value2420 value1 value2 = (output4830, value2421, value1))
    (child4831 : Flapjack.WordAlloc.removeDeadStructural input4831 value2421 value1 value2 = (output4831, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4832 value2420 value1 value2 = (output4832, value5, value1) := by
  rw [input4832_def, output4832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4830]
  dsimp only
  rw [child4831]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4830_skip, output4831_skip]
  kernel_rfl

theorem node4833_cond_eq
    (child4829 : Flapjack.WordAlloc.removeDeadStructural input4829 value2419 value1 value2 = (output4829, value2420, value1))
    (child4832 : Flapjack.WordAlloc.removeDeadStructural input4832 value2420 value1 value2 = (output4832, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4833 value2419 value1 value2 = (output4833, value5, value1) := by
  rw [input4833_def, output4833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4829]
  dsimp only
  rw [child4832]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4829_skip, output4832_skip]
  kernel_rfl

theorem node4834_cond_eq
    (child4828 : Flapjack.WordAlloc.removeDeadStructural input4828 value2418 value1 value2 = (output4828, value2419, value1))
    (child4833 : Flapjack.WordAlloc.removeDeadStructural input4833 value2419 value1 value2 = (output4833, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4834 value2418 value1 value2 = (output4834, value5, value1) := by
  rw [input4834_def, output4834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4828]
  dsimp only
  rw [child4833]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4828_skip, output4833_skip]
  kernel_rfl

theorem node4835_cond_eq
    (child4827 : Flapjack.WordAlloc.removeDeadStructural input4827 value2416 value1 value2 = (output4827, value2418, value1))
    (child4834 : Flapjack.WordAlloc.removeDeadStructural input4834 value2418 value1 value2 = (output4834, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4835 value2416 value1 value2 = (output4835, value5, value1) := by
  rw [input4835_def, output4835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4827]
  dsimp only
  rw [child4834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4827_skip, output4834_skip]
  kernel_rfl

theorem node4836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4836 value5 value1 value2 = (output4836, value2422, value1) := by
  rw [input4836_def, output4836_def]
  kernel_rfl

theorem node4837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4837 value2422 value1 value2 = (output4837, value2423, value1) := by
  rw [input4837_def, output4837_def]
  kernel_rfl

theorem node4838_cond_eq
    (child4836 : Flapjack.WordAlloc.removeDeadStructural input4836 value5 value1 value2 = (output4836, value2422, value1))
    (child4837 : Flapjack.WordAlloc.removeDeadStructural input4837 value2422 value1 value2 = (output4837, value2423, value1)) : Flapjack.WordAlloc.removeDeadStructural input4838 value5 value1 value2 = (output4838, value2423, value1) := by
  rw [input4838_def, output4838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4836]
  dsimp only
  rw [child4837]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4836_skip, output4837_skip]
  kernel_rfl

theorem node4839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4839 value2423 value1 value2 = (output4839, value2424, value1) := by
  rw [input4839_def, output4839_def]
  kernel_rfl

theorem node4840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4840 value2424 value1 value2 = (output4840, value2424, value1) := by
  rw [input4840_def, output4840_def]
  kernel_rfl

theorem node4841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4841 value2424 value1 value2 = (output4841, value2425, value1) := by
  rw [input4841_def, output4841_def]
  kernel_rfl

theorem node4842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4842 value2425 value1 value2 = (output4842, value2426, value1) := by
  rw [input4842_def, output4842_def]
  kernel_rfl

theorem node4843_cond_eq
    (child4841 : Flapjack.WordAlloc.removeDeadStructural input4841 value2424 value1 value2 = (output4841, value2425, value1))
    (child4842 : Flapjack.WordAlloc.removeDeadStructural input4842 value2425 value1 value2 = (output4842, value2426, value1)) : Flapjack.WordAlloc.removeDeadStructural input4843 value2424 value1 value2 = (output4843, value2426, value1) := by
  rw [input4843_def, output4843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4841]
  dsimp only
  rw [child4842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4841_skip, output4842_skip]
  kernel_rfl

theorem node4844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4844 value2426 value1 value2 = (output4844, value2427, value1) := by
  rw [input4844_def, output4844_def]
  kernel_rfl

theorem node4845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4845 value2427 value1 value2 = (output4845, value2428, value1) := by
  rw [input4845_def, output4845_def]
  kernel_rfl

theorem node4846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4846 value2428 value1 value2 = (output4846, value2429, value1) := by
  rw [input4846_def, output4846_def]
  kernel_rfl

theorem node4847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4847 value2429 value1 value2 = (output4847, value5, value1) := by
  rw [input4847_def, output4847_def]
  kernel_rfl

theorem node4848_cond_eq
    (child4846 : Flapjack.WordAlloc.removeDeadStructural input4846 value2428 value1 value2 = (output4846, value2429, value1))
    (child4847 : Flapjack.WordAlloc.removeDeadStructural input4847 value2429 value1 value2 = (output4847, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4848 value2428 value1 value2 = (output4848, value5, value1) := by
  rw [input4848_def, output4848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4846]
  dsimp only
  rw [child4847]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4846_skip, output4847_skip]
  kernel_rfl

theorem node4849_cond_eq
    (child4845 : Flapjack.WordAlloc.removeDeadStructural input4845 value2427 value1 value2 = (output4845, value2428, value1))
    (child4848 : Flapjack.WordAlloc.removeDeadStructural input4848 value2428 value1 value2 = (output4848, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4849 value2427 value1 value2 = (output4849, value5, value1) := by
  rw [input4849_def, output4849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4845]
  dsimp only
  rw [child4848]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4845_skip, output4848_skip]
  kernel_rfl

theorem node4850_cond_eq
    (child4844 : Flapjack.WordAlloc.removeDeadStructural input4844 value2426 value1 value2 = (output4844, value2427, value1))
    (child4849 : Flapjack.WordAlloc.removeDeadStructural input4849 value2427 value1 value2 = (output4849, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4850 value2426 value1 value2 = (output4850, value5, value1) := by
  rw [input4850_def, output4850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4844]
  dsimp only
  rw [child4849]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4844_skip, output4849_skip]
  kernel_rfl

theorem node4851_cond_eq
    (child4843 : Flapjack.WordAlloc.removeDeadStructural input4843 value2424 value1 value2 = (output4843, value2426, value1))
    (child4850 : Flapjack.WordAlloc.removeDeadStructural input4850 value2426 value1 value2 = (output4850, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4851 value2424 value1 value2 = (output4851, value5, value1) := by
  rw [input4851_def, output4851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4843]
  dsimp only
  rw [child4850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4843_skip, output4850_skip]
  kernel_rfl

theorem node4852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4852 value5 value1 value2 = (output4852, value2430, value1) := by
  rw [input4852_def, output4852_def]
  kernel_rfl

theorem node4853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4853 value2430 value1 value2 = (output4853, value2431, value1) := by
  rw [input4853_def, output4853_def]
  kernel_rfl

theorem node4854_cond_eq
    (child4852 : Flapjack.WordAlloc.removeDeadStructural input4852 value5 value1 value2 = (output4852, value2430, value1))
    (child4853 : Flapjack.WordAlloc.removeDeadStructural input4853 value2430 value1 value2 = (output4853, value2431, value1)) : Flapjack.WordAlloc.removeDeadStructural input4854 value5 value1 value2 = (output4854, value2431, value1) := by
  rw [input4854_def, output4854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4852]
  dsimp only
  rw [child4853]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4852_skip, output4853_skip]
  kernel_rfl

theorem node4855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4855 value2431 value1 value2 = (output4855, value2432, value1) := by
  rw [input4855_def, output4855_def]
  kernel_rfl

theorem node4856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4856 value2432 value1 value2 = (output4856, value2432, value1) := by
  rw [input4856_def, output4856_def]
  kernel_rfl

theorem node4857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4857 value2432 value1 value2 = (output4857, value2433, value1) := by
  rw [input4857_def, output4857_def]
  kernel_rfl

theorem node4858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4858 value2433 value1 value2 = (output4858, value2434, value1) := by
  rw [input4858_def, output4858_def]
  kernel_rfl

theorem node4859_cond_eq
    (child4857 : Flapjack.WordAlloc.removeDeadStructural input4857 value2432 value1 value2 = (output4857, value2433, value1))
    (child4858 : Flapjack.WordAlloc.removeDeadStructural input4858 value2433 value1 value2 = (output4858, value2434, value1)) : Flapjack.WordAlloc.removeDeadStructural input4859 value2432 value1 value2 = (output4859, value2434, value1) := by
  rw [input4859_def, output4859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4857]
  dsimp only
  rw [child4858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4857_skip, output4858_skip]
  kernel_rfl

theorem node4860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4860 value2434 value1 value2 = (output4860, value2435, value1) := by
  rw [input4860_def, output4860_def]
  kernel_rfl

theorem node4861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4861 value2435 value1 value2 = (output4861, value2436, value1) := by
  rw [input4861_def, output4861_def]
  kernel_rfl

theorem node4862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4862 value2436 value1 value2 = (output4862, value2437, value1) := by
  rw [input4862_def, output4862_def]
  kernel_rfl

theorem node4863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4863 value2437 value1 value2 = (output4863, value5, value1) := by
  rw [input4863_def, output4863_def]
  kernel_rfl

#print axioms node4863_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
