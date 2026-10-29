import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk014
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages240.Parallel
theorem node3584_cond_eq
    (child3580 : Flapjack.WordAlloc.removeDeadStructural input3580 value1794 value1 value2 = (output3580, value1795, value1))
    (child3583 : Flapjack.WordAlloc.removeDeadStructural input3583 value1795 value1 value2 = (output3583, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3584 value1794 value1 value2 = (output3584, value5, value1) := by
  rw [input3584_def, output3584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3580]
  try dsimp only
  rw [child3583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3580_skip, output3583_skip]
  kernel_rfl

theorem node3585_cond_eq
    (child3579 : Flapjack.WordAlloc.removeDeadStructural input3579 value1793 value1 value2 = (output3579, value1794, value1))
    (child3584 : Flapjack.WordAlloc.removeDeadStructural input3584 value1794 value1 value2 = (output3584, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3585 value1793 value1 value2 = (output3585, value5, value1) := by
  rw [input3585_def, output3585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3579]
  try dsimp only
  rw [child3584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3579_skip, output3584_skip]
  kernel_rfl

theorem node3586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3586 value5 value1 value2 = (output3586, value1797, value1) := by
  rw [input3586_def, output3586_def]
  kernel_rfl

theorem node3587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3587 value1797 value1 value2 = (output3587, value1798, value1) := by
  rw [input3587_def, output3587_def]
  kernel_rfl

theorem node3588_cond_eq
    (child3586 : Flapjack.WordAlloc.removeDeadStructural input3586 value5 value1 value2 = (output3586, value1797, value1))
    (child3587 : Flapjack.WordAlloc.removeDeadStructural input3587 value1797 value1 value2 = (output3587, value1798, value1)) : Flapjack.WordAlloc.removeDeadStructural input3588 value5 value1 value2 = (output3588, value1798, value1) := by
  rw [input3588_def, output3588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3586]
  try dsimp only
  rw [child3587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3586_skip, output3587_skip]
  kernel_rfl

theorem node3589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3589 value1798 value1 value2 = (output3589, value1799, value1) := by
  rw [input3589_def, output3589_def]
  kernel_rfl

theorem node3590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3590 value1799 value1 value2 = (output3590, value1800, value1) := by
  rw [input3590_def, output3590_def]
  kernel_rfl

theorem node3591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3591 value1800 value1 value2 = (output3591, value1801, value1) := by
  rw [input3591_def, output3591_def]
  kernel_rfl

theorem node3592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3592 value1801 value1 value2 = (output3592, value1802, value1) := by
  rw [input3592_def, output3592_def]
  kernel_rfl

theorem node3593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3593 value1802 value1 value2 = (output3593, value1803, value1) := by
  rw [input3593_def, output3593_def]
  kernel_rfl

theorem node3594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3594 value1803 value1 value2 = (output3594, value1804, value1) := by
  rw [input3594_def, output3594_def]
  kernel_rfl

theorem node3595_cond_eq
    (child3593 : Flapjack.WordAlloc.removeDeadStructural input3593 value1802 value1 value2 = (output3593, value1803, value1))
    (child3594 : Flapjack.WordAlloc.removeDeadStructural input3594 value1803 value1 value2 = (output3594, value1804, value1)) : Flapjack.WordAlloc.removeDeadStructural input3595 value1802 value1 value2 = (output3595, value1804, value1) := by
  rw [input3595_def, output3595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3593]
  try dsimp only
  rw [child3594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3593_skip, output3594_skip]
  kernel_rfl

theorem node3596_cond_eq
    (child3592 : Flapjack.WordAlloc.removeDeadStructural input3592 value1801 value1 value2 = (output3592, value1802, value1))
    (child3595 : Flapjack.WordAlloc.removeDeadStructural input3595 value1802 value1 value2 = (output3595, value1804, value1)) : Flapjack.WordAlloc.removeDeadStructural input3596 value1801 value1 value2 = (output3596, value1804, value1) := by
  rw [input3596_def, output3596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3592]
  try dsimp only
  rw [child3595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3592_skip, output3595_skip]
  kernel_rfl

theorem node3597_cond_eq
    (child3591 : Flapjack.WordAlloc.removeDeadStructural input3591 value1800 value1 value2 = (output3591, value1801, value1))
    (child3596 : Flapjack.WordAlloc.removeDeadStructural input3596 value1801 value1 value2 = (output3596, value1804, value1)) : Flapjack.WordAlloc.removeDeadStructural input3597 value1800 value1 value2 = (output3597, value1804, value1) := by
  rw [input3597_def, output3597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3591]
  try dsimp only
  rw [child3596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3591_skip, output3596_skip]
  kernel_rfl

theorem node3598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3598 value1804 value1 value2 = (output3598, value1804, value1) := by
  rw [input3598_def, output3598_def]
  kernel_rfl

theorem node3599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3599 value1804 value1 value2 = (output3599, value1805, value1) := by
  rw [input3599_def, output3599_def]
  kernel_rfl

theorem node3600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3600 value1805 value1 value2 = (output3600, value1806, value1) := by
  rw [input3600_def, output3600_def]
  kernel_rfl

theorem node3601_cond_eq
    (child3599 : Flapjack.WordAlloc.removeDeadStructural input3599 value1804 value1 value2 = (output3599, value1805, value1))
    (child3600 : Flapjack.WordAlloc.removeDeadStructural input3600 value1805 value1 value2 = (output3600, value1806, value1)) : Flapjack.WordAlloc.removeDeadStructural input3601 value1804 value1 value2 = (output3601, value1806, value1) := by
  rw [input3601_def, output3601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3599]
  try dsimp only
  rw [child3600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3599_skip, output3600_skip]
  kernel_rfl

theorem node3602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3602 value1806 value1 value2 = (output3602, value1807, value1) := by
  rw [input3602_def, output3602_def]
  kernel_rfl

theorem node3603_cond_eq
    (child3601 : Flapjack.WordAlloc.removeDeadStructural input3601 value1804 value1 value2 = (output3601, value1806, value1))
    (child3602 : Flapjack.WordAlloc.removeDeadStructural input3602 value1806 value1 value2 = (output3602, value1807, value1)) : Flapjack.WordAlloc.removeDeadStructural input3603 value1804 value1 value2 = (output3603, value1807, value1) := by
  rw [input3603_def, output3603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3601]
  try dsimp only
  rw [child3602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3601_skip, output3602_skip]
  kernel_rfl

theorem node3604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3604 value1807 value1 value2 = (output3604, value1808, value1) := by
  rw [input3604_def, output3604_def]
  kernel_rfl

theorem node3605_cond_eq
    (child3603 : Flapjack.WordAlloc.removeDeadStructural input3603 value1804 value1 value2 = (output3603, value1807, value1))
    (child3604 : Flapjack.WordAlloc.removeDeadStructural input3604 value1807 value1 value2 = (output3604, value1808, value1)) : Flapjack.WordAlloc.removeDeadStructural input3605 value1804 value1 value2 = (output3605, value1808, value1) := by
  rw [input3605_def, output3605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3603]
  try dsimp only
  rw [child3604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3603_skip, output3604_skip]
  kernel_rfl

theorem node3606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3606 value1808 value1 value2 = (output3606, value1808, value1) := by
  rw [input3606_def, output3606_def]
  kernel_rfl

theorem node3607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3607 value1808 value1 value2 = (output3607, value1809, value1) := by
  rw [input3607_def, output3607_def]
  kernel_rfl

theorem node3608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3608 value1809 value1 value2 = (output3608, value1810, value1) := by
  rw [input3608_def, output3608_def]
  kernel_rfl

theorem node3609_cond_eq
    (child3607 : Flapjack.WordAlloc.removeDeadStructural input3607 value1808 value1 value2 = (output3607, value1809, value1))
    (child3608 : Flapjack.WordAlloc.removeDeadStructural input3608 value1809 value1 value2 = (output3608, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input3609 value1808 value1 value2 = (output3609, value1810, value1) := by
  rw [input3609_def, output3609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3607]
  try dsimp only
  rw [child3608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3607_skip, output3608_skip]
  kernel_rfl

theorem node3610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3610 value1810 value1 value2 = (output3610, value1811, value1) := by
  rw [input3610_def, output3610_def]
  kernel_rfl

theorem node3611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3611 value1811 value1 value2 = (output3611, value1812, value1) := by
  rw [input3611_def, output3611_def]
  kernel_rfl

theorem node3612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3612 value1812 value1 value2 = (output3612, value1813, value1) := by
  rw [input3612_def, output3612_def]
  kernel_rfl

theorem node3613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3613 value1813 value1 value2 = (output3613, value1814, value1) := by
  rw [input3613_def, output3613_def]
  kernel_rfl

theorem node3614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3614 value1814 value1 value2 = (output3614, value1815, value1) := by
  rw [input3614_def, output3614_def]
  kernel_rfl

theorem node3615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3615 value1815 value1 value2 = (output3615, value1816, value1) := by
  rw [input3615_def, output3615_def]
  kernel_rfl

theorem node3616_cond_eq
    (child3614 : Flapjack.WordAlloc.removeDeadStructural input3614 value1814 value1 value2 = (output3614, value1815, value1))
    (child3615 : Flapjack.WordAlloc.removeDeadStructural input3615 value1815 value1 value2 = (output3615, value1816, value1)) : Flapjack.WordAlloc.removeDeadStructural input3616 value1814 value1 value2 = (output3616, value1816, value1) := by
  rw [input3616_def, output3616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3614]
  try dsimp only
  rw [child3615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3614_skip, output3615_skip]
  kernel_rfl

theorem node3617_cond_eq
    (child3613 : Flapjack.WordAlloc.removeDeadStructural input3613 value1813 value1 value2 = (output3613, value1814, value1))
    (child3616 : Flapjack.WordAlloc.removeDeadStructural input3616 value1814 value1 value2 = (output3616, value1816, value1)) : Flapjack.WordAlloc.removeDeadStructural input3617 value1813 value1 value2 = (output3617, value1816, value1) := by
  rw [input3617_def, output3617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3613]
  try dsimp only
  rw [child3616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3613_skip, output3616_skip]
  kernel_rfl

theorem node3618_cond_eq
    (child3612 : Flapjack.WordAlloc.removeDeadStructural input3612 value1812 value1 value2 = (output3612, value1813, value1))
    (child3617 : Flapjack.WordAlloc.removeDeadStructural input3617 value1813 value1 value2 = (output3617, value1816, value1)) : Flapjack.WordAlloc.removeDeadStructural input3618 value1812 value1 value2 = (output3618, value1816, value1) := by
  rw [input3618_def, output3618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3612]
  try dsimp only
  rw [child3617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3612_skip, output3617_skip]
  kernel_rfl

theorem node3619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3619 value1816 value1 value2 = (output3619, value1816, value1) := by
  rw [input3619_def, output3619_def]
  kernel_rfl

theorem node3620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3620 value1816 value1 value2 = (output3620, value1817, value1) := by
  rw [input3620_def, output3620_def]
  kernel_rfl

theorem node3621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3621 value1817 value1 value2 = (output3621, value1818, value1) := by
  rw [input3621_def, output3621_def]
  kernel_rfl

theorem node3622_cond_eq
    (child3620 : Flapjack.WordAlloc.removeDeadStructural input3620 value1816 value1 value2 = (output3620, value1817, value1))
    (child3621 : Flapjack.WordAlloc.removeDeadStructural input3621 value1817 value1 value2 = (output3621, value1818, value1)) : Flapjack.WordAlloc.removeDeadStructural input3622 value1816 value1 value2 = (output3622, value1818, value1) := by
  rw [input3622_def, output3622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3620]
  try dsimp only
  rw [child3621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3620_skip, output3621_skip]
  kernel_rfl

theorem node3623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3623 value1818 value1 value2 = (output3623, value1819, value1) := by
  rw [input3623_def, output3623_def]
  kernel_rfl

theorem node3624_cond_eq
    (child3622 : Flapjack.WordAlloc.removeDeadStructural input3622 value1816 value1 value2 = (output3622, value1818, value1))
    (child3623 : Flapjack.WordAlloc.removeDeadStructural input3623 value1818 value1 value2 = (output3623, value1819, value1)) : Flapjack.WordAlloc.removeDeadStructural input3624 value1816 value1 value2 = (output3624, value1819, value1) := by
  rw [input3624_def, output3624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3622]
  try dsimp only
  rw [child3623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3622_skip, output3623_skip]
  kernel_rfl

theorem node3625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3625 value1819 value1 value2 = (output3625, value1820, value1) := by
  rw [input3625_def, output3625_def]
  kernel_rfl

theorem node3626_cond_eq
    (child3624 : Flapjack.WordAlloc.removeDeadStructural input3624 value1816 value1 value2 = (output3624, value1819, value1))
    (child3625 : Flapjack.WordAlloc.removeDeadStructural input3625 value1819 value1 value2 = (output3625, value1820, value1)) : Flapjack.WordAlloc.removeDeadStructural input3626 value1816 value1 value2 = (output3626, value1820, value1) := by
  rw [input3626_def, output3626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3624]
  try dsimp only
  rw [child3625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3624_skip, output3625_skip]
  kernel_rfl

theorem node3627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3627 value1820 value1 value2 = (output3627, value1820, value1) := by
  rw [input3627_def, output3627_def]
  kernel_rfl

theorem node3628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3628 value1820 value1 value2 = (output3628, value1821, value1) := by
  rw [input3628_def, output3628_def]
  kernel_rfl

theorem node3629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3629 value1821 value1 value2 = (output3629, value1822, value1) := by
  rw [input3629_def, output3629_def]
  kernel_rfl

theorem node3630_cond_eq
    (child3628 : Flapjack.WordAlloc.removeDeadStructural input3628 value1820 value1 value2 = (output3628, value1821, value1))
    (child3629 : Flapjack.WordAlloc.removeDeadStructural input3629 value1821 value1 value2 = (output3629, value1822, value1)) : Flapjack.WordAlloc.removeDeadStructural input3630 value1820 value1 value2 = (output3630, value1822, value1) := by
  rw [input3630_def, output3630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3628]
  try dsimp only
  rw [child3629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3628_skip, output3629_skip]
  kernel_rfl

theorem node3631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3631 value1822 value1 value2 = (output3631, value1823, value1) := by
  rw [input3631_def, output3631_def]
  kernel_rfl

theorem node3632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3632 value1823 value1 value2 = (output3632, value1824, value1) := by
  rw [input3632_def, output3632_def]
  kernel_rfl

theorem node3633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3633 value1824 value1 value2 = (output3633, value1825, value1) := by
  rw [input3633_def, output3633_def]
  kernel_rfl

theorem node3634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3634 value1825 value1 value2 = (output3634, value1826, value1) := by
  rw [input3634_def, output3634_def]
  kernel_rfl

theorem node3635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3635 value1826 value1 value2 = (output3635, value1827, value1) := by
  rw [input3635_def, output3635_def]
  kernel_rfl

theorem node3636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3636 value1827 value1 value2 = (output3636, value1828, value1) := by
  rw [input3636_def, output3636_def]
  kernel_rfl

theorem node3637_cond_eq
    (child3635 : Flapjack.WordAlloc.removeDeadStructural input3635 value1826 value1 value2 = (output3635, value1827, value1))
    (child3636 : Flapjack.WordAlloc.removeDeadStructural input3636 value1827 value1 value2 = (output3636, value1828, value1)) : Flapjack.WordAlloc.removeDeadStructural input3637 value1826 value1 value2 = (output3637, value1828, value1) := by
  rw [input3637_def, output3637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3635]
  try dsimp only
  rw [child3636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3635_skip, output3636_skip]
  kernel_rfl

theorem node3638_cond_eq
    (child3634 : Flapjack.WordAlloc.removeDeadStructural input3634 value1825 value1 value2 = (output3634, value1826, value1))
    (child3637 : Flapjack.WordAlloc.removeDeadStructural input3637 value1826 value1 value2 = (output3637, value1828, value1)) : Flapjack.WordAlloc.removeDeadStructural input3638 value1825 value1 value2 = (output3638, value1828, value1) := by
  rw [input3638_def, output3638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3634]
  try dsimp only
  rw [child3637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3634_skip, output3637_skip]
  kernel_rfl

theorem node3639_cond_eq
    (child3633 : Flapjack.WordAlloc.removeDeadStructural input3633 value1824 value1 value2 = (output3633, value1825, value1))
    (child3638 : Flapjack.WordAlloc.removeDeadStructural input3638 value1825 value1 value2 = (output3638, value1828, value1)) : Flapjack.WordAlloc.removeDeadStructural input3639 value1824 value1 value2 = (output3639, value1828, value1) := by
  rw [input3639_def, output3639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3633]
  try dsimp only
  rw [child3638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3633_skip, output3638_skip]
  kernel_rfl

theorem node3640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3640 value1828 value1 value2 = (output3640, value1828, value1) := by
  rw [input3640_def, output3640_def]
  kernel_rfl

theorem node3641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3641 value1828 value1 value2 = (output3641, value1829, value1) := by
  rw [input3641_def, output3641_def]
  kernel_rfl

theorem node3642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3642 value1829 value1 value2 = (output3642, value1830, value1) := by
  rw [input3642_def, output3642_def]
  kernel_rfl

theorem node3643_cond_eq
    (child3641 : Flapjack.WordAlloc.removeDeadStructural input3641 value1828 value1 value2 = (output3641, value1829, value1))
    (child3642 : Flapjack.WordAlloc.removeDeadStructural input3642 value1829 value1 value2 = (output3642, value1830, value1)) : Flapjack.WordAlloc.removeDeadStructural input3643 value1828 value1 value2 = (output3643, value1830, value1) := by
  rw [input3643_def, output3643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3641]
  try dsimp only
  rw [child3642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3641_skip, output3642_skip]
  kernel_rfl

theorem node3644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3644 value1830 value1 value2 = (output3644, value1831, value1) := by
  rw [input3644_def, output3644_def]
  kernel_rfl

theorem node3645_cond_eq
    (child3643 : Flapjack.WordAlloc.removeDeadStructural input3643 value1828 value1 value2 = (output3643, value1830, value1))
    (child3644 : Flapjack.WordAlloc.removeDeadStructural input3644 value1830 value1 value2 = (output3644, value1831, value1)) : Flapjack.WordAlloc.removeDeadStructural input3645 value1828 value1 value2 = (output3645, value1831, value1) := by
  rw [input3645_def, output3645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3643]
  try dsimp only
  rw [child3644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3643_skip, output3644_skip]
  kernel_rfl

theorem node3646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3646 value1831 value1 value2 = (output3646, value1832, value1) := by
  rw [input3646_def, output3646_def]
  kernel_rfl

theorem node3647_cond_eq
    (child3645 : Flapjack.WordAlloc.removeDeadStructural input3645 value1828 value1 value2 = (output3645, value1831, value1))
    (child3646 : Flapjack.WordAlloc.removeDeadStructural input3646 value1831 value1 value2 = (output3646, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3647 value1828 value1 value2 = (output3647, value1832, value1) := by
  rw [input3647_def, output3647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3645]
  try dsimp only
  rw [child3646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3645_skip, output3646_skip]
  kernel_rfl

theorem node3648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3648 value1832 value1 value2 = (output3648, value1832, value1) := by
  rw [input3648_def, output3648_def]
  kernel_rfl

theorem node3649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3649 value1832 value1 value2 = (output3649, value1832, value1) := by
  rw [input3649_def, output3649_def]
  kernel_rfl

theorem node3650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3650 value1832 value1 value2 = (output3650, value1832, value1) := by
  rw [input3650_def, output3650_def]
  kernel_rfl

theorem node3651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3651 value1832 value1 value2 = (output3651, value1832, value1) := by
  rw [input3651_def, output3651_def]
  kernel_rfl

theorem node3652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3652 value1832 value1 value2 = (output3652, value1832, value1) := by
  rw [input3652_def, output3652_def]
  kernel_rfl

theorem node3653_cond_eq
    (child3651 : Flapjack.WordAlloc.removeDeadStructural input3651 value1832 value1 value2 = (output3651, value1832, value1))
    (child3652 : Flapjack.WordAlloc.removeDeadStructural input3652 value1832 value1 value2 = (output3652, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3653 value1832 value1 value2 = (output3653, value1832, value1) := by
  rw [input3653_def, output3653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3651]
  try dsimp only
  rw [child3652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3651_skip, output3652_skip]
  kernel_rfl

theorem node3654_cond_eq
    (child3650 : Flapjack.WordAlloc.removeDeadStructural input3650 value1832 value1 value2 = (output3650, value1832, value1))
    (child3653 : Flapjack.WordAlloc.removeDeadStructural input3653 value1832 value1 value2 = (output3653, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3654 value1832 value1 value2 = (output3654, value1832, value1) := by
  rw [input3654_def, output3654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3650]
  try dsimp only
  rw [child3653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3650_skip, output3653_skip]
  kernel_rfl

theorem node3655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3655 value1832 value1 value2 = (output3655, value1832, value1) := by
  rw [input3655_def, output3655_def]
  kernel_rfl

theorem node3656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3656 value1832 value1 value2 = (output3656, value1832, value1) := by
  rw [input3656_def, output3656_def]
  kernel_rfl

theorem node3657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3657 value1832 value1 value2 = (output3657, value1832, value1) := by
  rw [input3657_def, output3657_def]
  kernel_rfl

theorem node3658_cond_eq
    (child3656 : Flapjack.WordAlloc.removeDeadStructural input3656 value1832 value1 value2 = (output3656, value1832, value1))
    (child3657 : Flapjack.WordAlloc.removeDeadStructural input3657 value1832 value1 value2 = (output3657, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3658 value1832 value1 value2 = (output3658, value1832, value1) := by
  rw [input3658_def, output3658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3656]
  try dsimp only
  rw [child3657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3656_skip, output3657_skip]
  kernel_rfl

theorem node3659_cond_eq
    (child3655 : Flapjack.WordAlloc.removeDeadStructural input3655 value1832 value1 value2 = (output3655, value1832, value1))
    (child3658 : Flapjack.WordAlloc.removeDeadStructural input3658 value1832 value1 value2 = (output3658, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3659 value1832 value1 value2 = (output3659, value1832, value1) := by
  rw [input3659_def, output3659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3655]
  try dsimp only
  rw [child3658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3655_skip, output3658_skip]
  kernel_rfl

theorem node3660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3660 value1832 value1 value2 = (output3660, value1832, value1) := by
  rw [input3660_def, output3660_def]
  kernel_rfl

theorem node3661_cond_eq
    (child3659 : Flapjack.WordAlloc.removeDeadStructural input3659 value1832 value1 value2 = (output3659, value1832, value1))
    (child3660 : Flapjack.WordAlloc.removeDeadStructural input3660 value1832 value1 value2 = (output3660, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3661 value1832 value1 value2 = (output3661, value1832, value1) := by
  rw [input3661_def, output3661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3659]
  try dsimp only
  rw [child3660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3659_skip, output3660_skip]
  kernel_rfl

theorem node3662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3662 value1832 value1 value2 = (output3662, value1833, value1) := by
  rw [input3662_def, output3662_def]
  kernel_rfl

theorem node3663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3663 value1833 value1 value2 = (output3663, value1834, value1) := by
  rw [input3663_def, output3663_def]
  kernel_rfl

theorem node3664_cond_eq
    (child3662 : Flapjack.WordAlloc.removeDeadStructural input3662 value1832 value1 value2 = (output3662, value1833, value1))
    (child3663 : Flapjack.WordAlloc.removeDeadStructural input3663 value1833 value1 value2 = (output3663, value1834, value1)) : Flapjack.WordAlloc.removeDeadStructural input3664 value1832 value1 value2 = (output3664, value1834, value1) := by
  rw [input3664_def, output3664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3662]
  try dsimp only
  rw [child3663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3662_skip, output3663_skip]
  kernel_rfl

theorem node3665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3665 value1834 value1 value2 = (output3665, value1832, value1) := by
  rw [input3665_def, output3665_def]
  kernel_rfl

theorem node3666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3666 value1832 value1 value2 = (output3666, value1832, value1) := by
  rw [input3666_def, output3666_def]
  kernel_rfl

theorem node3667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3667 value1832 value1 value2 = (output3667, value1832, value1) := by
  rw [input3667_def, output3667_def]
  kernel_rfl

theorem node3668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3668 value1832 value1 value2 = (output3668, value1832, value1) := by
  rw [input3668_def, output3668_def]
  kernel_rfl

theorem node3669_cond_eq
    (child3667 : Flapjack.WordAlloc.removeDeadStructural input3667 value1832 value1 value2 = (output3667, value1832, value1))
    (child3668 : Flapjack.WordAlloc.removeDeadStructural input3668 value1832 value1 value2 = (output3668, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3669 value1832 value1 value2 = (output3669, value1832, value1) := by
  rw [input3669_def, output3669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3667]
  try dsimp only
  rw [child3668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3667_skip, output3668_skip]
  kernel_rfl

theorem node3670_cond_eq
    (child3666 : Flapjack.WordAlloc.removeDeadStructural input3666 value1832 value1 value2 = (output3666, value1832, value1))
    (child3669 : Flapjack.WordAlloc.removeDeadStructural input3669 value1832 value1 value2 = (output3669, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3670 value1832 value1 value2 = (output3670, value1832, value1) := by
  rw [input3670_def, output3670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3666]
  try dsimp only
  rw [child3669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3666_skip, output3669_skip]
  kernel_rfl

theorem node3671_cond_eq
    (child3665 : Flapjack.WordAlloc.removeDeadStructural input3665 value1834 value1 value2 = (output3665, value1832, value1))
    (child3670 : Flapjack.WordAlloc.removeDeadStructural input3670 value1832 value1 value2 = (output3670, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3671 value1834 value1 value2 = (output3671, value1832, value1) := by
  rw [input3671_def, output3671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3665]
  try dsimp only
  rw [child3670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3665_skip, output3670_skip]
  kernel_rfl

theorem node3672_cond_eq
    (child3664 : Flapjack.WordAlloc.removeDeadStructural input3664 value1832 value1 value2 = (output3664, value1834, value1))
    (child3671 : Flapjack.WordAlloc.removeDeadStructural input3671 value1834 value1 value2 = (output3671, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3672 value1832 value1 value2 = (output3672, value1832, value1) := by
  rw [input3672_def, output3672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3664]
  try dsimp only
  rw [child3671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3664_skip, output3671_skip]
  kernel_rfl

theorem node3673_cond_eq
    (child3661 : Flapjack.WordAlloc.removeDeadStructural input3661 value1832 value1 value2 = (output3661, value1832, value1))
    (child3672 : Flapjack.WordAlloc.removeDeadStructural input3672 value1832 value1 value2 = (output3672, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3673 value1832 value1 value2 = (output3673, value1832, value1) := by
  rw [input3673_def, output3673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3661]
  try dsimp only
  rw [child3672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3661_skip, output3672_skip]
  kernel_rfl

theorem node3674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3674 value1832 value1 value2 = (output3674, value1832, value1) := by
  rw [input3674_def, output3674_def]
  kernel_rfl

theorem node3675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3675 value1832 value1 value2 = (output3675, value1832, value1) := by
  rw [input3675_def, output3675_def]
  kernel_rfl

theorem node3676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3676 value1832 value1 value2 = (output3676, value1832, value1) := by
  rw [input3676_def, output3676_def]
  kernel_rfl

theorem node3677_cond_eq
    (child3675 : Flapjack.WordAlloc.removeDeadStructural input3675 value1832 value1 value2 = (output3675, value1832, value1))
    (child3676 : Flapjack.WordAlloc.removeDeadStructural input3676 value1832 value1 value2 = (output3676, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3677 value1832 value1 value2 = (output3677, value1832, value1) := by
  rw [input3677_def, output3677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3675]
  try dsimp only
  rw [child3676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3675_skip, output3676_skip]
  kernel_rfl

theorem node3678_cond_eq
    (child3674 : Flapjack.WordAlloc.removeDeadStructural input3674 value1832 value1 value2 = (output3674, value1832, value1))
    (child3677 : Flapjack.WordAlloc.removeDeadStructural input3677 value1832 value1 value2 = (output3677, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3678 value1832 value1 value2 = (output3678, value1832, value1) := by
  rw [input3678_def, output3678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3674]
  try dsimp only
  rw [child3677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3674_skip, output3677_skip]
  kernel_rfl

theorem node3679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3679 value1832 value1 value2 = (output3679, value1832, value1) := by
  rw [input3679_def, output3679_def]
  kernel_rfl

theorem node3680_cond_eq
    (child3678 : Flapjack.WordAlloc.removeDeadStructural input3678 value1832 value1 value2 = (output3678, value1832, value1))
    (child3679 : Flapjack.WordAlloc.removeDeadStructural input3679 value1832 value1 value2 = (output3679, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3680 value1832 value1 value2 = (output3680, value1832, value1) := by
  rw [input3680_def, output3680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3678]
  try dsimp only
  rw [child3679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3678_skip, output3679_skip]
  kernel_rfl

theorem node3681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3681 value1832 value1 value2 = (output3681, value1832, value1) := by
  rw [input3681_def, output3681_def]
  kernel_rfl

theorem node3682_cond_eq
    (child3680 : Flapjack.WordAlloc.removeDeadStructural input3680 value1832 value1 value2 = (output3680, value1832, value1))
    (child3681 : Flapjack.WordAlloc.removeDeadStructural input3681 value1832 value1 value2 = (output3681, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3682 value1832 value1 value2 = (output3682, value1832, value1) := by
  rw [input3682_def, output3682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3680]
  try dsimp only
  rw [child3681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3680_skip, output3681_skip]
  kernel_rfl

theorem node3683_cond_eq
    (child3673 : Flapjack.WordAlloc.removeDeadStructural input3673 value1832 value1 value2 = (output3673, value1832, value1))
    (child3682 : Flapjack.WordAlloc.removeDeadStructural input3682 value1832 value1 value2 = (output3682, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3683 value1832 value1 value2 = (output3683, value1837, value1) := by
  rw [input3683_def, output3683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3673]
  try dsimp only
  rw [child3682]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3673_skip, output3682_skip]
  kernel_rfl

theorem node3684_cond_eq
    (child3654 : Flapjack.WordAlloc.removeDeadStructural input3654 value1832 value1 value2 = (output3654, value1832, value1))
    (child3683 : Flapjack.WordAlloc.removeDeadStructural input3683 value1832 value1 value2 = (output3683, value1837, value1)) : Flapjack.WordAlloc.removeDeadStructural input3684 value1832 value1 value2 = (output3684, value1837, value1) := by
  rw [input3684_def, output3684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3654]
  try dsimp only
  rw [child3683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3654_skip, output3683_skip]
  kernel_rfl

theorem node3685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3685 value1837 value1 value2 = (output3685, value1838, value1) := by
  rw [input3685_def, output3685_def]
  kernel_rfl

theorem node3686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3686 value1838 value1 value2 = (output3686, value1839, value1) := by
  rw [input3686_def, output3686_def]
  kernel_rfl

theorem node3687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3687 value1839 value1 value2 = (output3687, value1840, value1) := by
  rw [input3687_def, output3687_def]
  kernel_rfl

theorem node3688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3688 value1840 value1 value2 = (output3688, value1841, value1) := by
  rw [input3688_def, output3688_def]
  kernel_rfl

theorem node3689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3689 value1841 value1 value2 = (output3689, value1832, value1) := by
  rw [input3689_def, output3689_def]
  kernel_rfl

theorem node3690_cond_eq
    (child3688 : Flapjack.WordAlloc.removeDeadStructural input3688 value1840 value1 value2 = (output3688, value1841, value1))
    (child3689 : Flapjack.WordAlloc.removeDeadStructural input3689 value1841 value1 value2 = (output3689, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3690 value1840 value1 value2 = (output3690, value1832, value1) := by
  rw [input3690_def, output3690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3688]
  try dsimp only
  rw [child3689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3688_skip, output3689_skip]
  kernel_rfl

theorem node3691_cond_eq
    (child3687 : Flapjack.WordAlloc.removeDeadStructural input3687 value1839 value1 value2 = (output3687, value1840, value1))
    (child3690 : Flapjack.WordAlloc.removeDeadStructural input3690 value1840 value1 value2 = (output3690, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3691 value1839 value1 value2 = (output3691, value1832, value1) := by
  rw [input3691_def, output3691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3687]
  try dsimp only
  rw [child3690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3687_skip, output3690_skip]
  kernel_rfl

theorem node3692_cond_eq
    (child3686 : Flapjack.WordAlloc.removeDeadStructural input3686 value1838 value1 value2 = (output3686, value1839, value1))
    (child3691 : Flapjack.WordAlloc.removeDeadStructural input3691 value1839 value1 value2 = (output3691, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3692 value1838 value1 value2 = (output3692, value1832, value1) := by
  rw [input3692_def, output3692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3686]
  try dsimp only
  rw [child3691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3686_skip, output3691_skip]
  kernel_rfl

theorem node3693_cond_eq
    (child3685 : Flapjack.WordAlloc.removeDeadStructural input3685 value1837 value1 value2 = (output3685, value1838, value1))
    (child3692 : Flapjack.WordAlloc.removeDeadStructural input3692 value1838 value1 value2 = (output3692, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3693 value1837 value1 value2 = (output3693, value1832, value1) := by
  rw [input3693_def, output3693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3685]
  try dsimp only
  rw [child3692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3685_skip, output3692_skip]
  kernel_rfl

theorem node3694_cond_eq
    (child3684 : Flapjack.WordAlloc.removeDeadStructural input3684 value1832 value1 value2 = (output3684, value1837, value1))
    (child3693 : Flapjack.WordAlloc.removeDeadStructural input3693 value1837 value1 value2 = (output3693, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3694 value1832 value1 value2 = (output3694, value1832, value1) := by
  rw [input3694_def, output3694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3684]
  try dsimp only
  rw [child3693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3684_skip, output3693_skip]
  kernel_rfl

theorem node3695_cond_eq
    (child3649 : Flapjack.WordAlloc.removeDeadStructural input3649 value1832 value1 value2 = (output3649, value1832, value1))
    (child3694 : Flapjack.WordAlloc.removeDeadStructural input3694 value1832 value1 value2 = (output3694, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3695 value1832 value1 value2 = (output3695, value1832, value1) := by
  rw [input3695_def, output3695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3649]
  try dsimp only
  rw [child3694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3649_skip, output3694_skip]
  kernel_rfl

theorem node3696_cond_eq
    (child3648 : Flapjack.WordAlloc.removeDeadStructural input3648 value1832 value1 value2 = (output3648, value1832, value1))
    (child3695 : Flapjack.WordAlloc.removeDeadStructural input3695 value1832 value1 value2 = (output3695, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3696 value1832 value1 value2 = (output3696, value1832, value1) := by
  rw [input3696_def, output3696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3648]
  try dsimp only
  rw [child3695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3648_skip, output3695_skip]
  kernel_rfl

theorem node3697_cond_eq
    (child3647 : Flapjack.WordAlloc.removeDeadStructural input3647 value1828 value1 value2 = (output3647, value1832, value1))
    (child3696 : Flapjack.WordAlloc.removeDeadStructural input3696 value1832 value1 value2 = (output3696, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3697 value1828 value1 value2 = (output3697, value1832, value1) := by
  rw [input3697_def, output3697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3647]
  try dsimp only
  rw [child3696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3647_skip, output3696_skip]
  kernel_rfl

theorem node3698_cond_eq
    (child3640 : Flapjack.WordAlloc.removeDeadStructural input3640 value1828 value1 value2 = (output3640, value1828, value1))
    (child3697 : Flapjack.WordAlloc.removeDeadStructural input3697 value1828 value1 value2 = (output3697, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3698 value1828 value1 value2 = (output3698, value1832, value1) := by
  rw [input3698_def, output3698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3640]
  try dsimp only
  rw [child3697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3640_skip, output3697_skip]
  kernel_rfl

theorem node3699_cond_eq
    (child3639 : Flapjack.WordAlloc.removeDeadStructural input3639 value1824 value1 value2 = (output3639, value1828, value1))
    (child3698 : Flapjack.WordAlloc.removeDeadStructural input3698 value1828 value1 value2 = (output3698, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3699 value1824 value1 value2 = (output3699, value1832, value1) := by
  rw [input3699_def, output3699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3639]
  try dsimp only
  rw [child3698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3639_skip, output3698_skip]
  kernel_rfl

theorem node3700_cond_eq
    (child3632 : Flapjack.WordAlloc.removeDeadStructural input3632 value1823 value1 value2 = (output3632, value1824, value1))
    (child3699 : Flapjack.WordAlloc.removeDeadStructural input3699 value1824 value1 value2 = (output3699, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3700 value1823 value1 value2 = (output3700, value1832, value1) := by
  rw [input3700_def, output3700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3632]
  try dsimp only
  rw [child3699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3632_skip, output3699_skip]
  kernel_rfl

theorem node3701_cond_eq
    (child3631 : Flapjack.WordAlloc.removeDeadStructural input3631 value1822 value1 value2 = (output3631, value1823, value1))
    (child3700 : Flapjack.WordAlloc.removeDeadStructural input3700 value1823 value1 value2 = (output3700, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3701 value1822 value1 value2 = (output3701, value1832, value1) := by
  rw [input3701_def, output3701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3631]
  try dsimp only
  rw [child3700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3631_skip, output3700_skip]
  kernel_rfl

theorem node3702_cond_eq
    (child3630 : Flapjack.WordAlloc.removeDeadStructural input3630 value1820 value1 value2 = (output3630, value1822, value1))
    (child3701 : Flapjack.WordAlloc.removeDeadStructural input3701 value1822 value1 value2 = (output3701, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3702 value1820 value1 value2 = (output3702, value1832, value1) := by
  rw [input3702_def, output3702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3630]
  try dsimp only
  rw [child3701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3630_skip, output3701_skip]
  kernel_rfl

theorem node3703_cond_eq
    (child3627 : Flapjack.WordAlloc.removeDeadStructural input3627 value1820 value1 value2 = (output3627, value1820, value1))
    (child3702 : Flapjack.WordAlloc.removeDeadStructural input3702 value1820 value1 value2 = (output3702, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3703 value1820 value1 value2 = (output3703, value1832, value1) := by
  rw [input3703_def, output3703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3627]
  try dsimp only
  rw [child3702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3627_skip, output3702_skip]
  kernel_rfl

theorem node3704_cond_eq
    (child3626 : Flapjack.WordAlloc.removeDeadStructural input3626 value1816 value1 value2 = (output3626, value1820, value1))
    (child3703 : Flapjack.WordAlloc.removeDeadStructural input3703 value1820 value1 value2 = (output3703, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3704 value1816 value1 value2 = (output3704, value1832, value1) := by
  rw [input3704_def, output3704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3626]
  try dsimp only
  rw [child3703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3626_skip, output3703_skip]
  kernel_rfl

theorem node3705_cond_eq
    (child3619 : Flapjack.WordAlloc.removeDeadStructural input3619 value1816 value1 value2 = (output3619, value1816, value1))
    (child3704 : Flapjack.WordAlloc.removeDeadStructural input3704 value1816 value1 value2 = (output3704, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3705 value1816 value1 value2 = (output3705, value1832, value1) := by
  rw [input3705_def, output3705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3619]
  try dsimp only
  rw [child3704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3619_skip, output3704_skip]
  kernel_rfl

theorem node3706_cond_eq
    (child3618 : Flapjack.WordAlloc.removeDeadStructural input3618 value1812 value1 value2 = (output3618, value1816, value1))
    (child3705 : Flapjack.WordAlloc.removeDeadStructural input3705 value1816 value1 value2 = (output3705, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3706 value1812 value1 value2 = (output3706, value1832, value1) := by
  rw [input3706_def, output3706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3618]
  try dsimp only
  rw [child3705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3618_skip, output3705_skip]
  kernel_rfl

theorem node3707_cond_eq
    (child3611 : Flapjack.WordAlloc.removeDeadStructural input3611 value1811 value1 value2 = (output3611, value1812, value1))
    (child3706 : Flapjack.WordAlloc.removeDeadStructural input3706 value1812 value1 value2 = (output3706, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3707 value1811 value1 value2 = (output3707, value1832, value1) := by
  rw [input3707_def, output3707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3611]
  try dsimp only
  rw [child3706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3611_skip, output3706_skip]
  kernel_rfl

theorem node3708_cond_eq
    (child3610 : Flapjack.WordAlloc.removeDeadStructural input3610 value1810 value1 value2 = (output3610, value1811, value1))
    (child3707 : Flapjack.WordAlloc.removeDeadStructural input3707 value1811 value1 value2 = (output3707, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3708 value1810 value1 value2 = (output3708, value1832, value1) := by
  rw [input3708_def, output3708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3610]
  try dsimp only
  rw [child3707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3610_skip, output3707_skip]
  kernel_rfl

theorem node3709_cond_eq
    (child3609 : Flapjack.WordAlloc.removeDeadStructural input3609 value1808 value1 value2 = (output3609, value1810, value1))
    (child3708 : Flapjack.WordAlloc.removeDeadStructural input3708 value1810 value1 value2 = (output3708, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3709 value1808 value1 value2 = (output3709, value1832, value1) := by
  rw [input3709_def, output3709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3609]
  try dsimp only
  rw [child3708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3609_skip, output3708_skip]
  kernel_rfl

theorem node3710_cond_eq
    (child3606 : Flapjack.WordAlloc.removeDeadStructural input3606 value1808 value1 value2 = (output3606, value1808, value1))
    (child3709 : Flapjack.WordAlloc.removeDeadStructural input3709 value1808 value1 value2 = (output3709, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3710 value1808 value1 value2 = (output3710, value1832, value1) := by
  rw [input3710_def, output3710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3606]
  try dsimp only
  rw [child3709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3606_skip, output3709_skip]
  kernel_rfl

theorem node3711_cond_eq
    (child3605 : Flapjack.WordAlloc.removeDeadStructural input3605 value1804 value1 value2 = (output3605, value1808, value1))
    (child3710 : Flapjack.WordAlloc.removeDeadStructural input3710 value1808 value1 value2 = (output3710, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3711 value1804 value1 value2 = (output3711, value1832, value1) := by
  rw [input3711_def, output3711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3605]
  try dsimp only
  rw [child3710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3605_skip, output3710_skip]
  kernel_rfl

theorem node3712_cond_eq
    (child3598 : Flapjack.WordAlloc.removeDeadStructural input3598 value1804 value1 value2 = (output3598, value1804, value1))
    (child3711 : Flapjack.WordAlloc.removeDeadStructural input3711 value1804 value1 value2 = (output3711, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3712 value1804 value1 value2 = (output3712, value1832, value1) := by
  rw [input3712_def, output3712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3598]
  try dsimp only
  rw [child3711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3598_skip, output3711_skip]
  kernel_rfl

theorem node3713_cond_eq
    (child3597 : Flapjack.WordAlloc.removeDeadStructural input3597 value1800 value1 value2 = (output3597, value1804, value1))
    (child3712 : Flapjack.WordAlloc.removeDeadStructural input3712 value1804 value1 value2 = (output3712, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3713 value1800 value1 value2 = (output3713, value1832, value1) := by
  rw [input3713_def, output3713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3597]
  try dsimp only
  rw [child3712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3597_skip, output3712_skip]
  kernel_rfl

theorem node3714_cond_eq
    (child3590 : Flapjack.WordAlloc.removeDeadStructural input3590 value1799 value1 value2 = (output3590, value1800, value1))
    (child3713 : Flapjack.WordAlloc.removeDeadStructural input3713 value1800 value1 value2 = (output3713, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3714 value1799 value1 value2 = (output3714, value1832, value1) := by
  rw [input3714_def, output3714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3590]
  try dsimp only
  rw [child3713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3590_skip, output3713_skip]
  kernel_rfl

theorem node3715_cond_eq
    (child3589 : Flapjack.WordAlloc.removeDeadStructural input3589 value1798 value1 value2 = (output3589, value1799, value1))
    (child3714 : Flapjack.WordAlloc.removeDeadStructural input3714 value1799 value1 value2 = (output3714, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3715 value1798 value1 value2 = (output3715, value1832, value1) := by
  rw [input3715_def, output3715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3589]
  try dsimp only
  rw [child3714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3589_skip, output3714_skip]
  kernel_rfl

theorem node3716_cond_eq
    (child3588 : Flapjack.WordAlloc.removeDeadStructural input3588 value5 value1 value2 = (output3588, value1798, value1))
    (child3715 : Flapjack.WordAlloc.removeDeadStructural input3715 value1798 value1 value2 = (output3715, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3716 value5 value1 value2 = (output3716, value1832, value1) := by
  rw [input3716_def, output3716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3588]
  try dsimp only
  rw [child3715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3588_skip, output3715_skip]
  kernel_rfl

theorem node3717_cond_eq
    (child3585 : Flapjack.WordAlloc.removeDeadStructural input3585 value1793 value1 value2 = (output3585, value5, value1))
    (child3716 : Flapjack.WordAlloc.removeDeadStructural input3716 value5 value1 value2 = (output3716, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3717 value1793 value1 value2 = (output3717, value1832, value1) := by
  rw [input3717_def, output3717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3585]
  try dsimp only
  rw [child3716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3585_skip, output3716_skip]
  kernel_rfl

theorem node3718_cond_eq
    (child3578 : Flapjack.WordAlloc.removeDeadStructural input3578 value1793 value1 value2 = (output3578, value1793, value1))
    (child3717 : Flapjack.WordAlloc.removeDeadStructural input3717 value1793 value1 value2 = (output3717, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3718 value1793 value1 value2 = (output3718, value1832, value1) := by
  rw [input3718_def, output3718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3578]
  try dsimp only
  rw [child3717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3578_skip, output3717_skip]
  kernel_rfl

theorem node3719_cond_eq
    (child3577 : Flapjack.WordAlloc.removeDeadStructural input3577 value1792 value1 value2 = (output3577, value1793, value1))
    (child3718 : Flapjack.WordAlloc.removeDeadStructural input3718 value1793 value1 value2 = (output3718, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3719 value1792 value1 value2 = (output3719, value1832, value1) := by
  rw [input3719_def, output3719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3577]
  try dsimp only
  rw [child3718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3577_skip, output3718_skip]
  kernel_rfl

theorem node3720_cond_eq
    (child3576 : Flapjack.WordAlloc.removeDeadStructural input3576 value5 value1 value2 = (output3576, value1792, value1))
    (child3719 : Flapjack.WordAlloc.removeDeadStructural input3719 value1792 value1 value2 = (output3719, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3720 value5 value1 value2 = (output3720, value1832, value1) := by
  rw [input3720_def, output3720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3576]
  try dsimp only
  rw [child3719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3576_skip, output3719_skip]
  kernel_rfl

theorem node3721_cond_eq
    (child3573 : Flapjack.WordAlloc.removeDeadStructural input3573 value1786 value1 value2 = (output3573, value5, value1))
    (child3720 : Flapjack.WordAlloc.removeDeadStructural input3720 value5 value1 value2 = (output3720, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3721 value1786 value1 value2 = (output3721, value1832, value1) := by
  rw [input3721_def, output3721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3573]
  try dsimp only
  rw [child3720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3573_skip, output3720_skip]
  kernel_rfl

theorem node3722_cond_eq
    (child3564 : Flapjack.WordAlloc.removeDeadStructural input3564 value1786 value1 value2 = (output3564, value1786, value1))
    (child3721 : Flapjack.WordAlloc.removeDeadStructural input3721 value1786 value1 value2 = (output3721, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3722 value1786 value1 value2 = (output3722, value1832, value1) := by
  rw [input3722_def, output3722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3564]
  try dsimp only
  rw [child3721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3564_skip, output3721_skip]
  kernel_rfl

theorem node3723_cond_eq
    (child3563 : Flapjack.WordAlloc.removeDeadStructural input3563 value1785 value1 value2 = (output3563, value1786, value1))
    (child3722 : Flapjack.WordAlloc.removeDeadStructural input3722 value1786 value1 value2 = (output3722, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3723 value1785 value1 value2 = (output3723, value1832, value1) := by
  rw [input3723_def, output3723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3563]
  try dsimp only
  rw [child3722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3563_skip, output3722_skip]
  kernel_rfl

theorem node3724_cond_eq
    (child3562 : Flapjack.WordAlloc.removeDeadStructural input3562 value5 value1 value2 = (output3562, value1785, value1))
    (child3723 : Flapjack.WordAlloc.removeDeadStructural input3723 value1785 value1 value2 = (output3723, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3724 value5 value1 value2 = (output3724, value1832, value1) := by
  rw [input3724_def, output3724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3562]
  try dsimp only
  rw [child3723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3562_skip, output3723_skip]
  kernel_rfl

theorem node3725_cond_eq
    (child3559 : Flapjack.WordAlloc.removeDeadStructural input3559 value1779 value1 value2 = (output3559, value5, value1))
    (child3724 : Flapjack.WordAlloc.removeDeadStructural input3724 value5 value1 value2 = (output3724, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3725 value1779 value1 value2 = (output3725, value1832, value1) := by
  rw [input3725_def, output3725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3559]
  try dsimp only
  rw [child3724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3559_skip, output3724_skip]
  kernel_rfl

theorem node3726_cond_eq
    (child3550 : Flapjack.WordAlloc.removeDeadStructural input3550 value1779 value1 value2 = (output3550, value1779, value1))
    (child3725 : Flapjack.WordAlloc.removeDeadStructural input3725 value1779 value1 value2 = (output3725, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3726 value1779 value1 value2 = (output3726, value1832, value1) := by
  rw [input3726_def, output3726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3550]
  try dsimp only
  rw [child3725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3550_skip, output3725_skip]
  kernel_rfl

theorem node3727_cond_eq
    (child3549 : Flapjack.WordAlloc.removeDeadStructural input3549 value1778 value1 value2 = (output3549, value1779, value1))
    (child3726 : Flapjack.WordAlloc.removeDeadStructural input3726 value1779 value1 value2 = (output3726, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3727 value1778 value1 value2 = (output3727, value1832, value1) := by
  rw [input3727_def, output3727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3549]
  try dsimp only
  rw [child3726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3549_skip, output3726_skip]
  kernel_rfl

theorem node3728_cond_eq
    (child3548 : Flapjack.WordAlloc.removeDeadStructural input3548 value5 value1 value2 = (output3548, value1778, value1))
    (child3727 : Flapjack.WordAlloc.removeDeadStructural input3727 value1778 value1 value2 = (output3727, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3728 value5 value1 value2 = (output3728, value1832, value1) := by
  rw [input3728_def, output3728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3548]
  try dsimp only
  rw [child3727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3548_skip, output3727_skip]
  kernel_rfl

theorem node3729_cond_eq
    (child3545 : Flapjack.WordAlloc.removeDeadStructural input3545 value1772 value1 value2 = (output3545, value5, value1))
    (child3728 : Flapjack.WordAlloc.removeDeadStructural input3728 value5 value1 value2 = (output3728, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3729 value1772 value1 value2 = (output3729, value1832, value1) := by
  rw [input3729_def, output3729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3545]
  try dsimp only
  rw [child3728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3545_skip, output3728_skip]
  kernel_rfl

theorem node3730_cond_eq
    (child3536 : Flapjack.WordAlloc.removeDeadStructural input3536 value1772 value1 value2 = (output3536, value1772, value1))
    (child3729 : Flapjack.WordAlloc.removeDeadStructural input3729 value1772 value1 value2 = (output3729, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3730 value1772 value1 value2 = (output3730, value1832, value1) := by
  rw [input3730_def, output3730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3536]
  try dsimp only
  rw [child3729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3536_skip, output3729_skip]
  kernel_rfl

theorem node3731_cond_eq
    (child3535 : Flapjack.WordAlloc.removeDeadStructural input3535 value1771 value1 value2 = (output3535, value1772, value1))
    (child3730 : Flapjack.WordAlloc.removeDeadStructural input3730 value1772 value1 value2 = (output3730, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3731 value1771 value1 value2 = (output3731, value1832, value1) := by
  rw [input3731_def, output3731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3535]
  try dsimp only
  rw [child3730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3535_skip, output3730_skip]
  kernel_rfl

theorem node3732_cond_eq
    (child3534 : Flapjack.WordAlloc.removeDeadStructural input3534 value5 value1 value2 = (output3534, value1771, value1))
    (child3731 : Flapjack.WordAlloc.removeDeadStructural input3731 value1771 value1 value2 = (output3731, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3732 value5 value1 value2 = (output3732, value1832, value1) := by
  rw [input3732_def, output3732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3534]
  try dsimp only
  rw [child3731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3534_skip, output3731_skip]
  kernel_rfl

theorem node3733_cond_eq
    (child3531 : Flapjack.WordAlloc.removeDeadStructural input3531 value1765 value1 value2 = (output3531, value5, value1))
    (child3732 : Flapjack.WordAlloc.removeDeadStructural input3732 value5 value1 value2 = (output3732, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3733 value1765 value1 value2 = (output3733, value1832, value1) := by
  rw [input3733_def, output3733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3531]
  try dsimp only
  rw [child3732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3531_skip, output3732_skip]
  kernel_rfl

theorem node3734_cond_eq
    (child3522 : Flapjack.WordAlloc.removeDeadStructural input3522 value1765 value1 value2 = (output3522, value1765, value1))
    (child3733 : Flapjack.WordAlloc.removeDeadStructural input3733 value1765 value1 value2 = (output3733, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3734 value1765 value1 value2 = (output3734, value1832, value1) := by
  rw [input3734_def, output3734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3522]
  try dsimp only
  rw [child3733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3522_skip, output3733_skip]
  kernel_rfl

theorem node3735_cond_eq
    (child3521 : Flapjack.WordAlloc.removeDeadStructural input3521 value1764 value1 value2 = (output3521, value1765, value1))
    (child3734 : Flapjack.WordAlloc.removeDeadStructural input3734 value1765 value1 value2 = (output3734, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3735 value1764 value1 value2 = (output3735, value1832, value1) := by
  rw [input3735_def, output3735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3521]
  try dsimp only
  rw [child3734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3521_skip, output3734_skip]
  kernel_rfl

theorem node3736_cond_eq
    (child3520 : Flapjack.WordAlloc.removeDeadStructural input3520 value5 value1 value2 = (output3520, value1764, value1))
    (child3735 : Flapjack.WordAlloc.removeDeadStructural input3735 value1764 value1 value2 = (output3735, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3736 value5 value1 value2 = (output3736, value1832, value1) := by
  rw [input3736_def, output3736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3520]
  try dsimp only
  rw [child3735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3520_skip, output3735_skip]
  kernel_rfl

theorem node3737_cond_eq
    (child3517 : Flapjack.WordAlloc.removeDeadStructural input3517 value1758 value1 value2 = (output3517, value5, value1))
    (child3736 : Flapjack.WordAlloc.removeDeadStructural input3736 value5 value1 value2 = (output3736, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3737 value1758 value1 value2 = (output3737, value1832, value1) := by
  rw [input3737_def, output3737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3517]
  try dsimp only
  rw [child3736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3517_skip, output3736_skip]
  kernel_rfl

theorem node3738_cond_eq
    (child3508 : Flapjack.WordAlloc.removeDeadStructural input3508 value1758 value1 value2 = (output3508, value1758, value1))
    (child3737 : Flapjack.WordAlloc.removeDeadStructural input3737 value1758 value1 value2 = (output3737, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3738 value1758 value1 value2 = (output3738, value1832, value1) := by
  rw [input3738_def, output3738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3508]
  try dsimp only
  rw [child3737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3508_skip, output3737_skip]
  kernel_rfl

theorem node3739_cond_eq
    (child3507 : Flapjack.WordAlloc.removeDeadStructural input3507 value1757 value1 value2 = (output3507, value1758, value1))
    (child3738 : Flapjack.WordAlloc.removeDeadStructural input3738 value1758 value1 value2 = (output3738, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3739 value1757 value1 value2 = (output3739, value1832, value1) := by
  rw [input3739_def, output3739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3507]
  try dsimp only
  rw [child3738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3507_skip, output3738_skip]
  kernel_rfl

theorem node3740_cond_eq
    (child3506 : Flapjack.WordAlloc.removeDeadStructural input3506 value5 value1 value2 = (output3506, value1757, value1))
    (child3739 : Flapjack.WordAlloc.removeDeadStructural input3739 value1757 value1 value2 = (output3739, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3740 value5 value1 value2 = (output3740, value1832, value1) := by
  rw [input3740_def, output3740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3506]
  try dsimp only
  rw [child3739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3506_skip, output3739_skip]
  kernel_rfl

theorem node3741_cond_eq
    (child3503 : Flapjack.WordAlloc.removeDeadStructural input3503 value1751 value1 value2 = (output3503, value5, value1))
    (child3740 : Flapjack.WordAlloc.removeDeadStructural input3740 value5 value1 value2 = (output3740, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3741 value1751 value1 value2 = (output3741, value1832, value1) := by
  rw [input3741_def, output3741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3503]
  try dsimp only
  rw [child3740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3503_skip, output3740_skip]
  kernel_rfl

theorem node3742_cond_eq
    (child3494 : Flapjack.WordAlloc.removeDeadStructural input3494 value1751 value1 value2 = (output3494, value1751, value1))
    (child3741 : Flapjack.WordAlloc.removeDeadStructural input3741 value1751 value1 value2 = (output3741, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3742 value1751 value1 value2 = (output3742, value1832, value1) := by
  rw [input3742_def, output3742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3494]
  try dsimp only
  rw [child3741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3494_skip, output3741_skip]
  kernel_rfl

theorem node3743_cond_eq
    (child3493 : Flapjack.WordAlloc.removeDeadStructural input3493 value1750 value1 value2 = (output3493, value1751, value1))
    (child3742 : Flapjack.WordAlloc.removeDeadStructural input3742 value1751 value1 value2 = (output3742, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3743 value1750 value1 value2 = (output3743, value1832, value1) := by
  rw [input3743_def, output3743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3493]
  try dsimp only
  rw [child3742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3493_skip, output3742_skip]
  kernel_rfl

theorem node3744_cond_eq
    (child3492 : Flapjack.WordAlloc.removeDeadStructural input3492 value5 value1 value2 = (output3492, value1750, value1))
    (child3743 : Flapjack.WordAlloc.removeDeadStructural input3743 value1750 value1 value2 = (output3743, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3744 value5 value1 value2 = (output3744, value1832, value1) := by
  rw [input3744_def, output3744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3492]
  try dsimp only
  rw [child3743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3492_skip, output3743_skip]
  kernel_rfl

theorem node3745_cond_eq
    (child3489 : Flapjack.WordAlloc.removeDeadStructural input3489 value1744 value1 value2 = (output3489, value5, value1))
    (child3744 : Flapjack.WordAlloc.removeDeadStructural input3744 value5 value1 value2 = (output3744, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3745 value1744 value1 value2 = (output3745, value1832, value1) := by
  rw [input3745_def, output3745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3489]
  try dsimp only
  rw [child3744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3489_skip, output3744_skip]
  kernel_rfl

theorem node3746_cond_eq
    (child3480 : Flapjack.WordAlloc.removeDeadStructural input3480 value1744 value1 value2 = (output3480, value1744, value1))
    (child3745 : Flapjack.WordAlloc.removeDeadStructural input3745 value1744 value1 value2 = (output3745, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3746 value1744 value1 value2 = (output3746, value1832, value1) := by
  rw [input3746_def, output3746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3480]
  try dsimp only
  rw [child3745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3480_skip, output3745_skip]
  kernel_rfl

theorem node3747_cond_eq
    (child3479 : Flapjack.WordAlloc.removeDeadStructural input3479 value1743 value1 value2 = (output3479, value1744, value1))
    (child3746 : Flapjack.WordAlloc.removeDeadStructural input3746 value1744 value1 value2 = (output3746, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3747 value1743 value1 value2 = (output3747, value1832, value1) := by
  rw [input3747_def, output3747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3479]
  try dsimp only
  rw [child3746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3479_skip, output3746_skip]
  kernel_rfl

theorem node3748_cond_eq
    (child3478 : Flapjack.WordAlloc.removeDeadStructural input3478 value5 value1 value2 = (output3478, value1743, value1))
    (child3747 : Flapjack.WordAlloc.removeDeadStructural input3747 value1743 value1 value2 = (output3747, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3748 value5 value1 value2 = (output3748, value1832, value1) := by
  rw [input3748_def, output3748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3478]
  try dsimp only
  rw [child3747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3478_skip, output3747_skip]
  kernel_rfl

theorem node3749_cond_eq
    (child3475 : Flapjack.WordAlloc.removeDeadStructural input3475 value1737 value1 value2 = (output3475, value5, value1))
    (child3748 : Flapjack.WordAlloc.removeDeadStructural input3748 value5 value1 value2 = (output3748, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3749 value1737 value1 value2 = (output3749, value1832, value1) := by
  rw [input3749_def, output3749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3475]
  try dsimp only
  rw [child3748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3475_skip, output3748_skip]
  kernel_rfl

theorem node3750_cond_eq
    (child3466 : Flapjack.WordAlloc.removeDeadStructural input3466 value1737 value1 value2 = (output3466, value1737, value1))
    (child3749 : Flapjack.WordAlloc.removeDeadStructural input3749 value1737 value1 value2 = (output3749, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3750 value1737 value1 value2 = (output3750, value1832, value1) := by
  rw [input3750_def, output3750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3466]
  try dsimp only
  rw [child3749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3466_skip, output3749_skip]
  kernel_rfl

theorem node3751_cond_eq
    (child3465 : Flapjack.WordAlloc.removeDeadStructural input3465 value1736 value1 value2 = (output3465, value1737, value1))
    (child3750 : Flapjack.WordAlloc.removeDeadStructural input3750 value1737 value1 value2 = (output3750, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3751 value1736 value1 value2 = (output3751, value1832, value1) := by
  rw [input3751_def, output3751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3465]
  try dsimp only
  rw [child3750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3465_skip, output3750_skip]
  kernel_rfl

theorem node3752_cond_eq
    (child3464 : Flapjack.WordAlloc.removeDeadStructural input3464 value5 value1 value2 = (output3464, value1736, value1))
    (child3751 : Flapjack.WordAlloc.removeDeadStructural input3751 value1736 value1 value2 = (output3751, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3752 value5 value1 value2 = (output3752, value1832, value1) := by
  rw [input3752_def, output3752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3464]
  try dsimp only
  rw [child3751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3464_skip, output3751_skip]
  kernel_rfl

theorem node3753_cond_eq
    (child3461 : Flapjack.WordAlloc.removeDeadStructural input3461 value1730 value1 value2 = (output3461, value5, value1))
    (child3752 : Flapjack.WordAlloc.removeDeadStructural input3752 value5 value1 value2 = (output3752, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3753 value1730 value1 value2 = (output3753, value1832, value1) := by
  rw [input3753_def, output3753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3461]
  try dsimp only
  rw [child3752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3461_skip, output3752_skip]
  kernel_rfl

theorem node3754_cond_eq
    (child3452 : Flapjack.WordAlloc.removeDeadStructural input3452 value1730 value1 value2 = (output3452, value1730, value1))
    (child3753 : Flapjack.WordAlloc.removeDeadStructural input3753 value1730 value1 value2 = (output3753, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3754 value1730 value1 value2 = (output3754, value1832, value1) := by
  rw [input3754_def, output3754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3452]
  try dsimp only
  rw [child3753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3452_skip, output3753_skip]
  kernel_rfl

theorem node3755_cond_eq
    (child3451 : Flapjack.WordAlloc.removeDeadStructural input3451 value1729 value1 value2 = (output3451, value1730, value1))
    (child3754 : Flapjack.WordAlloc.removeDeadStructural input3754 value1730 value1 value2 = (output3754, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3755 value1729 value1 value2 = (output3755, value1832, value1) := by
  rw [input3755_def, output3755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3451]
  try dsimp only
  rw [child3754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3451_skip, output3754_skip]
  kernel_rfl

theorem node3756_cond_eq
    (child3450 : Flapjack.WordAlloc.removeDeadStructural input3450 value5 value1 value2 = (output3450, value1729, value1))
    (child3755 : Flapjack.WordAlloc.removeDeadStructural input3755 value1729 value1 value2 = (output3755, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3756 value5 value1 value2 = (output3756, value1832, value1) := by
  rw [input3756_def, output3756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3450]
  try dsimp only
  rw [child3755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3450_skip, output3755_skip]
  kernel_rfl

theorem node3757_cond_eq
    (child3447 : Flapjack.WordAlloc.removeDeadStructural input3447 value1723 value1 value2 = (output3447, value5, value1))
    (child3756 : Flapjack.WordAlloc.removeDeadStructural input3756 value5 value1 value2 = (output3756, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3757 value1723 value1 value2 = (output3757, value1832, value1) := by
  rw [input3757_def, output3757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3447]
  try dsimp only
  rw [child3756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3447_skip, output3756_skip]
  kernel_rfl

theorem node3758_cond_eq
    (child3438 : Flapjack.WordAlloc.removeDeadStructural input3438 value1723 value1 value2 = (output3438, value1723, value1))
    (child3757 : Flapjack.WordAlloc.removeDeadStructural input3757 value1723 value1 value2 = (output3757, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3758 value1723 value1 value2 = (output3758, value1832, value1) := by
  rw [input3758_def, output3758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3438]
  try dsimp only
  rw [child3757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3438_skip, output3757_skip]
  kernel_rfl

theorem node3759_cond_eq
    (child3437 : Flapjack.WordAlloc.removeDeadStructural input3437 value1722 value1 value2 = (output3437, value1723, value1))
    (child3758 : Flapjack.WordAlloc.removeDeadStructural input3758 value1723 value1 value2 = (output3758, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3759 value1722 value1 value2 = (output3759, value1832, value1) := by
  rw [input3759_def, output3759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3437]
  try dsimp only
  rw [child3758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3437_skip, output3758_skip]
  kernel_rfl

theorem node3760_cond_eq
    (child3436 : Flapjack.WordAlloc.removeDeadStructural input3436 value5 value1 value2 = (output3436, value1722, value1))
    (child3759 : Flapjack.WordAlloc.removeDeadStructural input3759 value1722 value1 value2 = (output3759, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3760 value5 value1 value2 = (output3760, value1832, value1) := by
  rw [input3760_def, output3760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3436]
  try dsimp only
  rw [child3759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3436_skip, output3759_skip]
  kernel_rfl

theorem node3761_cond_eq
    (child3433 : Flapjack.WordAlloc.removeDeadStructural input3433 value1716 value1 value2 = (output3433, value5, value1))
    (child3760 : Flapjack.WordAlloc.removeDeadStructural input3760 value5 value1 value2 = (output3760, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3761 value1716 value1 value2 = (output3761, value1832, value1) := by
  rw [input3761_def, output3761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3433]
  try dsimp only
  rw [child3760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3433_skip, output3760_skip]
  kernel_rfl

theorem node3762_cond_eq
    (child3424 : Flapjack.WordAlloc.removeDeadStructural input3424 value1716 value1 value2 = (output3424, value1716, value1))
    (child3761 : Flapjack.WordAlloc.removeDeadStructural input3761 value1716 value1 value2 = (output3761, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3762 value1716 value1 value2 = (output3762, value1832, value1) := by
  rw [input3762_def, output3762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3424]
  try dsimp only
  rw [child3761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3424_skip, output3761_skip]
  kernel_rfl

theorem node3763_cond_eq
    (child3423 : Flapjack.WordAlloc.removeDeadStructural input3423 value1715 value1 value2 = (output3423, value1716, value1))
    (child3762 : Flapjack.WordAlloc.removeDeadStructural input3762 value1716 value1 value2 = (output3762, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3763 value1715 value1 value2 = (output3763, value1832, value1) := by
  rw [input3763_def, output3763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3423]
  try dsimp only
  rw [child3762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3423_skip, output3762_skip]
  kernel_rfl

theorem node3764_cond_eq
    (child3422 : Flapjack.WordAlloc.removeDeadStructural input3422 value5 value1 value2 = (output3422, value1715, value1))
    (child3763 : Flapjack.WordAlloc.removeDeadStructural input3763 value1715 value1 value2 = (output3763, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3764 value5 value1 value2 = (output3764, value1832, value1) := by
  rw [input3764_def, output3764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3422]
  try dsimp only
  rw [child3763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3422_skip, output3763_skip]
  kernel_rfl

theorem node3765_cond_eq
    (child3419 : Flapjack.WordAlloc.removeDeadStructural input3419 value1709 value1 value2 = (output3419, value5, value1))
    (child3764 : Flapjack.WordAlloc.removeDeadStructural input3764 value5 value1 value2 = (output3764, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3765 value1709 value1 value2 = (output3765, value1832, value1) := by
  rw [input3765_def, output3765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3419]
  try dsimp only
  rw [child3764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3419_skip, output3764_skip]
  kernel_rfl

theorem node3766_cond_eq
    (child3410 : Flapjack.WordAlloc.removeDeadStructural input3410 value1709 value1 value2 = (output3410, value1709, value1))
    (child3765 : Flapjack.WordAlloc.removeDeadStructural input3765 value1709 value1 value2 = (output3765, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3766 value1709 value1 value2 = (output3766, value1832, value1) := by
  rw [input3766_def, output3766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3410]
  try dsimp only
  rw [child3765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3410_skip, output3765_skip]
  kernel_rfl

theorem node3767_cond_eq
    (child3409 : Flapjack.WordAlloc.removeDeadStructural input3409 value1708 value1 value2 = (output3409, value1709, value1))
    (child3766 : Flapjack.WordAlloc.removeDeadStructural input3766 value1709 value1 value2 = (output3766, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3767 value1708 value1 value2 = (output3767, value1832, value1) := by
  rw [input3767_def, output3767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3409]
  try dsimp only
  rw [child3766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3409_skip, output3766_skip]
  kernel_rfl

theorem node3768_cond_eq
    (child3408 : Flapjack.WordAlloc.removeDeadStructural input3408 value5 value1 value2 = (output3408, value1708, value1))
    (child3767 : Flapjack.WordAlloc.removeDeadStructural input3767 value1708 value1 value2 = (output3767, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3768 value5 value1 value2 = (output3768, value1832, value1) := by
  rw [input3768_def, output3768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3408]
  try dsimp only
  rw [child3767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3408_skip, output3767_skip]
  kernel_rfl

theorem node3769_cond_eq
    (child3405 : Flapjack.WordAlloc.removeDeadStructural input3405 value1702 value1 value2 = (output3405, value5, value1))
    (child3768 : Flapjack.WordAlloc.removeDeadStructural input3768 value5 value1 value2 = (output3768, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3769 value1702 value1 value2 = (output3769, value1832, value1) := by
  rw [input3769_def, output3769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3405]
  try dsimp only
  rw [child3768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3405_skip, output3768_skip]
  kernel_rfl

theorem node3770_cond_eq
    (child3396 : Flapjack.WordAlloc.removeDeadStructural input3396 value1702 value1 value2 = (output3396, value1702, value1))
    (child3769 : Flapjack.WordAlloc.removeDeadStructural input3769 value1702 value1 value2 = (output3769, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3770 value1702 value1 value2 = (output3770, value1832, value1) := by
  rw [input3770_def, output3770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3396]
  try dsimp only
  rw [child3769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3396_skip, output3769_skip]
  kernel_rfl

theorem node3771_cond_eq
    (child3395 : Flapjack.WordAlloc.removeDeadStructural input3395 value1701 value1 value2 = (output3395, value1702, value1))
    (child3770 : Flapjack.WordAlloc.removeDeadStructural input3770 value1702 value1 value2 = (output3770, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3771 value1701 value1 value2 = (output3771, value1832, value1) := by
  rw [input3771_def, output3771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3395]
  try dsimp only
  rw [child3770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3395_skip, output3770_skip]
  kernel_rfl

theorem node3772_cond_eq
    (child3394 : Flapjack.WordAlloc.removeDeadStructural input3394 value5 value1 value2 = (output3394, value1701, value1))
    (child3771 : Flapjack.WordAlloc.removeDeadStructural input3771 value1701 value1 value2 = (output3771, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3772 value5 value1 value2 = (output3772, value1832, value1) := by
  rw [input3772_def, output3772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3394]
  try dsimp only
  rw [child3771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3394_skip, output3771_skip]
  kernel_rfl

theorem node3773_cond_eq
    (child3391 : Flapjack.WordAlloc.removeDeadStructural input3391 value1695 value1 value2 = (output3391, value5, value1))
    (child3772 : Flapjack.WordAlloc.removeDeadStructural input3772 value5 value1 value2 = (output3772, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3773 value1695 value1 value2 = (output3773, value1832, value1) := by
  rw [input3773_def, output3773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3391]
  try dsimp only
  rw [child3772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3391_skip, output3772_skip]
  kernel_rfl

theorem node3774_cond_eq
    (child3382 : Flapjack.WordAlloc.removeDeadStructural input3382 value1695 value1 value2 = (output3382, value1695, value1))
    (child3773 : Flapjack.WordAlloc.removeDeadStructural input3773 value1695 value1 value2 = (output3773, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3774 value1695 value1 value2 = (output3774, value1832, value1) := by
  rw [input3774_def, output3774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3382]
  try dsimp only
  rw [child3773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3382_skip, output3773_skip]
  kernel_rfl

theorem node3775_cond_eq
    (child3381 : Flapjack.WordAlloc.removeDeadStructural input3381 value1694 value1 value2 = (output3381, value1695, value1))
    (child3774 : Flapjack.WordAlloc.removeDeadStructural input3774 value1695 value1 value2 = (output3774, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3775 value1694 value1 value2 = (output3775, value1832, value1) := by
  rw [input3775_def, output3775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3381]
  try dsimp only
  rw [child3774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3381_skip, output3774_skip]
  kernel_rfl

theorem node3776_cond_eq
    (child3380 : Flapjack.WordAlloc.removeDeadStructural input3380 value5 value1 value2 = (output3380, value1694, value1))
    (child3775 : Flapjack.WordAlloc.removeDeadStructural input3775 value1694 value1 value2 = (output3775, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3776 value5 value1 value2 = (output3776, value1832, value1) := by
  rw [input3776_def, output3776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3380]
  try dsimp only
  rw [child3775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3380_skip, output3775_skip]
  kernel_rfl

theorem node3777_cond_eq
    (child3377 : Flapjack.WordAlloc.removeDeadStructural input3377 value1688 value1 value2 = (output3377, value5, value1))
    (child3776 : Flapjack.WordAlloc.removeDeadStructural input3776 value5 value1 value2 = (output3776, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3777 value1688 value1 value2 = (output3777, value1832, value1) := by
  rw [input3777_def, output3777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3377]
  try dsimp only
  rw [child3776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3377_skip, output3776_skip]
  kernel_rfl

theorem node3778_cond_eq
    (child3368 : Flapjack.WordAlloc.removeDeadStructural input3368 value1688 value1 value2 = (output3368, value1688, value1))
    (child3777 : Flapjack.WordAlloc.removeDeadStructural input3777 value1688 value1 value2 = (output3777, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3778 value1688 value1 value2 = (output3778, value1832, value1) := by
  rw [input3778_def, output3778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3368]
  try dsimp only
  rw [child3777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3368_skip, output3777_skip]
  kernel_rfl

theorem node3779_cond_eq
    (child3367 : Flapjack.WordAlloc.removeDeadStructural input3367 value1687 value1 value2 = (output3367, value1688, value1))
    (child3778 : Flapjack.WordAlloc.removeDeadStructural input3778 value1688 value1 value2 = (output3778, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3779 value1687 value1 value2 = (output3779, value1832, value1) := by
  rw [input3779_def, output3779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3367]
  try dsimp only
  rw [child3778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3367_skip, output3778_skip]
  kernel_rfl

theorem node3780_cond_eq
    (child3366 : Flapjack.WordAlloc.removeDeadStructural input3366 value5 value1 value2 = (output3366, value1687, value1))
    (child3779 : Flapjack.WordAlloc.removeDeadStructural input3779 value1687 value1 value2 = (output3779, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3780 value5 value1 value2 = (output3780, value1832, value1) := by
  rw [input3780_def, output3780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3366]
  try dsimp only
  rw [child3779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3366_skip, output3779_skip]
  kernel_rfl

theorem node3781_cond_eq
    (child3363 : Flapjack.WordAlloc.removeDeadStructural input3363 value1681 value1 value2 = (output3363, value5, value1))
    (child3780 : Flapjack.WordAlloc.removeDeadStructural input3780 value5 value1 value2 = (output3780, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3781 value1681 value1 value2 = (output3781, value1832, value1) := by
  rw [input3781_def, output3781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3363]
  try dsimp only
  rw [child3780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3363_skip, output3780_skip]
  kernel_rfl

theorem node3782_cond_eq
    (child3354 : Flapjack.WordAlloc.removeDeadStructural input3354 value1681 value1 value2 = (output3354, value1681, value1))
    (child3781 : Flapjack.WordAlloc.removeDeadStructural input3781 value1681 value1 value2 = (output3781, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3782 value1681 value1 value2 = (output3782, value1832, value1) := by
  rw [input3782_def, output3782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3354]
  try dsimp only
  rw [child3781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3354_skip, output3781_skip]
  kernel_rfl

theorem node3783_cond_eq
    (child3353 : Flapjack.WordAlloc.removeDeadStructural input3353 value1680 value1 value2 = (output3353, value1681, value1))
    (child3782 : Flapjack.WordAlloc.removeDeadStructural input3782 value1681 value1 value2 = (output3782, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3783 value1680 value1 value2 = (output3783, value1832, value1) := by
  rw [input3783_def, output3783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3353]
  try dsimp only
  rw [child3782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3353_skip, output3782_skip]
  kernel_rfl

theorem node3784_cond_eq
    (child3352 : Flapjack.WordAlloc.removeDeadStructural input3352 value5 value1 value2 = (output3352, value1680, value1))
    (child3783 : Flapjack.WordAlloc.removeDeadStructural input3783 value1680 value1 value2 = (output3783, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3784 value5 value1 value2 = (output3784, value1832, value1) := by
  rw [input3784_def, output3784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3352]
  try dsimp only
  rw [child3783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3352_skip, output3783_skip]
  kernel_rfl

theorem node3785_cond_eq
    (child3349 : Flapjack.WordAlloc.removeDeadStructural input3349 value1674 value1 value2 = (output3349, value5, value1))
    (child3784 : Flapjack.WordAlloc.removeDeadStructural input3784 value5 value1 value2 = (output3784, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3785 value1674 value1 value2 = (output3785, value1832, value1) := by
  rw [input3785_def, output3785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3349]
  try dsimp only
  rw [child3784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3349_skip, output3784_skip]
  kernel_rfl

theorem node3786_cond_eq
    (child3340 : Flapjack.WordAlloc.removeDeadStructural input3340 value1674 value1 value2 = (output3340, value1674, value1))
    (child3785 : Flapjack.WordAlloc.removeDeadStructural input3785 value1674 value1 value2 = (output3785, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3786 value1674 value1 value2 = (output3786, value1832, value1) := by
  rw [input3786_def, output3786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3340]
  try dsimp only
  rw [child3785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3340_skip, output3785_skip]
  kernel_rfl

theorem node3787_cond_eq
    (child3339 : Flapjack.WordAlloc.removeDeadStructural input3339 value1673 value1 value2 = (output3339, value1674, value1))
    (child3786 : Flapjack.WordAlloc.removeDeadStructural input3786 value1674 value1 value2 = (output3786, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3787 value1673 value1 value2 = (output3787, value1832, value1) := by
  rw [input3787_def, output3787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3339]
  try dsimp only
  rw [child3786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3339_skip, output3786_skip]
  kernel_rfl

theorem node3788_cond_eq
    (child3338 : Flapjack.WordAlloc.removeDeadStructural input3338 value5 value1 value2 = (output3338, value1673, value1))
    (child3787 : Flapjack.WordAlloc.removeDeadStructural input3787 value1673 value1 value2 = (output3787, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3788 value5 value1 value2 = (output3788, value1832, value1) := by
  rw [input3788_def, output3788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3338]
  try dsimp only
  rw [child3787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3338_skip, output3787_skip]
  kernel_rfl

theorem node3789_cond_eq
    (child3335 : Flapjack.WordAlloc.removeDeadStructural input3335 value1667 value1 value2 = (output3335, value5, value1))
    (child3788 : Flapjack.WordAlloc.removeDeadStructural input3788 value5 value1 value2 = (output3788, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3789 value1667 value1 value2 = (output3789, value1832, value1) := by
  rw [input3789_def, output3789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3335]
  try dsimp only
  rw [child3788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3335_skip, output3788_skip]
  kernel_rfl

theorem node3790_cond_eq
    (child3326 : Flapjack.WordAlloc.removeDeadStructural input3326 value1667 value1 value2 = (output3326, value1667, value1))
    (child3789 : Flapjack.WordAlloc.removeDeadStructural input3789 value1667 value1 value2 = (output3789, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3790 value1667 value1 value2 = (output3790, value1832, value1) := by
  rw [input3790_def, output3790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3326]
  try dsimp only
  rw [child3789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3326_skip, output3789_skip]
  kernel_rfl

theorem node3791_cond_eq
    (child3325 : Flapjack.WordAlloc.removeDeadStructural input3325 value1666 value1 value2 = (output3325, value1667, value1))
    (child3790 : Flapjack.WordAlloc.removeDeadStructural input3790 value1667 value1 value2 = (output3790, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3791 value1666 value1 value2 = (output3791, value1832, value1) := by
  rw [input3791_def, output3791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3325]
  try dsimp only
  rw [child3790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3325_skip, output3790_skip]
  kernel_rfl

theorem node3792_cond_eq
    (child3324 : Flapjack.WordAlloc.removeDeadStructural input3324 value5 value1 value2 = (output3324, value1666, value1))
    (child3791 : Flapjack.WordAlloc.removeDeadStructural input3791 value1666 value1 value2 = (output3791, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3792 value5 value1 value2 = (output3792, value1832, value1) := by
  rw [input3792_def, output3792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3324]
  try dsimp only
  rw [child3791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3324_skip, output3791_skip]
  kernel_rfl

theorem node3793_cond_eq
    (child3321 : Flapjack.WordAlloc.removeDeadStructural input3321 value1660 value1 value2 = (output3321, value5, value1))
    (child3792 : Flapjack.WordAlloc.removeDeadStructural input3792 value5 value1 value2 = (output3792, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3793 value1660 value1 value2 = (output3793, value1832, value1) := by
  rw [input3793_def, output3793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3321]
  try dsimp only
  rw [child3792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3321_skip, output3792_skip]
  kernel_rfl

theorem node3794_cond_eq
    (child3312 : Flapjack.WordAlloc.removeDeadStructural input3312 value1660 value1 value2 = (output3312, value1660, value1))
    (child3793 : Flapjack.WordAlloc.removeDeadStructural input3793 value1660 value1 value2 = (output3793, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3794 value1660 value1 value2 = (output3794, value1832, value1) := by
  rw [input3794_def, output3794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3312]
  try dsimp only
  rw [child3793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3312_skip, output3793_skip]
  kernel_rfl

theorem node3795_cond_eq
    (child3311 : Flapjack.WordAlloc.removeDeadStructural input3311 value1659 value1 value2 = (output3311, value1660, value1))
    (child3794 : Flapjack.WordAlloc.removeDeadStructural input3794 value1660 value1 value2 = (output3794, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3795 value1659 value1 value2 = (output3795, value1832, value1) := by
  rw [input3795_def, output3795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3311]
  try dsimp only
  rw [child3794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3311_skip, output3794_skip]
  kernel_rfl

theorem node3796_cond_eq
    (child3310 : Flapjack.WordAlloc.removeDeadStructural input3310 value5 value1 value2 = (output3310, value1659, value1))
    (child3795 : Flapjack.WordAlloc.removeDeadStructural input3795 value1659 value1 value2 = (output3795, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3796 value5 value1 value2 = (output3796, value1832, value1) := by
  rw [input3796_def, output3796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3310]
  try dsimp only
  rw [child3795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3310_skip, output3795_skip]
  kernel_rfl

theorem node3797_cond_eq
    (child3307 : Flapjack.WordAlloc.removeDeadStructural input3307 value1653 value1 value2 = (output3307, value5, value1))
    (child3796 : Flapjack.WordAlloc.removeDeadStructural input3796 value5 value1 value2 = (output3796, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3797 value1653 value1 value2 = (output3797, value1832, value1) := by
  rw [input3797_def, output3797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3307]
  try dsimp only
  rw [child3796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3307_skip, output3796_skip]
  kernel_rfl

theorem node3798_cond_eq
    (child3298 : Flapjack.WordAlloc.removeDeadStructural input3298 value1653 value1 value2 = (output3298, value1653, value1))
    (child3797 : Flapjack.WordAlloc.removeDeadStructural input3797 value1653 value1 value2 = (output3797, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3798 value1653 value1 value2 = (output3798, value1832, value1) := by
  rw [input3798_def, output3798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3298]
  try dsimp only
  rw [child3797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3298_skip, output3797_skip]
  kernel_rfl

theorem node3799_cond_eq
    (child3297 : Flapjack.WordAlloc.removeDeadStructural input3297 value1652 value1 value2 = (output3297, value1653, value1))
    (child3798 : Flapjack.WordAlloc.removeDeadStructural input3798 value1653 value1 value2 = (output3798, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3799 value1652 value1 value2 = (output3799, value1832, value1) := by
  rw [input3799_def, output3799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3297]
  try dsimp only
  rw [child3798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3297_skip, output3798_skip]
  kernel_rfl

theorem node3800_cond_eq
    (child3296 : Flapjack.WordAlloc.removeDeadStructural input3296 value5 value1 value2 = (output3296, value1652, value1))
    (child3799 : Flapjack.WordAlloc.removeDeadStructural input3799 value1652 value1 value2 = (output3799, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3800 value5 value1 value2 = (output3800, value1832, value1) := by
  rw [input3800_def, output3800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3296]
  try dsimp only
  rw [child3799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3296_skip, output3799_skip]
  kernel_rfl

theorem node3801_cond_eq
    (child3293 : Flapjack.WordAlloc.removeDeadStructural input3293 value1646 value1 value2 = (output3293, value5, value1))
    (child3800 : Flapjack.WordAlloc.removeDeadStructural input3800 value5 value1 value2 = (output3800, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3801 value1646 value1 value2 = (output3801, value1832, value1) := by
  rw [input3801_def, output3801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3293]
  try dsimp only
  rw [child3800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3293_skip, output3800_skip]
  kernel_rfl

theorem node3802_cond_eq
    (child3284 : Flapjack.WordAlloc.removeDeadStructural input3284 value1646 value1 value2 = (output3284, value1646, value1))
    (child3801 : Flapjack.WordAlloc.removeDeadStructural input3801 value1646 value1 value2 = (output3801, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3802 value1646 value1 value2 = (output3802, value1832, value1) := by
  rw [input3802_def, output3802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3284]
  try dsimp only
  rw [child3801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3284_skip, output3801_skip]
  kernel_rfl

theorem node3803_cond_eq
    (child3283 : Flapjack.WordAlloc.removeDeadStructural input3283 value1645 value1 value2 = (output3283, value1646, value1))
    (child3802 : Flapjack.WordAlloc.removeDeadStructural input3802 value1646 value1 value2 = (output3802, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3803 value1645 value1 value2 = (output3803, value1832, value1) := by
  rw [input3803_def, output3803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3283]
  try dsimp only
  rw [child3802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3283_skip, output3802_skip]
  kernel_rfl

theorem node3804_cond_eq
    (child3282 : Flapjack.WordAlloc.removeDeadStructural input3282 value5 value1 value2 = (output3282, value1645, value1))
    (child3803 : Flapjack.WordAlloc.removeDeadStructural input3803 value1645 value1 value2 = (output3803, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3804 value5 value1 value2 = (output3804, value1832, value1) := by
  rw [input3804_def, output3804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3282]
  try dsimp only
  rw [child3803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3282_skip, output3803_skip]
  kernel_rfl

theorem node3805_cond_eq
    (child3279 : Flapjack.WordAlloc.removeDeadStructural input3279 value1639 value1 value2 = (output3279, value5, value1))
    (child3804 : Flapjack.WordAlloc.removeDeadStructural input3804 value5 value1 value2 = (output3804, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3805 value1639 value1 value2 = (output3805, value1832, value1) := by
  rw [input3805_def, output3805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3279]
  try dsimp only
  rw [child3804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3279_skip, output3804_skip]
  kernel_rfl

theorem node3806_cond_eq
    (child3270 : Flapjack.WordAlloc.removeDeadStructural input3270 value1639 value1 value2 = (output3270, value1639, value1))
    (child3805 : Flapjack.WordAlloc.removeDeadStructural input3805 value1639 value1 value2 = (output3805, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3806 value1639 value1 value2 = (output3806, value1832, value1) := by
  rw [input3806_def, output3806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3270]
  try dsimp only
  rw [child3805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3270_skip, output3805_skip]
  kernel_rfl

theorem node3807_cond_eq
    (child3269 : Flapjack.WordAlloc.removeDeadStructural input3269 value1638 value1 value2 = (output3269, value1639, value1))
    (child3806 : Flapjack.WordAlloc.removeDeadStructural input3806 value1639 value1 value2 = (output3806, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3807 value1638 value1 value2 = (output3807, value1832, value1) := by
  rw [input3807_def, output3807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3269]
  try dsimp only
  rw [child3806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3269_skip, output3806_skip]
  kernel_rfl

theorem node3808_cond_eq
    (child3268 : Flapjack.WordAlloc.removeDeadStructural input3268 value5 value1 value2 = (output3268, value1638, value1))
    (child3807 : Flapjack.WordAlloc.removeDeadStructural input3807 value1638 value1 value2 = (output3807, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3808 value5 value1 value2 = (output3808, value1832, value1) := by
  rw [input3808_def, output3808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3268]
  try dsimp only
  rw [child3807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3268_skip, output3807_skip]
  kernel_rfl

theorem node3809_cond_eq
    (child3265 : Flapjack.WordAlloc.removeDeadStructural input3265 value1632 value1 value2 = (output3265, value5, value1))
    (child3808 : Flapjack.WordAlloc.removeDeadStructural input3808 value5 value1 value2 = (output3808, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3809 value1632 value1 value2 = (output3809, value1832, value1) := by
  rw [input3809_def, output3809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3265]
  try dsimp only
  rw [child3808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3265_skip, output3808_skip]
  kernel_rfl

theorem node3810_cond_eq
    (child3256 : Flapjack.WordAlloc.removeDeadStructural input3256 value1632 value1 value2 = (output3256, value1632, value1))
    (child3809 : Flapjack.WordAlloc.removeDeadStructural input3809 value1632 value1 value2 = (output3809, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3810 value1632 value1 value2 = (output3810, value1832, value1) := by
  rw [input3810_def, output3810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3256]
  try dsimp only
  rw [child3809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3256_skip, output3809_skip]
  kernel_rfl

theorem node3811_cond_eq
    (child3255 : Flapjack.WordAlloc.removeDeadStructural input3255 value1631 value1 value2 = (output3255, value1632, value1))
    (child3810 : Flapjack.WordAlloc.removeDeadStructural input3810 value1632 value1 value2 = (output3810, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3811 value1631 value1 value2 = (output3811, value1832, value1) := by
  rw [input3811_def, output3811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3255]
  try dsimp only
  rw [child3810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3255_skip, output3810_skip]
  kernel_rfl

theorem node3812_cond_eq
    (child3254 : Flapjack.WordAlloc.removeDeadStructural input3254 value5 value1 value2 = (output3254, value1631, value1))
    (child3811 : Flapjack.WordAlloc.removeDeadStructural input3811 value1631 value1 value2 = (output3811, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3812 value5 value1 value2 = (output3812, value1832, value1) := by
  rw [input3812_def, output3812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3254]
  try dsimp only
  rw [child3811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3254_skip, output3811_skip]
  kernel_rfl

theorem node3813_cond_eq
    (child3251 : Flapjack.WordAlloc.removeDeadStructural input3251 value1625 value1 value2 = (output3251, value5, value1))
    (child3812 : Flapjack.WordAlloc.removeDeadStructural input3812 value5 value1 value2 = (output3812, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3813 value1625 value1 value2 = (output3813, value1832, value1) := by
  rw [input3813_def, output3813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3251]
  try dsimp only
  rw [child3812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3251_skip, output3812_skip]
  kernel_rfl

theorem node3814_cond_eq
    (child3242 : Flapjack.WordAlloc.removeDeadStructural input3242 value1625 value1 value2 = (output3242, value1625, value1))
    (child3813 : Flapjack.WordAlloc.removeDeadStructural input3813 value1625 value1 value2 = (output3813, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3814 value1625 value1 value2 = (output3814, value1832, value1) := by
  rw [input3814_def, output3814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3242]
  try dsimp only
  rw [child3813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3242_skip, output3813_skip]
  kernel_rfl

theorem node3815_cond_eq
    (child3241 : Flapjack.WordAlloc.removeDeadStructural input3241 value1624 value1 value2 = (output3241, value1625, value1))
    (child3814 : Flapjack.WordAlloc.removeDeadStructural input3814 value1625 value1 value2 = (output3814, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3815 value1624 value1 value2 = (output3815, value1832, value1) := by
  rw [input3815_def, output3815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3241]
  try dsimp only
  rw [child3814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3241_skip, output3814_skip]
  kernel_rfl

theorem node3816_cond_eq
    (child3240 : Flapjack.WordAlloc.removeDeadStructural input3240 value5 value1 value2 = (output3240, value1624, value1))
    (child3815 : Flapjack.WordAlloc.removeDeadStructural input3815 value1624 value1 value2 = (output3815, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3816 value5 value1 value2 = (output3816, value1832, value1) := by
  rw [input3816_def, output3816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3240]
  try dsimp only
  rw [child3815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3240_skip, output3815_skip]
  kernel_rfl

theorem node3817_cond_eq
    (child3237 : Flapjack.WordAlloc.removeDeadStructural input3237 value1618 value1 value2 = (output3237, value5, value1))
    (child3816 : Flapjack.WordAlloc.removeDeadStructural input3816 value5 value1 value2 = (output3816, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3817 value1618 value1 value2 = (output3817, value1832, value1) := by
  rw [input3817_def, output3817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3237]
  try dsimp only
  rw [child3816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3237_skip, output3816_skip]
  kernel_rfl

theorem node3818_cond_eq
    (child3228 : Flapjack.WordAlloc.removeDeadStructural input3228 value1618 value1 value2 = (output3228, value1618, value1))
    (child3817 : Flapjack.WordAlloc.removeDeadStructural input3817 value1618 value1 value2 = (output3817, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3818 value1618 value1 value2 = (output3818, value1832, value1) := by
  rw [input3818_def, output3818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3228]
  try dsimp only
  rw [child3817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3228_skip, output3817_skip]
  kernel_rfl

theorem node3819_cond_eq
    (child3227 : Flapjack.WordAlloc.removeDeadStructural input3227 value1617 value1 value2 = (output3227, value1618, value1))
    (child3818 : Flapjack.WordAlloc.removeDeadStructural input3818 value1618 value1 value2 = (output3818, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3819 value1617 value1 value2 = (output3819, value1832, value1) := by
  rw [input3819_def, output3819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3227]
  try dsimp only
  rw [child3818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3227_skip, output3818_skip]
  kernel_rfl

theorem node3820_cond_eq
    (child3226 : Flapjack.WordAlloc.removeDeadStructural input3226 value5 value1 value2 = (output3226, value1617, value1))
    (child3819 : Flapjack.WordAlloc.removeDeadStructural input3819 value1617 value1 value2 = (output3819, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3820 value5 value1 value2 = (output3820, value1832, value1) := by
  rw [input3820_def, output3820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3226]
  try dsimp only
  rw [child3819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3226_skip, output3819_skip]
  kernel_rfl

theorem node3821_cond_eq
    (child3223 : Flapjack.WordAlloc.removeDeadStructural input3223 value1611 value1 value2 = (output3223, value5, value1))
    (child3820 : Flapjack.WordAlloc.removeDeadStructural input3820 value5 value1 value2 = (output3820, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3821 value1611 value1 value2 = (output3821, value1832, value1) := by
  rw [input3821_def, output3821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3223]
  try dsimp only
  rw [child3820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3223_skip, output3820_skip]
  kernel_rfl

theorem node3822_cond_eq
    (child3214 : Flapjack.WordAlloc.removeDeadStructural input3214 value1611 value1 value2 = (output3214, value1611, value1))
    (child3821 : Flapjack.WordAlloc.removeDeadStructural input3821 value1611 value1 value2 = (output3821, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3822 value1611 value1 value2 = (output3822, value1832, value1) := by
  rw [input3822_def, output3822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3214]
  try dsimp only
  rw [child3821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3214_skip, output3821_skip]
  kernel_rfl

theorem node3823_cond_eq
    (child3213 : Flapjack.WordAlloc.removeDeadStructural input3213 value1610 value1 value2 = (output3213, value1611, value1))
    (child3822 : Flapjack.WordAlloc.removeDeadStructural input3822 value1611 value1 value2 = (output3822, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3823 value1610 value1 value2 = (output3823, value1832, value1) := by
  rw [input3823_def, output3823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3213]
  try dsimp only
  rw [child3822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3213_skip, output3822_skip]
  kernel_rfl

theorem node3824_cond_eq
    (child3212 : Flapjack.WordAlloc.removeDeadStructural input3212 value5 value1 value2 = (output3212, value1610, value1))
    (child3823 : Flapjack.WordAlloc.removeDeadStructural input3823 value1610 value1 value2 = (output3823, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3824 value5 value1 value2 = (output3824, value1832, value1) := by
  rw [input3824_def, output3824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3212]
  try dsimp only
  rw [child3823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3212_skip, output3823_skip]
  kernel_rfl

theorem node3825_cond_eq
    (child3209 : Flapjack.WordAlloc.removeDeadStructural input3209 value1604 value1 value2 = (output3209, value5, value1))
    (child3824 : Flapjack.WordAlloc.removeDeadStructural input3824 value5 value1 value2 = (output3824, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3825 value1604 value1 value2 = (output3825, value1832, value1) := by
  rw [input3825_def, output3825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3209]
  try dsimp only
  rw [child3824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3209_skip, output3824_skip]
  kernel_rfl

theorem node3826_cond_eq
    (child3200 : Flapjack.WordAlloc.removeDeadStructural input3200 value1604 value1 value2 = (output3200, value1604, value1))
    (child3825 : Flapjack.WordAlloc.removeDeadStructural input3825 value1604 value1 value2 = (output3825, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3826 value1604 value1 value2 = (output3826, value1832, value1) := by
  rw [input3826_def, output3826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3200]
  try dsimp only
  rw [child3825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3200_skip, output3825_skip]
  kernel_rfl

theorem node3827_cond_eq
    (child3199 : Flapjack.WordAlloc.removeDeadStructural input3199 value1603 value1 value2 = (output3199, value1604, value1))
    (child3826 : Flapjack.WordAlloc.removeDeadStructural input3826 value1604 value1 value2 = (output3826, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3827 value1603 value1 value2 = (output3827, value1832, value1) := by
  rw [input3827_def, output3827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3199]
  try dsimp only
  rw [child3826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3199_skip, output3826_skip]
  kernel_rfl

theorem node3828_cond_eq
    (child3198 : Flapjack.WordAlloc.removeDeadStructural input3198 value5 value1 value2 = (output3198, value1603, value1))
    (child3827 : Flapjack.WordAlloc.removeDeadStructural input3827 value1603 value1 value2 = (output3827, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3828 value5 value1 value2 = (output3828, value1832, value1) := by
  rw [input3828_def, output3828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3198]
  try dsimp only
  rw [child3827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3198_skip, output3827_skip]
  kernel_rfl

theorem node3829_cond_eq
    (child3195 : Flapjack.WordAlloc.removeDeadStructural input3195 value1597 value1 value2 = (output3195, value5, value1))
    (child3828 : Flapjack.WordAlloc.removeDeadStructural input3828 value5 value1 value2 = (output3828, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3829 value1597 value1 value2 = (output3829, value1832, value1) := by
  rw [input3829_def, output3829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3195]
  try dsimp only
  rw [child3828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3195_skip, output3828_skip]
  kernel_rfl

theorem node3830_cond_eq
    (child3186 : Flapjack.WordAlloc.removeDeadStructural input3186 value1597 value1 value2 = (output3186, value1597, value1))
    (child3829 : Flapjack.WordAlloc.removeDeadStructural input3829 value1597 value1 value2 = (output3829, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3830 value1597 value1 value2 = (output3830, value1832, value1) := by
  rw [input3830_def, output3830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3186]
  try dsimp only
  rw [child3829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3186_skip, output3829_skip]
  kernel_rfl

theorem node3831_cond_eq
    (child3185 : Flapjack.WordAlloc.removeDeadStructural input3185 value1596 value1 value2 = (output3185, value1597, value1))
    (child3830 : Flapjack.WordAlloc.removeDeadStructural input3830 value1597 value1 value2 = (output3830, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3831 value1596 value1 value2 = (output3831, value1832, value1) := by
  rw [input3831_def, output3831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3185]
  try dsimp only
  rw [child3830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3185_skip, output3830_skip]
  kernel_rfl

theorem node3832_cond_eq
    (child3184 : Flapjack.WordAlloc.removeDeadStructural input3184 value5 value1 value2 = (output3184, value1596, value1))
    (child3831 : Flapjack.WordAlloc.removeDeadStructural input3831 value1596 value1 value2 = (output3831, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3832 value5 value1 value2 = (output3832, value1832, value1) := by
  rw [input3832_def, output3832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3184]
  try dsimp only
  rw [child3831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3184_skip, output3831_skip]
  kernel_rfl

theorem node3833_cond_eq
    (child3181 : Flapjack.WordAlloc.removeDeadStructural input3181 value1590 value1 value2 = (output3181, value5, value1))
    (child3832 : Flapjack.WordAlloc.removeDeadStructural input3832 value5 value1 value2 = (output3832, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3833 value1590 value1 value2 = (output3833, value1832, value1) := by
  rw [input3833_def, output3833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3181]
  try dsimp only
  rw [child3832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3181_skip, output3832_skip]
  kernel_rfl

theorem node3834_cond_eq
    (child3172 : Flapjack.WordAlloc.removeDeadStructural input3172 value1590 value1 value2 = (output3172, value1590, value1))
    (child3833 : Flapjack.WordAlloc.removeDeadStructural input3833 value1590 value1 value2 = (output3833, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3834 value1590 value1 value2 = (output3834, value1832, value1) := by
  rw [input3834_def, output3834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3172]
  try dsimp only
  rw [child3833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3172_skip, output3833_skip]
  kernel_rfl

theorem node3835_cond_eq
    (child3171 : Flapjack.WordAlloc.removeDeadStructural input3171 value1589 value1 value2 = (output3171, value1590, value1))
    (child3834 : Flapjack.WordAlloc.removeDeadStructural input3834 value1590 value1 value2 = (output3834, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3835 value1589 value1 value2 = (output3835, value1832, value1) := by
  rw [input3835_def, output3835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3171]
  try dsimp only
  rw [child3834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3171_skip, output3834_skip]
  kernel_rfl

theorem node3836_cond_eq
    (child3170 : Flapjack.WordAlloc.removeDeadStructural input3170 value5 value1 value2 = (output3170, value1589, value1))
    (child3835 : Flapjack.WordAlloc.removeDeadStructural input3835 value1589 value1 value2 = (output3835, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3836 value5 value1 value2 = (output3836, value1832, value1) := by
  rw [input3836_def, output3836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3170]
  try dsimp only
  rw [child3835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3170_skip, output3835_skip]
  kernel_rfl

theorem node3837_cond_eq
    (child3167 : Flapjack.WordAlloc.removeDeadStructural input3167 value1583 value1 value2 = (output3167, value5, value1))
    (child3836 : Flapjack.WordAlloc.removeDeadStructural input3836 value5 value1 value2 = (output3836, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3837 value1583 value1 value2 = (output3837, value1832, value1) := by
  rw [input3837_def, output3837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3167]
  try dsimp only
  rw [child3836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3167_skip, output3836_skip]
  kernel_rfl

theorem node3838_cond_eq
    (child3158 : Flapjack.WordAlloc.removeDeadStructural input3158 value1583 value1 value2 = (output3158, value1583, value1))
    (child3837 : Flapjack.WordAlloc.removeDeadStructural input3837 value1583 value1 value2 = (output3837, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3838 value1583 value1 value2 = (output3838, value1832, value1) := by
  rw [input3838_def, output3838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3158]
  try dsimp only
  rw [child3837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3158_skip, output3837_skip]
  kernel_rfl

theorem node3839_cond_eq
    (child3157 : Flapjack.WordAlloc.removeDeadStructural input3157 value1582 value1 value2 = (output3157, value1583, value1))
    (child3838 : Flapjack.WordAlloc.removeDeadStructural input3838 value1583 value1 value2 = (output3838, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3839 value1582 value1 value2 = (output3839, value1832, value1) := by
  rw [input3839_def, output3839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3157]
  try dsimp only
  rw [child3838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3157_skip, output3838_skip]
  kernel_rfl

#print axioms node3839_cond_eq
end InitECandidate.Proofs.DeadStages240.Parallel
