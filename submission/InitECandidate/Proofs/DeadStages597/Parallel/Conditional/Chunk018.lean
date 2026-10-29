import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk018
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node4608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4608 value841 value1 value2 = (output4608, value841, value1) := by
  rw [input4608_def, output4608_def]
  kernel_rfl

theorem node4609_cond_eq
    (child4607 : Flapjack.WordAlloc.removeDeadStructural input4607 value835 value1 value2 = (output4607, value841, value1))
    (child4608 : Flapjack.WordAlloc.removeDeadStructural input4608 value841 value1 value2 = (output4608, value841, value1)) : Flapjack.WordAlloc.removeDeadStructural input4609 value835 value1 value2 = (output4609, value841, value1) := by
  rw [input4609_def, output4609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4607]
  try dsimp only
  rw [child4608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4607_skip, output4608_skip]
  kernel_rfl

theorem node4610_cond_eq
    (child4606 : Flapjack.WordAlloc.removeDeadStructural input4606 value835 value1 value2 = (output4606, value835, value1))
    (child4609 : Flapjack.WordAlloc.removeDeadStructural input4609 value835 value1 value2 = (output4609, value841, value1)) : Flapjack.WordAlloc.removeDeadStructural input4610 value835 value1 value2 = (output4610, value841, value1) := by
  rw [input4610_def, output4610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4606]
  try dsimp only
  rw [child4609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4606_skip, output4609_skip]
  kernel_rfl

theorem node4611_cond_eq
    (child4605 : Flapjack.WordAlloc.removeDeadStructural input4605 value835 value1 value2 = (output4605, value835, value1))
    (child4610 : Flapjack.WordAlloc.removeDeadStructural input4610 value835 value1 value2 = (output4610, value841, value1)) : Flapjack.WordAlloc.removeDeadStructural input4611 value835 value1 value2 = (output4611, value841, value1) := by
  rw [input4611_def, output4611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4605]
  try dsimp only
  rw [child4610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4605_skip, output4610_skip]
  kernel_rfl

theorem node4612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4612 value841 value1 value2 = (output4612, value842, value1) := by
  rw [input4612_def, output4612_def]
  kernel_rfl

