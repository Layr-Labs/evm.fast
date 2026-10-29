import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk053
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node13568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13568 value5 value1 value2 = (output13568, value6788, value1) := by
  rw [input13568_def, output13568_def]
  kernel_rfl

theorem node13569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13569 value6788 value1 value2 = (output13569, value6789, value1) := by
  rw [input13569_def, output13569_def]
  kernel_rfl

theorem node13570_cond_eq
    (child13568 : Flapjack.WordAlloc.removeDeadStructural input13568 value5 value1 value2 = (output13568, value6788, value1))
    (child13569 : Flapjack.WordAlloc.removeDeadStructural input13569 value6788 value1 value2 = (output13569, value6789, value1)) : Flapjack.WordAlloc.removeDeadStructural input13570 value5 value1 value2 = (output13570, value6789, value1) := by
  rw [input13570_def, output13570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13568]
  try dsimp only
  rw [child13569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13568_skip, output13569_skip]
  kernel_rfl

theorem node13571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13571 value6789 value1 value2 = (output13571, value6790, value1) := by
  rw [input13571_def, output13571_def]
  kernel_rfl

theorem node13572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13572 value6790 value1 value2 = (output13572, value6790, value1) := by
  rw [input13572_def, output13572_def]
  kernel_rfl

theorem node13573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13573 value6790 value1 value2 = (output13573, value6791, value1) := by
  rw [input13573_def, output13573_def]
  kernel_rfl

theorem node13574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13574 value6791 value1 value2 = (output13574, value6792, value1) := by
  rw [input13574_def, output13574_def]
  kernel_rfl

theorem node13575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13575 value6792 value1 value2 = (output13575, value6793, value1) := by
  rw [input13575_def, output13575_def]
  kernel_rfl

theorem node13576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13576 value6793 value1 value2 = (output13576, value6794, value1) := by
  rw [input13576_def, output13576_def]
  kernel_rfl

theorem node13577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13577 value6794 value1 value2 = (output13577, value5, value1) := by
  rw [input13577_def, output13577_def]
  kernel_rfl

