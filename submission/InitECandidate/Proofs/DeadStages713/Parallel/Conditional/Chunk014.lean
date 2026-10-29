import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk014
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node3584_cond_eq
    (child3582 : Flapjack.WordAlloc.removeDeadStructural input3582 value1796 value1 value2 = (output3582, value1797, value1))
    (child3583 : Flapjack.WordAlloc.removeDeadStructural input3583 value1797 value1 value2 = (output3583, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3584 value1796 value1 value2 = (output3584, value5, value1) := by
  rw [input3584_def, output3584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3582]
  dsimp only
  rw [child3583]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3582_skip, output3583_skip]
  kernel_rfl

theorem node3585_cond_eq
    (child3581 : Flapjack.WordAlloc.removeDeadStructural input3581 value1795 value1 value2 = (output3581, value1796, value1))
    (child3584 : Flapjack.WordAlloc.removeDeadStructural input3584 value1796 value1 value2 = (output3584, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3585 value1795 value1 value2 = (output3585, value5, value1) := by
  rw [input3585_def, output3585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3581]
  dsimp only
  rw [child3584]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3581_skip, output3584_skip]
  kernel_rfl

theorem node3586_cond_eq
    (child3580 : Flapjack.WordAlloc.removeDeadStructural input3580 value1794 value1 value2 = (output3580, value1795, value1))
    (child3585 : Flapjack.WordAlloc.removeDeadStructural input3585 value1795 value1 value2 = (output3585, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3586 value1794 value1 value2 = (output3586, value5, value1) := by
  rw [input3586_def, output3586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3580]
  dsimp only
  rw [child3585]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3580_skip, output3585_skip]
  kernel_rfl

theorem node3587_cond_eq
    (child3579 : Flapjack.WordAlloc.removeDeadStructural input3579 value1792 value1 value2 = (output3579, value1794, value1))
    (child3586 : Flapjack.WordAlloc.removeDeadStructural input3586 value1794 value1 value2 = (output3586, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3587 value1792 value1 value2 = (output3587, value5, value1) := by
  rw [input3587_def, output3587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3579]
  dsimp only
  rw [child3586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3579_skip, output3586_skip]
  kernel_rfl

theorem node3588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3588 value5 value1 value2 = (output3588, value1798, value1) := by
  rw [input3588_def, output3588_def]
  kernel_rfl

theorem node3589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3589 value1798 value1 value2 = (output3589, value1799, value1) := by
  rw [input3589_def, output3589_def]
  kernel_rfl

theorem node3590_cond_eq
    (child3588 : Flapjack.WordAlloc.removeDeadStructural input3588 value5 value1 value2 = (output3588, value1798, value1))
    (child3589 : Flapjack.WordAlloc.removeDeadStructural input3589 value1798 value1 value2 = (output3589, value1799, value1)) : Flapjack.WordAlloc.removeDeadStructural input3590 value5 value1 value2 = (output3590, value1799, value1) := by
  rw [input3590_def, output3590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3588]
  dsimp only
  rw [child3589]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3588_skip, output3589_skip]
  kernel_rfl

theorem node3591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3591 value1799 value1 value2 = (output3591, value1800, value1) := by
  rw [input3591_def, output3591_def]
  kernel_rfl

theorem node3592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3592 value1800 value1 value2 = (output3592, value1800, value1) := by
  rw [input3592_def, output3592_def]
  kernel_rfl

theorem node3593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3593 value1800 value1 value2 = (output3593, value1801, value1) := by
  rw [input3593_def, output3593_def]
  kernel_rfl

theorem node3594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3594 value1801 value1 value2 = (output3594, value1802, value1) := by
  rw [input3594_def, output3594_def]
  kernel_rfl

theorem node3595_cond_eq
    (child3593 : Flapjack.WordAlloc.removeDeadStructural input3593 value1800 value1 value2 = (output3593, value1801, value1))
    (child3594 : Flapjack.WordAlloc.removeDeadStructural input3594 value1801 value1 value2 = (output3594, value1802, value1)) : Flapjack.WordAlloc.removeDeadStructural input3595 value1800 value1 value2 = (output3595, value1802, value1) := by
  rw [input3595_def, output3595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3593]
  dsimp only
  rw [child3594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3593_skip, output3594_skip]
  kernel_rfl

theorem node3596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3596 value1802 value1 value2 = (output3596, value1803, value1) := by
  rw [input3596_def, output3596_def]
  kernel_rfl

theorem node3597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3597 value1803 value1 value2 = (output3597, value1804, value1) := by
  rw [input3597_def, output3597_def]
  kernel_rfl

theorem node3598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3598 value1804 value1 value2 = (output3598, value1805, value1) := by
  rw [input3598_def, output3598_def]
  kernel_rfl

theorem node3599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3599 value1805 value1 value2 = (output3599, value5, value1) := by
  rw [input3599_def, output3599_def]
  kernel_rfl

theorem node3600_cond_eq
    (child3598 : Flapjack.WordAlloc.removeDeadStructural input3598 value1804 value1 value2 = (output3598, value1805, value1))
    (child3599 : Flapjack.WordAlloc.removeDeadStructural input3599 value1805 value1 value2 = (output3599, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3600 value1804 value1 value2 = (output3600, value5, value1) := by
  rw [input3600_def, output3600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3598]
  dsimp only
  rw [child3599]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3598_skip, output3599_skip]
  kernel_rfl

theorem node3601_cond_eq
    (child3597 : Flapjack.WordAlloc.removeDeadStructural input3597 value1803 value1 value2 = (output3597, value1804, value1))
    (child3600 : Flapjack.WordAlloc.removeDeadStructural input3600 value1804 value1 value2 = (output3600, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3601 value1803 value1 value2 = (output3601, value5, value1) := by
  rw [input3601_def, output3601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3597]
  dsimp only
  rw [child3600]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3597_skip, output3600_skip]
  kernel_rfl

theorem node3602_cond_eq
    (child3596 : Flapjack.WordAlloc.removeDeadStructural input3596 value1802 value1 value2 = (output3596, value1803, value1))
    (child3601 : Flapjack.WordAlloc.removeDeadStructural input3601 value1803 value1 value2 = (output3601, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3602 value1802 value1 value2 = (output3602, value5, value1) := by
  rw [input3602_def, output3602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3596]
  dsimp only
  rw [child3601]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3596_skip, output3601_skip]
  kernel_rfl

theorem node3603_cond_eq
    (child3595 : Flapjack.WordAlloc.removeDeadStructural input3595 value1800 value1 value2 = (output3595, value1802, value1))
    (child3602 : Flapjack.WordAlloc.removeDeadStructural input3602 value1802 value1 value2 = (output3602, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3603 value1800 value1 value2 = (output3603, value5, value1) := by
  rw [input3603_def, output3603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3595]
  dsimp only
  rw [child3602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3595_skip, output3602_skip]
  kernel_rfl

theorem node3604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3604 value5 value1 value2 = (output3604, value1806, value1) := by
  rw [input3604_def, output3604_def]
  kernel_rfl

theorem node3605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3605 value1806 value1 value2 = (output3605, value1807, value1) := by
  rw [input3605_def, output3605_def]
  kernel_rfl

theorem node3606_cond_eq
    (child3604 : Flapjack.WordAlloc.removeDeadStructural input3604 value5 value1 value2 = (output3604, value1806, value1))
    (child3605 : Flapjack.WordAlloc.removeDeadStructural input3605 value1806 value1 value2 = (output3605, value1807, value1)) : Flapjack.WordAlloc.removeDeadStructural input3606 value5 value1 value2 = (output3606, value1807, value1) := by
  rw [input3606_def, output3606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3604]
  dsimp only
  rw [child3605]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3604_skip, output3605_skip]
  kernel_rfl

theorem node3607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3607 value1807 value1 value2 = (output3607, value1808, value1) := by
  rw [input3607_def, output3607_def]
  kernel_rfl

theorem node3608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3608 value1808 value1 value2 = (output3608, value1808, value1) := by
  rw [input3608_def, output3608_def]
  kernel_rfl

theorem node3609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3609 value1808 value1 value2 = (output3609, value1809, value1) := by
  rw [input3609_def, output3609_def]
  kernel_rfl

theorem node3610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3610 value1809 value1 value2 = (output3610, value1810, value1) := by
  rw [input3610_def, output3610_def]
  kernel_rfl

theorem node3611_cond_eq
    (child3609 : Flapjack.WordAlloc.removeDeadStructural input3609 value1808 value1 value2 = (output3609, value1809, value1))
    (child3610 : Flapjack.WordAlloc.removeDeadStructural input3610 value1809 value1 value2 = (output3610, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input3611 value1808 value1 value2 = (output3611, value1810, value1) := by
  rw [input3611_def, output3611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3609]
  dsimp only
  rw [child3610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3609_skip, output3610_skip]
  kernel_rfl

theorem node3612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3612 value1810 value1 value2 = (output3612, value1811, value1) := by
  rw [input3612_def, output3612_def]
  kernel_rfl

theorem node3613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3613 value1811 value1 value2 = (output3613, value1812, value1) := by
  rw [input3613_def, output3613_def]
  kernel_rfl

theorem node3614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3614 value1812 value1 value2 = (output3614, value1813, value1) := by
  rw [input3614_def, output3614_def]
  kernel_rfl

theorem node3615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3615 value1813 value1 value2 = (output3615, value5, value1) := by
  rw [input3615_def, output3615_def]
  kernel_rfl

theorem node3616_cond_eq
    (child3614 : Flapjack.WordAlloc.removeDeadStructural input3614 value1812 value1 value2 = (output3614, value1813, value1))
    (child3615 : Flapjack.WordAlloc.removeDeadStructural input3615 value1813 value1 value2 = (output3615, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3616 value1812 value1 value2 = (output3616, value5, value1) := by
  rw [input3616_def, output3616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3614]
  dsimp only
  rw [child3615]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3614_skip, output3615_skip]
  kernel_rfl

theorem node3617_cond_eq
    (child3613 : Flapjack.WordAlloc.removeDeadStructural input3613 value1811 value1 value2 = (output3613, value1812, value1))
    (child3616 : Flapjack.WordAlloc.removeDeadStructural input3616 value1812 value1 value2 = (output3616, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3617 value1811 value1 value2 = (output3617, value5, value1) := by
  rw [input3617_def, output3617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3613]
  dsimp only
  rw [child3616]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3613_skip, output3616_skip]
  kernel_rfl

theorem node3618_cond_eq
    (child3612 : Flapjack.WordAlloc.removeDeadStructural input3612 value1810 value1 value2 = (output3612, value1811, value1))
    (child3617 : Flapjack.WordAlloc.removeDeadStructural input3617 value1811 value1 value2 = (output3617, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3618 value1810 value1 value2 = (output3618, value5, value1) := by
  rw [input3618_def, output3618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3612]
  dsimp only
  rw [child3617]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3612_skip, output3617_skip]
  kernel_rfl

theorem node3619_cond_eq
    (child3611 : Flapjack.WordAlloc.removeDeadStructural input3611 value1808 value1 value2 = (output3611, value1810, value1))
    (child3618 : Flapjack.WordAlloc.removeDeadStructural input3618 value1810 value1 value2 = (output3618, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3619 value1808 value1 value2 = (output3619, value5, value1) := by
  rw [input3619_def, output3619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3611]
  dsimp only
  rw [child3618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3611_skip, output3618_skip]
  kernel_rfl

theorem node3620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3620 value5 value1 value2 = (output3620, value1814, value1) := by
  rw [input3620_def, output3620_def]
  kernel_rfl

theorem node3621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3621 value1814 value1 value2 = (output3621, value1815, value1) := by
  rw [input3621_def, output3621_def]
  kernel_rfl

theorem node3622_cond_eq
    (child3620 : Flapjack.WordAlloc.removeDeadStructural input3620 value5 value1 value2 = (output3620, value1814, value1))
    (child3621 : Flapjack.WordAlloc.removeDeadStructural input3621 value1814 value1 value2 = (output3621, value1815, value1)) : Flapjack.WordAlloc.removeDeadStructural input3622 value5 value1 value2 = (output3622, value1815, value1) := by
  rw [input3622_def, output3622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3620]
  dsimp only
  rw [child3621]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3620_skip, output3621_skip]
  kernel_rfl

theorem node3623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3623 value1815 value1 value2 = (output3623, value1816, value1) := by
  rw [input3623_def, output3623_def]
  kernel_rfl

theorem node3624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3624 value1816 value1 value2 = (output3624, value1816, value1) := by
  rw [input3624_def, output3624_def]
  kernel_rfl

theorem node3625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3625 value1816 value1 value2 = (output3625, value1817, value1) := by
  rw [input3625_def, output3625_def]
  kernel_rfl

theorem node3626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3626 value1817 value1 value2 = (output3626, value1818, value1) := by
  rw [input3626_def, output3626_def]
  kernel_rfl

theorem node3627_cond_eq
    (child3625 : Flapjack.WordAlloc.removeDeadStructural input3625 value1816 value1 value2 = (output3625, value1817, value1))
    (child3626 : Flapjack.WordAlloc.removeDeadStructural input3626 value1817 value1 value2 = (output3626, value1818, value1)) : Flapjack.WordAlloc.removeDeadStructural input3627 value1816 value1 value2 = (output3627, value1818, value1) := by
  rw [input3627_def, output3627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3625]
  dsimp only
  rw [child3626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3625_skip, output3626_skip]
  kernel_rfl

theorem node3628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3628 value1818 value1 value2 = (output3628, value1819, value1) := by
  rw [input3628_def, output3628_def]
  kernel_rfl

theorem node3629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3629 value1819 value1 value2 = (output3629, value1820, value1) := by
  rw [input3629_def, output3629_def]
  kernel_rfl

theorem node3630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3630 value1820 value1 value2 = (output3630, value1821, value1) := by
  rw [input3630_def, output3630_def]
  kernel_rfl

theorem node3631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3631 value1821 value1 value2 = (output3631, value5, value1) := by
  rw [input3631_def, output3631_def]
  kernel_rfl

theorem node3632_cond_eq
    (child3630 : Flapjack.WordAlloc.removeDeadStructural input3630 value1820 value1 value2 = (output3630, value1821, value1))
    (child3631 : Flapjack.WordAlloc.removeDeadStructural input3631 value1821 value1 value2 = (output3631, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3632 value1820 value1 value2 = (output3632, value5, value1) := by
  rw [input3632_def, output3632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3630]
  dsimp only
  rw [child3631]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3630_skip, output3631_skip]
  kernel_rfl

theorem node3633_cond_eq
    (child3629 : Flapjack.WordAlloc.removeDeadStructural input3629 value1819 value1 value2 = (output3629, value1820, value1))
    (child3632 : Flapjack.WordAlloc.removeDeadStructural input3632 value1820 value1 value2 = (output3632, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3633 value1819 value1 value2 = (output3633, value5, value1) := by
  rw [input3633_def, output3633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3629]
  dsimp only
  rw [child3632]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3629_skip, output3632_skip]
  kernel_rfl

theorem node3634_cond_eq
    (child3628 : Flapjack.WordAlloc.removeDeadStructural input3628 value1818 value1 value2 = (output3628, value1819, value1))
    (child3633 : Flapjack.WordAlloc.removeDeadStructural input3633 value1819 value1 value2 = (output3633, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3634 value1818 value1 value2 = (output3634, value5, value1) := by
  rw [input3634_def, output3634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3628]
  dsimp only
  rw [child3633]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3628_skip, output3633_skip]
  kernel_rfl

theorem node3635_cond_eq
    (child3627 : Flapjack.WordAlloc.removeDeadStructural input3627 value1816 value1 value2 = (output3627, value1818, value1))
    (child3634 : Flapjack.WordAlloc.removeDeadStructural input3634 value1818 value1 value2 = (output3634, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3635 value1816 value1 value2 = (output3635, value5, value1) := by
  rw [input3635_def, output3635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3627]
  dsimp only
  rw [child3634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3627_skip, output3634_skip]
  kernel_rfl

theorem node3636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3636 value5 value1 value2 = (output3636, value1822, value1) := by
  rw [input3636_def, output3636_def]
  kernel_rfl

theorem node3637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3637 value1822 value1 value2 = (output3637, value1823, value1) := by
  rw [input3637_def, output3637_def]
  kernel_rfl

theorem node3638_cond_eq
    (child3636 : Flapjack.WordAlloc.removeDeadStructural input3636 value5 value1 value2 = (output3636, value1822, value1))
    (child3637 : Flapjack.WordAlloc.removeDeadStructural input3637 value1822 value1 value2 = (output3637, value1823, value1)) : Flapjack.WordAlloc.removeDeadStructural input3638 value5 value1 value2 = (output3638, value1823, value1) := by
  rw [input3638_def, output3638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3636]
  dsimp only
  rw [child3637]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3636_skip, output3637_skip]
  kernel_rfl

theorem node3639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3639 value1823 value1 value2 = (output3639, value1824, value1) := by
  rw [input3639_def, output3639_def]
  kernel_rfl

theorem node3640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3640 value1824 value1 value2 = (output3640, value1824, value1) := by
  rw [input3640_def, output3640_def]
  kernel_rfl

theorem node3641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3641 value1824 value1 value2 = (output3641, value1825, value1) := by
  rw [input3641_def, output3641_def]
  kernel_rfl

theorem node3642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3642 value1825 value1 value2 = (output3642, value1826, value1) := by
  rw [input3642_def, output3642_def]
  kernel_rfl

theorem node3643_cond_eq
    (child3641 : Flapjack.WordAlloc.removeDeadStructural input3641 value1824 value1 value2 = (output3641, value1825, value1))
    (child3642 : Flapjack.WordAlloc.removeDeadStructural input3642 value1825 value1 value2 = (output3642, value1826, value1)) : Flapjack.WordAlloc.removeDeadStructural input3643 value1824 value1 value2 = (output3643, value1826, value1) := by
  rw [input3643_def, output3643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3641]
  dsimp only
  rw [child3642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3641_skip, output3642_skip]
  kernel_rfl

theorem node3644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3644 value1826 value1 value2 = (output3644, value1827, value1) := by
  rw [input3644_def, output3644_def]
  kernel_rfl

theorem node3645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3645 value1827 value1 value2 = (output3645, value1828, value1) := by
  rw [input3645_def, output3645_def]
  kernel_rfl

theorem node3646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3646 value1828 value1 value2 = (output3646, value1829, value1) := by
  rw [input3646_def, output3646_def]
  kernel_rfl

theorem node3647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3647 value1829 value1 value2 = (output3647, value5, value1) := by
  rw [input3647_def, output3647_def]
  kernel_rfl

theorem node3648_cond_eq
    (child3646 : Flapjack.WordAlloc.removeDeadStructural input3646 value1828 value1 value2 = (output3646, value1829, value1))
    (child3647 : Flapjack.WordAlloc.removeDeadStructural input3647 value1829 value1 value2 = (output3647, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3648 value1828 value1 value2 = (output3648, value5, value1) := by
  rw [input3648_def, output3648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3646]
  dsimp only
  rw [child3647]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3646_skip, output3647_skip]
  kernel_rfl

theorem node3649_cond_eq
    (child3645 : Flapjack.WordAlloc.removeDeadStructural input3645 value1827 value1 value2 = (output3645, value1828, value1))
    (child3648 : Flapjack.WordAlloc.removeDeadStructural input3648 value1828 value1 value2 = (output3648, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3649 value1827 value1 value2 = (output3649, value5, value1) := by
  rw [input3649_def, output3649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3645]
  dsimp only
  rw [child3648]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3645_skip, output3648_skip]
  kernel_rfl

theorem node3650_cond_eq
    (child3644 : Flapjack.WordAlloc.removeDeadStructural input3644 value1826 value1 value2 = (output3644, value1827, value1))
    (child3649 : Flapjack.WordAlloc.removeDeadStructural input3649 value1827 value1 value2 = (output3649, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3650 value1826 value1 value2 = (output3650, value5, value1) := by
  rw [input3650_def, output3650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3644]
  dsimp only
  rw [child3649]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3644_skip, output3649_skip]
  kernel_rfl

theorem node3651_cond_eq
    (child3643 : Flapjack.WordAlloc.removeDeadStructural input3643 value1824 value1 value2 = (output3643, value1826, value1))
    (child3650 : Flapjack.WordAlloc.removeDeadStructural input3650 value1826 value1 value2 = (output3650, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3651 value1824 value1 value2 = (output3651, value5, value1) := by
  rw [input3651_def, output3651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3643]
  dsimp only
  rw [child3650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3643_skip, output3650_skip]
  kernel_rfl

theorem node3652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3652 value5 value1 value2 = (output3652, value1830, value1) := by
  rw [input3652_def, output3652_def]
  kernel_rfl

theorem node3653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3653 value1830 value1 value2 = (output3653, value1831, value1) := by
  rw [input3653_def, output3653_def]
  kernel_rfl

theorem node3654_cond_eq
    (child3652 : Flapjack.WordAlloc.removeDeadStructural input3652 value5 value1 value2 = (output3652, value1830, value1))
    (child3653 : Flapjack.WordAlloc.removeDeadStructural input3653 value1830 value1 value2 = (output3653, value1831, value1)) : Flapjack.WordAlloc.removeDeadStructural input3654 value5 value1 value2 = (output3654, value1831, value1) := by
  rw [input3654_def, output3654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3652]
  dsimp only
  rw [child3653]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3652_skip, output3653_skip]
  kernel_rfl

theorem node3655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3655 value1831 value1 value2 = (output3655, value1832, value1) := by
  rw [input3655_def, output3655_def]
  kernel_rfl

theorem node3656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3656 value1832 value1 value2 = (output3656, value1832, value1) := by
  rw [input3656_def, output3656_def]
  kernel_rfl

theorem node3657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3657 value1832 value1 value2 = (output3657, value1833, value1) := by
  rw [input3657_def, output3657_def]
  kernel_rfl

theorem node3658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3658 value1833 value1 value2 = (output3658, value1834, value1) := by
  rw [input3658_def, output3658_def]
  kernel_rfl

theorem node3659_cond_eq
    (child3657 : Flapjack.WordAlloc.removeDeadStructural input3657 value1832 value1 value2 = (output3657, value1833, value1))
    (child3658 : Flapjack.WordAlloc.removeDeadStructural input3658 value1833 value1 value2 = (output3658, value1834, value1)) : Flapjack.WordAlloc.removeDeadStructural input3659 value1832 value1 value2 = (output3659, value1834, value1) := by
  rw [input3659_def, output3659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3657]
  dsimp only
  rw [child3658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3657_skip, output3658_skip]
  kernel_rfl

theorem node3660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3660 value1834 value1 value2 = (output3660, value1835, value1) := by
  rw [input3660_def, output3660_def]
  kernel_rfl

theorem node3661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3661 value1835 value1 value2 = (output3661, value1836, value1) := by
  rw [input3661_def, output3661_def]
  kernel_rfl

theorem node3662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3662 value1836 value1 value2 = (output3662, value1837, value1) := by
  rw [input3662_def, output3662_def]
  kernel_rfl

theorem node3663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3663 value1837 value1 value2 = (output3663, value5, value1) := by
  rw [input3663_def, output3663_def]
  kernel_rfl

theorem node3664_cond_eq
    (child3662 : Flapjack.WordAlloc.removeDeadStructural input3662 value1836 value1 value2 = (output3662, value1837, value1))
    (child3663 : Flapjack.WordAlloc.removeDeadStructural input3663 value1837 value1 value2 = (output3663, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3664 value1836 value1 value2 = (output3664, value5, value1) := by
  rw [input3664_def, output3664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3662]
  dsimp only
  rw [child3663]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3662_skip, output3663_skip]
  kernel_rfl

theorem node3665_cond_eq
    (child3661 : Flapjack.WordAlloc.removeDeadStructural input3661 value1835 value1 value2 = (output3661, value1836, value1))
    (child3664 : Flapjack.WordAlloc.removeDeadStructural input3664 value1836 value1 value2 = (output3664, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3665 value1835 value1 value2 = (output3665, value5, value1) := by
  rw [input3665_def, output3665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3661]
  dsimp only
  rw [child3664]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3661_skip, output3664_skip]
  kernel_rfl

theorem node3666_cond_eq
    (child3660 : Flapjack.WordAlloc.removeDeadStructural input3660 value1834 value1 value2 = (output3660, value1835, value1))
    (child3665 : Flapjack.WordAlloc.removeDeadStructural input3665 value1835 value1 value2 = (output3665, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3666 value1834 value1 value2 = (output3666, value5, value1) := by
  rw [input3666_def, output3666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3660]
  dsimp only
  rw [child3665]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3660_skip, output3665_skip]
  kernel_rfl

theorem node3667_cond_eq
    (child3659 : Flapjack.WordAlloc.removeDeadStructural input3659 value1832 value1 value2 = (output3659, value1834, value1))
    (child3666 : Flapjack.WordAlloc.removeDeadStructural input3666 value1834 value1 value2 = (output3666, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3667 value1832 value1 value2 = (output3667, value5, value1) := by
  rw [input3667_def, output3667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3659]
  dsimp only
  rw [child3666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3659_skip, output3666_skip]
  kernel_rfl

theorem node3668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3668 value5 value1 value2 = (output3668, value1838, value1) := by
  rw [input3668_def, output3668_def]
  kernel_rfl

theorem node3669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3669 value1838 value1 value2 = (output3669, value1839, value1) := by
  rw [input3669_def, output3669_def]
  kernel_rfl

theorem node3670_cond_eq
    (child3668 : Flapjack.WordAlloc.removeDeadStructural input3668 value5 value1 value2 = (output3668, value1838, value1))
    (child3669 : Flapjack.WordAlloc.removeDeadStructural input3669 value1838 value1 value2 = (output3669, value1839, value1)) : Flapjack.WordAlloc.removeDeadStructural input3670 value5 value1 value2 = (output3670, value1839, value1) := by
  rw [input3670_def, output3670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3668]
  dsimp only
  rw [child3669]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3668_skip, output3669_skip]
  kernel_rfl

theorem node3671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3671 value1839 value1 value2 = (output3671, value1840, value1) := by
  rw [input3671_def, output3671_def]
  kernel_rfl

theorem node3672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3672 value1840 value1 value2 = (output3672, value1840, value1) := by
  rw [input3672_def, output3672_def]
  kernel_rfl

theorem node3673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3673 value1840 value1 value2 = (output3673, value1841, value1) := by
  rw [input3673_def, output3673_def]
  kernel_rfl

theorem node3674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3674 value1841 value1 value2 = (output3674, value1842, value1) := by
  rw [input3674_def, output3674_def]
  kernel_rfl

theorem node3675_cond_eq
    (child3673 : Flapjack.WordAlloc.removeDeadStructural input3673 value1840 value1 value2 = (output3673, value1841, value1))
    (child3674 : Flapjack.WordAlloc.removeDeadStructural input3674 value1841 value1 value2 = (output3674, value1842, value1)) : Flapjack.WordAlloc.removeDeadStructural input3675 value1840 value1 value2 = (output3675, value1842, value1) := by
  rw [input3675_def, output3675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3673]
  dsimp only
  rw [child3674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3673_skip, output3674_skip]
  kernel_rfl

theorem node3676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3676 value1842 value1 value2 = (output3676, value1843, value1) := by
  rw [input3676_def, output3676_def]
  kernel_rfl

theorem node3677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3677 value1843 value1 value2 = (output3677, value1844, value1) := by
  rw [input3677_def, output3677_def]
  kernel_rfl

theorem node3678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3678 value1844 value1 value2 = (output3678, value1845, value1) := by
  rw [input3678_def, output3678_def]
  kernel_rfl

theorem node3679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3679 value1845 value1 value2 = (output3679, value5, value1) := by
  rw [input3679_def, output3679_def]
  kernel_rfl

theorem node3680_cond_eq
    (child3678 : Flapjack.WordAlloc.removeDeadStructural input3678 value1844 value1 value2 = (output3678, value1845, value1))
    (child3679 : Flapjack.WordAlloc.removeDeadStructural input3679 value1845 value1 value2 = (output3679, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3680 value1844 value1 value2 = (output3680, value5, value1) := by
  rw [input3680_def, output3680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3678]
  dsimp only
  rw [child3679]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3678_skip, output3679_skip]
  kernel_rfl

theorem node3681_cond_eq
    (child3677 : Flapjack.WordAlloc.removeDeadStructural input3677 value1843 value1 value2 = (output3677, value1844, value1))
    (child3680 : Flapjack.WordAlloc.removeDeadStructural input3680 value1844 value1 value2 = (output3680, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3681 value1843 value1 value2 = (output3681, value5, value1) := by
  rw [input3681_def, output3681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3677]
  dsimp only
  rw [child3680]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3677_skip, output3680_skip]
  kernel_rfl

theorem node3682_cond_eq
    (child3676 : Flapjack.WordAlloc.removeDeadStructural input3676 value1842 value1 value2 = (output3676, value1843, value1))
    (child3681 : Flapjack.WordAlloc.removeDeadStructural input3681 value1843 value1 value2 = (output3681, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3682 value1842 value1 value2 = (output3682, value5, value1) := by
  rw [input3682_def, output3682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3676]
  dsimp only
  rw [child3681]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3676_skip, output3681_skip]
  kernel_rfl

theorem node3683_cond_eq
    (child3675 : Flapjack.WordAlloc.removeDeadStructural input3675 value1840 value1 value2 = (output3675, value1842, value1))
    (child3682 : Flapjack.WordAlloc.removeDeadStructural input3682 value1842 value1 value2 = (output3682, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3683 value1840 value1 value2 = (output3683, value5, value1) := by
  rw [input3683_def, output3683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3675]
  dsimp only
  rw [child3682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3675_skip, output3682_skip]
  kernel_rfl

theorem node3684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3684 value5 value1 value2 = (output3684, value1846, value1) := by
  rw [input3684_def, output3684_def]
  kernel_rfl

theorem node3685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3685 value1846 value1 value2 = (output3685, value1847, value1) := by
  rw [input3685_def, output3685_def]
  kernel_rfl

theorem node3686_cond_eq
    (child3684 : Flapjack.WordAlloc.removeDeadStructural input3684 value5 value1 value2 = (output3684, value1846, value1))
    (child3685 : Flapjack.WordAlloc.removeDeadStructural input3685 value1846 value1 value2 = (output3685, value1847, value1)) : Flapjack.WordAlloc.removeDeadStructural input3686 value5 value1 value2 = (output3686, value1847, value1) := by
  rw [input3686_def, output3686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3684]
  dsimp only
  rw [child3685]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3684_skip, output3685_skip]
  kernel_rfl

theorem node3687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3687 value1847 value1 value2 = (output3687, value1848, value1) := by
  rw [input3687_def, output3687_def]
  kernel_rfl

theorem node3688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3688 value1848 value1 value2 = (output3688, value1848, value1) := by
  rw [input3688_def, output3688_def]
  kernel_rfl

theorem node3689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3689 value1848 value1 value2 = (output3689, value1849, value1) := by
  rw [input3689_def, output3689_def]
  kernel_rfl

theorem node3690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3690 value1849 value1 value2 = (output3690, value1850, value1) := by
  rw [input3690_def, output3690_def]
  kernel_rfl

theorem node3691_cond_eq
    (child3689 : Flapjack.WordAlloc.removeDeadStructural input3689 value1848 value1 value2 = (output3689, value1849, value1))
    (child3690 : Flapjack.WordAlloc.removeDeadStructural input3690 value1849 value1 value2 = (output3690, value1850, value1)) : Flapjack.WordAlloc.removeDeadStructural input3691 value1848 value1 value2 = (output3691, value1850, value1) := by
  rw [input3691_def, output3691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3689]
  dsimp only
  rw [child3690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3689_skip, output3690_skip]
  kernel_rfl

theorem node3692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3692 value1850 value1 value2 = (output3692, value1851, value1) := by
  rw [input3692_def, output3692_def]
  kernel_rfl

theorem node3693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3693 value1851 value1 value2 = (output3693, value1852, value1) := by
  rw [input3693_def, output3693_def]
  kernel_rfl

theorem node3694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3694 value1852 value1 value2 = (output3694, value1853, value1) := by
  rw [input3694_def, output3694_def]
  kernel_rfl

theorem node3695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3695 value1853 value1 value2 = (output3695, value5, value1) := by
  rw [input3695_def, output3695_def]
  kernel_rfl

theorem node3696_cond_eq
    (child3694 : Flapjack.WordAlloc.removeDeadStructural input3694 value1852 value1 value2 = (output3694, value1853, value1))
    (child3695 : Flapjack.WordAlloc.removeDeadStructural input3695 value1853 value1 value2 = (output3695, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3696 value1852 value1 value2 = (output3696, value5, value1) := by
  rw [input3696_def, output3696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3694]
  dsimp only
  rw [child3695]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3694_skip, output3695_skip]
  kernel_rfl

theorem node3697_cond_eq
    (child3693 : Flapjack.WordAlloc.removeDeadStructural input3693 value1851 value1 value2 = (output3693, value1852, value1))
    (child3696 : Flapjack.WordAlloc.removeDeadStructural input3696 value1852 value1 value2 = (output3696, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3697 value1851 value1 value2 = (output3697, value5, value1) := by
  rw [input3697_def, output3697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3693]
  dsimp only
  rw [child3696]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3693_skip, output3696_skip]
  kernel_rfl

theorem node3698_cond_eq
    (child3692 : Flapjack.WordAlloc.removeDeadStructural input3692 value1850 value1 value2 = (output3692, value1851, value1))
    (child3697 : Flapjack.WordAlloc.removeDeadStructural input3697 value1851 value1 value2 = (output3697, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3698 value1850 value1 value2 = (output3698, value5, value1) := by
  rw [input3698_def, output3698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3692]
  dsimp only
  rw [child3697]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3692_skip, output3697_skip]
  kernel_rfl

theorem node3699_cond_eq
    (child3691 : Flapjack.WordAlloc.removeDeadStructural input3691 value1848 value1 value2 = (output3691, value1850, value1))
    (child3698 : Flapjack.WordAlloc.removeDeadStructural input3698 value1850 value1 value2 = (output3698, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3699 value1848 value1 value2 = (output3699, value5, value1) := by
  rw [input3699_def, output3699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3691]
  dsimp only
  rw [child3698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3691_skip, output3698_skip]
  kernel_rfl

theorem node3700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3700 value5 value1 value2 = (output3700, value1854, value1) := by
  rw [input3700_def, output3700_def]
  kernel_rfl

theorem node3701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3701 value1854 value1 value2 = (output3701, value1855, value1) := by
  rw [input3701_def, output3701_def]
  kernel_rfl

theorem node3702_cond_eq
    (child3700 : Flapjack.WordAlloc.removeDeadStructural input3700 value5 value1 value2 = (output3700, value1854, value1))
    (child3701 : Flapjack.WordAlloc.removeDeadStructural input3701 value1854 value1 value2 = (output3701, value1855, value1)) : Flapjack.WordAlloc.removeDeadStructural input3702 value5 value1 value2 = (output3702, value1855, value1) := by
  rw [input3702_def, output3702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3700]
  dsimp only
  rw [child3701]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3700_skip, output3701_skip]
  kernel_rfl

theorem node3703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3703 value1855 value1 value2 = (output3703, value1856, value1) := by
  rw [input3703_def, output3703_def]
  kernel_rfl

theorem node3704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3704 value1856 value1 value2 = (output3704, value1856, value1) := by
  rw [input3704_def, output3704_def]
  kernel_rfl

theorem node3705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3705 value1856 value1 value2 = (output3705, value1857, value1) := by
  rw [input3705_def, output3705_def]
  kernel_rfl

theorem node3706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3706 value1857 value1 value2 = (output3706, value1858, value1) := by
  rw [input3706_def, output3706_def]
  kernel_rfl

theorem node3707_cond_eq
    (child3705 : Flapjack.WordAlloc.removeDeadStructural input3705 value1856 value1 value2 = (output3705, value1857, value1))
    (child3706 : Flapjack.WordAlloc.removeDeadStructural input3706 value1857 value1 value2 = (output3706, value1858, value1)) : Flapjack.WordAlloc.removeDeadStructural input3707 value1856 value1 value2 = (output3707, value1858, value1) := by
  rw [input3707_def, output3707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3705]
  dsimp only
  rw [child3706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3705_skip, output3706_skip]
  kernel_rfl

theorem node3708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3708 value1858 value1 value2 = (output3708, value1859, value1) := by
  rw [input3708_def, output3708_def]
  kernel_rfl

theorem node3709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3709 value1859 value1 value2 = (output3709, value1860, value1) := by
  rw [input3709_def, output3709_def]
  kernel_rfl

theorem node3710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3710 value1860 value1 value2 = (output3710, value1861, value1) := by
  rw [input3710_def, output3710_def]
  kernel_rfl

theorem node3711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3711 value1861 value1 value2 = (output3711, value5, value1) := by
  rw [input3711_def, output3711_def]
  kernel_rfl

theorem node3712_cond_eq
    (child3710 : Flapjack.WordAlloc.removeDeadStructural input3710 value1860 value1 value2 = (output3710, value1861, value1))
    (child3711 : Flapjack.WordAlloc.removeDeadStructural input3711 value1861 value1 value2 = (output3711, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3712 value1860 value1 value2 = (output3712, value5, value1) := by
  rw [input3712_def, output3712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3710]
  dsimp only
  rw [child3711]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3710_skip, output3711_skip]
  kernel_rfl

theorem node3713_cond_eq
    (child3709 : Flapjack.WordAlloc.removeDeadStructural input3709 value1859 value1 value2 = (output3709, value1860, value1))
    (child3712 : Flapjack.WordAlloc.removeDeadStructural input3712 value1860 value1 value2 = (output3712, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3713 value1859 value1 value2 = (output3713, value5, value1) := by
  rw [input3713_def, output3713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3709]
  dsimp only
  rw [child3712]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3709_skip, output3712_skip]
  kernel_rfl

theorem node3714_cond_eq
    (child3708 : Flapjack.WordAlloc.removeDeadStructural input3708 value1858 value1 value2 = (output3708, value1859, value1))
    (child3713 : Flapjack.WordAlloc.removeDeadStructural input3713 value1859 value1 value2 = (output3713, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3714 value1858 value1 value2 = (output3714, value5, value1) := by
  rw [input3714_def, output3714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3708]
  dsimp only
  rw [child3713]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3708_skip, output3713_skip]
  kernel_rfl

theorem node3715_cond_eq
    (child3707 : Flapjack.WordAlloc.removeDeadStructural input3707 value1856 value1 value2 = (output3707, value1858, value1))
    (child3714 : Flapjack.WordAlloc.removeDeadStructural input3714 value1858 value1 value2 = (output3714, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3715 value1856 value1 value2 = (output3715, value5, value1) := by
  rw [input3715_def, output3715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3707]
  dsimp only
  rw [child3714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3707_skip, output3714_skip]
  kernel_rfl

theorem node3716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3716 value5 value1 value2 = (output3716, value1862, value1) := by
  rw [input3716_def, output3716_def]
  kernel_rfl

theorem node3717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3717 value1862 value1 value2 = (output3717, value1863, value1) := by
  rw [input3717_def, output3717_def]
  kernel_rfl

theorem node3718_cond_eq
    (child3716 : Flapjack.WordAlloc.removeDeadStructural input3716 value5 value1 value2 = (output3716, value1862, value1))
    (child3717 : Flapjack.WordAlloc.removeDeadStructural input3717 value1862 value1 value2 = (output3717, value1863, value1)) : Flapjack.WordAlloc.removeDeadStructural input3718 value5 value1 value2 = (output3718, value1863, value1) := by
  rw [input3718_def, output3718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3716]
  dsimp only
  rw [child3717]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3716_skip, output3717_skip]
  kernel_rfl

theorem node3719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3719 value1863 value1 value2 = (output3719, value1864, value1) := by
  rw [input3719_def, output3719_def]
  kernel_rfl

theorem node3720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3720 value1864 value1 value2 = (output3720, value1864, value1) := by
  rw [input3720_def, output3720_def]
  kernel_rfl

theorem node3721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3721 value1864 value1 value2 = (output3721, value1865, value1) := by
  rw [input3721_def, output3721_def]
  kernel_rfl

theorem node3722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3722 value1865 value1 value2 = (output3722, value1866, value1) := by
  rw [input3722_def, output3722_def]
  kernel_rfl

theorem node3723_cond_eq
    (child3721 : Flapjack.WordAlloc.removeDeadStructural input3721 value1864 value1 value2 = (output3721, value1865, value1))
    (child3722 : Flapjack.WordAlloc.removeDeadStructural input3722 value1865 value1 value2 = (output3722, value1866, value1)) : Flapjack.WordAlloc.removeDeadStructural input3723 value1864 value1 value2 = (output3723, value1866, value1) := by
  rw [input3723_def, output3723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3721]
  dsimp only
  rw [child3722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3721_skip, output3722_skip]
  kernel_rfl

theorem node3724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3724 value1866 value1 value2 = (output3724, value1867, value1) := by
  rw [input3724_def, output3724_def]
  kernel_rfl

theorem node3725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3725 value1867 value1 value2 = (output3725, value1868, value1) := by
  rw [input3725_def, output3725_def]
  kernel_rfl

theorem node3726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3726 value1868 value1 value2 = (output3726, value1869, value1) := by
  rw [input3726_def, output3726_def]
  kernel_rfl

theorem node3727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3727 value1869 value1 value2 = (output3727, value5, value1) := by
  rw [input3727_def, output3727_def]
  kernel_rfl

theorem node3728_cond_eq
    (child3726 : Flapjack.WordAlloc.removeDeadStructural input3726 value1868 value1 value2 = (output3726, value1869, value1))
    (child3727 : Flapjack.WordAlloc.removeDeadStructural input3727 value1869 value1 value2 = (output3727, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3728 value1868 value1 value2 = (output3728, value5, value1) := by
  rw [input3728_def, output3728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3726]
  dsimp only
  rw [child3727]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3726_skip, output3727_skip]
  kernel_rfl

theorem node3729_cond_eq
    (child3725 : Flapjack.WordAlloc.removeDeadStructural input3725 value1867 value1 value2 = (output3725, value1868, value1))
    (child3728 : Flapjack.WordAlloc.removeDeadStructural input3728 value1868 value1 value2 = (output3728, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3729 value1867 value1 value2 = (output3729, value5, value1) := by
  rw [input3729_def, output3729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3725]
  dsimp only
  rw [child3728]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3725_skip, output3728_skip]
  kernel_rfl

theorem node3730_cond_eq
    (child3724 : Flapjack.WordAlloc.removeDeadStructural input3724 value1866 value1 value2 = (output3724, value1867, value1))
    (child3729 : Flapjack.WordAlloc.removeDeadStructural input3729 value1867 value1 value2 = (output3729, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3730 value1866 value1 value2 = (output3730, value5, value1) := by
  rw [input3730_def, output3730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3724]
  dsimp only
  rw [child3729]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3724_skip, output3729_skip]
  kernel_rfl

theorem node3731_cond_eq
    (child3723 : Flapjack.WordAlloc.removeDeadStructural input3723 value1864 value1 value2 = (output3723, value1866, value1))
    (child3730 : Flapjack.WordAlloc.removeDeadStructural input3730 value1866 value1 value2 = (output3730, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3731 value1864 value1 value2 = (output3731, value5, value1) := by
  rw [input3731_def, output3731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3723]
  dsimp only
  rw [child3730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3723_skip, output3730_skip]
  kernel_rfl

theorem node3732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3732 value5 value1 value2 = (output3732, value1870, value1) := by
  rw [input3732_def, output3732_def]
  kernel_rfl

theorem node3733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3733 value1870 value1 value2 = (output3733, value1871, value1) := by
  rw [input3733_def, output3733_def]
  kernel_rfl

theorem node3734_cond_eq
    (child3732 : Flapjack.WordAlloc.removeDeadStructural input3732 value5 value1 value2 = (output3732, value1870, value1))
    (child3733 : Flapjack.WordAlloc.removeDeadStructural input3733 value1870 value1 value2 = (output3733, value1871, value1)) : Flapjack.WordAlloc.removeDeadStructural input3734 value5 value1 value2 = (output3734, value1871, value1) := by
  rw [input3734_def, output3734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3732]
  dsimp only
  rw [child3733]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3732_skip, output3733_skip]
  kernel_rfl

theorem node3735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3735 value1871 value1 value2 = (output3735, value1872, value1) := by
  rw [input3735_def, output3735_def]
  kernel_rfl

theorem node3736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3736 value1872 value1 value2 = (output3736, value1872, value1) := by
  rw [input3736_def, output3736_def]
  kernel_rfl

theorem node3737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3737 value1872 value1 value2 = (output3737, value1873, value1) := by
  rw [input3737_def, output3737_def]
  kernel_rfl

theorem node3738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3738 value1873 value1 value2 = (output3738, value1874, value1) := by
  rw [input3738_def, output3738_def]
  kernel_rfl

theorem node3739_cond_eq
    (child3737 : Flapjack.WordAlloc.removeDeadStructural input3737 value1872 value1 value2 = (output3737, value1873, value1))
    (child3738 : Flapjack.WordAlloc.removeDeadStructural input3738 value1873 value1 value2 = (output3738, value1874, value1)) : Flapjack.WordAlloc.removeDeadStructural input3739 value1872 value1 value2 = (output3739, value1874, value1) := by
  rw [input3739_def, output3739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3737]
  dsimp only
  rw [child3738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3737_skip, output3738_skip]
  kernel_rfl

theorem node3740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3740 value1874 value1 value2 = (output3740, value1875, value1) := by
  rw [input3740_def, output3740_def]
  kernel_rfl

theorem node3741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3741 value1875 value1 value2 = (output3741, value1876, value1) := by
  rw [input3741_def, output3741_def]
  kernel_rfl

theorem node3742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3742 value1876 value1 value2 = (output3742, value1877, value1) := by
  rw [input3742_def, output3742_def]
  kernel_rfl

theorem node3743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3743 value1877 value1 value2 = (output3743, value5, value1) := by
  rw [input3743_def, output3743_def]
  kernel_rfl

theorem node3744_cond_eq
    (child3742 : Flapjack.WordAlloc.removeDeadStructural input3742 value1876 value1 value2 = (output3742, value1877, value1))
    (child3743 : Flapjack.WordAlloc.removeDeadStructural input3743 value1877 value1 value2 = (output3743, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3744 value1876 value1 value2 = (output3744, value5, value1) := by
  rw [input3744_def, output3744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3742]
  dsimp only
  rw [child3743]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3742_skip, output3743_skip]
  kernel_rfl

theorem node3745_cond_eq
    (child3741 : Flapjack.WordAlloc.removeDeadStructural input3741 value1875 value1 value2 = (output3741, value1876, value1))
    (child3744 : Flapjack.WordAlloc.removeDeadStructural input3744 value1876 value1 value2 = (output3744, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3745 value1875 value1 value2 = (output3745, value5, value1) := by
  rw [input3745_def, output3745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3741]
  dsimp only
  rw [child3744]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3741_skip, output3744_skip]
  kernel_rfl

theorem node3746_cond_eq
    (child3740 : Flapjack.WordAlloc.removeDeadStructural input3740 value1874 value1 value2 = (output3740, value1875, value1))
    (child3745 : Flapjack.WordAlloc.removeDeadStructural input3745 value1875 value1 value2 = (output3745, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3746 value1874 value1 value2 = (output3746, value5, value1) := by
  rw [input3746_def, output3746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3740]
  dsimp only
  rw [child3745]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3740_skip, output3745_skip]
  kernel_rfl

theorem node3747_cond_eq
    (child3739 : Flapjack.WordAlloc.removeDeadStructural input3739 value1872 value1 value2 = (output3739, value1874, value1))
    (child3746 : Flapjack.WordAlloc.removeDeadStructural input3746 value1874 value1 value2 = (output3746, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3747 value1872 value1 value2 = (output3747, value5, value1) := by
  rw [input3747_def, output3747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3739]
  dsimp only
  rw [child3746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3739_skip, output3746_skip]
  kernel_rfl

theorem node3748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3748 value5 value1 value2 = (output3748, value1878, value1) := by
  rw [input3748_def, output3748_def]
  kernel_rfl

theorem node3749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3749 value1878 value1 value2 = (output3749, value1879, value1) := by
  rw [input3749_def, output3749_def]
  kernel_rfl

theorem node3750_cond_eq
    (child3748 : Flapjack.WordAlloc.removeDeadStructural input3748 value5 value1 value2 = (output3748, value1878, value1))
    (child3749 : Flapjack.WordAlloc.removeDeadStructural input3749 value1878 value1 value2 = (output3749, value1879, value1)) : Flapjack.WordAlloc.removeDeadStructural input3750 value5 value1 value2 = (output3750, value1879, value1) := by
  rw [input3750_def, output3750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3748]
  dsimp only
  rw [child3749]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3748_skip, output3749_skip]
  kernel_rfl

theorem node3751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3751 value1879 value1 value2 = (output3751, value1880, value1) := by
  rw [input3751_def, output3751_def]
  kernel_rfl

theorem node3752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3752 value1880 value1 value2 = (output3752, value1880, value1) := by
  rw [input3752_def, output3752_def]
  kernel_rfl

theorem node3753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3753 value1880 value1 value2 = (output3753, value1881, value1) := by
  rw [input3753_def, output3753_def]
  kernel_rfl

theorem node3754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3754 value1881 value1 value2 = (output3754, value1882, value1) := by
  rw [input3754_def, output3754_def]
  kernel_rfl

theorem node3755_cond_eq
    (child3753 : Flapjack.WordAlloc.removeDeadStructural input3753 value1880 value1 value2 = (output3753, value1881, value1))
    (child3754 : Flapjack.WordAlloc.removeDeadStructural input3754 value1881 value1 value2 = (output3754, value1882, value1)) : Flapjack.WordAlloc.removeDeadStructural input3755 value1880 value1 value2 = (output3755, value1882, value1) := by
  rw [input3755_def, output3755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3753]
  dsimp only
  rw [child3754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3753_skip, output3754_skip]
  kernel_rfl

theorem node3756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3756 value1882 value1 value2 = (output3756, value1883, value1) := by
  rw [input3756_def, output3756_def]
  kernel_rfl

theorem node3757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3757 value1883 value1 value2 = (output3757, value1884, value1) := by
  rw [input3757_def, output3757_def]
  kernel_rfl

theorem node3758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3758 value1884 value1 value2 = (output3758, value1885, value1) := by
  rw [input3758_def, output3758_def]
  kernel_rfl

theorem node3759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3759 value1885 value1 value2 = (output3759, value5, value1) := by
  rw [input3759_def, output3759_def]
  kernel_rfl

theorem node3760_cond_eq
    (child3758 : Flapjack.WordAlloc.removeDeadStructural input3758 value1884 value1 value2 = (output3758, value1885, value1))
    (child3759 : Flapjack.WordAlloc.removeDeadStructural input3759 value1885 value1 value2 = (output3759, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3760 value1884 value1 value2 = (output3760, value5, value1) := by
  rw [input3760_def, output3760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3758]
  dsimp only
  rw [child3759]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3758_skip, output3759_skip]
  kernel_rfl

theorem node3761_cond_eq
    (child3757 : Flapjack.WordAlloc.removeDeadStructural input3757 value1883 value1 value2 = (output3757, value1884, value1))
    (child3760 : Flapjack.WordAlloc.removeDeadStructural input3760 value1884 value1 value2 = (output3760, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3761 value1883 value1 value2 = (output3761, value5, value1) := by
  rw [input3761_def, output3761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3757]
  dsimp only
  rw [child3760]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3757_skip, output3760_skip]
  kernel_rfl

theorem node3762_cond_eq
    (child3756 : Flapjack.WordAlloc.removeDeadStructural input3756 value1882 value1 value2 = (output3756, value1883, value1))
    (child3761 : Flapjack.WordAlloc.removeDeadStructural input3761 value1883 value1 value2 = (output3761, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3762 value1882 value1 value2 = (output3762, value5, value1) := by
  rw [input3762_def, output3762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3756]
  dsimp only
  rw [child3761]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3756_skip, output3761_skip]
  kernel_rfl

theorem node3763_cond_eq
    (child3755 : Flapjack.WordAlloc.removeDeadStructural input3755 value1880 value1 value2 = (output3755, value1882, value1))
    (child3762 : Flapjack.WordAlloc.removeDeadStructural input3762 value1882 value1 value2 = (output3762, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3763 value1880 value1 value2 = (output3763, value5, value1) := by
  rw [input3763_def, output3763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3755]
  dsimp only
  rw [child3762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3755_skip, output3762_skip]
  kernel_rfl

theorem node3764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3764 value5 value1 value2 = (output3764, value1886, value1) := by
  rw [input3764_def, output3764_def]
  kernel_rfl

theorem node3765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3765 value1886 value1 value2 = (output3765, value1887, value1) := by
  rw [input3765_def, output3765_def]
  kernel_rfl

theorem node3766_cond_eq
    (child3764 : Flapjack.WordAlloc.removeDeadStructural input3764 value5 value1 value2 = (output3764, value1886, value1))
    (child3765 : Flapjack.WordAlloc.removeDeadStructural input3765 value1886 value1 value2 = (output3765, value1887, value1)) : Flapjack.WordAlloc.removeDeadStructural input3766 value5 value1 value2 = (output3766, value1887, value1) := by
  rw [input3766_def, output3766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3764]
  dsimp only
  rw [child3765]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3764_skip, output3765_skip]
  kernel_rfl

theorem node3767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3767 value1887 value1 value2 = (output3767, value1888, value1) := by
  rw [input3767_def, output3767_def]
  kernel_rfl

theorem node3768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3768 value1888 value1 value2 = (output3768, value1888, value1) := by
  rw [input3768_def, output3768_def]
  kernel_rfl

theorem node3769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3769 value1888 value1 value2 = (output3769, value1889, value1) := by
  rw [input3769_def, output3769_def]
  kernel_rfl

theorem node3770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3770 value1889 value1 value2 = (output3770, value1890, value1) := by
  rw [input3770_def, output3770_def]
  kernel_rfl

theorem node3771_cond_eq
    (child3769 : Flapjack.WordAlloc.removeDeadStructural input3769 value1888 value1 value2 = (output3769, value1889, value1))
    (child3770 : Flapjack.WordAlloc.removeDeadStructural input3770 value1889 value1 value2 = (output3770, value1890, value1)) : Flapjack.WordAlloc.removeDeadStructural input3771 value1888 value1 value2 = (output3771, value1890, value1) := by
  rw [input3771_def, output3771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3769]
  dsimp only
  rw [child3770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3769_skip, output3770_skip]
  kernel_rfl

theorem node3772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3772 value1890 value1 value2 = (output3772, value1891, value1) := by
  rw [input3772_def, output3772_def]
  kernel_rfl

theorem node3773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3773 value1891 value1 value2 = (output3773, value1892, value1) := by
  rw [input3773_def, output3773_def]
  kernel_rfl

theorem node3774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3774 value1892 value1 value2 = (output3774, value1893, value1) := by
  rw [input3774_def, output3774_def]
  kernel_rfl

theorem node3775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3775 value1893 value1 value2 = (output3775, value5, value1) := by
  rw [input3775_def, output3775_def]
  kernel_rfl

theorem node3776_cond_eq
    (child3774 : Flapjack.WordAlloc.removeDeadStructural input3774 value1892 value1 value2 = (output3774, value1893, value1))
    (child3775 : Flapjack.WordAlloc.removeDeadStructural input3775 value1893 value1 value2 = (output3775, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3776 value1892 value1 value2 = (output3776, value5, value1) := by
  rw [input3776_def, output3776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3774]
  dsimp only
  rw [child3775]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3774_skip, output3775_skip]
  kernel_rfl

theorem node3777_cond_eq
    (child3773 : Flapjack.WordAlloc.removeDeadStructural input3773 value1891 value1 value2 = (output3773, value1892, value1))
    (child3776 : Flapjack.WordAlloc.removeDeadStructural input3776 value1892 value1 value2 = (output3776, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3777 value1891 value1 value2 = (output3777, value5, value1) := by
  rw [input3777_def, output3777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3773]
  dsimp only
  rw [child3776]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3773_skip, output3776_skip]
  kernel_rfl

theorem node3778_cond_eq
    (child3772 : Flapjack.WordAlloc.removeDeadStructural input3772 value1890 value1 value2 = (output3772, value1891, value1))
    (child3777 : Flapjack.WordAlloc.removeDeadStructural input3777 value1891 value1 value2 = (output3777, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3778 value1890 value1 value2 = (output3778, value5, value1) := by
  rw [input3778_def, output3778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3772]
  dsimp only
  rw [child3777]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3772_skip, output3777_skip]
  kernel_rfl

theorem node3779_cond_eq
    (child3771 : Flapjack.WordAlloc.removeDeadStructural input3771 value1888 value1 value2 = (output3771, value1890, value1))
    (child3778 : Flapjack.WordAlloc.removeDeadStructural input3778 value1890 value1 value2 = (output3778, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3779 value1888 value1 value2 = (output3779, value5, value1) := by
  rw [input3779_def, output3779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3771]
  dsimp only
  rw [child3778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3771_skip, output3778_skip]
  kernel_rfl

theorem node3780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3780 value5 value1 value2 = (output3780, value1894, value1) := by
  rw [input3780_def, output3780_def]
  kernel_rfl

theorem node3781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3781 value1894 value1 value2 = (output3781, value1895, value1) := by
  rw [input3781_def, output3781_def]
  kernel_rfl

theorem node3782_cond_eq
    (child3780 : Flapjack.WordAlloc.removeDeadStructural input3780 value5 value1 value2 = (output3780, value1894, value1))
    (child3781 : Flapjack.WordAlloc.removeDeadStructural input3781 value1894 value1 value2 = (output3781, value1895, value1)) : Flapjack.WordAlloc.removeDeadStructural input3782 value5 value1 value2 = (output3782, value1895, value1) := by
  rw [input3782_def, output3782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3780]
  dsimp only
  rw [child3781]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3780_skip, output3781_skip]
  kernel_rfl

theorem node3783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3783 value1895 value1 value2 = (output3783, value1896, value1) := by
  rw [input3783_def, output3783_def]
  kernel_rfl

theorem node3784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3784 value1896 value1 value2 = (output3784, value1896, value1) := by
  rw [input3784_def, output3784_def]
  kernel_rfl

theorem node3785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3785 value1896 value1 value2 = (output3785, value1897, value1) := by
  rw [input3785_def, output3785_def]
  kernel_rfl

theorem node3786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3786 value1897 value1 value2 = (output3786, value1898, value1) := by
  rw [input3786_def, output3786_def]
  kernel_rfl

theorem node3787_cond_eq
    (child3785 : Flapjack.WordAlloc.removeDeadStructural input3785 value1896 value1 value2 = (output3785, value1897, value1))
    (child3786 : Flapjack.WordAlloc.removeDeadStructural input3786 value1897 value1 value2 = (output3786, value1898, value1)) : Flapjack.WordAlloc.removeDeadStructural input3787 value1896 value1 value2 = (output3787, value1898, value1) := by
  rw [input3787_def, output3787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3785]
  dsimp only
  rw [child3786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3785_skip, output3786_skip]
  kernel_rfl

theorem node3788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3788 value1898 value1 value2 = (output3788, value1899, value1) := by
  rw [input3788_def, output3788_def]
  kernel_rfl

theorem node3789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3789 value1899 value1 value2 = (output3789, value1900, value1) := by
  rw [input3789_def, output3789_def]
  kernel_rfl

theorem node3790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3790 value1900 value1 value2 = (output3790, value1901, value1) := by
  rw [input3790_def, output3790_def]
  kernel_rfl

theorem node3791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3791 value1901 value1 value2 = (output3791, value5, value1) := by
  rw [input3791_def, output3791_def]
  kernel_rfl

theorem node3792_cond_eq
    (child3790 : Flapjack.WordAlloc.removeDeadStructural input3790 value1900 value1 value2 = (output3790, value1901, value1))
    (child3791 : Flapjack.WordAlloc.removeDeadStructural input3791 value1901 value1 value2 = (output3791, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3792 value1900 value1 value2 = (output3792, value5, value1) := by
  rw [input3792_def, output3792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3790]
  dsimp only
  rw [child3791]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3790_skip, output3791_skip]
  kernel_rfl

theorem node3793_cond_eq
    (child3789 : Flapjack.WordAlloc.removeDeadStructural input3789 value1899 value1 value2 = (output3789, value1900, value1))
    (child3792 : Flapjack.WordAlloc.removeDeadStructural input3792 value1900 value1 value2 = (output3792, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3793 value1899 value1 value2 = (output3793, value5, value1) := by
  rw [input3793_def, output3793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3789]
  dsimp only
  rw [child3792]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3789_skip, output3792_skip]
  kernel_rfl

theorem node3794_cond_eq
    (child3788 : Flapjack.WordAlloc.removeDeadStructural input3788 value1898 value1 value2 = (output3788, value1899, value1))
    (child3793 : Flapjack.WordAlloc.removeDeadStructural input3793 value1899 value1 value2 = (output3793, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3794 value1898 value1 value2 = (output3794, value5, value1) := by
  rw [input3794_def, output3794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3788]
  dsimp only
  rw [child3793]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3788_skip, output3793_skip]
  kernel_rfl

theorem node3795_cond_eq
    (child3787 : Flapjack.WordAlloc.removeDeadStructural input3787 value1896 value1 value2 = (output3787, value1898, value1))
    (child3794 : Flapjack.WordAlloc.removeDeadStructural input3794 value1898 value1 value2 = (output3794, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3795 value1896 value1 value2 = (output3795, value5, value1) := by
  rw [input3795_def, output3795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3787]
  dsimp only
  rw [child3794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3787_skip, output3794_skip]
  kernel_rfl

theorem node3796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3796 value5 value1 value2 = (output3796, value1902, value1) := by
  rw [input3796_def, output3796_def]
  kernel_rfl

theorem node3797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3797 value1902 value1 value2 = (output3797, value1903, value1) := by
  rw [input3797_def, output3797_def]
  kernel_rfl

theorem node3798_cond_eq
    (child3796 : Flapjack.WordAlloc.removeDeadStructural input3796 value5 value1 value2 = (output3796, value1902, value1))
    (child3797 : Flapjack.WordAlloc.removeDeadStructural input3797 value1902 value1 value2 = (output3797, value1903, value1)) : Flapjack.WordAlloc.removeDeadStructural input3798 value5 value1 value2 = (output3798, value1903, value1) := by
  rw [input3798_def, output3798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3796]
  dsimp only
  rw [child3797]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3796_skip, output3797_skip]
  kernel_rfl

theorem node3799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3799 value1903 value1 value2 = (output3799, value1904, value1) := by
  rw [input3799_def, output3799_def]
  kernel_rfl

theorem node3800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3800 value1904 value1 value2 = (output3800, value1904, value1) := by
  rw [input3800_def, output3800_def]
  kernel_rfl

theorem node3801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3801 value1904 value1 value2 = (output3801, value1905, value1) := by
  rw [input3801_def, output3801_def]
  kernel_rfl

theorem node3802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3802 value1905 value1 value2 = (output3802, value1906, value1) := by
  rw [input3802_def, output3802_def]
  kernel_rfl

theorem node3803_cond_eq
    (child3801 : Flapjack.WordAlloc.removeDeadStructural input3801 value1904 value1 value2 = (output3801, value1905, value1))
    (child3802 : Flapjack.WordAlloc.removeDeadStructural input3802 value1905 value1 value2 = (output3802, value1906, value1)) : Flapjack.WordAlloc.removeDeadStructural input3803 value1904 value1 value2 = (output3803, value1906, value1) := by
  rw [input3803_def, output3803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3801]
  dsimp only
  rw [child3802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3801_skip, output3802_skip]
  kernel_rfl

theorem node3804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3804 value1906 value1 value2 = (output3804, value1907, value1) := by
  rw [input3804_def, output3804_def]
  kernel_rfl

theorem node3805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3805 value1907 value1 value2 = (output3805, value1908, value1) := by
  rw [input3805_def, output3805_def]
  kernel_rfl

theorem node3806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3806 value1908 value1 value2 = (output3806, value1909, value1) := by
  rw [input3806_def, output3806_def]
  kernel_rfl

theorem node3807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3807 value1909 value1 value2 = (output3807, value5, value1) := by
  rw [input3807_def, output3807_def]
  kernel_rfl

theorem node3808_cond_eq
    (child3806 : Flapjack.WordAlloc.removeDeadStructural input3806 value1908 value1 value2 = (output3806, value1909, value1))
    (child3807 : Flapjack.WordAlloc.removeDeadStructural input3807 value1909 value1 value2 = (output3807, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3808 value1908 value1 value2 = (output3808, value5, value1) := by
  rw [input3808_def, output3808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3806]
  dsimp only
  rw [child3807]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3806_skip, output3807_skip]
  kernel_rfl

theorem node3809_cond_eq
    (child3805 : Flapjack.WordAlloc.removeDeadStructural input3805 value1907 value1 value2 = (output3805, value1908, value1))
    (child3808 : Flapjack.WordAlloc.removeDeadStructural input3808 value1908 value1 value2 = (output3808, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3809 value1907 value1 value2 = (output3809, value5, value1) := by
  rw [input3809_def, output3809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3805]
  dsimp only
  rw [child3808]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3805_skip, output3808_skip]
  kernel_rfl

theorem node3810_cond_eq
    (child3804 : Flapjack.WordAlloc.removeDeadStructural input3804 value1906 value1 value2 = (output3804, value1907, value1))
    (child3809 : Flapjack.WordAlloc.removeDeadStructural input3809 value1907 value1 value2 = (output3809, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3810 value1906 value1 value2 = (output3810, value5, value1) := by
  rw [input3810_def, output3810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3804]
  dsimp only
  rw [child3809]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3804_skip, output3809_skip]
  kernel_rfl

theorem node3811_cond_eq
    (child3803 : Flapjack.WordAlloc.removeDeadStructural input3803 value1904 value1 value2 = (output3803, value1906, value1))
    (child3810 : Flapjack.WordAlloc.removeDeadStructural input3810 value1906 value1 value2 = (output3810, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3811 value1904 value1 value2 = (output3811, value5, value1) := by
  rw [input3811_def, output3811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3803]
  dsimp only
  rw [child3810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3803_skip, output3810_skip]
  kernel_rfl

theorem node3812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3812 value5 value1 value2 = (output3812, value1910, value1) := by
  rw [input3812_def, output3812_def]
  kernel_rfl

theorem node3813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3813 value1910 value1 value2 = (output3813, value1911, value1) := by
  rw [input3813_def, output3813_def]
  kernel_rfl

theorem node3814_cond_eq
    (child3812 : Flapjack.WordAlloc.removeDeadStructural input3812 value5 value1 value2 = (output3812, value1910, value1))
    (child3813 : Flapjack.WordAlloc.removeDeadStructural input3813 value1910 value1 value2 = (output3813, value1911, value1)) : Flapjack.WordAlloc.removeDeadStructural input3814 value5 value1 value2 = (output3814, value1911, value1) := by
  rw [input3814_def, output3814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3812]
  dsimp only
  rw [child3813]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3812_skip, output3813_skip]
  kernel_rfl

theorem node3815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3815 value1911 value1 value2 = (output3815, value1912, value1) := by
  rw [input3815_def, output3815_def]
  kernel_rfl

theorem node3816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3816 value1912 value1 value2 = (output3816, value1912, value1) := by
  rw [input3816_def, output3816_def]
  kernel_rfl

theorem node3817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3817 value1912 value1 value2 = (output3817, value1913, value1) := by
  rw [input3817_def, output3817_def]
  kernel_rfl

theorem node3818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3818 value1913 value1 value2 = (output3818, value1914, value1) := by
  rw [input3818_def, output3818_def]
  kernel_rfl

theorem node3819_cond_eq
    (child3817 : Flapjack.WordAlloc.removeDeadStructural input3817 value1912 value1 value2 = (output3817, value1913, value1))
    (child3818 : Flapjack.WordAlloc.removeDeadStructural input3818 value1913 value1 value2 = (output3818, value1914, value1)) : Flapjack.WordAlloc.removeDeadStructural input3819 value1912 value1 value2 = (output3819, value1914, value1) := by
  rw [input3819_def, output3819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3817]
  dsimp only
  rw [child3818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3817_skip, output3818_skip]
  kernel_rfl

theorem node3820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3820 value1914 value1 value2 = (output3820, value1915, value1) := by
  rw [input3820_def, output3820_def]
  kernel_rfl

theorem node3821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3821 value1915 value1 value2 = (output3821, value1916, value1) := by
  rw [input3821_def, output3821_def]
  kernel_rfl

theorem node3822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3822 value1916 value1 value2 = (output3822, value1917, value1) := by
  rw [input3822_def, output3822_def]
  kernel_rfl

theorem node3823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3823 value1917 value1 value2 = (output3823, value5, value1) := by
  rw [input3823_def, output3823_def]
  kernel_rfl

theorem node3824_cond_eq
    (child3822 : Flapjack.WordAlloc.removeDeadStructural input3822 value1916 value1 value2 = (output3822, value1917, value1))
    (child3823 : Flapjack.WordAlloc.removeDeadStructural input3823 value1917 value1 value2 = (output3823, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3824 value1916 value1 value2 = (output3824, value5, value1) := by
  rw [input3824_def, output3824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3822]
  dsimp only
  rw [child3823]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3822_skip, output3823_skip]
  kernel_rfl

theorem node3825_cond_eq
    (child3821 : Flapjack.WordAlloc.removeDeadStructural input3821 value1915 value1 value2 = (output3821, value1916, value1))
    (child3824 : Flapjack.WordAlloc.removeDeadStructural input3824 value1916 value1 value2 = (output3824, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3825 value1915 value1 value2 = (output3825, value5, value1) := by
  rw [input3825_def, output3825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3821]
  dsimp only
  rw [child3824]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3821_skip, output3824_skip]
  kernel_rfl

theorem node3826_cond_eq
    (child3820 : Flapjack.WordAlloc.removeDeadStructural input3820 value1914 value1 value2 = (output3820, value1915, value1))
    (child3825 : Flapjack.WordAlloc.removeDeadStructural input3825 value1915 value1 value2 = (output3825, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3826 value1914 value1 value2 = (output3826, value5, value1) := by
  rw [input3826_def, output3826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3820]
  dsimp only
  rw [child3825]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3820_skip, output3825_skip]
  kernel_rfl

theorem node3827_cond_eq
    (child3819 : Flapjack.WordAlloc.removeDeadStructural input3819 value1912 value1 value2 = (output3819, value1914, value1))
    (child3826 : Flapjack.WordAlloc.removeDeadStructural input3826 value1914 value1 value2 = (output3826, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3827 value1912 value1 value2 = (output3827, value5, value1) := by
  rw [input3827_def, output3827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3819]
  dsimp only
  rw [child3826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3819_skip, output3826_skip]
  kernel_rfl

theorem node3828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3828 value5 value1 value2 = (output3828, value1918, value1) := by
  rw [input3828_def, output3828_def]
  kernel_rfl

theorem node3829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3829 value1918 value1 value2 = (output3829, value1919, value1) := by
  rw [input3829_def, output3829_def]
  kernel_rfl

theorem node3830_cond_eq
    (child3828 : Flapjack.WordAlloc.removeDeadStructural input3828 value5 value1 value2 = (output3828, value1918, value1))
    (child3829 : Flapjack.WordAlloc.removeDeadStructural input3829 value1918 value1 value2 = (output3829, value1919, value1)) : Flapjack.WordAlloc.removeDeadStructural input3830 value5 value1 value2 = (output3830, value1919, value1) := by
  rw [input3830_def, output3830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3828]
  dsimp only
  rw [child3829]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3828_skip, output3829_skip]
  kernel_rfl

theorem node3831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3831 value1919 value1 value2 = (output3831, value1920, value1) := by
  rw [input3831_def, output3831_def]
  kernel_rfl

theorem node3832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3832 value1920 value1 value2 = (output3832, value1920, value1) := by
  rw [input3832_def, output3832_def]
  kernel_rfl

theorem node3833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3833 value1920 value1 value2 = (output3833, value1921, value1) := by
  rw [input3833_def, output3833_def]
  kernel_rfl

theorem node3834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3834 value1921 value1 value2 = (output3834, value1922, value1) := by
  rw [input3834_def, output3834_def]
  kernel_rfl

theorem node3835_cond_eq
    (child3833 : Flapjack.WordAlloc.removeDeadStructural input3833 value1920 value1 value2 = (output3833, value1921, value1))
    (child3834 : Flapjack.WordAlloc.removeDeadStructural input3834 value1921 value1 value2 = (output3834, value1922, value1)) : Flapjack.WordAlloc.removeDeadStructural input3835 value1920 value1 value2 = (output3835, value1922, value1) := by
  rw [input3835_def, output3835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3833]
  dsimp only
  rw [child3834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3833_skip, output3834_skip]
  kernel_rfl

theorem node3836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3836 value1922 value1 value2 = (output3836, value1923, value1) := by
  rw [input3836_def, output3836_def]
  kernel_rfl

theorem node3837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3837 value1923 value1 value2 = (output3837, value1924, value1) := by
  rw [input3837_def, output3837_def]
  kernel_rfl

theorem node3838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3838 value1924 value1 value2 = (output3838, value1925, value1) := by
  rw [input3838_def, output3838_def]
  kernel_rfl

theorem node3839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3839 value1925 value1 value2 = (output3839, value5, value1) := by
  rw [input3839_def, output3839_def]
  kernel_rfl

#print axioms node3839_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