theorem node4613_cond_eq
    (child4611 : Flapjack.WordAlloc.removeDeadStructural input4611 value835 value1 value2 = (output4611, value841, value1))
    (child4612 : Flapjack.WordAlloc.removeDeadStructural input4612 value841 value1 value2 = (output4612, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input4613 value835 value1 value2 = (output4613, value842, value1) := by
  rw [input4613_def, output4613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4611]
  try dsimp only
  rw [child4612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4611_skip, output4612_skip]
  kernel_rfl

theorem node4614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4614 value842 value1 value2 = (output4614, value842, value1) := by
  rw [input4614_def, output4614_def]
  kernel_rfl

theorem node4615_cond_eq
    (child4613 : Flapjack.WordAlloc.removeDeadStructural input4613 value835 value1 value2 = (output4613, value842, value1))
    (child4614 : Flapjack.WordAlloc.removeDeadStructural input4614 value842 value1 value2 = (output4614, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input4615 value835 value1 value2 = (output4615, value842, value1) := by
  rw [input4615_def, output4615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4613]
  try dsimp only
  rw [child4614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4613_skip, output4614_skip]
  kernel_rfl

theorem node4616_cond_eq
    (child4604 : Flapjack.WordAlloc.removeDeadStructural input4604 value835 value1 value2 = (output4604, value840, value1))
    (child4615 : Flapjack.WordAlloc.removeDeadStructural input4615 value835 value1 value2 = (output4615, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input4616 value835 value1 value2 = (output4616, value844, value1) := by
  rw [input4616_def, output4616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4604]
  try dsimp only
  rw [child4615]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4604_skip, output4615_skip]
  kernel_rfl

theorem node4617_cond_eq
    (child4575 : Flapjack.WordAlloc.removeDeadStructural input4575 value835 value1 value2 = (output4575, value835, value1))
    (child4616 : Flapjack.WordAlloc.removeDeadStructural input4616 value835 value1 value2 = (output4616, value844, value1)) : Flapjack.WordAlloc.removeDeadStructural input4617 value835 value1 value2 = (output4617, value844, value1) := by
  rw [input4617_def, output4617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4575]
  try dsimp only
  rw [child4616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4575_skip, output4616_skip]
  kernel_rfl

theorem node4618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4618 value844 value1 value2 = (output4618, value842, value1) := by
  rw [input4618_def, output4618_def]
  kernel_rfl

theorem node4619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4619 value842 value1 value2 = (output4619, value845, value1) := by
  rw [input4619_def, output4619_def]
  kernel_rfl

theorem node4620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4620 value845 value1 value2 = (output4620, value845, value1) := by
  rw [input4620_def, output4620_def]
  kernel_rfl

theorem node4621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4621 value845 value1 value2 = (output4621, value845, value1) := by
  rw [input4621_def, output4621_def]
  kernel_rfl

theorem node4622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4622 value845 value1 value2 = (output4622, value845, value1) := by
  rw [input4622_def, output4622_def]
  kernel_rfl

theorem node4623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4623 value845 value1 value2 = (output4623, value845, value1) := by
  rw [input4623_def, output4623_def]
  kernel_rfl

theorem node4624_cond_eq
    (child4622 : Flapjack.WordAlloc.removeDeadStructural input4622 value845 value1 value2 = (output4622, value845, value1))
    (child4623 : Flapjack.WordAlloc.removeDeadStructural input4623 value845 value1 value2 = (output4623, value845, value1)) : Flapjack.WordAlloc.removeDeadStructural input4624 value845 value1 value2 = (output4624, value845, value1) := by
  rw [input4624_def, output4624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4622]
  try dsimp only
  rw [child4623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4622_skip, output4623_skip]
  kernel_rfl

theorem node4625_cond_eq
    (child4621 : Flapjack.WordAlloc.removeDeadStructural input4621 value845 value1 value2 = (output4621, value845, value1))
    (child4624 : Flapjack.WordAlloc.removeDeadStructural input4624 value845 value1 value2 = (output4624, value845, value1)) : Flapjack.WordAlloc.removeDeadStructural input4625 value845 value1 value2 = (output4625, value845, value1) := by
  rw [input4625_def, output4625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4621]
  try dsimp only
  rw [child4624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4621_skip, output4624_skip]
  kernel_rfl

theorem node4626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4626 value845 value1 value2 = (output4626, value845, value1) := by
  rw [input4626_def, output4626_def]
  kernel_rfl

theorem node4627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4627 value845 value1 value2 = (output4627, value845, value1) := by
  rw [input4627_def, output4627_def]
  kernel_rfl

theorem node4628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4628 value845 value1 value2 = (output4628, value840, value1) := by
  rw [input4628_def, output4628_def]
  kernel_rfl

theorem node4629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4629 value840 value1 value2 = (output4629, value840, value1) := by
  rw [input4629_def, output4629_def]
  kernel_rfl

theorem node4630_cond_eq
    (child4628 : Flapjack.WordAlloc.removeDeadStructural input4628 value845 value1 value2 = (output4628, value840, value1))
    (child4629 : Flapjack.WordAlloc.removeDeadStructural input4629 value840 value1 value2 = (output4629, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4630 value845 value1 value2 = (output4630, value840, value1) := by
  rw [input4630_def, output4630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4628]
  try dsimp only
  rw [child4629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4628_skip, output4629_skip]
  kernel_rfl

theorem node4631_cond_eq
    (child4627 : Flapjack.WordAlloc.removeDeadStructural input4627 value845 value1 value2 = (output4627, value845, value1))
    (child4630 : Flapjack.WordAlloc.removeDeadStructural input4630 value845 value1 value2 = (output4630, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4631 value845 value1 value2 = (output4631, value840, value1) := by
  rw [input4631_def, output4631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4627]
  try dsimp only
  rw [child4630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4627_skip, output4630_skip]
  kernel_rfl

theorem node4632_cond_eq
    (child4626 : Flapjack.WordAlloc.removeDeadStructural input4626 value845 value1 value2 = (output4626, value845, value1))
    (child4631 : Flapjack.WordAlloc.removeDeadStructural input4631 value845 value1 value2 = (output4631, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4632 value845 value1 value2 = (output4632, value840, value1) := by
  rw [input4632_def, output4632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4626]
  try dsimp only
  rw [child4631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4626_skip, output4631_skip]
  kernel_rfl

theorem node4633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4633 value840 value1 value2 = (output4633, value846, value1) := by
  rw [input4633_def, output4633_def]
  kernel_rfl

theorem node4634_cond_eq
    (child4632 : Flapjack.WordAlloc.removeDeadStructural input4632 value845 value1 value2 = (output4632, value840, value1))
    (child4633 : Flapjack.WordAlloc.removeDeadStructural input4633 value840 value1 value2 = (output4633, value846, value1)) : Flapjack.WordAlloc.removeDeadStructural input4634 value845 value1 value2 = (output4634, value846, value1) := by
  rw [input4634_def, output4634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4632]
  try dsimp only
  rw [child4633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4632_skip, output4633_skip]
  kernel_rfl

theorem node4635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4635 value846 value1 value2 = (output4635, value847, value1) := by
  rw [input4635_def, output4635_def]
  kernel_rfl

theorem node4636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4636 value847 value1 value2 = (output4636, value848, value1) := by
  rw [input4636_def, output4636_def]
  kernel_rfl

theorem node4637_cond_eq
    (child4635 : Flapjack.WordAlloc.removeDeadStructural input4635 value846 value1 value2 = (output4635, value847, value1))
    (child4636 : Flapjack.WordAlloc.removeDeadStructural input4636 value847 value1 value2 = (output4636, value848, value1)) : Flapjack.WordAlloc.removeDeadStructural input4637 value846 value1 value2 = (output4637, value848, value1) := by
  rw [input4637_def, output4637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4635]
  try dsimp only
  rw [child4636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4635_skip, output4636_skip]
  kernel_rfl

theorem node4638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4638 value848 value1 value2 = (output4638, value846, value1) := by
  rw [input4638_def, output4638_def]
  kernel_rfl

theorem node4639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4639 value846 value1 value2 = (output4639, value846, value1) := by
  rw [input4639_def, output4639_def]
  kernel_rfl

theorem node4640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4640 value846 value1 value2 = (output4640, value849, value1) := by
  rw [input4640_def, output4640_def]
  kernel_rfl

theorem node4641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4641 value849 value1 value2 = (output4641, value849, value1) := by
  rw [input4641_def, output4641_def]
  kernel_rfl

theorem node4642_cond_eq
    (child4640 : Flapjack.WordAlloc.removeDeadStructural input4640 value846 value1 value2 = (output4640, value849, value1))
    (child4641 : Flapjack.WordAlloc.removeDeadStructural input4641 value849 value1 value2 = (output4641, value849, value1)) : Flapjack.WordAlloc.removeDeadStructural input4642 value846 value1 value2 = (output4642, value849, value1) := by
  rw [input4642_def, output4642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4640]
  try dsimp only
  rw [child4641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4640_skip, output4641_skip]
  kernel_rfl

theorem node4643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4643 value849 value1 value2 = (output4643, value850, value1) := by
  rw [input4643_def, output4643_def]
  kernel_rfl

theorem node4644_cond_eq
    (child4642 : Flapjack.WordAlloc.removeDeadStructural input4642 value846 value1 value2 = (output4642, value849, value1))
    (child4643 : Flapjack.WordAlloc.removeDeadStructural input4643 value849 value1 value2 = (output4643, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4644 value846 value1 value2 = (output4644, value850, value1) := by
  rw [input4644_def, output4644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4642]
  try dsimp only
  rw [child4643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4642_skip, output4643_skip]
  kernel_rfl

theorem node4645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4645 value850 value1 value2 = (output4645, value850, value1) := by
  rw [input4645_def, output4645_def]
  kernel_rfl

theorem node4646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4646 value850 value1 value2 = (output4646, value850, value1) := by
  rw [input4646_def, output4646_def]
  kernel_rfl

theorem node4647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4647 value850 value1 value2 = (output4647, value850, value1) := by
  rw [input4647_def, output4647_def]
  kernel_rfl

theorem node4648_cond_eq
    (child4646 : Flapjack.WordAlloc.removeDeadStructural input4646 value850 value1 value2 = (output4646, value850, value1))
    (child4647 : Flapjack.WordAlloc.removeDeadStructural input4647 value850 value1 value2 = (output4647, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4648 value850 value1 value2 = (output4648, value850, value1) := by
  rw [input4648_def, output4648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4646]
  try dsimp only
  rw [child4647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4646_skip, output4647_skip]
  kernel_rfl

theorem node4649_cond_eq
    (child4645 : Flapjack.WordAlloc.removeDeadStructural input4645 value850 value1 value2 = (output4645, value850, value1))
    (child4648 : Flapjack.WordAlloc.removeDeadStructural input4648 value850 value1 value2 = (output4648, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4649 value850 value1 value2 = (output4649, value850, value1) := by
  rw [input4649_def, output4649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4645]
  try dsimp only
  rw [child4648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4645_skip, output4648_skip]
  kernel_rfl

theorem node4650_cond_eq
    (child4644 : Flapjack.WordAlloc.removeDeadStructural input4644 value846 value1 value2 = (output4644, value850, value1))
    (child4649 : Flapjack.WordAlloc.removeDeadStructural input4649 value850 value1 value2 = (output4649, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4650 value846 value1 value2 = (output4650, value850, value1) := by
  rw [input4650_def, output4650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4644]
  try dsimp only
  rw [child4649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4644_skip, output4649_skip]
  kernel_rfl

theorem node4651_cond_eq
    (child4639 : Flapjack.WordAlloc.removeDeadStructural input4639 value846 value1 value2 = (output4639, value846, value1))
    (child4650 : Flapjack.WordAlloc.removeDeadStructural input4650 value846 value1 value2 = (output4650, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4651 value846 value1 value2 = (output4651, value850, value1) := by
  rw [input4651_def, output4651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4639]
  try dsimp only
  rw [child4650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4639_skip, output4650_skip]
  kernel_rfl

theorem node4652_cond_eq
    (child4638 : Flapjack.WordAlloc.removeDeadStructural input4638 value848 value1 value2 = (output4638, value846, value1))
    (child4651 : Flapjack.WordAlloc.removeDeadStructural input4651 value846 value1 value2 = (output4651, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4652 value848 value1 value2 = (output4652, value850, value1) := by
  rw [input4652_def, output4652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4638]
  try dsimp only
  rw [child4651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4638_skip, output4651_skip]
  kernel_rfl

theorem node4653_cond_eq
    (child4637 : Flapjack.WordAlloc.removeDeadStructural input4637 value846 value1 value2 = (output4637, value848, value1))
    (child4652 : Flapjack.WordAlloc.removeDeadStructural input4652 value848 value1 value2 = (output4652, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4653 value846 value1 value2 = (output4653, value850, value1) := by
  rw [input4653_def, output4653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4637]
  try dsimp only
  rw [child4652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4637_skip, output4652_skip]
  kernel_rfl

theorem node4654_cond_eq
    (child4634 : Flapjack.WordAlloc.removeDeadStructural input4634 value845 value1 value2 = (output4634, value846, value1))
    (child4653 : Flapjack.WordAlloc.removeDeadStructural input4653 value846 value1 value2 = (output4653, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4654 value845 value1 value2 = (output4654, value850, value1) := by
  rw [input4654_def, output4654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4634]
  try dsimp only
  rw [child4653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4634_skip, output4653_skip]
  kernel_rfl

theorem node4655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4655 value845 value1 value2 = (output4655, value845, value1) := by
  rw [input4655_def, output4655_def]
  kernel_rfl

theorem node4656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4656 value845 value1 value2 = (output4656, value845, value1) := by
  rw [input4656_def, output4656_def]
  kernel_rfl

theorem node4657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4657 value845 value1 value2 = (output4657, value851, value1) := by
  rw [input4657_def, output4657_def]
  kernel_rfl

theorem node4658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4658 value851 value1 value2 = (output4658, value851, value1) := by
  rw [input4658_def, output4658_def]
  kernel_rfl

theorem node4659_cond_eq
    (child4657 : Flapjack.WordAlloc.removeDeadStructural input4657 value845 value1 value2 = (output4657, value851, value1))
    (child4658 : Flapjack.WordAlloc.removeDeadStructural input4658 value851 value1 value2 = (output4658, value851, value1)) : Flapjack.WordAlloc.removeDeadStructural input4659 value845 value1 value2 = (output4659, value851, value1) := by
  rw [input4659_def, output4659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4657]
  try dsimp only
  rw [child4658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4657_skip, output4658_skip]
  kernel_rfl

theorem node4660_cond_eq
    (child4656 : Flapjack.WordAlloc.removeDeadStructural input4656 value845 value1 value2 = (output4656, value845, value1))
    (child4659 : Flapjack.WordAlloc.removeDeadStructural input4659 value845 value1 value2 = (output4659, value851, value1)) : Flapjack.WordAlloc.removeDeadStructural input4660 value845 value1 value2 = (output4660, value851, value1) := by
  rw [input4660_def, output4660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4656]
  try dsimp only
  rw [child4659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4656_skip, output4659_skip]
  kernel_rfl

theorem node4661_cond_eq
    (child4655 : Flapjack.WordAlloc.removeDeadStructural input4655 value845 value1 value2 = (output4655, value845, value1))
    (child4660 : Flapjack.WordAlloc.removeDeadStructural input4660 value845 value1 value2 = (output4660, value851, value1)) : Flapjack.WordAlloc.removeDeadStructural input4661 value845 value1 value2 = (output4661, value851, value1) := by
  rw [input4661_def, output4661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4655]
  try dsimp only
  rw [child4660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4655_skip, output4660_skip]
  kernel_rfl

theorem node4662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4662 value851 value1 value2 = (output4662, value852, value1) := by
  rw [input4662_def, output4662_def]
  kernel_rfl

theorem node4663_cond_eq
    (child4661 : Flapjack.WordAlloc.removeDeadStructural input4661 value845 value1 value2 = (output4661, value851, value1))
    (child4662 : Flapjack.WordAlloc.removeDeadStructural input4662 value851 value1 value2 = (output4662, value852, value1)) : Flapjack.WordAlloc.removeDeadStructural input4663 value845 value1 value2 = (output4663, value852, value1) := by
  rw [input4663_def, output4663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4661]
  try dsimp only
  rw [child4662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4661_skip, output4662_skip]
  kernel_rfl

theorem node4664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4664 value852 value1 value2 = (output4664, value852, value1) := by
  rw [input4664_def, output4664_def]
  kernel_rfl

theorem node4665_cond_eq
    (child4663 : Flapjack.WordAlloc.removeDeadStructural input4663 value845 value1 value2 = (output4663, value852, value1))
    (child4664 : Flapjack.WordAlloc.removeDeadStructural input4664 value852 value1 value2 = (output4664, value852, value1)) : Flapjack.WordAlloc.removeDeadStructural input4665 value845 value1 value2 = (output4665, value852, value1) := by
  rw [input4665_def, output4665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4663]
  try dsimp only
  rw [child4664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4663_skip, output4664_skip]
  kernel_rfl

theorem node4666_cond_eq
    (child4654 : Flapjack.WordAlloc.removeDeadStructural input4654 value845 value1 value2 = (output4654, value850, value1))
    (child4665 : Flapjack.WordAlloc.removeDeadStructural input4665 value845 value1 value2 = (output4665, value852, value1)) : Flapjack.WordAlloc.removeDeadStructural input4666 value845 value1 value2 = (output4666, value854, value1) := by
  rw [input4666_def, output4666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4654]
  try dsimp only
  rw [child4665]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4654_skip, output4665_skip]
  kernel_rfl

theorem node4667_cond_eq
    (child4625 : Flapjack.WordAlloc.removeDeadStructural input4625 value845 value1 value2 = (output4625, value845, value1))
    (child4666 : Flapjack.WordAlloc.removeDeadStructural input4666 value845 value1 value2 = (output4666, value854, value1)) : Flapjack.WordAlloc.removeDeadStructural input4667 value845 value1 value2 = (output4667, value854, value1) := by
  rw [input4667_def, output4667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4625]
  try dsimp only
  rw [child4666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4625_skip, output4666_skip]
  kernel_rfl

theorem node4668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4668 value854 value1 value2 = (output4668, value852, value1) := by
  rw [input4668_def, output4668_def]
  kernel_rfl

theorem node4669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4669 value852 value1 value2 = (output4669, value855, value1) := by
  rw [input4669_def, output4669_def]
  kernel_rfl

theorem node4670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4670 value855 value1 value2 = (output4670, value855, value1) := by
  rw [input4670_def, output4670_def]
  kernel_rfl

theorem node4671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4671 value855 value1 value2 = (output4671, value855, value1) := by
  rw [input4671_def, output4671_def]
  kernel_rfl

theorem node4672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4672 value855 value1 value2 = (output4672, value855, value1) := by
  rw [input4672_def, output4672_def]
  kernel_rfl

theorem node4673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4673 value855 value1 value2 = (output4673, value855, value1) := by
  rw [input4673_def, output4673_def]
  kernel_rfl

theorem node4674_cond_eq
    (child4672 : Flapjack.WordAlloc.removeDeadStructural input4672 value855 value1 value2 = (output4672, value855, value1))
    (child4673 : Flapjack.WordAlloc.removeDeadStructural input4673 value855 value1 value2 = (output4673, value855, value1)) : Flapjack.WordAlloc.removeDeadStructural input4674 value855 value1 value2 = (output4674, value855, value1) := by
  rw [input4674_def, output4674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4672]
  try dsimp only
  rw [child4673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4672_skip, output4673_skip]
  kernel_rfl

theorem node4675_cond_eq
    (child4671 : Flapjack.WordAlloc.removeDeadStructural input4671 value855 value1 value2 = (output4671, value855, value1))
    (child4674 : Flapjack.WordAlloc.removeDeadStructural input4674 value855 value1 value2 = (output4674, value855, value1)) : Flapjack.WordAlloc.removeDeadStructural input4675 value855 value1 value2 = (output4675, value855, value1) := by
  rw [input4675_def, output4675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4671]
  try dsimp only
  rw [child4674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4671_skip, output4674_skip]
  kernel_rfl

theorem node4676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4676 value855 value1 value2 = (output4676, value855, value1) := by
  rw [input4676_def, output4676_def]
  kernel_rfl

theorem node4677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4677 value855 value1 value2 = (output4677, value855, value1) := by
  rw [input4677_def, output4677_def]
  kernel_rfl

theorem node4678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4678 value855 value1 value2 = (output4678, value850, value1) := by
  rw [input4678_def, output4678_def]
  kernel_rfl

theorem node4679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4679 value850 value1 value2 = (output4679, value850, value1) := by
  rw [input4679_def, output4679_def]
  kernel_rfl

theorem node4680_cond_eq
    (child4678 : Flapjack.WordAlloc.removeDeadStructural input4678 value855 value1 value2 = (output4678, value850, value1))
    (child4679 : Flapjack.WordAlloc.removeDeadStructural input4679 value850 value1 value2 = (output4679, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4680 value855 value1 value2 = (output4680, value850, value1) := by
  rw [input4680_def, output4680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4678]
  try dsimp only
  rw [child4679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4678_skip, output4679_skip]
  kernel_rfl

theorem node4681_cond_eq
    (child4677 : Flapjack.WordAlloc.removeDeadStructural input4677 value855 value1 value2 = (output4677, value855, value1))
    (child4680 : Flapjack.WordAlloc.removeDeadStructural input4680 value855 value1 value2 = (output4680, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4681 value855 value1 value2 = (output4681, value850, value1) := by
  rw [input4681_def, output4681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4677]
  try dsimp only
  rw [child4680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4677_skip, output4680_skip]
  kernel_rfl

theorem node4682_cond_eq
    (child4676 : Flapjack.WordAlloc.removeDeadStructural input4676 value855 value1 value2 = (output4676, value855, value1))
    (child4681 : Flapjack.WordAlloc.removeDeadStructural input4681 value855 value1 value2 = (output4681, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input4682 value855 value1 value2 = (output4682, value850, value1) := by
  rw [input4682_def, output4682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4676]
  try dsimp only
  rw [child4681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4676_skip, output4681_skip]
  kernel_rfl

theorem node4683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4683 value850 value1 value2 = (output4683, value856, value1) := by
  rw [input4683_def, output4683_def]
  kernel_rfl

theorem node4684_cond_eq
    (child4682 : Flapjack.WordAlloc.removeDeadStructural input4682 value855 value1 value2 = (output4682, value850, value1))
    (child4683 : Flapjack.WordAlloc.removeDeadStructural input4683 value850 value1 value2 = (output4683, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input4684 value855 value1 value2 = (output4684, value856, value1) := by
  rw [input4684_def, output4684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4682]
  try dsimp only
  rw [child4683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4682_skip, output4683_skip]
  kernel_rfl

theorem node4685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4685 value856 value1 value2 = (output4685, value857, value1) := by
  rw [input4685_def, output4685_def]
  kernel_rfl

theorem node4686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4686 value857 value1 value2 = (output4686, value858, value1) := by
  rw [input4686_def, output4686_def]
  kernel_rfl

theorem node4687_cond_eq
    (child4685 : Flapjack.WordAlloc.removeDeadStructural input4685 value856 value1 value2 = (output4685, value857, value1))
    (child4686 : Flapjack.WordAlloc.removeDeadStructural input4686 value857 value1 value2 = (output4686, value858, value1)) : Flapjack.WordAlloc.removeDeadStructural input4687 value856 value1 value2 = (output4687, value858, value1) := by
  rw [input4687_def, output4687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4685]
  try dsimp only
  rw [child4686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4685_skip, output4686_skip]
  kernel_rfl

theorem node4688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4688 value858 value1 value2 = (output4688, value856, value1) := by
  rw [input4688_def, output4688_def]
  kernel_rfl

theorem node4689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4689 value856 value1 value2 = (output4689, value856, value1) := by
  rw [input4689_def, output4689_def]
  kernel_rfl

theorem node4690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4690 value856 value1 value2 = (output4690, value859, value1) := by
  rw [input4690_def, output4690_def]
  kernel_rfl

theorem node4691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4691 value859 value1 value2 = (output4691, value859, value1) := by
  rw [input4691_def, output4691_def]
  kernel_rfl

theorem node4692_cond_eq
    (child4690 : Flapjack.WordAlloc.removeDeadStructural input4690 value856 value1 value2 = (output4690, value859, value1))
    (child4691 : Flapjack.WordAlloc.removeDeadStructural input4691 value859 value1 value2 = (output4691, value859, value1)) : Flapjack.WordAlloc.removeDeadStructural input4692 value856 value1 value2 = (output4692, value859, value1) := by
  rw [input4692_def, output4692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4690]
  try dsimp only
  rw [child4691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4690_skip, output4691_skip]
  kernel_rfl

theorem node4693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4693 value859 value1 value2 = (output4693, value860, value1) := by
  rw [input4693_def, output4693_def]
  kernel_rfl

theorem node4694_cond_eq
    (child4692 : Flapjack.WordAlloc.removeDeadStructural input4692 value856 value1 value2 = (output4692, value859, value1))
    (child4693 : Flapjack.WordAlloc.removeDeadStructural input4693 value859 value1 value2 = (output4693, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4694 value856 value1 value2 = (output4694, value860, value1) := by
  rw [input4694_def, output4694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4692]
  try dsimp only
  rw [child4693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4692_skip, output4693_skip]
  kernel_rfl

theorem node4695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4695 value860 value1 value2 = (output4695, value860, value1) := by
  rw [input4695_def, output4695_def]
  kernel_rfl

theorem node4696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4696 value860 value1 value2 = (output4696, value860, value1) := by
  rw [input4696_def, output4696_def]
  kernel_rfl

theorem node4697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4697 value860 value1 value2 = (output4697, value860, value1) := by
  rw [input4697_def, output4697_def]
  kernel_rfl

theorem node4698_cond_eq
    (child4696 : Flapjack.WordAlloc.removeDeadStructural input4696 value860 value1 value2 = (output4696, value860, value1))
    (child4697 : Flapjack.WordAlloc.removeDeadStructural input4697 value860 value1 value2 = (output4697, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4698 value860 value1 value2 = (output4698, value860, value1) := by
  rw [input4698_def, output4698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4696]
  try dsimp only
  rw [child4697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4696_skip, output4697_skip]
  kernel_rfl

theorem node4699_cond_eq
    (child4695 : Flapjack.WordAlloc.removeDeadStructural input4695 value860 value1 value2 = (output4695, value860, value1))
    (child4698 : Flapjack.WordAlloc.removeDeadStructural input4698 value860 value1 value2 = (output4698, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4699 value860 value1 value2 = (output4699, value860, value1) := by
  rw [input4699_def, output4699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4695]
  try dsimp only
  rw [child4698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4695_skip, output4698_skip]
  kernel_rfl

theorem node4700_cond_eq
    (child4694 : Flapjack.WordAlloc.removeDeadStructural input4694 value856 value1 value2 = (output4694, value860, value1))
    (child4699 : Flapjack.WordAlloc.removeDeadStructural input4699 value860 value1 value2 = (output4699, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4700 value856 value1 value2 = (output4700, value860, value1) := by
  rw [input4700_def, output4700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4694]
  try dsimp only
  rw [child4699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4694_skip, output4699_skip]
  kernel_rfl

theorem node4701_cond_eq
    (child4689 : Flapjack.WordAlloc.removeDeadStructural input4689 value856 value1 value2 = (output4689, value856, value1))
    (child4700 : Flapjack.WordAlloc.removeDeadStructural input4700 value856 value1 value2 = (output4700, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4701 value856 value1 value2 = (output4701, value860, value1) := by
  rw [input4701_def, output4701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4689]
  try dsimp only
  rw [child4700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4689_skip, output4700_skip]
  kernel_rfl

theorem node4702_cond_eq
    (child4688 : Flapjack.WordAlloc.removeDeadStructural input4688 value858 value1 value2 = (output4688, value856, value1))
    (child4701 : Flapjack.WordAlloc.removeDeadStructural input4701 value856 value1 value2 = (output4701, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4702 value858 value1 value2 = (output4702, value860, value1) := by
  rw [input4702_def, output4702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4688]
  try dsimp only
  rw [child4701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4688_skip, output4701_skip]
  kernel_rfl

theorem node4703_cond_eq
    (child4687 : Flapjack.WordAlloc.removeDeadStructural input4687 value856 value1 value2 = (output4687, value858, value1))
    (child4702 : Flapjack.WordAlloc.removeDeadStructural input4702 value858 value1 value2 = (output4702, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4703 value856 value1 value2 = (output4703, value860, value1) := by
  rw [input4703_def, output4703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4687]
  try dsimp only
  rw [child4702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4687_skip, output4702_skip]
  kernel_rfl

theorem node4704_cond_eq
    (child4684 : Flapjack.WordAlloc.removeDeadStructural input4684 value855 value1 value2 = (output4684, value856, value1))
    (child4703 : Flapjack.WordAlloc.removeDeadStructural input4703 value856 value1 value2 = (output4703, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4704 value855 value1 value2 = (output4704, value860, value1) := by
  rw [input4704_def, output4704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4684]
  try dsimp only
  rw [child4703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4684_skip, output4703_skip]
  kernel_rfl

theorem node4705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4705 value855 value1 value2 = (output4705, value855, value1) := by
  rw [input4705_def, output4705_def]
  kernel_rfl

theorem node4706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4706 value855 value1 value2 = (output4706, value855, value1) := by
  rw [input4706_def, output4706_def]
  kernel_rfl

theorem node4707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4707 value855 value1 value2 = (output4707, value861, value1) := by
  rw [input4707_def, output4707_def]
  kernel_rfl

theorem node4708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4708 value861 value1 value2 = (output4708, value861, value1) := by
  rw [input4708_def, output4708_def]
  kernel_rfl

theorem node4709_cond_eq
    (child4707 : Flapjack.WordAlloc.removeDeadStructural input4707 value855 value1 value2 = (output4707, value861, value1))
    (child4708 : Flapjack.WordAlloc.removeDeadStructural input4708 value861 value1 value2 = (output4708, value861, value1)) : Flapjack.WordAlloc.removeDeadStructural input4709 value855 value1 value2 = (output4709, value861, value1) := by
  rw [input4709_def, output4709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4707]
  try dsimp only
  rw [child4708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4707_skip, output4708_skip]
  kernel_rfl

theorem node4710_cond_eq
    (child4706 : Flapjack.WordAlloc.removeDeadStructural input4706 value855 value1 value2 = (output4706, value855, value1))
    (child4709 : Flapjack.WordAlloc.removeDeadStructural input4709 value855 value1 value2 = (output4709, value861, value1)) : Flapjack.WordAlloc.removeDeadStructural input4710 value855 value1 value2 = (output4710, value861, value1) := by
  rw [input4710_def, output4710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4706]
  try dsimp only
  rw [child4709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4706_skip, output4709_skip]
  kernel_rfl

theorem node4711_cond_eq
    (child4705 : Flapjack.WordAlloc.removeDeadStructural input4705 value855 value1 value2 = (output4705, value855, value1))
    (child4710 : Flapjack.WordAlloc.removeDeadStructural input4710 value855 value1 value2 = (output4710, value861, value1)) : Flapjack.WordAlloc.removeDeadStructural input4711 value855 value1 value2 = (output4711, value861, value1) := by
  rw [input4711_def, output4711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4705]
  try dsimp only
  rw [child4710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4705_skip, output4710_skip]
  kernel_rfl

theorem node4712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4712 value861 value1 value2 = (output4712, value862, value1) := by
  rw [input4712_def, output4712_def]
  kernel_rfl

theorem node4713_cond_eq
    (child4711 : Flapjack.WordAlloc.removeDeadStructural input4711 value855 value1 value2 = (output4711, value861, value1))
    (child4712 : Flapjack.WordAlloc.removeDeadStructural input4712 value861 value1 value2 = (output4712, value862, value1)) : Flapjack.WordAlloc.removeDeadStructural input4713 value855 value1 value2 = (output4713, value862, value1) := by
  rw [input4713_def, output4713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4711]
  try dsimp only
  rw [child4712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4711_skip, output4712_skip]
  kernel_rfl

theorem node4714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4714 value862 value1 value2 = (output4714, value862, value1) := by
  rw [input4714_def, output4714_def]
  kernel_rfl

theorem node4715_cond_eq
    (child4713 : Flapjack.WordAlloc.removeDeadStructural input4713 value855 value1 value2 = (output4713, value862, value1))
    (child4714 : Flapjack.WordAlloc.removeDeadStructural input4714 value862 value1 value2 = (output4714, value862, value1)) : Flapjack.WordAlloc.removeDeadStructural input4715 value855 value1 value2 = (output4715, value862, value1) := by
  rw [input4715_def, output4715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4713]
  try dsimp only
  rw [child4714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4713_skip, output4714_skip]
  kernel_rfl

theorem node4716_cond_eq
    (child4704 : Flapjack.WordAlloc.removeDeadStructural input4704 value855 value1 value2 = (output4704, value860, value1))
    (child4715 : Flapjack.WordAlloc.removeDeadStructural input4715 value855 value1 value2 = (output4715, value862, value1)) : Flapjack.WordAlloc.removeDeadStructural input4716 value855 value1 value2 = (output4716, value864, value1) := by
  rw [input4716_def, output4716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4704]
  try dsimp only
  rw [child4715]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4704_skip, output4715_skip]
  kernel_rfl

theorem node4717_cond_eq
    (child4675 : Flapjack.WordAlloc.removeDeadStructural input4675 value855 value1 value2 = (output4675, value855, value1))
    (child4716 : Flapjack.WordAlloc.removeDeadStructural input4716 value855 value1 value2 = (output4716, value864, value1)) : Flapjack.WordAlloc.removeDeadStructural input4717 value855 value1 value2 = (output4717, value864, value1) := by
  rw [input4717_def, output4717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4675]
  try dsimp only
  rw [child4716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4675_skip, output4716_skip]
  kernel_rfl

theorem node4718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4718 value864 value1 value2 = (output4718, value862, value1) := by
  rw [input4718_def, output4718_def]
  kernel_rfl

theorem node4719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4719 value862 value1 value2 = (output4719, value865, value1) := by
  rw [input4719_def, output4719_def]
  kernel_rfl

theorem node4720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4720 value865 value1 value2 = (output4720, value865, value1) := by
  rw [input4720_def, output4720_def]
  kernel_rfl

theorem node4721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4721 value865 value1 value2 = (output4721, value865, value1) := by
  rw [input4721_def, output4721_def]
  kernel_rfl

theorem node4722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4722 value865 value1 value2 = (output4722, value865, value1) := by
  rw [input4722_def, output4722_def]
  kernel_rfl

theorem node4723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4723 value865 value1 value2 = (output4723, value865, value1) := by
  rw [input4723_def, output4723_def]
  kernel_rfl

theorem node4724_cond_eq
    (child4722 : Flapjack.WordAlloc.removeDeadStructural input4722 value865 value1 value2 = (output4722, value865, value1))
    (child4723 : Flapjack.WordAlloc.removeDeadStructural input4723 value865 value1 value2 = (output4723, value865, value1)) : Flapjack.WordAlloc.removeDeadStructural input4724 value865 value1 value2 = (output4724, value865, value1) := by
  rw [input4724_def, output4724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4722]
  try dsimp only
  rw [child4723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4722_skip, output4723_skip]
  kernel_rfl

theorem node4725_cond_eq
    (child4721 : Flapjack.WordAlloc.removeDeadStructural input4721 value865 value1 value2 = (output4721, value865, value1))
    (child4724 : Flapjack.WordAlloc.removeDeadStructural input4724 value865 value1 value2 = (output4724, value865, value1)) : Flapjack.WordAlloc.removeDeadStructural input4725 value865 value1 value2 = (output4725, value865, value1) := by
  rw [input4725_def, output4725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4721]
  try dsimp only
  rw [child4724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4721_skip, output4724_skip]
  kernel_rfl

theorem node4726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4726 value865 value1 value2 = (output4726, value865, value1) := by
  rw [input4726_def, output4726_def]
  kernel_rfl

theorem node4727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4727 value865 value1 value2 = (output4727, value865, value1) := by
  rw [input4727_def, output4727_def]
  kernel_rfl

theorem node4728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4728 value865 value1 value2 = (output4728, value860, value1) := by
  rw [input4728_def, output4728_def]
  kernel_rfl

theorem node4729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4729 value860 value1 value2 = (output4729, value860, value1) := by
  rw [input4729_def, output4729_def]
  kernel_rfl

theorem node4730_cond_eq
    (child4728 : Flapjack.WordAlloc.removeDeadStructural input4728 value865 value1 value2 = (output4728, value860, value1))
    (child4729 : Flapjack.WordAlloc.removeDeadStructural input4729 value860 value1 value2 = (output4729, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4730 value865 value1 value2 = (output4730, value860, value1) := by
  rw [input4730_def, output4730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4728]
  try dsimp only
  rw [child4729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4728_skip, output4729_skip]
  kernel_rfl

theorem node4731_cond_eq
    (child4727 : Flapjack.WordAlloc.removeDeadStructural input4727 value865 value1 value2 = (output4727, value865, value1))
    (child4730 : Flapjack.WordAlloc.removeDeadStructural input4730 value865 value1 value2 = (output4730, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4731 value865 value1 value2 = (output4731, value860, value1) := by
  rw [input4731_def, output4731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4727]
  try dsimp only
  rw [child4730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4727_skip, output4730_skip]
  kernel_rfl

theorem node4732_cond_eq
    (child4726 : Flapjack.WordAlloc.removeDeadStructural input4726 value865 value1 value2 = (output4726, value865, value1))
    (child4731 : Flapjack.WordAlloc.removeDeadStructural input4731 value865 value1 value2 = (output4731, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input4732 value865 value1 value2 = (output4732, value860, value1) := by
  rw [input4732_def, output4732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4726]
  try dsimp only
  rw [child4731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4726_skip, output4731_skip]
  kernel_rfl

theorem node4733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4733 value860 value1 value2 = (output4733, value866, value1) := by
  rw [input4733_def, output4733_def]
  kernel_rfl

theorem node4734_cond_eq
    (child4732 : Flapjack.WordAlloc.removeDeadStructural input4732 value865 value1 value2 = (output4732, value860, value1))
    (child4733 : Flapjack.WordAlloc.removeDeadStructural input4733 value860 value1 value2 = (output4733, value866, value1)) : Flapjack.WordAlloc.removeDeadStructural input4734 value865 value1 value2 = (output4734, value866, value1) := by
  rw [input4734_def, output4734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4732]
  try dsimp only
  rw [child4733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4732_skip, output4733_skip]
  kernel_rfl

theorem node4735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4735 value866 value1 value2 = (output4735, value867, value1) := by
  rw [input4735_def, output4735_def]
  kernel_rfl

theorem node4736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4736 value867 value1 value2 = (output4736, value868, value1) := by
  rw [input4736_def, output4736_def]
  kernel_rfl

theorem node4737_cond_eq
    (child4735 : Flapjack.WordAlloc.removeDeadStructural input4735 value866 value1 value2 = (output4735, value867, value1))
    (child4736 : Flapjack.WordAlloc.removeDeadStructural input4736 value867 value1 value2 = (output4736, value868, value1)) : Flapjack.WordAlloc.removeDeadStructural input4737 value866 value1 value2 = (output4737, value868, value1) := by
  rw [input4737_def, output4737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4735]
  try dsimp only
  rw [child4736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4735_skip, output4736_skip]
  kernel_rfl

theorem node4738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4738 value868 value1 value2 = (output4738, value866, value1) := by
  rw [input4738_def, output4738_def]
  kernel_rfl

theorem node4739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4739 value866 value1 value2 = (output4739, value866, value1) := by
  rw [input4739_def, output4739_def]
  kernel_rfl

theorem node4740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4740 value866 value1 value2 = (output4740, value869, value1) := by
  rw [input4740_def, output4740_def]
  kernel_rfl

theorem node4741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4741 value869 value1 value2 = (output4741, value869, value1) := by
  rw [input4741_def, output4741_def]
  kernel_rfl

theorem node4742_cond_eq
    (child4740 : Flapjack.WordAlloc.removeDeadStructural input4740 value866 value1 value2 = (output4740, value869, value1))
    (child4741 : Flapjack.WordAlloc.removeDeadStructural input4741 value869 value1 value2 = (output4741, value869, value1)) : Flapjack.WordAlloc.removeDeadStructural input4742 value866 value1 value2 = (output4742, value869, value1) := by
  rw [input4742_def, output4742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4740]
  try dsimp only
  rw [child4741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4740_skip, output4741_skip]
  kernel_rfl

theorem node4743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4743 value869 value1 value2 = (output4743, value870, value1) := by
  rw [input4743_def, output4743_def]
  kernel_rfl

theorem node4744_cond_eq
    (child4742 : Flapjack.WordAlloc.removeDeadStructural input4742 value866 value1 value2 = (output4742, value869, value1))
    (child4743 : Flapjack.WordAlloc.removeDeadStructural input4743 value869 value1 value2 = (output4743, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4744 value866 value1 value2 = (output4744, value870, value1) := by
  rw [input4744_def, output4744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4742]
  try dsimp only
  rw [child4743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4742_skip, output4743_skip]
  kernel_rfl

theorem node4745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4745 value870 value1 value2 = (output4745, value870, value1) := by
  rw [input4745_def, output4745_def]
  kernel_rfl

theorem node4746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4746 value870 value1 value2 = (output4746, value870, value1) := by
  rw [input4746_def, output4746_def]
  kernel_rfl

theorem node4747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4747 value870 value1 value2 = (output4747, value870, value1) := by
  rw [input4747_def, output4747_def]
  kernel_rfl

theorem node4748_cond_eq
    (child4746 : Flapjack.WordAlloc.removeDeadStructural input4746 value870 value1 value2 = (output4746, value870, value1))
    (child4747 : Flapjack.WordAlloc.removeDeadStructural input4747 value870 value1 value2 = (output4747, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4748 value870 value1 value2 = (output4748, value870, value1) := by
  rw [input4748_def, output4748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4746]
  try dsimp only
  rw [child4747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4746_skip, output4747_skip]
  kernel_rfl

theorem node4749_cond_eq
    (child4745 : Flapjack.WordAlloc.removeDeadStructural input4745 value870 value1 value2 = (output4745, value870, value1))
    (child4748 : Flapjack.WordAlloc.removeDeadStructural input4748 value870 value1 value2 = (output4748, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4749 value870 value1 value2 = (output4749, value870, value1) := by
  rw [input4749_def, output4749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4745]
  try dsimp only
  rw [child4748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4745_skip, output4748_skip]
  kernel_rfl

theorem node4750_cond_eq
    (child4744 : Flapjack.WordAlloc.removeDeadStructural input4744 value866 value1 value2 = (output4744, value870, value1))
    (child4749 : Flapjack.WordAlloc.removeDeadStructural input4749 value870 value1 value2 = (output4749, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4750 value866 value1 value2 = (output4750, value870, value1) := by
  rw [input4750_def, output4750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4744]
  try dsimp only
  rw [child4749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4744_skip, output4749_skip]
  kernel_rfl

theorem node4751_cond_eq
    (child4739 : Flapjack.WordAlloc.removeDeadStructural input4739 value866 value1 value2 = (output4739, value866, value1))
    (child4750 : Flapjack.WordAlloc.removeDeadStructural input4750 value866 value1 value2 = (output4750, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4751 value866 value1 value2 = (output4751, value870, value1) := by
  rw [input4751_def, output4751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4739]
  try dsimp only
  rw [child4750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4739_skip, output4750_skip]
  kernel_rfl

theorem node4752_cond_eq
    (child4738 : Flapjack.WordAlloc.removeDeadStructural input4738 value868 value1 value2 = (output4738, value866, value1))
    (child4751 : Flapjack.WordAlloc.removeDeadStructural input4751 value866 value1 value2 = (output4751, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4752 value868 value1 value2 = (output4752, value870, value1) := by
  rw [input4752_def, output4752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4738]
  try dsimp only
  rw [child4751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4738_skip, output4751_skip]
  kernel_rfl

theorem node4753_cond_eq
    (child4737 : Flapjack.WordAlloc.removeDeadStructural input4737 value866 value1 value2 = (output4737, value868, value1))
    (child4752 : Flapjack.WordAlloc.removeDeadStructural input4752 value868 value1 value2 = (output4752, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4753 value866 value1 value2 = (output4753, value870, value1) := by
  rw [input4753_def, output4753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4737]
  try dsimp only
  rw [child4752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4737_skip, output4752_skip]
  kernel_rfl

theorem node4754_cond_eq
    (child4734 : Flapjack.WordAlloc.removeDeadStructural input4734 value865 value1 value2 = (output4734, value866, value1))
    (child4753 : Flapjack.WordAlloc.removeDeadStructural input4753 value866 value1 value2 = (output4753, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4754 value865 value1 value2 = (output4754, value870, value1) := by
  rw [input4754_def, output4754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4734]
  try dsimp only
  rw [child4753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4734_skip, output4753_skip]
  kernel_rfl

theorem node4755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4755 value865 value1 value2 = (output4755, value865, value1) := by
  rw [input4755_def, output4755_def]
  kernel_rfl

theorem node4756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4756 value865 value1 value2 = (output4756, value865, value1) := by
  rw [input4756_def, output4756_def]
  kernel_rfl

theorem node4757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4757 value865 value1 value2 = (output4757, value871, value1) := by
  rw [input4757_def, output4757_def]
  kernel_rfl

theorem node4758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4758 value871 value1 value2 = (output4758, value871, value1) := by
  rw [input4758_def, output4758_def]
  kernel_rfl

theorem node4759_cond_eq
    (child4757 : Flapjack.WordAlloc.removeDeadStructural input4757 value865 value1 value2 = (output4757, value871, value1))
    (child4758 : Flapjack.WordAlloc.removeDeadStructural input4758 value871 value1 value2 = (output4758, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input4759 value865 value1 value2 = (output4759, value871, value1) := by
  rw [input4759_def, output4759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4757]
  try dsimp only
  rw [child4758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4757_skip, output4758_skip]
  kernel_rfl

theorem node4760_cond_eq
    (child4756 : Flapjack.WordAlloc.removeDeadStructural input4756 value865 value1 value2 = (output4756, value865, value1))
    (child4759 : Flapjack.WordAlloc.removeDeadStructural input4759 value865 value1 value2 = (output4759, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input4760 value865 value1 value2 = (output4760, value871, value1) := by
  rw [input4760_def, output4760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4756]
  try dsimp only
  rw [child4759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4756_skip, output4759_skip]
  kernel_rfl

theorem node4761_cond_eq
    (child4755 : Flapjack.WordAlloc.removeDeadStructural input4755 value865 value1 value2 = (output4755, value865, value1))
    (child4760 : Flapjack.WordAlloc.removeDeadStructural input4760 value865 value1 value2 = (output4760, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input4761 value865 value1 value2 = (output4761, value871, value1) := by
  rw [input4761_def, output4761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4755]
  try dsimp only
  rw [child4760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4755_skip, output4760_skip]
  kernel_rfl

theorem node4762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4762 value871 value1 value2 = (output4762, value872, value1) := by
  rw [input4762_def, output4762_def]
  kernel_rfl

theorem node4763_cond_eq
    (child4761 : Flapjack.WordAlloc.removeDeadStructural input4761 value865 value1 value2 = (output4761, value871, value1))
    (child4762 : Flapjack.WordAlloc.removeDeadStructural input4762 value871 value1 value2 = (output4762, value872, value1)) : Flapjack.WordAlloc.removeDeadStructural input4763 value865 value1 value2 = (output4763, value872, value1) := by
  rw [input4763_def, output4763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4761]
  try dsimp only
  rw [child4762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4761_skip, output4762_skip]
  kernel_rfl

theorem node4764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4764 value872 value1 value2 = (output4764, value872, value1) := by
  rw [input4764_def, output4764_def]
  kernel_rfl

theorem node4765_cond_eq
    (child4763 : Flapjack.WordAlloc.removeDeadStructural input4763 value865 value1 value2 = (output4763, value872, value1))
    (child4764 : Flapjack.WordAlloc.removeDeadStructural input4764 value872 value1 value2 = (output4764, value872, value1)) : Flapjack.WordAlloc.removeDeadStructural input4765 value865 value1 value2 = (output4765, value872, value1) := by
  rw [input4765_def, output4765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4763]
  try dsimp only
  rw [child4764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4763_skip, output4764_skip]
  kernel_rfl

theorem node4766_cond_eq
    (child4754 : Flapjack.WordAlloc.removeDeadStructural input4754 value865 value1 value2 = (output4754, value870, value1))
    (child4765 : Flapjack.WordAlloc.removeDeadStructural input4765 value865 value1 value2 = (output4765, value872, value1)) : Flapjack.WordAlloc.removeDeadStructural input4766 value865 value1 value2 = (output4766, value874, value1) := by
  rw [input4766_def, output4766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4754]
  try dsimp only
  rw [child4765]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4754_skip, output4765_skip]
  kernel_rfl

theorem node4767_cond_eq
    (child4725 : Flapjack.WordAlloc.removeDeadStructural input4725 value865 value1 value2 = (output4725, value865, value1))
    (child4766 : Flapjack.WordAlloc.removeDeadStructural input4766 value865 value1 value2 = (output4766, value874, value1)) : Flapjack.WordAlloc.removeDeadStructural input4767 value865 value1 value2 = (output4767, value874, value1) := by
  rw [input4767_def, output4767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4725]
  try dsimp only
  rw [child4766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4725_skip, output4766_skip]
  kernel_rfl

theorem node4768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4768 value874 value1 value2 = (output4768, value872, value1) := by
  rw [input4768_def, output4768_def]
  kernel_rfl

theorem node4769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4769 value872 value1 value2 = (output4769, value875, value1) := by
  rw [input4769_def, output4769_def]
  kernel_rfl

theorem node4770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4770 value875 value1 value2 = (output4770, value875, value1) := by
  rw [input4770_def, output4770_def]
  kernel_rfl

theorem node4771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4771 value875 value1 value2 = (output4771, value875, value1) := by
  rw [input4771_def, output4771_def]
  kernel_rfl

theorem node4772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4772 value875 value1 value2 = (output4772, value875, value1) := by
  rw [input4772_def, output4772_def]
  kernel_rfl

theorem node4773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4773 value875 value1 value2 = (output4773, value875, value1) := by
  rw [input4773_def, output4773_def]
  kernel_rfl

theorem node4774_cond_eq
    (child4772 : Flapjack.WordAlloc.removeDeadStructural input4772 value875 value1 value2 = (output4772, value875, value1))
    (child4773 : Flapjack.WordAlloc.removeDeadStructural input4773 value875 value1 value2 = (output4773, value875, value1)) : Flapjack.WordAlloc.removeDeadStructural input4774 value875 value1 value2 = (output4774, value875, value1) := by
  rw [input4774_def, output4774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4772]
  try dsimp only
  rw [child4773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4772_skip, output4773_skip]
  kernel_rfl

theorem node4775_cond_eq
    (child4771 : Flapjack.WordAlloc.removeDeadStructural input4771 value875 value1 value2 = (output4771, value875, value1))
    (child4774 : Flapjack.WordAlloc.removeDeadStructural input4774 value875 value1 value2 = (output4774, value875, value1)) : Flapjack.WordAlloc.removeDeadStructural input4775 value875 value1 value2 = (output4775, value875, value1) := by
  rw [input4775_def, output4775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4771]
  try dsimp only
  rw [child4774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4771_skip, output4774_skip]
  kernel_rfl

theorem node4776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4776 value875 value1 value2 = (output4776, value875, value1) := by
  rw [input4776_def, output4776_def]
  kernel_rfl

theorem node4777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4777 value875 value1 value2 = (output4777, value875, value1) := by
  rw [input4777_def, output4777_def]
  kernel_rfl

theorem node4778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4778 value875 value1 value2 = (output4778, value870, value1) := by
  rw [input4778_def, output4778_def]
  kernel_rfl

theorem node4779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4779 value870 value1 value2 = (output4779, value870, value1) := by
  rw [input4779_def, output4779_def]
  kernel_rfl

theorem node4780_cond_eq
    (child4778 : Flapjack.WordAlloc.removeDeadStructural input4778 value875 value1 value2 = (output4778, value870, value1))
    (child4779 : Flapjack.WordAlloc.removeDeadStructural input4779 value870 value1 value2 = (output4779, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4780 value875 value1 value2 = (output4780, value870, value1) := by
  rw [input4780_def, output4780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4778]
  try dsimp only
  rw [child4779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4778_skip, output4779_skip]
  kernel_rfl

theorem node4781_cond_eq
    (child4777 : Flapjack.WordAlloc.removeDeadStructural input4777 value875 value1 value2 = (output4777, value875, value1))
    (child4780 : Flapjack.WordAlloc.removeDeadStructural input4780 value875 value1 value2 = (output4780, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4781 value875 value1 value2 = (output4781, value870, value1) := by
  rw [input4781_def, output4781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4777]
  try dsimp only
  rw [child4780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4777_skip, output4780_skip]
  kernel_rfl

theorem node4782_cond_eq
    (child4776 : Flapjack.WordAlloc.removeDeadStructural input4776 value875 value1 value2 = (output4776, value875, value1))
    (child4781 : Flapjack.WordAlloc.removeDeadStructural input4781 value875 value1 value2 = (output4781, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input4782 value875 value1 value2 = (output4782, value870, value1) := by
  rw [input4782_def, output4782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4776]
  try dsimp only
  rw [child4781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4776_skip, output4781_skip]
  kernel_rfl

theorem node4783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4783 value870 value1 value2 = (output4783, value876, value1) := by
  rw [input4783_def, output4783_def]
  kernel_rfl

theorem node4784_cond_eq
    (child4782 : Flapjack.WordAlloc.removeDeadStructural input4782 value875 value1 value2 = (output4782, value870, value1))
    (child4783 : Flapjack.WordAlloc.removeDeadStructural input4783 value870 value1 value2 = (output4783, value876, value1)) : Flapjack.WordAlloc.removeDeadStructural input4784 value875 value1 value2 = (output4784, value876, value1) := by
  rw [input4784_def, output4784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4782]
  try dsimp only
  rw [child4783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4782_skip, output4783_skip]
  kernel_rfl

theorem node4785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4785 value876 value1 value2 = (output4785, value877, value1) := by
  rw [input4785_def, output4785_def]
  kernel_rfl

theorem node4786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4786 value877 value1 value2 = (output4786, value878, value1) := by
  rw [input4786_def, output4786_def]
  kernel_rfl

theorem node4787_cond_eq
    (child4785 : Flapjack.WordAlloc.removeDeadStructural input4785 value876 value1 value2 = (output4785, value877, value1))
    (child4786 : Flapjack.WordAlloc.removeDeadStructural input4786 value877 value1 value2 = (output4786, value878, value1)) : Flapjack.WordAlloc.removeDeadStructural input4787 value876 value1 value2 = (output4787, value878, value1) := by
  rw [input4787_def, output4787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4785]
  try dsimp only
  rw [child4786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4785_skip, output4786_skip]
  kernel_rfl

theorem node4788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4788 value878 value1 value2 = (output4788, value876, value1) := by
  rw [input4788_def, output4788_def]
  kernel_rfl

theorem node4789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4789 value876 value1 value2 = (output4789, value876, value1) := by
  rw [input4789_def, output4789_def]
  kernel_rfl

theorem node4790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4790 value876 value1 value2 = (output4790, value879, value1) := by
  rw [input4790_def, output4790_def]
  kernel_rfl

theorem node4791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4791 value879 value1 value2 = (output4791, value879, value1) := by
  rw [input4791_def, output4791_def]
  kernel_rfl

theorem node4792_cond_eq
    (child4790 : Flapjack.WordAlloc.removeDeadStructural input4790 value876 value1 value2 = (output4790, value879, value1))
    (child4791 : Flapjack.WordAlloc.removeDeadStructural input4791 value879 value1 value2 = (output4791, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input4792 value876 value1 value2 = (output4792, value879, value1) := by
  rw [input4792_def, output4792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4790]
  try dsimp only
  rw [child4791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4790_skip, output4791_skip]
  kernel_rfl

theorem node4793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4793 value879 value1 value2 = (output4793, value880, value1) := by
  rw [input4793_def, output4793_def]
  kernel_rfl

theorem node4794_cond_eq
    (child4792 : Flapjack.WordAlloc.removeDeadStructural input4792 value876 value1 value2 = (output4792, value879, value1))
    (child4793 : Flapjack.WordAlloc.removeDeadStructural input4793 value879 value1 value2 = (output4793, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4794 value876 value1 value2 = (output4794, value880, value1) := by
  rw [input4794_def, output4794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4792]
  try dsimp only
  rw [child4793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4792_skip, output4793_skip]
  kernel_rfl

theorem node4795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4795 value880 value1 value2 = (output4795, value880, value1) := by
  rw [input4795_def, output4795_def]
  kernel_rfl

theorem node4796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4796 value880 value1 value2 = (output4796, value880, value1) := by
  rw [input4796_def, output4796_def]
  kernel_rfl

theorem node4797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4797 value880 value1 value2 = (output4797, value880, value1) := by
  rw [input4797_def, output4797_def]
  kernel_rfl

theorem node4798_cond_eq
    (child4796 : Flapjack.WordAlloc.removeDeadStructural input4796 value880 value1 value2 = (output4796, value880, value1))
    (child4797 : Flapjack.WordAlloc.removeDeadStructural input4797 value880 value1 value2 = (output4797, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4798 value880 value1 value2 = (output4798, value880, value1) := by
  rw [input4798_def, output4798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4796]
  try dsimp only
  rw [child4797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4796_skip, output4797_skip]
  kernel_rfl

theorem node4799_cond_eq
    (child4795 : Flapjack.WordAlloc.removeDeadStructural input4795 value880 value1 value2 = (output4795, value880, value1))
    (child4798 : Flapjack.WordAlloc.removeDeadStructural input4798 value880 value1 value2 = (output4798, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4799 value880 value1 value2 = (output4799, value880, value1) := by
  rw [input4799_def, output4799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4795]
  try dsimp only
  rw [child4798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4795_skip, output4798_skip]
  kernel_rfl

theorem node4800_cond_eq
    (child4794 : Flapjack.WordAlloc.removeDeadStructural input4794 value876 value1 value2 = (output4794, value880, value1))
    (child4799 : Flapjack.WordAlloc.removeDeadStructural input4799 value880 value1 value2 = (output4799, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4800 value876 value1 value2 = (output4800, value880, value1) := by
  rw [input4800_def, output4800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4794]
  try dsimp only
  rw [child4799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4794_skip, output4799_skip]
  kernel_rfl

theorem node4801_cond_eq
    (child4789 : Flapjack.WordAlloc.removeDeadStructural input4789 value876 value1 value2 = (output4789, value876, value1))
    (child4800 : Flapjack.WordAlloc.removeDeadStructural input4800 value876 value1 value2 = (output4800, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4801 value876 value1 value2 = (output4801, value880, value1) := by
  rw [input4801_def, output4801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4789]
  try dsimp only
  rw [child4800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4789_skip, output4800_skip]
  kernel_rfl

theorem node4802_cond_eq
    (child4788 : Flapjack.WordAlloc.removeDeadStructural input4788 value878 value1 value2 = (output4788, value876, value1))
    (child4801 : Flapjack.WordAlloc.removeDeadStructural input4801 value876 value1 value2 = (output4801, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4802 value878 value1 value2 = (output4802, value880, value1) := by
  rw [input4802_def, output4802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4788]
  try dsimp only
  rw [child4801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4788_skip, output4801_skip]
  kernel_rfl

theorem node4803_cond_eq
    (child4787 : Flapjack.WordAlloc.removeDeadStructural input4787 value876 value1 value2 = (output4787, value878, value1))
    (child4802 : Flapjack.WordAlloc.removeDeadStructural input4802 value878 value1 value2 = (output4802, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4803 value876 value1 value2 = (output4803, value880, value1) := by
  rw [input4803_def, output4803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4787]
  try dsimp only
  rw [child4802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4787_skip, output4802_skip]
  kernel_rfl

theorem node4804_cond_eq
    (child4784 : Flapjack.WordAlloc.removeDeadStructural input4784 value875 value1 value2 = (output4784, value876, value1))
    (child4803 : Flapjack.WordAlloc.removeDeadStructural input4803 value876 value1 value2 = (output4803, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4804 value875 value1 value2 = (output4804, value880, value1) := by
  rw [input4804_def, output4804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4784]
  try dsimp only
  rw [child4803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4784_skip, output4803_skip]
  kernel_rfl

theorem node4805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4805 value875 value1 value2 = (output4805, value875, value1) := by
  rw [input4805_def, output4805_def]
  kernel_rfl

theorem node4806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4806 value875 value1 value2 = (output4806, value875, value1) := by
  rw [input4806_def, output4806_def]
  kernel_rfl

theorem node4807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4807 value875 value1 value2 = (output4807, value881, value1) := by
  rw [input4807_def, output4807_def]
  kernel_rfl

theorem node4808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4808 value881 value1 value2 = (output4808, value881, value1) := by
  rw [input4808_def, output4808_def]
  kernel_rfl

theorem node4809_cond_eq
    (child4807 : Flapjack.WordAlloc.removeDeadStructural input4807 value875 value1 value2 = (output4807, value881, value1))
    (child4808 : Flapjack.WordAlloc.removeDeadStructural input4808 value881 value1 value2 = (output4808, value881, value1)) : Flapjack.WordAlloc.removeDeadStructural input4809 value875 value1 value2 = (output4809, value881, value1) := by
  rw [input4809_def, output4809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4807]
  try dsimp only
  rw [child4808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4807_skip, output4808_skip]
  kernel_rfl

theorem node4810_cond_eq
    (child4806 : Flapjack.WordAlloc.removeDeadStructural input4806 value875 value1 value2 = (output4806, value875, value1))
    (child4809 : Flapjack.WordAlloc.removeDeadStructural input4809 value875 value1 value2 = (output4809, value881, value1)) : Flapjack.WordAlloc.removeDeadStructural input4810 value875 value1 value2 = (output4810, value881, value1) := by
  rw [input4810_def, output4810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4806]
  try dsimp only
  rw [child4809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4806_skip, output4809_skip]
  kernel_rfl

theorem node4811_cond_eq
    (child4805 : Flapjack.WordAlloc.removeDeadStructural input4805 value875 value1 value2 = (output4805, value875, value1))
    (child4810 : Flapjack.WordAlloc.removeDeadStructural input4810 value875 value1 value2 = (output4810, value881, value1)) : Flapjack.WordAlloc.removeDeadStructural input4811 value875 value1 value2 = (output4811, value881, value1) := by
  rw [input4811_def, output4811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4805]
  try dsimp only
  rw [child4810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4805_skip, output4810_skip]
  kernel_rfl

theorem node4812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4812 value881 value1 value2 = (output4812, value882, value1) := by
  rw [input4812_def, output4812_def]
  kernel_rfl

theorem node4813_cond_eq
    (child4811 : Flapjack.WordAlloc.removeDeadStructural input4811 value875 value1 value2 = (output4811, value881, value1))
    (child4812 : Flapjack.WordAlloc.removeDeadStructural input4812 value881 value1 value2 = (output4812, value882, value1)) : Flapjack.WordAlloc.removeDeadStructural input4813 value875 value1 value2 = (output4813, value882, value1) := by
  rw [input4813_def, output4813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4811]
  try dsimp only
  rw [child4812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4811_skip, output4812_skip]
  kernel_rfl

theorem node4814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4814 value882 value1 value2 = (output4814, value882, value1) := by
  rw [input4814_def, output4814_def]
  kernel_rfl

theorem node4815_cond_eq
    (child4813 : Flapjack.WordAlloc.removeDeadStructural input4813 value875 value1 value2 = (output4813, value882, value1))
    (child4814 : Flapjack.WordAlloc.removeDeadStructural input4814 value882 value1 value2 = (output4814, value882, value1)) : Flapjack.WordAlloc.removeDeadStructural input4815 value875 value1 value2 = (output4815, value882, value1) := by
  rw [input4815_def, output4815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4813]
  try dsimp only
  rw [child4814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4813_skip, output4814_skip]
  kernel_rfl

theorem node4816_cond_eq
    (child4804 : Flapjack.WordAlloc.removeDeadStructural input4804 value875 value1 value2 = (output4804, value880, value1))
    (child4815 : Flapjack.WordAlloc.removeDeadStructural input4815 value875 value1 value2 = (output4815, value882, value1)) : Flapjack.WordAlloc.removeDeadStructural input4816 value875 value1 value2 = (output4816, value884, value1) := by
  rw [input4816_def, output4816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4804]
  try dsimp only
  rw [child4815]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4804_skip, output4815_skip]
  kernel_rfl

theorem node4817_cond_eq
    (child4775 : Flapjack.WordAlloc.removeDeadStructural input4775 value875 value1 value2 = (output4775, value875, value1))
    (child4816 : Flapjack.WordAlloc.removeDeadStructural input4816 value875 value1 value2 = (output4816, value884, value1)) : Flapjack.WordAlloc.removeDeadStructural input4817 value875 value1 value2 = (output4817, value884, value1) := by
  rw [input4817_def, output4817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4775]
  try dsimp only
  rw [child4816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4775_skip, output4816_skip]
  kernel_rfl

theorem node4818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4818 value884 value1 value2 = (output4818, value882, value1) := by
  rw [input4818_def, output4818_def]
  kernel_rfl

theorem node4819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4819 value882 value1 value2 = (output4819, value885, value1) := by
  rw [input4819_def, output4819_def]
  kernel_rfl

theorem node4820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4820 value885 value1 value2 = (output4820, value885, value1) := by
  rw [input4820_def, output4820_def]
  kernel_rfl

theorem node4821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4821 value885 value1 value2 = (output4821, value885, value1) := by
  rw [input4821_def, output4821_def]
  kernel_rfl

theorem node4822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4822 value885 value1 value2 = (output4822, value885, value1) := by
  rw [input4822_def, output4822_def]
  kernel_rfl

theorem node4823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4823 value885 value1 value2 = (output4823, value885, value1) := by
  rw [input4823_def, output4823_def]
  kernel_rfl

theorem node4824_cond_eq
    (child4822 : Flapjack.WordAlloc.removeDeadStructural input4822 value885 value1 value2 = (output4822, value885, value1))
    (child4823 : Flapjack.WordAlloc.removeDeadStructural input4823 value885 value1 value2 = (output4823, value885, value1)) : Flapjack.WordAlloc.removeDeadStructural input4824 value885 value1 value2 = (output4824, value885, value1) := by
  rw [input4824_def, output4824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4822]
  try dsimp only
  rw [child4823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4822_skip, output4823_skip]
  kernel_rfl

theorem node4825_cond_eq
    (child4821 : Flapjack.WordAlloc.removeDeadStructural input4821 value885 value1 value2 = (output4821, value885, value1))
    (child4824 : Flapjack.WordAlloc.removeDeadStructural input4824 value885 value1 value2 = (output4824, value885, value1)) : Flapjack.WordAlloc.removeDeadStructural input4825 value885 value1 value2 = (output4825, value885, value1) := by
  rw [input4825_def, output4825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4821]
  try dsimp only
  rw [child4824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4821_skip, output4824_skip]
  kernel_rfl

theorem node4826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4826 value885 value1 value2 = (output4826, value885, value1) := by
  rw [input4826_def, output4826_def]
  kernel_rfl

theorem node4827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4827 value885 value1 value2 = (output4827, value885, value1) := by
  rw [input4827_def, output4827_def]
  kernel_rfl

theorem node4828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4828 value885 value1 value2 = (output4828, value880, value1) := by
  rw [input4828_def, output4828_def]
  kernel_rfl

theorem node4829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4829 value880 value1 value2 = (output4829, value880, value1) := by
  rw [input4829_def, output4829_def]
  kernel_rfl

theorem node4830_cond_eq
    (child4828 : Flapjack.WordAlloc.removeDeadStructural input4828 value885 value1 value2 = (output4828, value880, value1))
    (child4829 : Flapjack.WordAlloc.removeDeadStructural input4829 value880 value1 value2 = (output4829, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4830 value885 value1 value2 = (output4830, value880, value1) := by
  rw [input4830_def, output4830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4828]
  try dsimp only
  rw [child4829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4828_skip, output4829_skip]
  kernel_rfl

theorem node4831_cond_eq
    (child4827 : Flapjack.WordAlloc.removeDeadStructural input4827 value885 value1 value2 = (output4827, value885, value1))
    (child4830 : Flapjack.WordAlloc.removeDeadStructural input4830 value885 value1 value2 = (output4830, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4831 value885 value1 value2 = (output4831, value880, value1) := by
  rw [input4831_def, output4831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4827]
  try dsimp only
  rw [child4830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4827_skip, output4830_skip]
  kernel_rfl

theorem node4832_cond_eq
    (child4826 : Flapjack.WordAlloc.removeDeadStructural input4826 value885 value1 value2 = (output4826, value885, value1))
    (child4831 : Flapjack.WordAlloc.removeDeadStructural input4831 value885 value1 value2 = (output4831, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input4832 value885 value1 value2 = (output4832, value880, value1) := by
  rw [input4832_def, output4832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4826]
  try dsimp only
  rw [child4831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4826_skip, output4831_skip]
  kernel_rfl

theorem node4833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4833 value880 value1 value2 = (output4833, value886, value1) := by
  rw [input4833_def, output4833_def]
  kernel_rfl

theorem node4834_cond_eq
    (child4832 : Flapjack.WordAlloc.removeDeadStructural input4832 value885 value1 value2 = (output4832, value880, value1))
    (child4833 : Flapjack.WordAlloc.removeDeadStructural input4833 value880 value1 value2 = (output4833, value886, value1)) : Flapjack.WordAlloc.removeDeadStructural input4834 value885 value1 value2 = (output4834, value886, value1) := by
  rw [input4834_def, output4834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4832]
  try dsimp only
  rw [child4833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4832_skip, output4833_skip]
  kernel_rfl

theorem node4835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4835 value886 value1 value2 = (output4835, value887, value1) := by
  rw [input4835_def, output4835_def]
  kernel_rfl

theorem node4836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4836 value887 value1 value2 = (output4836, value888, value1) := by
  rw [input4836_def, output4836_def]
  kernel_rfl

theorem node4837_cond_eq
    (child4835 : Flapjack.WordAlloc.removeDeadStructural input4835 value886 value1 value2 = (output4835, value887, value1))
    (child4836 : Flapjack.WordAlloc.removeDeadStructural input4836 value887 value1 value2 = (output4836, value888, value1)) : Flapjack.WordAlloc.removeDeadStructural input4837 value886 value1 value2 = (output4837, value888, value1) := by
  rw [input4837_def, output4837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4835]
  try dsimp only
  rw [child4836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4835_skip, output4836_skip]
  kernel_rfl

theorem node4838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4838 value888 value1 value2 = (output4838, value886, value1) := by
  rw [input4838_def, output4838_def]
  kernel_rfl

theorem node4839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4839 value886 value1 value2 = (output4839, value886, value1) := by
  rw [input4839_def, output4839_def]
  kernel_rfl

theorem node4840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4840 value886 value1 value2 = (output4840, value889, value1) := by
  rw [input4840_def, output4840_def]
  kernel_rfl

theorem node4841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4841 value889 value1 value2 = (output4841, value889, value1) := by
  rw [input4841_def, output4841_def]
  kernel_rfl

theorem node4842_cond_eq
    (child4840 : Flapjack.WordAlloc.removeDeadStructural input4840 value886 value1 value2 = (output4840, value889, value1))
    (child4841 : Flapjack.WordAlloc.removeDeadStructural input4841 value889 value1 value2 = (output4841, value889, value1)) : Flapjack.WordAlloc.removeDeadStructural input4842 value886 value1 value2 = (output4842, value889, value1) := by
  rw [input4842_def, output4842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4840]
  try dsimp only
  rw [child4841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4840_skip, output4841_skip]
  kernel_rfl

theorem node4843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4843 value889 value1 value2 = (output4843, value890, value1) := by
  rw [input4843_def, output4843_def]
  kernel_rfl

theorem node4844_cond_eq
    (child4842 : Flapjack.WordAlloc.removeDeadStructural input4842 value886 value1 value2 = (output4842, value889, value1))
    (child4843 : Flapjack.WordAlloc.removeDeadStructural input4843 value889 value1 value2 = (output4843, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4844 value886 value1 value2 = (output4844, value890, value1) := by
  rw [input4844_def, output4844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4842]
  try dsimp only
  rw [child4843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4842_skip, output4843_skip]
  kernel_rfl

theorem node4845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4845 value890 value1 value2 = (output4845, value890, value1) := by
  rw [input4845_def, output4845_def]
  kernel_rfl

theorem node4846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4846 value890 value1 value2 = (output4846, value890, value1) := by
  rw [input4846_def, output4846_def]
  kernel_rfl

theorem node4847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4847 value890 value1 value2 = (output4847, value890, value1) := by
  rw [input4847_def, output4847_def]
  kernel_rfl

theorem node4848_cond_eq
    (child4846 : Flapjack.WordAlloc.removeDeadStructural input4846 value890 value1 value2 = (output4846, value890, value1))
    (child4847 : Flapjack.WordAlloc.removeDeadStructural input4847 value890 value1 value2 = (output4847, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4848 value890 value1 value2 = (output4848, value890, value1) := by
  rw [input4848_def, output4848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4846]
  try dsimp only
  rw [child4847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4846_skip, output4847_skip]
  kernel_rfl

theorem node4849_cond_eq
    (child4845 : Flapjack.WordAlloc.removeDeadStructural input4845 value890 value1 value2 = (output4845, value890, value1))
    (child4848 : Flapjack.WordAlloc.removeDeadStructural input4848 value890 value1 value2 = (output4848, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4849 value890 value1 value2 = (output4849, value890, value1) := by
  rw [input4849_def, output4849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4845]
  try dsimp only
  rw [child4848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4845_skip, output4848_skip]
  kernel_rfl

theorem node4850_cond_eq
    (child4844 : Flapjack.WordAlloc.removeDeadStructural input4844 value886 value1 value2 = (output4844, value890, value1))
    (child4849 : Flapjack.WordAlloc.removeDeadStructural input4849 value890 value1 value2 = (output4849, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4850 value886 value1 value2 = (output4850, value890, value1) := by
  rw [input4850_def, output4850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4844]
  try dsimp only
  rw [child4849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4844_skip, output4849_skip]
  kernel_rfl

theorem node4851_cond_eq
    (child4839 : Flapjack.WordAlloc.removeDeadStructural input4839 value886 value1 value2 = (output4839, value886, value1))
    (child4850 : Flapjack.WordAlloc.removeDeadStructural input4850 value886 value1 value2 = (output4850, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4851 value886 value1 value2 = (output4851, value890, value1) := by
  rw [input4851_def, output4851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4839]
  try dsimp only
  rw [child4850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4839_skip, output4850_skip]
  kernel_rfl

theorem node4852_cond_eq
    (child4838 : Flapjack.WordAlloc.removeDeadStructural input4838 value888 value1 value2 = (output4838, value886, value1))
    (child4851 : Flapjack.WordAlloc.removeDeadStructural input4851 value886 value1 value2 = (output4851, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4852 value888 value1 value2 = (output4852, value890, value1) := by
  rw [input4852_def, output4852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4838]
  try dsimp only
  rw [child4851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4838_skip, output4851_skip]
  kernel_rfl

theorem node4853_cond_eq
    (child4837 : Flapjack.WordAlloc.removeDeadStructural input4837 value886 value1 value2 = (output4837, value888, value1))
    (child4852 : Flapjack.WordAlloc.removeDeadStructural input4852 value888 value1 value2 = (output4852, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4853 value886 value1 value2 = (output4853, value890, value1) := by
  rw [input4853_def, output4853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4837]
  try dsimp only
  rw [child4852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4837_skip, output4852_skip]
  kernel_rfl

theorem node4854_cond_eq
    (child4834 : Flapjack.WordAlloc.removeDeadStructural input4834 value885 value1 value2 = (output4834, value886, value1))
    (child4853 : Flapjack.WordAlloc.removeDeadStructural input4853 value886 value1 value2 = (output4853, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4854 value885 value1 value2 = (output4854, value890, value1) := by
  rw [input4854_def, output4854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4834]
  try dsimp only
  rw [child4853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4834_skip, output4853_skip]
  kernel_rfl

theorem node4855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4855 value885 value1 value2 = (output4855, value885, value1) := by
  rw [input4855_def, output4855_def]
  kernel_rfl

theorem node4856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4856 value885 value1 value2 = (output4856, value885, value1) := by
  rw [input4856_def, output4856_def]
  kernel_rfl

theorem node4857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4857 value885 value1 value2 = (output4857, value891, value1) := by
  rw [input4857_def, output4857_def]
  kernel_rfl

theorem node4858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4858 value891 value1 value2 = (output4858, value891, value1) := by
  rw [input4858_def, output4858_def]
  kernel_rfl

theorem node4859_cond_eq
    (child4857 : Flapjack.WordAlloc.removeDeadStructural input4857 value885 value1 value2 = (output4857, value891, value1))
    (child4858 : Flapjack.WordAlloc.removeDeadStructural input4858 value891 value1 value2 = (output4858, value891, value1)) : Flapjack.WordAlloc.removeDeadStructural input4859 value885 value1 value2 = (output4859, value891, value1) := by
  rw [input4859_def, output4859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4857]
  try dsimp only
  rw [child4858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4857_skip, output4858_skip]
  kernel_rfl

theorem node4860_cond_eq
    (child4856 : Flapjack.WordAlloc.removeDeadStructural input4856 value885 value1 value2 = (output4856, value885, value1))
    (child4859 : Flapjack.WordAlloc.removeDeadStructural input4859 value885 value1 value2 = (output4859, value891, value1)) : Flapjack.WordAlloc.removeDeadStructural input4860 value885 value1 value2 = (output4860, value891, value1) := by
  rw [input4860_def, output4860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4856]
  try dsimp only
  rw [child4859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4856_skip, output4859_skip]
  kernel_rfl

theorem node4861_cond_eq
    (child4855 : Flapjack.WordAlloc.removeDeadStructural input4855 value885 value1 value2 = (output4855, value885, value1))
    (child4860 : Flapjack.WordAlloc.removeDeadStructural input4860 value885 value1 value2 = (output4860, value891, value1)) : Flapjack.WordAlloc.removeDeadStructural input4861 value885 value1 value2 = (output4861, value891, value1) := by
  rw [input4861_def, output4861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4855]
  try dsimp only
  rw [child4860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4855_skip, output4860_skip]
  kernel_rfl

theorem node4862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4862 value891 value1 value2 = (output4862, value892, value1) := by
  rw [input4862_def, output4862_def]
  kernel_rfl

theorem node4863_cond_eq
    (child4861 : Flapjack.WordAlloc.removeDeadStructural input4861 value885 value1 value2 = (output4861, value891, value1))
    (child4862 : Flapjack.WordAlloc.removeDeadStructural input4862 value891 value1 value2 = (output4862, value892, value1)) : Flapjack.WordAlloc.removeDeadStructural input4863 value885 value1 value2 = (output4863, value892, value1) := by
  rw [input4863_def, output4863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4861]
  try dsimp only
  rw [child4862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4861_skip, output4862_skip]
  kernel_rfl

#print axioms node4863_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