theorem node13578_cond_eq
    (child13576 : Flapjack.WordAlloc.removeDeadStructural input13576 value6793 value1 value2 = (output13576, value6794, value1))
    (child13577 : Flapjack.WordAlloc.removeDeadStructural input13577 value6794 value1 value2 = (output13577, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13578 value6793 value1 value2 = (output13578, value5, value1) := by
  rw [input13578_def, output13578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13576]
  try dsimp only
  rw [child13577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13576_skip, output13577_skip]
  kernel_rfl

theorem node13579_cond_eq
    (child13575 : Flapjack.WordAlloc.removeDeadStructural input13575 value6792 value1 value2 = (output13575, value6793, value1))
    (child13578 : Flapjack.WordAlloc.removeDeadStructural input13578 value6793 value1 value2 = (output13578, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13579 value6792 value1 value2 = (output13579, value5, value1) := by
  rw [input13579_def, output13579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13575]
  try dsimp only
  rw [child13578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13575_skip, output13578_skip]
  kernel_rfl

theorem node13580_cond_eq
    (child13574 : Flapjack.WordAlloc.removeDeadStructural input13574 value6791 value1 value2 = (output13574, value6792, value1))
    (child13579 : Flapjack.WordAlloc.removeDeadStructural input13579 value6792 value1 value2 = (output13579, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13580 value6791 value1 value2 = (output13580, value5, value1) := by
  rw [input13580_def, output13580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13574]
  try dsimp only
  rw [child13579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13574_skip, output13579_skip]
  kernel_rfl

theorem node13581_cond_eq
    (child13573 : Flapjack.WordAlloc.removeDeadStructural input13573 value6790 value1 value2 = (output13573, value6791, value1))
    (child13580 : Flapjack.WordAlloc.removeDeadStructural input13580 value6791 value1 value2 = (output13580, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13581 value6790 value1 value2 = (output13581, value5, value1) := by
  rw [input13581_def, output13581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13573]
  try dsimp only
  rw [child13580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13573_skip, output13580_skip]
  kernel_rfl

theorem node13582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13582 value5 value1 value2 = (output13582, value6795, value1) := by
  rw [input13582_def, output13582_def]
  kernel_rfl

theorem node13583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13583 value6795 value1 value2 = (output13583, value6796, value1) := by
  rw [input13583_def, output13583_def]
  kernel_rfl

theorem node13584_cond_eq
    (child13582 : Flapjack.WordAlloc.removeDeadStructural input13582 value5 value1 value2 = (output13582, value6795, value1))
    (child13583 : Flapjack.WordAlloc.removeDeadStructural input13583 value6795 value1 value2 = (output13583, value6796, value1)) : Flapjack.WordAlloc.removeDeadStructural input13584 value5 value1 value2 = (output13584, value6796, value1) := by
  rw [input13584_def, output13584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13582]
  try dsimp only
  rw [child13583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13582_skip, output13583_skip]
  kernel_rfl

theorem node13585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13585 value6796 value1 value2 = (output13585, value6797, value1) := by
  rw [input13585_def, output13585_def]
  kernel_rfl

theorem node13586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13586 value6797 value1 value2 = (output13586, value6797, value1) := by
  rw [input13586_def, output13586_def]
  kernel_rfl

theorem node13587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13587 value6797 value1 value2 = (output13587, value6798, value1) := by
  rw [input13587_def, output13587_def]
  kernel_rfl

theorem node13588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13588 value6798 value1 value2 = (output13588, value6799, value1) := by
  rw [input13588_def, output13588_def]
  kernel_rfl

theorem node13589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13589 value6799 value1 value2 = (output13589, value6800, value1) := by
  rw [input13589_def, output13589_def]
  kernel_rfl

theorem node13590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13590 value6800 value1 value2 = (output13590, value6801, value1) := by
  rw [input13590_def, output13590_def]
  kernel_rfl

theorem node13591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13591 value6801 value1 value2 = (output13591, value5, value1) := by
  rw [input13591_def, output13591_def]
  kernel_rfl

theorem node13592_cond_eq
    (child13590 : Flapjack.WordAlloc.removeDeadStructural input13590 value6800 value1 value2 = (output13590, value6801, value1))
    (child13591 : Flapjack.WordAlloc.removeDeadStructural input13591 value6801 value1 value2 = (output13591, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13592 value6800 value1 value2 = (output13592, value5, value1) := by
  rw [input13592_def, output13592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13590]
  try dsimp only
  rw [child13591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13590_skip, output13591_skip]
  kernel_rfl

theorem node13593_cond_eq
    (child13589 : Flapjack.WordAlloc.removeDeadStructural input13589 value6799 value1 value2 = (output13589, value6800, value1))
    (child13592 : Flapjack.WordAlloc.removeDeadStructural input13592 value6800 value1 value2 = (output13592, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13593 value6799 value1 value2 = (output13593, value5, value1) := by
  rw [input13593_def, output13593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13589]
  try dsimp only
  rw [child13592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13589_skip, output13592_skip]
  kernel_rfl

theorem node13594_cond_eq
    (child13588 : Flapjack.WordAlloc.removeDeadStructural input13588 value6798 value1 value2 = (output13588, value6799, value1))
    (child13593 : Flapjack.WordAlloc.removeDeadStructural input13593 value6799 value1 value2 = (output13593, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13594 value6798 value1 value2 = (output13594, value5, value1) := by
  rw [input13594_def, output13594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13588]
  try dsimp only
  rw [child13593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13588_skip, output13593_skip]
  kernel_rfl

theorem node13595_cond_eq
    (child13587 : Flapjack.WordAlloc.removeDeadStructural input13587 value6797 value1 value2 = (output13587, value6798, value1))
    (child13594 : Flapjack.WordAlloc.removeDeadStructural input13594 value6798 value1 value2 = (output13594, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13595 value6797 value1 value2 = (output13595, value5, value1) := by
  rw [input13595_def, output13595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13587]
  try dsimp only
  rw [child13594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13587_skip, output13594_skip]
  kernel_rfl

theorem node13596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13596 value5 value1 value2 = (output13596, value6802, value1) := by
  rw [input13596_def, output13596_def]
  kernel_rfl

theorem node13597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13597 value6802 value1 value2 = (output13597, value6803, value1) := by
  rw [input13597_def, output13597_def]
  kernel_rfl

theorem node13598_cond_eq
    (child13596 : Flapjack.WordAlloc.removeDeadStructural input13596 value5 value1 value2 = (output13596, value6802, value1))
    (child13597 : Flapjack.WordAlloc.removeDeadStructural input13597 value6802 value1 value2 = (output13597, value6803, value1)) : Flapjack.WordAlloc.removeDeadStructural input13598 value5 value1 value2 = (output13598, value6803, value1) := by
  rw [input13598_def, output13598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13596]
  try dsimp only
  rw [child13597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13596_skip, output13597_skip]
  kernel_rfl

theorem node13599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13599 value6803 value1 value2 = (output13599, value6804, value1) := by
  rw [input13599_def, output13599_def]
  kernel_rfl

theorem node13600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13600 value6804 value1 value2 = (output13600, value6804, value1) := by
  rw [input13600_def, output13600_def]
  kernel_rfl

theorem node13601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13601 value6804 value1 value2 = (output13601, value6805, value1) := by
  rw [input13601_def, output13601_def]
  kernel_rfl

theorem node13602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13602 value6805 value1 value2 = (output13602, value6806, value1) := by
  rw [input13602_def, output13602_def]
  kernel_rfl

theorem node13603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13603 value6806 value1 value2 = (output13603, value6807, value1) := by
  rw [input13603_def, output13603_def]
  kernel_rfl

theorem node13604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13604 value6807 value1 value2 = (output13604, value6808, value1) := by
  rw [input13604_def, output13604_def]
  kernel_rfl

theorem node13605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13605 value6808 value1 value2 = (output13605, value5, value1) := by
  rw [input13605_def, output13605_def]
  kernel_rfl

theorem node13606_cond_eq
    (child13604 : Flapjack.WordAlloc.removeDeadStructural input13604 value6807 value1 value2 = (output13604, value6808, value1))
    (child13605 : Flapjack.WordAlloc.removeDeadStructural input13605 value6808 value1 value2 = (output13605, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13606 value6807 value1 value2 = (output13606, value5, value1) := by
  rw [input13606_def, output13606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13604]
  try dsimp only
  rw [child13605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13604_skip, output13605_skip]
  kernel_rfl

theorem node13607_cond_eq
    (child13603 : Flapjack.WordAlloc.removeDeadStructural input13603 value6806 value1 value2 = (output13603, value6807, value1))
    (child13606 : Flapjack.WordAlloc.removeDeadStructural input13606 value6807 value1 value2 = (output13606, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13607 value6806 value1 value2 = (output13607, value5, value1) := by
  rw [input13607_def, output13607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13603]
  try dsimp only
  rw [child13606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13603_skip, output13606_skip]
  kernel_rfl

theorem node13608_cond_eq
    (child13602 : Flapjack.WordAlloc.removeDeadStructural input13602 value6805 value1 value2 = (output13602, value6806, value1))
    (child13607 : Flapjack.WordAlloc.removeDeadStructural input13607 value6806 value1 value2 = (output13607, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13608 value6805 value1 value2 = (output13608, value5, value1) := by
  rw [input13608_def, output13608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13602]
  try dsimp only
  rw [child13607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13602_skip, output13607_skip]
  kernel_rfl

theorem node13609_cond_eq
    (child13601 : Flapjack.WordAlloc.removeDeadStructural input13601 value6804 value1 value2 = (output13601, value6805, value1))
    (child13608 : Flapjack.WordAlloc.removeDeadStructural input13608 value6805 value1 value2 = (output13608, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13609 value6804 value1 value2 = (output13609, value5, value1) := by
  rw [input13609_def, output13609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13601]
  try dsimp only
  rw [child13608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13601_skip, output13608_skip]
  kernel_rfl

theorem node13610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13610 value5 value1 value2 = (output13610, value6809, value1) := by
  rw [input13610_def, output13610_def]
  kernel_rfl

theorem node13611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13611 value6809 value1 value2 = (output13611, value6810, value1) := by
  rw [input13611_def, output13611_def]
  kernel_rfl

theorem node13612_cond_eq
    (child13610 : Flapjack.WordAlloc.removeDeadStructural input13610 value5 value1 value2 = (output13610, value6809, value1))
    (child13611 : Flapjack.WordAlloc.removeDeadStructural input13611 value6809 value1 value2 = (output13611, value6810, value1)) : Flapjack.WordAlloc.removeDeadStructural input13612 value5 value1 value2 = (output13612, value6810, value1) := by
  rw [input13612_def, output13612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13610]
  try dsimp only
  rw [child13611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13610_skip, output13611_skip]
  kernel_rfl

theorem node13613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13613 value6810 value1 value2 = (output13613, value6811, value1) := by
  rw [input13613_def, output13613_def]
  kernel_rfl

theorem node13614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13614 value6811 value1 value2 = (output13614, value6811, value1) := by
  rw [input13614_def, output13614_def]
  kernel_rfl

theorem node13615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13615 value6811 value1 value2 = (output13615, value6812, value1) := by
  rw [input13615_def, output13615_def]
  kernel_rfl

theorem node13616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13616 value6812 value1 value2 = (output13616, value6813, value1) := by
  rw [input13616_def, output13616_def]
  kernel_rfl

theorem node13617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13617 value6813 value1 value2 = (output13617, value6814, value1) := by
  rw [input13617_def, output13617_def]
  kernel_rfl

theorem node13618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13618 value6814 value1 value2 = (output13618, value6815, value1) := by
  rw [input13618_def, output13618_def]
  kernel_rfl

theorem node13619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13619 value6815 value1 value2 = (output13619, value5, value1) := by
  rw [input13619_def, output13619_def]
  kernel_rfl

theorem node13620_cond_eq
    (child13618 : Flapjack.WordAlloc.removeDeadStructural input13618 value6814 value1 value2 = (output13618, value6815, value1))
    (child13619 : Flapjack.WordAlloc.removeDeadStructural input13619 value6815 value1 value2 = (output13619, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13620 value6814 value1 value2 = (output13620, value5, value1) := by
  rw [input13620_def, output13620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13618]
  try dsimp only
  rw [child13619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13618_skip, output13619_skip]
  kernel_rfl

theorem node13621_cond_eq
    (child13617 : Flapjack.WordAlloc.removeDeadStructural input13617 value6813 value1 value2 = (output13617, value6814, value1))
    (child13620 : Flapjack.WordAlloc.removeDeadStructural input13620 value6814 value1 value2 = (output13620, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13621 value6813 value1 value2 = (output13621, value5, value1) := by
  rw [input13621_def, output13621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13617]
  try dsimp only
  rw [child13620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13617_skip, output13620_skip]
  kernel_rfl

theorem node13622_cond_eq
    (child13616 : Flapjack.WordAlloc.removeDeadStructural input13616 value6812 value1 value2 = (output13616, value6813, value1))
    (child13621 : Flapjack.WordAlloc.removeDeadStructural input13621 value6813 value1 value2 = (output13621, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13622 value6812 value1 value2 = (output13622, value5, value1) := by
  rw [input13622_def, output13622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13616]
  try dsimp only
  rw [child13621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13616_skip, output13621_skip]
  kernel_rfl

theorem node13623_cond_eq
    (child13615 : Flapjack.WordAlloc.removeDeadStructural input13615 value6811 value1 value2 = (output13615, value6812, value1))
    (child13622 : Flapjack.WordAlloc.removeDeadStructural input13622 value6812 value1 value2 = (output13622, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13623 value6811 value1 value2 = (output13623, value5, value1) := by
  rw [input13623_def, output13623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13615]
  try dsimp only
  rw [child13622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13615_skip, output13622_skip]
  kernel_rfl

theorem node13624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13624 value5 value1 value2 = (output13624, value6816, value1) := by
  rw [input13624_def, output13624_def]
  kernel_rfl

theorem node13625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13625 value6816 value1 value2 = (output13625, value6817, value1) := by
  rw [input13625_def, output13625_def]
  kernel_rfl

theorem node13626_cond_eq
    (child13624 : Flapjack.WordAlloc.removeDeadStructural input13624 value5 value1 value2 = (output13624, value6816, value1))
    (child13625 : Flapjack.WordAlloc.removeDeadStructural input13625 value6816 value1 value2 = (output13625, value6817, value1)) : Flapjack.WordAlloc.removeDeadStructural input13626 value5 value1 value2 = (output13626, value6817, value1) := by
  rw [input13626_def, output13626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13624]
  try dsimp only
  rw [child13625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13624_skip, output13625_skip]
  kernel_rfl

theorem node13627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13627 value6817 value1 value2 = (output13627, value6818, value1) := by
  rw [input13627_def, output13627_def]
  kernel_rfl

theorem node13628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13628 value6818 value1 value2 = (output13628, value6818, value1) := by
  rw [input13628_def, output13628_def]
  kernel_rfl

theorem node13629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13629 value6818 value1 value2 = (output13629, value6819, value1) := by
  rw [input13629_def, output13629_def]
  kernel_rfl

theorem node13630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13630 value6819 value1 value2 = (output13630, value6820, value1) := by
  rw [input13630_def, output13630_def]
  kernel_rfl

theorem node13631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13631 value6820 value1 value2 = (output13631, value6821, value1) := by
  rw [input13631_def, output13631_def]
  kernel_rfl

theorem node13632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13632 value6821 value1 value2 = (output13632, value6822, value1) := by
  rw [input13632_def, output13632_def]
  kernel_rfl

theorem node13633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13633 value6822 value1 value2 = (output13633, value5, value1) := by
  rw [input13633_def, output13633_def]
  kernel_rfl

theorem node13634_cond_eq
    (child13632 : Flapjack.WordAlloc.removeDeadStructural input13632 value6821 value1 value2 = (output13632, value6822, value1))
    (child13633 : Flapjack.WordAlloc.removeDeadStructural input13633 value6822 value1 value2 = (output13633, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13634 value6821 value1 value2 = (output13634, value5, value1) := by
  rw [input13634_def, output13634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13632]
  try dsimp only
  rw [child13633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13632_skip, output13633_skip]
  kernel_rfl

theorem node13635_cond_eq
    (child13631 : Flapjack.WordAlloc.removeDeadStructural input13631 value6820 value1 value2 = (output13631, value6821, value1))
    (child13634 : Flapjack.WordAlloc.removeDeadStructural input13634 value6821 value1 value2 = (output13634, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13635 value6820 value1 value2 = (output13635, value5, value1) := by
  rw [input13635_def, output13635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13631]
  try dsimp only
  rw [child13634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13631_skip, output13634_skip]
  kernel_rfl

theorem node13636_cond_eq
    (child13630 : Flapjack.WordAlloc.removeDeadStructural input13630 value6819 value1 value2 = (output13630, value6820, value1))
    (child13635 : Flapjack.WordAlloc.removeDeadStructural input13635 value6820 value1 value2 = (output13635, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13636 value6819 value1 value2 = (output13636, value5, value1) := by
  rw [input13636_def, output13636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13630]
  try dsimp only
  rw [child13635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13630_skip, output13635_skip]
  kernel_rfl

theorem node13637_cond_eq
    (child13629 : Flapjack.WordAlloc.removeDeadStructural input13629 value6818 value1 value2 = (output13629, value6819, value1))
    (child13636 : Flapjack.WordAlloc.removeDeadStructural input13636 value6819 value1 value2 = (output13636, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13637 value6818 value1 value2 = (output13637, value5, value1) := by
  rw [input13637_def, output13637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13629]
  try dsimp only
  rw [child13636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13629_skip, output13636_skip]
  kernel_rfl

theorem node13638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13638 value5 value1 value2 = (output13638, value6823, value1) := by
  rw [input13638_def, output13638_def]
  kernel_rfl

theorem node13639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13639 value6823 value1 value2 = (output13639, value6824, value1) := by
  rw [input13639_def, output13639_def]
  kernel_rfl

theorem node13640_cond_eq
    (child13638 : Flapjack.WordAlloc.removeDeadStructural input13638 value5 value1 value2 = (output13638, value6823, value1))
    (child13639 : Flapjack.WordAlloc.removeDeadStructural input13639 value6823 value1 value2 = (output13639, value6824, value1)) : Flapjack.WordAlloc.removeDeadStructural input13640 value5 value1 value2 = (output13640, value6824, value1) := by
  rw [input13640_def, output13640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13638]
  try dsimp only
  rw [child13639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13638_skip, output13639_skip]
  kernel_rfl

theorem node13641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13641 value6824 value1 value2 = (output13641, value6825, value1) := by
  rw [input13641_def, output13641_def]
  kernel_rfl

theorem node13642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13642 value6825 value1 value2 = (output13642, value6825, value1) := by
  rw [input13642_def, output13642_def]
  kernel_rfl

theorem node13643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13643 value6825 value1 value2 = (output13643, value6826, value1) := by
  rw [input13643_def, output13643_def]
  kernel_rfl

theorem node13644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13644 value6826 value1 value2 = (output13644, value6827, value1) := by
  rw [input13644_def, output13644_def]
  kernel_rfl

theorem node13645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13645 value6827 value1 value2 = (output13645, value6828, value1) := by
  rw [input13645_def, output13645_def]
  kernel_rfl

theorem node13646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13646 value6828 value1 value2 = (output13646, value6829, value1) := by
  rw [input13646_def, output13646_def]
  kernel_rfl

theorem node13647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13647 value6829 value1 value2 = (output13647, value5, value1) := by
  rw [input13647_def, output13647_def]
  kernel_rfl

theorem node13648_cond_eq
    (child13646 : Flapjack.WordAlloc.removeDeadStructural input13646 value6828 value1 value2 = (output13646, value6829, value1))
    (child13647 : Flapjack.WordAlloc.removeDeadStructural input13647 value6829 value1 value2 = (output13647, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13648 value6828 value1 value2 = (output13648, value5, value1) := by
  rw [input13648_def, output13648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13646]
  try dsimp only
  rw [child13647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13646_skip, output13647_skip]
  kernel_rfl

theorem node13649_cond_eq
    (child13645 : Flapjack.WordAlloc.removeDeadStructural input13645 value6827 value1 value2 = (output13645, value6828, value1))
    (child13648 : Flapjack.WordAlloc.removeDeadStructural input13648 value6828 value1 value2 = (output13648, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13649 value6827 value1 value2 = (output13649, value5, value1) := by
  rw [input13649_def, output13649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13645]
  try dsimp only
  rw [child13648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13645_skip, output13648_skip]
  kernel_rfl

theorem node13650_cond_eq
    (child13644 : Flapjack.WordAlloc.removeDeadStructural input13644 value6826 value1 value2 = (output13644, value6827, value1))
    (child13649 : Flapjack.WordAlloc.removeDeadStructural input13649 value6827 value1 value2 = (output13649, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13650 value6826 value1 value2 = (output13650, value5, value1) := by
  rw [input13650_def, output13650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13644]
  try dsimp only
  rw [child13649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13644_skip, output13649_skip]
  kernel_rfl

theorem node13651_cond_eq
    (child13643 : Flapjack.WordAlloc.removeDeadStructural input13643 value6825 value1 value2 = (output13643, value6826, value1))
    (child13650 : Flapjack.WordAlloc.removeDeadStructural input13650 value6826 value1 value2 = (output13650, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13651 value6825 value1 value2 = (output13651, value5, value1) := by
  rw [input13651_def, output13651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13643]
  try dsimp only
  rw [child13650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13643_skip, output13650_skip]
  kernel_rfl

theorem node13652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13652 value5 value1 value2 = (output13652, value6830, value1) := by
  rw [input13652_def, output13652_def]
  kernel_rfl

theorem node13653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13653 value6830 value1 value2 = (output13653, value6831, value1) := by
  rw [input13653_def, output13653_def]
  kernel_rfl

theorem node13654_cond_eq
    (child13652 : Flapjack.WordAlloc.removeDeadStructural input13652 value5 value1 value2 = (output13652, value6830, value1))
    (child13653 : Flapjack.WordAlloc.removeDeadStructural input13653 value6830 value1 value2 = (output13653, value6831, value1)) : Flapjack.WordAlloc.removeDeadStructural input13654 value5 value1 value2 = (output13654, value6831, value1) := by
  rw [input13654_def, output13654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13652]
  try dsimp only
  rw [child13653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13652_skip, output13653_skip]
  kernel_rfl

theorem node13655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13655 value6831 value1 value2 = (output13655, value6832, value1) := by
  rw [input13655_def, output13655_def]
  kernel_rfl

theorem node13656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13656 value6832 value1 value2 = (output13656, value6832, value1) := by
  rw [input13656_def, output13656_def]
  kernel_rfl

theorem node13657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13657 value6832 value1 value2 = (output13657, value6833, value1) := by
  rw [input13657_def, output13657_def]
  kernel_rfl

theorem node13658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13658 value6833 value1 value2 = (output13658, value6834, value1) := by
  rw [input13658_def, output13658_def]
  kernel_rfl

theorem node13659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13659 value6834 value1 value2 = (output13659, value6835, value1) := by
  rw [input13659_def, output13659_def]
  kernel_rfl

theorem node13660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13660 value6835 value1 value2 = (output13660, value6836, value1) := by
  rw [input13660_def, output13660_def]
  kernel_rfl

theorem node13661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13661 value6836 value1 value2 = (output13661, value5, value1) := by
  rw [input13661_def, output13661_def]
  kernel_rfl

theorem node13662_cond_eq
    (child13660 : Flapjack.WordAlloc.removeDeadStructural input13660 value6835 value1 value2 = (output13660, value6836, value1))
    (child13661 : Flapjack.WordAlloc.removeDeadStructural input13661 value6836 value1 value2 = (output13661, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13662 value6835 value1 value2 = (output13662, value5, value1) := by
  rw [input13662_def, output13662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13660]
  try dsimp only
  rw [child13661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13660_skip, output13661_skip]
  kernel_rfl

theorem node13663_cond_eq
    (child13659 : Flapjack.WordAlloc.removeDeadStructural input13659 value6834 value1 value2 = (output13659, value6835, value1))
    (child13662 : Flapjack.WordAlloc.removeDeadStructural input13662 value6835 value1 value2 = (output13662, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13663 value6834 value1 value2 = (output13663, value5, value1) := by
  rw [input13663_def, output13663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13659]
  try dsimp only
  rw [child13662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13659_skip, output13662_skip]
  kernel_rfl

theorem node13664_cond_eq
    (child13658 : Flapjack.WordAlloc.removeDeadStructural input13658 value6833 value1 value2 = (output13658, value6834, value1))
    (child13663 : Flapjack.WordAlloc.removeDeadStructural input13663 value6834 value1 value2 = (output13663, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13664 value6833 value1 value2 = (output13664, value5, value1) := by
  rw [input13664_def, output13664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13658]
  try dsimp only
  rw [child13663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13658_skip, output13663_skip]
  kernel_rfl

theorem node13665_cond_eq
    (child13657 : Flapjack.WordAlloc.removeDeadStructural input13657 value6832 value1 value2 = (output13657, value6833, value1))
    (child13664 : Flapjack.WordAlloc.removeDeadStructural input13664 value6833 value1 value2 = (output13664, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13665 value6832 value1 value2 = (output13665, value5, value1) := by
  rw [input13665_def, output13665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13657]
  try dsimp only
  rw [child13664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13657_skip, output13664_skip]
  kernel_rfl

theorem node13666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13666 value5 value1 value2 = (output13666, value6837, value1) := by
  rw [input13666_def, output13666_def]
  kernel_rfl

theorem node13667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13667 value6837 value1 value2 = (output13667, value6838, value1) := by
  rw [input13667_def, output13667_def]
  kernel_rfl

theorem node13668_cond_eq
    (child13666 : Flapjack.WordAlloc.removeDeadStructural input13666 value5 value1 value2 = (output13666, value6837, value1))
    (child13667 : Flapjack.WordAlloc.removeDeadStructural input13667 value6837 value1 value2 = (output13667, value6838, value1)) : Flapjack.WordAlloc.removeDeadStructural input13668 value5 value1 value2 = (output13668, value6838, value1) := by
  rw [input13668_def, output13668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13666]
  try dsimp only
  rw [child13667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13666_skip, output13667_skip]
  kernel_rfl

theorem node13669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13669 value6838 value1 value2 = (output13669, value6839, value1) := by
  rw [input13669_def, output13669_def]
  kernel_rfl

theorem node13670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13670 value6839 value1 value2 = (output13670, value6839, value1) := by
  rw [input13670_def, output13670_def]
  kernel_rfl

theorem node13671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13671 value6839 value1 value2 = (output13671, value6840, value1) := by
  rw [input13671_def, output13671_def]
  kernel_rfl

theorem node13672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13672 value6840 value1 value2 = (output13672, value6841, value1) := by
  rw [input13672_def, output13672_def]
  kernel_rfl

theorem node13673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13673 value6841 value1 value2 = (output13673, value6842, value1) := by
  rw [input13673_def, output13673_def]
  kernel_rfl

theorem node13674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13674 value6842 value1 value2 = (output13674, value6843, value1) := by
  rw [input13674_def, output13674_def]
  kernel_rfl

theorem node13675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13675 value6843 value1 value2 = (output13675, value5, value1) := by
  rw [input13675_def, output13675_def]
  kernel_rfl

theorem node13676_cond_eq
    (child13674 : Flapjack.WordAlloc.removeDeadStructural input13674 value6842 value1 value2 = (output13674, value6843, value1))
    (child13675 : Flapjack.WordAlloc.removeDeadStructural input13675 value6843 value1 value2 = (output13675, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13676 value6842 value1 value2 = (output13676, value5, value1) := by
  rw [input13676_def, output13676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13674]
  try dsimp only
  rw [child13675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13674_skip, output13675_skip]
  kernel_rfl

theorem node13677_cond_eq
    (child13673 : Flapjack.WordAlloc.removeDeadStructural input13673 value6841 value1 value2 = (output13673, value6842, value1))
    (child13676 : Flapjack.WordAlloc.removeDeadStructural input13676 value6842 value1 value2 = (output13676, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13677 value6841 value1 value2 = (output13677, value5, value1) := by
  rw [input13677_def, output13677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13673]
  try dsimp only
  rw [child13676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13673_skip, output13676_skip]
  kernel_rfl

theorem node13678_cond_eq
    (child13672 : Flapjack.WordAlloc.removeDeadStructural input13672 value6840 value1 value2 = (output13672, value6841, value1))
    (child13677 : Flapjack.WordAlloc.removeDeadStructural input13677 value6841 value1 value2 = (output13677, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13678 value6840 value1 value2 = (output13678, value5, value1) := by
  rw [input13678_def, output13678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13672]
  try dsimp only
  rw [child13677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13672_skip, output13677_skip]
  kernel_rfl

theorem node13679_cond_eq
    (child13671 : Flapjack.WordAlloc.removeDeadStructural input13671 value6839 value1 value2 = (output13671, value6840, value1))
    (child13678 : Flapjack.WordAlloc.removeDeadStructural input13678 value6840 value1 value2 = (output13678, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13679 value6839 value1 value2 = (output13679, value5, value1) := by
  rw [input13679_def, output13679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13671]
  try dsimp only
  rw [child13678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13671_skip, output13678_skip]
  kernel_rfl

theorem node13680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13680 value5 value1 value2 = (output13680, value6844, value1) := by
  rw [input13680_def, output13680_def]
  kernel_rfl

theorem node13681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13681 value6844 value1 value2 = (output13681, value6845, value1) := by
  rw [input13681_def, output13681_def]
  kernel_rfl

theorem node13682_cond_eq
    (child13680 : Flapjack.WordAlloc.removeDeadStructural input13680 value5 value1 value2 = (output13680, value6844, value1))
    (child13681 : Flapjack.WordAlloc.removeDeadStructural input13681 value6844 value1 value2 = (output13681, value6845, value1)) : Flapjack.WordAlloc.removeDeadStructural input13682 value5 value1 value2 = (output13682, value6845, value1) := by
  rw [input13682_def, output13682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13680]
  try dsimp only
  rw [child13681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13680_skip, output13681_skip]
  kernel_rfl

theorem node13683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13683 value6845 value1 value2 = (output13683, value6846, value1) := by
  rw [input13683_def, output13683_def]
  kernel_rfl

theorem node13684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13684 value6846 value1 value2 = (output13684, value6846, value1) := by
  rw [input13684_def, output13684_def]
  kernel_rfl

theorem node13685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13685 value6846 value1 value2 = (output13685, value6847, value1) := by
  rw [input13685_def, output13685_def]
  kernel_rfl

theorem node13686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13686 value6847 value1 value2 = (output13686, value6848, value1) := by
  rw [input13686_def, output13686_def]
  kernel_rfl

theorem node13687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13687 value6848 value1 value2 = (output13687, value6849, value1) := by
  rw [input13687_def, output13687_def]
  kernel_rfl

theorem node13688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13688 value6849 value1 value2 = (output13688, value6850, value1) := by
  rw [input13688_def, output13688_def]
  kernel_rfl

theorem node13689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13689 value6850 value1 value2 = (output13689, value5, value1) := by
  rw [input13689_def, output13689_def]
  kernel_rfl

theorem node13690_cond_eq
    (child13688 : Flapjack.WordAlloc.removeDeadStructural input13688 value6849 value1 value2 = (output13688, value6850, value1))
    (child13689 : Flapjack.WordAlloc.removeDeadStructural input13689 value6850 value1 value2 = (output13689, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13690 value6849 value1 value2 = (output13690, value5, value1) := by
  rw [input13690_def, output13690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13688]
  try dsimp only
  rw [child13689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13688_skip, output13689_skip]
  kernel_rfl

theorem node13691_cond_eq
    (child13687 : Flapjack.WordAlloc.removeDeadStructural input13687 value6848 value1 value2 = (output13687, value6849, value1))
    (child13690 : Flapjack.WordAlloc.removeDeadStructural input13690 value6849 value1 value2 = (output13690, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13691 value6848 value1 value2 = (output13691, value5, value1) := by
  rw [input13691_def, output13691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13687]
  try dsimp only
  rw [child13690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13687_skip, output13690_skip]
  kernel_rfl

theorem node13692_cond_eq
    (child13686 : Flapjack.WordAlloc.removeDeadStructural input13686 value6847 value1 value2 = (output13686, value6848, value1))
    (child13691 : Flapjack.WordAlloc.removeDeadStructural input13691 value6848 value1 value2 = (output13691, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13692 value6847 value1 value2 = (output13692, value5, value1) := by
  rw [input13692_def, output13692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13686]
  try dsimp only
  rw [child13691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13686_skip, output13691_skip]
  kernel_rfl

theorem node13693_cond_eq
    (child13685 : Flapjack.WordAlloc.removeDeadStructural input13685 value6846 value1 value2 = (output13685, value6847, value1))
    (child13692 : Flapjack.WordAlloc.removeDeadStructural input13692 value6847 value1 value2 = (output13692, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13693 value6846 value1 value2 = (output13693, value5, value1) := by
  rw [input13693_def, output13693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13685]
  try dsimp only
  rw [child13692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13685_skip, output13692_skip]
  kernel_rfl

theorem node13694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13694 value5 value1 value2 = (output13694, value6851, value1) := by
  rw [input13694_def, output13694_def]
  kernel_rfl

theorem node13695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13695 value6851 value1 value2 = (output13695, value6852, value1) := by
  rw [input13695_def, output13695_def]
  kernel_rfl

theorem node13696_cond_eq
    (child13694 : Flapjack.WordAlloc.removeDeadStructural input13694 value5 value1 value2 = (output13694, value6851, value1))
    (child13695 : Flapjack.WordAlloc.removeDeadStructural input13695 value6851 value1 value2 = (output13695, value6852, value1)) : Flapjack.WordAlloc.removeDeadStructural input13696 value5 value1 value2 = (output13696, value6852, value1) := by
  rw [input13696_def, output13696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13694]
  try dsimp only
  rw [child13695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13694_skip, output13695_skip]
  kernel_rfl

theorem node13697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13697 value6852 value1 value2 = (output13697, value6853, value1) := by
  rw [input13697_def, output13697_def]
  kernel_rfl

theorem node13698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13698 value6853 value1 value2 = (output13698, value6853, value1) := by
  rw [input13698_def, output13698_def]
  kernel_rfl

theorem node13699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13699 value6853 value1 value2 = (output13699, value6854, value1) := by
  rw [input13699_def, output13699_def]
  kernel_rfl

theorem node13700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13700 value6854 value1 value2 = (output13700, value6855, value1) := by
  rw [input13700_def, output13700_def]
  kernel_rfl

theorem node13701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13701 value6855 value1 value2 = (output13701, value6856, value1) := by
  rw [input13701_def, output13701_def]
  kernel_rfl

theorem node13702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13702 value6856 value1 value2 = (output13702, value6857, value1) := by
  rw [input13702_def, output13702_def]
  kernel_rfl

theorem node13703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13703 value6857 value1 value2 = (output13703, value5, value1) := by
  rw [input13703_def, output13703_def]
  kernel_rfl

theorem node13704_cond_eq
    (child13702 : Flapjack.WordAlloc.removeDeadStructural input13702 value6856 value1 value2 = (output13702, value6857, value1))
    (child13703 : Flapjack.WordAlloc.removeDeadStructural input13703 value6857 value1 value2 = (output13703, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13704 value6856 value1 value2 = (output13704, value5, value1) := by
  rw [input13704_def, output13704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13702]
  try dsimp only
  rw [child13703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13702_skip, output13703_skip]
  kernel_rfl

theorem node13705_cond_eq
    (child13701 : Flapjack.WordAlloc.removeDeadStructural input13701 value6855 value1 value2 = (output13701, value6856, value1))
    (child13704 : Flapjack.WordAlloc.removeDeadStructural input13704 value6856 value1 value2 = (output13704, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13705 value6855 value1 value2 = (output13705, value5, value1) := by
  rw [input13705_def, output13705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13701]
  try dsimp only
  rw [child13704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13701_skip, output13704_skip]
  kernel_rfl

theorem node13706_cond_eq
    (child13700 : Flapjack.WordAlloc.removeDeadStructural input13700 value6854 value1 value2 = (output13700, value6855, value1))
    (child13705 : Flapjack.WordAlloc.removeDeadStructural input13705 value6855 value1 value2 = (output13705, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13706 value6854 value1 value2 = (output13706, value5, value1) := by
  rw [input13706_def, output13706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13700]
  try dsimp only
  rw [child13705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13700_skip, output13705_skip]
  kernel_rfl

theorem node13707_cond_eq
    (child13699 : Flapjack.WordAlloc.removeDeadStructural input13699 value6853 value1 value2 = (output13699, value6854, value1))
    (child13706 : Flapjack.WordAlloc.removeDeadStructural input13706 value6854 value1 value2 = (output13706, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13707 value6853 value1 value2 = (output13707, value5, value1) := by
  rw [input13707_def, output13707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13699]
  try dsimp only
  rw [child13706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13699_skip, output13706_skip]
  kernel_rfl

theorem node13708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13708 value5 value1 value2 = (output13708, value6858, value1) := by
  rw [input13708_def, output13708_def]
  kernel_rfl

theorem node13709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13709 value6858 value1 value2 = (output13709, value6859, value1) := by
  rw [input13709_def, output13709_def]
  kernel_rfl

theorem node13710_cond_eq
    (child13708 : Flapjack.WordAlloc.removeDeadStructural input13708 value5 value1 value2 = (output13708, value6858, value1))
    (child13709 : Flapjack.WordAlloc.removeDeadStructural input13709 value6858 value1 value2 = (output13709, value6859, value1)) : Flapjack.WordAlloc.removeDeadStructural input13710 value5 value1 value2 = (output13710, value6859, value1) := by
  rw [input13710_def, output13710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13708]
  try dsimp only
  rw [child13709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13708_skip, output13709_skip]
  kernel_rfl

theorem node13711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13711 value6859 value1 value2 = (output13711, value6860, value1) := by
  rw [input13711_def, output13711_def]
  kernel_rfl

theorem node13712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13712 value6860 value1 value2 = (output13712, value6860, value1) := by
  rw [input13712_def, output13712_def]
  kernel_rfl

theorem node13713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13713 value6860 value1 value2 = (output13713, value6861, value1) := by
  rw [input13713_def, output13713_def]
  kernel_rfl

theorem node13714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13714 value6861 value1 value2 = (output13714, value6862, value1) := by
  rw [input13714_def, output13714_def]
  kernel_rfl

theorem node13715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13715 value6862 value1 value2 = (output13715, value6863, value1) := by
  rw [input13715_def, output13715_def]
  kernel_rfl

theorem node13716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13716 value6863 value1 value2 = (output13716, value6864, value1) := by
  rw [input13716_def, output13716_def]
  kernel_rfl

theorem node13717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13717 value6864 value1 value2 = (output13717, value5, value1) := by
  rw [input13717_def, output13717_def]
  kernel_rfl

theorem node13718_cond_eq
    (child13716 : Flapjack.WordAlloc.removeDeadStructural input13716 value6863 value1 value2 = (output13716, value6864, value1))
    (child13717 : Flapjack.WordAlloc.removeDeadStructural input13717 value6864 value1 value2 = (output13717, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13718 value6863 value1 value2 = (output13718, value5, value1) := by
  rw [input13718_def, output13718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13716]
  try dsimp only
  rw [child13717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13716_skip, output13717_skip]
  kernel_rfl

theorem node13719_cond_eq
    (child13715 : Flapjack.WordAlloc.removeDeadStructural input13715 value6862 value1 value2 = (output13715, value6863, value1))
    (child13718 : Flapjack.WordAlloc.removeDeadStructural input13718 value6863 value1 value2 = (output13718, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13719 value6862 value1 value2 = (output13719, value5, value1) := by
  rw [input13719_def, output13719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13715]
  try dsimp only
  rw [child13718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13715_skip, output13718_skip]
  kernel_rfl

theorem node13720_cond_eq
    (child13714 : Flapjack.WordAlloc.removeDeadStructural input13714 value6861 value1 value2 = (output13714, value6862, value1))
    (child13719 : Flapjack.WordAlloc.removeDeadStructural input13719 value6862 value1 value2 = (output13719, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13720 value6861 value1 value2 = (output13720, value5, value1) := by
  rw [input13720_def, output13720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13714]
  try dsimp only
  rw [child13719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13714_skip, output13719_skip]
  kernel_rfl

theorem node13721_cond_eq
    (child13713 : Flapjack.WordAlloc.removeDeadStructural input13713 value6860 value1 value2 = (output13713, value6861, value1))
    (child13720 : Flapjack.WordAlloc.removeDeadStructural input13720 value6861 value1 value2 = (output13720, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13721 value6860 value1 value2 = (output13721, value5, value1) := by
  rw [input13721_def, output13721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13713]
  try dsimp only
  rw [child13720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13713_skip, output13720_skip]
  kernel_rfl

theorem node13722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13722 value5 value1 value2 = (output13722, value6865, value1) := by
  rw [input13722_def, output13722_def]
  kernel_rfl

theorem node13723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13723 value6865 value1 value2 = (output13723, value6866, value1) := by
  rw [input13723_def, output13723_def]
  kernel_rfl

theorem node13724_cond_eq
    (child13722 : Flapjack.WordAlloc.removeDeadStructural input13722 value5 value1 value2 = (output13722, value6865, value1))
    (child13723 : Flapjack.WordAlloc.removeDeadStructural input13723 value6865 value1 value2 = (output13723, value6866, value1)) : Flapjack.WordAlloc.removeDeadStructural input13724 value5 value1 value2 = (output13724, value6866, value1) := by
  rw [input13724_def, output13724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13722]
  try dsimp only
  rw [child13723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13722_skip, output13723_skip]
  kernel_rfl

theorem node13725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13725 value6866 value1 value2 = (output13725, value6867, value1) := by
  rw [input13725_def, output13725_def]
  kernel_rfl

theorem node13726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13726 value6867 value1 value2 = (output13726, value6867, value1) := by
  rw [input13726_def, output13726_def]
  kernel_rfl

theorem node13727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13727 value6867 value1 value2 = (output13727, value6868, value1) := by
  rw [input13727_def, output13727_def]
  kernel_rfl

theorem node13728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13728 value6868 value1 value2 = (output13728, value6869, value1) := by
  rw [input13728_def, output13728_def]
  kernel_rfl

theorem node13729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13729 value6869 value1 value2 = (output13729, value6870, value1) := by
  rw [input13729_def, output13729_def]
  kernel_rfl

theorem node13730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13730 value6870 value1 value2 = (output13730, value6871, value1) := by
  rw [input13730_def, output13730_def]
  kernel_rfl

theorem node13731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13731 value6871 value1 value2 = (output13731, value5, value1) := by
  rw [input13731_def, output13731_def]
  kernel_rfl

theorem node13732_cond_eq
    (child13730 : Flapjack.WordAlloc.removeDeadStructural input13730 value6870 value1 value2 = (output13730, value6871, value1))
    (child13731 : Flapjack.WordAlloc.removeDeadStructural input13731 value6871 value1 value2 = (output13731, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13732 value6870 value1 value2 = (output13732, value5, value1) := by
  rw [input13732_def, output13732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13730]
  try dsimp only
  rw [child13731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13730_skip, output13731_skip]
  kernel_rfl

theorem node13733_cond_eq
    (child13729 : Flapjack.WordAlloc.removeDeadStructural input13729 value6869 value1 value2 = (output13729, value6870, value1))
    (child13732 : Flapjack.WordAlloc.removeDeadStructural input13732 value6870 value1 value2 = (output13732, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13733 value6869 value1 value2 = (output13733, value5, value1) := by
  rw [input13733_def, output13733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13729]
  try dsimp only
  rw [child13732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13729_skip, output13732_skip]
  kernel_rfl

theorem node13734_cond_eq
    (child13728 : Flapjack.WordAlloc.removeDeadStructural input13728 value6868 value1 value2 = (output13728, value6869, value1))
    (child13733 : Flapjack.WordAlloc.removeDeadStructural input13733 value6869 value1 value2 = (output13733, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13734 value6868 value1 value2 = (output13734, value5, value1) := by
  rw [input13734_def, output13734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13728]
  try dsimp only
  rw [child13733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13728_skip, output13733_skip]
  kernel_rfl

theorem node13735_cond_eq
    (child13727 : Flapjack.WordAlloc.removeDeadStructural input13727 value6867 value1 value2 = (output13727, value6868, value1))
    (child13734 : Flapjack.WordAlloc.removeDeadStructural input13734 value6868 value1 value2 = (output13734, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13735 value6867 value1 value2 = (output13735, value5, value1) := by
  rw [input13735_def, output13735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13727]
  try dsimp only
  rw [child13734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13727_skip, output13734_skip]
  kernel_rfl

theorem node13736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13736 value5 value1 value2 = (output13736, value6872, value1) := by
  rw [input13736_def, output13736_def]
  kernel_rfl

theorem node13737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13737 value6872 value1 value2 = (output13737, value6873, value1) := by
  rw [input13737_def, output13737_def]
  kernel_rfl

theorem node13738_cond_eq
    (child13736 : Flapjack.WordAlloc.removeDeadStructural input13736 value5 value1 value2 = (output13736, value6872, value1))
    (child13737 : Flapjack.WordAlloc.removeDeadStructural input13737 value6872 value1 value2 = (output13737, value6873, value1)) : Flapjack.WordAlloc.removeDeadStructural input13738 value5 value1 value2 = (output13738, value6873, value1) := by
  rw [input13738_def, output13738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13736]
  try dsimp only
  rw [child13737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13736_skip, output13737_skip]
  kernel_rfl

theorem node13739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13739 value6873 value1 value2 = (output13739, value6874, value1) := by
  rw [input13739_def, output13739_def]
  kernel_rfl

theorem node13740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13740 value6874 value1 value2 = (output13740, value6874, value1) := by
  rw [input13740_def, output13740_def]
  kernel_rfl

theorem node13741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13741 value6874 value1 value2 = (output13741, value6875, value1) := by
  rw [input13741_def, output13741_def]
  kernel_rfl

theorem node13742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13742 value6875 value1 value2 = (output13742, value6876, value1) := by
  rw [input13742_def, output13742_def]
  kernel_rfl

theorem node13743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13743 value6876 value1 value2 = (output13743, value6877, value1) := by
  rw [input13743_def, output13743_def]
  kernel_rfl

theorem node13744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13744 value6877 value1 value2 = (output13744, value6878, value1) := by
  rw [input13744_def, output13744_def]
  kernel_rfl

theorem node13745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13745 value6878 value1 value2 = (output13745, value5, value1) := by
  rw [input13745_def, output13745_def]
  kernel_rfl

theorem node13746_cond_eq
    (child13744 : Flapjack.WordAlloc.removeDeadStructural input13744 value6877 value1 value2 = (output13744, value6878, value1))
    (child13745 : Flapjack.WordAlloc.removeDeadStructural input13745 value6878 value1 value2 = (output13745, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13746 value6877 value1 value2 = (output13746, value5, value1) := by
  rw [input13746_def, output13746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13744]
  try dsimp only
  rw [child13745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13744_skip, output13745_skip]
  kernel_rfl

theorem node13747_cond_eq
    (child13743 : Flapjack.WordAlloc.removeDeadStructural input13743 value6876 value1 value2 = (output13743, value6877, value1))
    (child13746 : Flapjack.WordAlloc.removeDeadStructural input13746 value6877 value1 value2 = (output13746, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13747 value6876 value1 value2 = (output13747, value5, value1) := by
  rw [input13747_def, output13747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13743]
  try dsimp only
  rw [child13746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13743_skip, output13746_skip]
  kernel_rfl

theorem node13748_cond_eq
    (child13742 : Flapjack.WordAlloc.removeDeadStructural input13742 value6875 value1 value2 = (output13742, value6876, value1))
    (child13747 : Flapjack.WordAlloc.removeDeadStructural input13747 value6876 value1 value2 = (output13747, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13748 value6875 value1 value2 = (output13748, value5, value1) := by
  rw [input13748_def, output13748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13742]
  try dsimp only
  rw [child13747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13742_skip, output13747_skip]
  kernel_rfl

theorem node13749_cond_eq
    (child13741 : Flapjack.WordAlloc.removeDeadStructural input13741 value6874 value1 value2 = (output13741, value6875, value1))
    (child13748 : Flapjack.WordAlloc.removeDeadStructural input13748 value6875 value1 value2 = (output13748, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13749 value6874 value1 value2 = (output13749, value5, value1) := by
  rw [input13749_def, output13749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13741]
  try dsimp only
  rw [child13748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13741_skip, output13748_skip]
  kernel_rfl

theorem node13750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13750 value5 value1 value2 = (output13750, value6879, value1) := by
  rw [input13750_def, output13750_def]
  kernel_rfl

theorem node13751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13751 value6879 value1 value2 = (output13751, value6880, value1) := by
  rw [input13751_def, output13751_def]
  kernel_rfl

theorem node13752_cond_eq
    (child13750 : Flapjack.WordAlloc.removeDeadStructural input13750 value5 value1 value2 = (output13750, value6879, value1))
    (child13751 : Flapjack.WordAlloc.removeDeadStructural input13751 value6879 value1 value2 = (output13751, value6880, value1)) : Flapjack.WordAlloc.removeDeadStructural input13752 value5 value1 value2 = (output13752, value6880, value1) := by
  rw [input13752_def, output13752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13750]
  try dsimp only
  rw [child13751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13750_skip, output13751_skip]
  kernel_rfl

theorem node13753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13753 value6880 value1 value2 = (output13753, value6881, value1) := by
  rw [input13753_def, output13753_def]
  kernel_rfl

theorem node13754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13754 value6881 value1 value2 = (output13754, value6881, value1) := by
  rw [input13754_def, output13754_def]
  kernel_rfl

theorem node13755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13755 value6881 value1 value2 = (output13755, value6882, value1) := by
  rw [input13755_def, output13755_def]
  kernel_rfl

theorem node13756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13756 value6882 value1 value2 = (output13756, value6883, value1) := by
  rw [input13756_def, output13756_def]
  kernel_rfl

theorem node13757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13757 value6883 value1 value2 = (output13757, value6884, value1) := by
  rw [input13757_def, output13757_def]
  kernel_rfl

theorem node13758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13758 value6884 value1 value2 = (output13758, value5, value1) := by
  rw [input13758_def, output13758_def]
  kernel_rfl

theorem node13759_cond_eq
    (child13757 : Flapjack.WordAlloc.removeDeadStructural input13757 value6883 value1 value2 = (output13757, value6884, value1))
    (child13758 : Flapjack.WordAlloc.removeDeadStructural input13758 value6884 value1 value2 = (output13758, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13759 value6883 value1 value2 = (output13759, value5, value1) := by
  rw [input13759_def, output13759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13757]
  try dsimp only
  rw [child13758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13757_skip, output13758_skip]
  kernel_rfl

theorem node13760_cond_eq
    (child13756 : Flapjack.WordAlloc.removeDeadStructural input13756 value6882 value1 value2 = (output13756, value6883, value1))
    (child13759 : Flapjack.WordAlloc.removeDeadStructural input13759 value6883 value1 value2 = (output13759, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13760 value6882 value1 value2 = (output13760, value5, value1) := by
  rw [input13760_def, output13760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13756]
  try dsimp only
  rw [child13759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13756_skip, output13759_skip]
  kernel_rfl

theorem node13761_cond_eq
    (child13755 : Flapjack.WordAlloc.removeDeadStructural input13755 value6881 value1 value2 = (output13755, value6882, value1))
    (child13760 : Flapjack.WordAlloc.removeDeadStructural input13760 value6882 value1 value2 = (output13760, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13761 value6881 value1 value2 = (output13761, value5, value1) := by
  rw [input13761_def, output13761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13755]
  try dsimp only
  rw [child13760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13755_skip, output13760_skip]
  kernel_rfl

theorem node13762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13762 value5 value1 value2 = (output13762, value6885, value1) := by
  rw [input13762_def, output13762_def]
  kernel_rfl

theorem node13763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13763 value6885 value1 value2 = (output13763, value6886, value1) := by
  rw [input13763_def, output13763_def]
  kernel_rfl

theorem node13764_cond_eq
    (child13762 : Flapjack.WordAlloc.removeDeadStructural input13762 value5 value1 value2 = (output13762, value6885, value1))
    (child13763 : Flapjack.WordAlloc.removeDeadStructural input13763 value6885 value1 value2 = (output13763, value6886, value1)) : Flapjack.WordAlloc.removeDeadStructural input13764 value5 value1 value2 = (output13764, value6886, value1) := by
  rw [input13764_def, output13764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13762]
  try dsimp only
  rw [child13763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13762_skip, output13763_skip]
  kernel_rfl

theorem node13765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13765 value6886 value1 value2 = (output13765, value6887, value1) := by
  rw [input13765_def, output13765_def]
  kernel_rfl

theorem node13766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13766 value6887 value1 value2 = (output13766, value6888, value1) := by
  rw [input13766_def, output13766_def]
  kernel_rfl

theorem node13767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13767 value6888 value1 value2 = (output13767, value6889, value1) := by
  rw [input13767_def, output13767_def]
  kernel_rfl

theorem node13768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13768 value6889 value1 value2 = (output13768, value6890, value1) := by
  rw [input13768_def, output13768_def]
  kernel_rfl

theorem node13769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13769 value6890 value1 value2 = (output13769, value6891, value1) := by
  rw [input13769_def, output13769_def]
  kernel_rfl

theorem node13770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13770 value6891 value1 value2 = (output13770, value6892, value1) := by
  rw [input13770_def, output13770_def]
  kernel_rfl

theorem node13771_cond_eq
    (child13769 : Flapjack.WordAlloc.removeDeadStructural input13769 value6890 value1 value2 = (output13769, value6891, value1))
    (child13770 : Flapjack.WordAlloc.removeDeadStructural input13770 value6891 value1 value2 = (output13770, value6892, value1)) : Flapjack.WordAlloc.removeDeadStructural input13771 value6890 value1 value2 = (output13771, value6892, value1) := by
  rw [input13771_def, output13771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13769]
  try dsimp only
  rw [child13770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13769_skip, output13770_skip]
  kernel_rfl

theorem node13772_cond_eq
    (child13768 : Flapjack.WordAlloc.removeDeadStructural input13768 value6889 value1 value2 = (output13768, value6890, value1))
    (child13771 : Flapjack.WordAlloc.removeDeadStructural input13771 value6890 value1 value2 = (output13771, value6892, value1)) : Flapjack.WordAlloc.removeDeadStructural input13772 value6889 value1 value2 = (output13772, value6892, value1) := by
  rw [input13772_def, output13772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13768]
  try dsimp only
  rw [child13771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13768_skip, output13771_skip]
  kernel_rfl

theorem node13773_cond_eq
    (child13767 : Flapjack.WordAlloc.removeDeadStructural input13767 value6888 value1 value2 = (output13767, value6889, value1))
    (child13772 : Flapjack.WordAlloc.removeDeadStructural input13772 value6889 value1 value2 = (output13772, value6892, value1)) : Flapjack.WordAlloc.removeDeadStructural input13773 value6888 value1 value2 = (output13773, value6892, value1) := by
  rw [input13773_def, output13773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13767]
  try dsimp only
  rw [child13772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13767_skip, output13772_skip]
  kernel_rfl

theorem node13774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13774 value6892 value1 value2 = (output13774, value6892, value1) := by
  rw [input13774_def, output13774_def]
  kernel_rfl

theorem node13775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13775 value6892 value1 value2 = (output13775, value6893, value1) := by
  rw [input13775_def, output13775_def]
  kernel_rfl

theorem node13776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13776 value6893 value1 value2 = (output13776, value6894, value1) := by
  rw [input13776_def, output13776_def]
  kernel_rfl

theorem node13777_cond_eq
    (child13775 : Flapjack.WordAlloc.removeDeadStructural input13775 value6892 value1 value2 = (output13775, value6893, value1))
    (child13776 : Flapjack.WordAlloc.removeDeadStructural input13776 value6893 value1 value2 = (output13776, value6894, value1)) : Flapjack.WordAlloc.removeDeadStructural input13777 value6892 value1 value2 = (output13777, value6894, value1) := by
  rw [input13777_def, output13777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13775]
  try dsimp only
  rw [child13776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13775_skip, output13776_skip]
  kernel_rfl

theorem node13778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13778 value6894 value1 value2 = (output13778, value6895, value1) := by
  rw [input13778_def, output13778_def]
  kernel_rfl

theorem node13779_cond_eq
    (child13777 : Flapjack.WordAlloc.removeDeadStructural input13777 value6892 value1 value2 = (output13777, value6894, value1))
    (child13778 : Flapjack.WordAlloc.removeDeadStructural input13778 value6894 value1 value2 = (output13778, value6895, value1)) : Flapjack.WordAlloc.removeDeadStructural input13779 value6892 value1 value2 = (output13779, value6895, value1) := by
  rw [input13779_def, output13779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13777]
  try dsimp only
  rw [child13778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13777_skip, output13778_skip]
  kernel_rfl

theorem node13780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13780 value6895 value1 value2 = (output13780, value6896, value1) := by
  rw [input13780_def, output13780_def]
  kernel_rfl

theorem node13781_cond_eq
    (child13779 : Flapjack.WordAlloc.removeDeadStructural input13779 value6892 value1 value2 = (output13779, value6895, value1))
    (child13780 : Flapjack.WordAlloc.removeDeadStructural input13780 value6895 value1 value2 = (output13780, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13781 value6892 value1 value2 = (output13781, value6896, value1) := by
  rw [input13781_def, output13781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13779]
  try dsimp only
  rw [child13780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13779_skip, output13780_skip]
  kernel_rfl

theorem node13782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13782 value6896 value1 value2 = (output13782, value6896, value1) := by
  rw [input13782_def, output13782_def]
  kernel_rfl

theorem node13783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13783 value6896 value1 value2 = (output13783, value6896, value1) := by
  rw [input13783_def, output13783_def]
  kernel_rfl

theorem node13784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13784 value6896 value1 value2 = (output13784, value6896, value1) := by
  rw [input13784_def, output13784_def]
  kernel_rfl

theorem node13785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13785 value6896 value1 value2 = (output13785, value6896, value1) := by
  rw [input13785_def, output13785_def]
  kernel_rfl

theorem node13786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13786 value6896 value1 value2 = (output13786, value6896, value1) := by
  rw [input13786_def, output13786_def]
  kernel_rfl

theorem node13787_cond_eq
    (child13785 : Flapjack.WordAlloc.removeDeadStructural input13785 value6896 value1 value2 = (output13785, value6896, value1))
    (child13786 : Flapjack.WordAlloc.removeDeadStructural input13786 value6896 value1 value2 = (output13786, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13787 value6896 value1 value2 = (output13787, value6896, value1) := by
  rw [input13787_def, output13787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13785]
  try dsimp only
  rw [child13786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13785_skip, output13786_skip]
  kernel_rfl

theorem node13788_cond_eq
    (child13784 : Flapjack.WordAlloc.removeDeadStructural input13784 value6896 value1 value2 = (output13784, value6896, value1))
    (child13787 : Flapjack.WordAlloc.removeDeadStructural input13787 value6896 value1 value2 = (output13787, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13788 value6896 value1 value2 = (output13788, value6896, value1) := by
  rw [input13788_def, output13788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13784]
  try dsimp only
  rw [child13787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13784_skip, output13787_skip]
  kernel_rfl

theorem node13789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13789 value6896 value1 value2 = (output13789, value6896, value1) := by
  rw [input13789_def, output13789_def]
  kernel_rfl

theorem node13790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13790 value6896 value1 value2 = (output13790, value6896, value1) := by
  rw [input13790_def, output13790_def]
  kernel_rfl

theorem node13791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13791 value6896 value1 value2 = (output13791, value6896, value1) := by
  rw [input13791_def, output13791_def]
  kernel_rfl

theorem node13792_cond_eq
    (child13790 : Flapjack.WordAlloc.removeDeadStructural input13790 value6896 value1 value2 = (output13790, value6896, value1))
    (child13791 : Flapjack.WordAlloc.removeDeadStructural input13791 value6896 value1 value2 = (output13791, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13792 value6896 value1 value2 = (output13792, value6896, value1) := by
  rw [input13792_def, output13792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13790]
  try dsimp only
  rw [child13791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13790_skip, output13791_skip]
  kernel_rfl

theorem node13793_cond_eq
    (child13789 : Flapjack.WordAlloc.removeDeadStructural input13789 value6896 value1 value2 = (output13789, value6896, value1))
    (child13792 : Flapjack.WordAlloc.removeDeadStructural input13792 value6896 value1 value2 = (output13792, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13793 value6896 value1 value2 = (output13793, value6896, value1) := by
  rw [input13793_def, output13793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13789]
  try dsimp only
  rw [child13792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13789_skip, output13792_skip]
  kernel_rfl

theorem node13794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13794 value6896 value1 value2 = (output13794, value6896, value1) := by
  rw [input13794_def, output13794_def]
  kernel_rfl

theorem node13795_cond_eq
    (child13793 : Flapjack.WordAlloc.removeDeadStructural input13793 value6896 value1 value2 = (output13793, value6896, value1))
    (child13794 : Flapjack.WordAlloc.removeDeadStructural input13794 value6896 value1 value2 = (output13794, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13795 value6896 value1 value2 = (output13795, value6896, value1) := by
  rw [input13795_def, output13795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13793]
  try dsimp only
  rw [child13794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13793_skip, output13794_skip]
  kernel_rfl

theorem node13796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13796 value6896 value1 value2 = (output13796, value6897, value1) := by
  rw [input13796_def, output13796_def]
  kernel_rfl

theorem node13797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13797 value6897 value1 value2 = (output13797, value6898, value1) := by
  rw [input13797_def, output13797_def]
  kernel_rfl

theorem node13798_cond_eq
    (child13796 : Flapjack.WordAlloc.removeDeadStructural input13796 value6896 value1 value2 = (output13796, value6897, value1))
    (child13797 : Flapjack.WordAlloc.removeDeadStructural input13797 value6897 value1 value2 = (output13797, value6898, value1)) : Flapjack.WordAlloc.removeDeadStructural input13798 value6896 value1 value2 = (output13798, value6898, value1) := by
  rw [input13798_def, output13798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13796]
  try dsimp only
  rw [child13797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13796_skip, output13797_skip]
  kernel_rfl

theorem node13799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13799 value6898 value1 value2 = (output13799, value6896, value1) := by
  rw [input13799_def, output13799_def]
  kernel_rfl

theorem node13800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13800 value6896 value1 value2 = (output13800, value6896, value1) := by
  rw [input13800_def, output13800_def]
  kernel_rfl

theorem node13801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13801 value6896 value1 value2 = (output13801, value6896, value1) := by
  rw [input13801_def, output13801_def]
  kernel_rfl

theorem node13802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13802 value6896 value1 value2 = (output13802, value6896, value1) := by
  rw [input13802_def, output13802_def]
  kernel_rfl

theorem node13803_cond_eq
    (child13801 : Flapjack.WordAlloc.removeDeadStructural input13801 value6896 value1 value2 = (output13801, value6896, value1))
    (child13802 : Flapjack.WordAlloc.removeDeadStructural input13802 value6896 value1 value2 = (output13802, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13803 value6896 value1 value2 = (output13803, value6896, value1) := by
  rw [input13803_def, output13803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13801]
  try dsimp only
  rw [child13802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13801_skip, output13802_skip]
  kernel_rfl

theorem node13804_cond_eq
    (child13800 : Flapjack.WordAlloc.removeDeadStructural input13800 value6896 value1 value2 = (output13800, value6896, value1))
    (child13803 : Flapjack.WordAlloc.removeDeadStructural input13803 value6896 value1 value2 = (output13803, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13804 value6896 value1 value2 = (output13804, value6896, value1) := by
  rw [input13804_def, output13804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13800]
  try dsimp only
  rw [child13803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13800_skip, output13803_skip]
  kernel_rfl

theorem node13805_cond_eq
    (child13799 : Flapjack.WordAlloc.removeDeadStructural input13799 value6898 value1 value2 = (output13799, value6896, value1))
    (child13804 : Flapjack.WordAlloc.removeDeadStructural input13804 value6896 value1 value2 = (output13804, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13805 value6898 value1 value2 = (output13805, value6896, value1) := by
  rw [input13805_def, output13805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13799]
  try dsimp only
  rw [child13804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13799_skip, output13804_skip]
  kernel_rfl

theorem node13806_cond_eq
    (child13798 : Flapjack.WordAlloc.removeDeadStructural input13798 value6896 value1 value2 = (output13798, value6898, value1))
    (child13805 : Flapjack.WordAlloc.removeDeadStructural input13805 value6898 value1 value2 = (output13805, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13806 value6896 value1 value2 = (output13806, value6896, value1) := by
  rw [input13806_def, output13806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13798]
  try dsimp only
  rw [child13805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13798_skip, output13805_skip]
  kernel_rfl

theorem node13807_cond_eq
    (child13795 : Flapjack.WordAlloc.removeDeadStructural input13795 value6896 value1 value2 = (output13795, value6896, value1))
    (child13806 : Flapjack.WordAlloc.removeDeadStructural input13806 value6896 value1 value2 = (output13806, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13807 value6896 value1 value2 = (output13807, value6896, value1) := by
  rw [input13807_def, output13807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13795]
  try dsimp only
  rw [child13806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13795_skip, output13806_skip]
  kernel_rfl

theorem node13808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13808 value6896 value1 value2 = (output13808, value6896, value1) := by
  rw [input13808_def, output13808_def]
  kernel_rfl

theorem node13809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13809 value6896 value1 value2 = (output13809, value6896, value1) := by
  rw [input13809_def, output13809_def]
  kernel_rfl

theorem node13810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13810 value6896 value1 value2 = (output13810, value6896, value1) := by
  rw [input13810_def, output13810_def]
  kernel_rfl

theorem node13811_cond_eq
    (child13809 : Flapjack.WordAlloc.removeDeadStructural input13809 value6896 value1 value2 = (output13809, value6896, value1))
    (child13810 : Flapjack.WordAlloc.removeDeadStructural input13810 value6896 value1 value2 = (output13810, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13811 value6896 value1 value2 = (output13811, value6896, value1) := by
  rw [input13811_def, output13811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13809]
  try dsimp only
  rw [child13810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13809_skip, output13810_skip]
  kernel_rfl

theorem node13812_cond_eq
    (child13808 : Flapjack.WordAlloc.removeDeadStructural input13808 value6896 value1 value2 = (output13808, value6896, value1))
    (child13811 : Flapjack.WordAlloc.removeDeadStructural input13811 value6896 value1 value2 = (output13811, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13812 value6896 value1 value2 = (output13812, value6896, value1) := by
  rw [input13812_def, output13812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13808]
  try dsimp only
  rw [child13811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13808_skip, output13811_skip]
  kernel_rfl

theorem node13813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13813 value6896 value1 value2 = (output13813, value6896, value1) := by
  rw [input13813_def, output13813_def]
  kernel_rfl

theorem node13814_cond_eq
    (child13812 : Flapjack.WordAlloc.removeDeadStructural input13812 value6896 value1 value2 = (output13812, value6896, value1))
    (child13813 : Flapjack.WordAlloc.removeDeadStructural input13813 value6896 value1 value2 = (output13813, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13814 value6896 value1 value2 = (output13814, value6896, value1) := by
  rw [input13814_def, output13814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13812]
  try dsimp only
  rw [child13813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13812_skip, output13813_skip]
  kernel_rfl

theorem node13815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13815 value6896 value1 value2 = (output13815, value6896, value1) := by
  rw [input13815_def, output13815_def]
  kernel_rfl

theorem node13816_cond_eq
    (child13814 : Flapjack.WordAlloc.removeDeadStructural input13814 value6896 value1 value2 = (output13814, value6896, value1))
    (child13815 : Flapjack.WordAlloc.removeDeadStructural input13815 value6896 value1 value2 = (output13815, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13816 value6896 value1 value2 = (output13816, value6896, value1) := by
  rw [input13816_def, output13816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13814]
  try dsimp only
  rw [child13815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13814_skip, output13815_skip]
  kernel_rfl

theorem node13817_cond_eq
    (child13807 : Flapjack.WordAlloc.removeDeadStructural input13807 value6896 value1 value2 = (output13807, value6896, value1))
    (child13816 : Flapjack.WordAlloc.removeDeadStructural input13816 value6896 value1 value2 = (output13816, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13817 value6896 value1 value2 = (output13817, value6901, value1) := by
  rw [input13817_def, output13817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child13807]
  try dsimp only
  rw [child13816]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13807_skip, output13816_skip]
  kernel_rfl

theorem node13818_cond_eq
    (child13788 : Flapjack.WordAlloc.removeDeadStructural input13788 value6896 value1 value2 = (output13788, value6896, value1))
    (child13817 : Flapjack.WordAlloc.removeDeadStructural input13817 value6896 value1 value2 = (output13817, value6901, value1)) : Flapjack.WordAlloc.removeDeadStructural input13818 value6896 value1 value2 = (output13818, value6901, value1) := by
  rw [input13818_def, output13818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13788]
  try dsimp only
  rw [child13817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13788_skip, output13817_skip]
  kernel_rfl

theorem node13819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13819 value6901 value1 value2 = (output13819, value6902, value1) := by
  rw [input13819_def, output13819_def]
  kernel_rfl

theorem node13820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13820 value6902 value1 value2 = (output13820, value6903, value1) := by
  rw [input13820_def, output13820_def]
  kernel_rfl

theorem node13821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13821 value6903 value1 value2 = (output13821, value6904, value1) := by
  rw [input13821_def, output13821_def]
  kernel_rfl

theorem node13822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13822 value6904 value1 value2 = (output13822, value6905, value1) := by
  rw [input13822_def, output13822_def]
  kernel_rfl

theorem node13823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13823 value6905 value1 value2 = (output13823, value6896, value1) := by
  rw [input13823_def, output13823_def]
  kernel_rfl

#print axioms node13823_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
