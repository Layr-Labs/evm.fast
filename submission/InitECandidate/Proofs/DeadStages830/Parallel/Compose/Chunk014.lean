import InitECandidate.Proofs.DeadStages830.Parallel.Conditional.Chunk014
import InitECandidate.Proofs.DeadStages830.Parallel.Compose.Chunk013
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages830.Parallel
theorem node3584_eq : Flapjack.WordAlloc.removeDeadStructural input3584 value1794 value1 value2 = (output3584, value5, value1) :=
  node3584_cond_eq node3580_eq node3583_eq

theorem node3585_eq : Flapjack.WordAlloc.removeDeadStructural input3585 value1793 value1 value2 = (output3585, value5, value1) :=
  node3585_cond_eq node3579_eq node3584_eq

theorem node3586_eq : Flapjack.WordAlloc.removeDeadStructural input3586 value5 value1 value2 = (output3586, value1797, value1) :=
  node3586_cond_eq

theorem node3587_eq : Flapjack.WordAlloc.removeDeadStructural input3587 value1797 value1 value2 = (output3587, value1798, value1) :=
  node3587_cond_eq

theorem node3588_eq : Flapjack.WordAlloc.removeDeadStructural input3588 value5 value1 value2 = (output3588, value1798, value1) :=
  node3588_cond_eq node3586_eq node3587_eq

theorem node3589_eq : Flapjack.WordAlloc.removeDeadStructural input3589 value1798 value1 value2 = (output3589, value1799, value1) :=
  node3589_cond_eq

theorem node3590_eq : Flapjack.WordAlloc.removeDeadStructural input3590 value1799 value1 value2 = (output3590, value1800, value1) :=
  node3590_cond_eq

theorem node3591_eq : Flapjack.WordAlloc.removeDeadStructural input3591 value1800 value1 value2 = (output3591, value1801, value1) :=
  node3591_cond_eq

theorem node3592_eq : Flapjack.WordAlloc.removeDeadStructural input3592 value1801 value1 value2 = (output3592, value1802, value1) :=
  node3592_cond_eq

theorem node3593_eq : Flapjack.WordAlloc.removeDeadStructural input3593 value1802 value1 value2 = (output3593, value1803, value1) :=
  node3593_cond_eq

theorem node3594_eq : Flapjack.WordAlloc.removeDeadStructural input3594 value1803 value1 value2 = (output3594, value1804, value1) :=
  node3594_cond_eq

theorem node3595_eq : Flapjack.WordAlloc.removeDeadStructural input3595 value1802 value1 value2 = (output3595, value1804, value1) :=
  node3595_cond_eq node3593_eq node3594_eq

theorem node3596_eq : Flapjack.WordAlloc.removeDeadStructural input3596 value1801 value1 value2 = (output3596, value1804, value1) :=
  node3596_cond_eq node3592_eq node3595_eq

theorem node3597_eq : Flapjack.WordAlloc.removeDeadStructural input3597 value1800 value1 value2 = (output3597, value1804, value1) :=
  node3597_cond_eq node3591_eq node3596_eq

theorem node3598_eq : Flapjack.WordAlloc.removeDeadStructural input3598 value1804 value1 value2 = (output3598, value1804, value1) :=
  node3598_cond_eq

theorem node3599_eq : Flapjack.WordAlloc.removeDeadStructural input3599 value1804 value1 value2 = (output3599, value1805, value1) :=
  node3599_cond_eq

theorem node3600_eq : Flapjack.WordAlloc.removeDeadStructural input3600 value1805 value1 value2 = (output3600, value1806, value1) :=
  node3600_cond_eq

theorem node3601_eq : Flapjack.WordAlloc.removeDeadStructural input3601 value1804 value1 value2 = (output3601, value1806, value1) :=
  node3601_cond_eq node3599_eq node3600_eq

theorem node3602_eq : Flapjack.WordAlloc.removeDeadStructural input3602 value1806 value1 value2 = (output3602, value1807, value1) :=
  node3602_cond_eq

theorem node3603_eq : Flapjack.WordAlloc.removeDeadStructural input3603 value1804 value1 value2 = (output3603, value1807, value1) :=
  node3603_cond_eq node3601_eq node3602_eq

theorem node3604_eq : Flapjack.WordAlloc.removeDeadStructural input3604 value1807 value1 value2 = (output3604, value1808, value1) :=
  node3604_cond_eq

theorem node3605_eq : Flapjack.WordAlloc.removeDeadStructural input3605 value1804 value1 value2 = (output3605, value1808, value1) :=
  node3605_cond_eq node3603_eq node3604_eq

theorem node3606_eq : Flapjack.WordAlloc.removeDeadStructural input3606 value1808 value1 value2 = (output3606, value1808, value1) :=
  node3606_cond_eq

theorem node3607_eq : Flapjack.WordAlloc.removeDeadStructural input3607 value1808 value1 value2 = (output3607, value1808, value1) :=
  node3607_cond_eq

theorem node3608_eq : Flapjack.WordAlloc.removeDeadStructural input3608 value1808 value1 value2 = (output3608, value1809, value1) :=
  node3608_cond_eq

theorem node3609_eq : Flapjack.WordAlloc.removeDeadStructural input3609 value1809 value1 value2 = (output3609, value1809, value1) :=
  node3609_cond_eq

theorem node3610_eq : Flapjack.WordAlloc.removeDeadStructural input3610 value1808 value1 value2 = (output3610, value1809, value1) :=
  node3610_cond_eq node3608_eq node3609_eq

theorem node3611_eq : Flapjack.WordAlloc.removeDeadStructural input3611 value1809 value1 value2 = (output3611, value1810, value1) :=
  node3611_cond_eq

theorem node3612_eq : Flapjack.WordAlloc.removeDeadStructural input3612 value1808 value1 value2 = (output3612, value1810, value1) :=
  node3612_cond_eq node3610_eq node3611_eq

theorem node3613_eq : Flapjack.WordAlloc.removeDeadStructural input3613 value1810 value1 value2 = (output3613, value1810, value1) :=
  node3613_cond_eq

theorem node3614_eq : Flapjack.WordAlloc.removeDeadStructural input3614 value1810 value1 value2 = (output3614, value1810, value1) :=
  node3614_cond_eq

theorem node3615_eq : Flapjack.WordAlloc.removeDeadStructural input3615 value1810 value1 value2 = (output3615, value1810, value1) :=
  node3615_cond_eq

theorem node3616_eq : Flapjack.WordAlloc.removeDeadStructural input3616 value1810 value1 value2 = (output3616, value1810, value1) :=
  node3616_cond_eq

theorem node3617_eq : Flapjack.WordAlloc.removeDeadStructural input3617 value1810 value1 value2 = (output3617, value1810, value1) :=
  node3617_cond_eq node3615_eq node3616_eq

theorem node3618_eq : Flapjack.WordAlloc.removeDeadStructural input3618 value1810 value1 value2 = (output3618, value1810, value1) :=
  node3618_cond_eq node3614_eq node3617_eq

theorem node3619_eq : Flapjack.WordAlloc.removeDeadStructural input3619 value1810 value1 value2 = (output3619, value1810, value1) :=
  node3619_cond_eq

theorem node3620_eq : Flapjack.WordAlloc.removeDeadStructural input3620 value1810 value1 value2 = (output3620, value1810, value1) :=
  node3620_cond_eq

theorem node3621_eq : Flapjack.WordAlloc.removeDeadStructural input3621 value1810 value1 value2 = (output3621, value1810, value1) :=
  node3621_cond_eq

theorem node3622_eq : Flapjack.WordAlloc.removeDeadStructural input3622 value1810 value1 value2 = (output3622, value1810, value1) :=
  node3622_cond_eq node3620_eq node3621_eq

theorem node3623_eq : Flapjack.WordAlloc.removeDeadStructural input3623 value1810 value1 value2 = (output3623, value1810, value1) :=
  node3623_cond_eq node3619_eq node3622_eq

theorem node3624_eq : Flapjack.WordAlloc.removeDeadStructural input3624 value1810 value1 value2 = (output3624, value1810, value1) :=
  node3624_cond_eq

theorem node3625_eq : Flapjack.WordAlloc.removeDeadStructural input3625 value1810 value1 value2 = (output3625, value1810, value1) :=
  node3625_cond_eq node3623_eq node3624_eq

theorem node3626_eq : Flapjack.WordAlloc.removeDeadStructural input3626 value1810 value1 value2 = (output3626, value1811, value1) :=
  node3626_cond_eq

theorem node3627_eq : Flapjack.WordAlloc.removeDeadStructural input3627 value1811 value1 value2 = (output3627, value1812, value1) :=
  node3627_cond_eq

theorem node3628_eq : Flapjack.WordAlloc.removeDeadStructural input3628 value1810 value1 value2 = (output3628, value1812, value1) :=
  node3628_cond_eq node3626_eq node3627_eq

theorem node3629_eq : Flapjack.WordAlloc.removeDeadStructural input3629 value1812 value1 value2 = (output3629, value1810, value1) :=
  node3629_cond_eq

theorem node3630_eq : Flapjack.WordAlloc.removeDeadStructural input3630 value1810 value1 value2 = (output3630, value1810, value1) :=
  node3630_cond_eq

theorem node3631_eq : Flapjack.WordAlloc.removeDeadStructural input3631 value1810 value1 value2 = (output3631, value1810, value1) :=
  node3631_cond_eq

theorem node3632_eq : Flapjack.WordAlloc.removeDeadStructural input3632 value1810 value1 value2 = (output3632, value1810, value1) :=
  node3632_cond_eq

theorem node3633_eq : Flapjack.WordAlloc.removeDeadStructural input3633 value1810 value1 value2 = (output3633, value1810, value1) :=
  node3633_cond_eq node3631_eq node3632_eq

theorem node3634_eq : Flapjack.WordAlloc.removeDeadStructural input3634 value1810 value1 value2 = (output3634, value1810, value1) :=
  node3634_cond_eq node3630_eq node3633_eq

theorem node3635_eq : Flapjack.WordAlloc.removeDeadStructural input3635 value1812 value1 value2 = (output3635, value1810, value1) :=
  node3635_cond_eq node3629_eq node3634_eq

theorem node3636_eq : Flapjack.WordAlloc.removeDeadStructural input3636 value1810 value1 value2 = (output3636, value1810, value1) :=
  node3636_cond_eq node3628_eq node3635_eq

theorem node3637_eq : Flapjack.WordAlloc.removeDeadStructural input3637 value1810 value1 value2 = (output3637, value1810, value1) :=
  node3637_cond_eq node3625_eq node3636_eq

theorem node3638_eq : Flapjack.WordAlloc.removeDeadStructural input3638 value1810 value1 value2 = (output3638, value1810, value1) :=
  node3638_cond_eq

theorem node3639_eq : Flapjack.WordAlloc.removeDeadStructural input3639 value1810 value1 value2 = (output3639, value1810, value1) :=
  node3639_cond_eq

theorem node3640_eq : Flapjack.WordAlloc.removeDeadStructural input3640 value1810 value1 value2 = (output3640, value1810, value1) :=
  node3640_cond_eq

theorem node3641_eq : Flapjack.WordAlloc.removeDeadStructural input3641 value1810 value1 value2 = (output3641, value1810, value1) :=
  node3641_cond_eq node3639_eq node3640_eq

theorem node3642_eq : Flapjack.WordAlloc.removeDeadStructural input3642 value1810 value1 value2 = (output3642, value1810, value1) :=
  node3642_cond_eq node3638_eq node3641_eq

theorem node3643_eq : Flapjack.WordAlloc.removeDeadStructural input3643 value1810 value1 value2 = (output3643, value1810, value1) :=
  node3643_cond_eq

theorem node3644_eq : Flapjack.WordAlloc.removeDeadStructural input3644 value1810 value1 value2 = (output3644, value1810, value1) :=
  node3644_cond_eq node3642_eq node3643_eq

theorem node3645_eq : Flapjack.WordAlloc.removeDeadStructural input3645 value1810 value1 value2 = (output3645, value1810, value1) :=
  node3645_cond_eq

theorem node3646_eq : Flapjack.WordAlloc.removeDeadStructural input3646 value1810 value1 value2 = (output3646, value1810, value1) :=
  node3646_cond_eq node3644_eq node3645_eq

theorem node3647_eq : Flapjack.WordAlloc.removeDeadStructural input3647 value1810 value1 value2 = (output3647, value1815, value1) :=
  node3647_cond_eq node3637_eq node3646_eq

theorem node3648_eq : Flapjack.WordAlloc.removeDeadStructural input3648 value1810 value1 value2 = (output3648, value1815, value1) :=
  node3648_cond_eq node3618_eq node3647_eq

theorem node3649_eq : Flapjack.WordAlloc.removeDeadStructural input3649 value1815 value1 value2 = (output3649, value1816, value1) :=
  node3649_cond_eq

theorem node3650_eq : Flapjack.WordAlloc.removeDeadStructural input3650 value1816 value1 value2 = (output3650, value1817, value1) :=
  node3650_cond_eq

theorem node3651_eq : Flapjack.WordAlloc.removeDeadStructural input3651 value1817 value1 value2 = (output3651, value1818, value1) :=
  node3651_cond_eq

theorem node3652_eq : Flapjack.WordAlloc.removeDeadStructural input3652 value1818 value1 value2 = (output3652, value1819, value1) :=
  node3652_cond_eq

theorem node3653_eq : Flapjack.WordAlloc.removeDeadStructural input3653 value1819 value1 value2 = (output3653, value1810, value1) :=
  node3653_cond_eq

theorem node3654_eq : Flapjack.WordAlloc.removeDeadStructural input3654 value1818 value1 value2 = (output3654, value1810, value1) :=
  node3654_cond_eq node3652_eq node3653_eq

theorem node3655_eq : Flapjack.WordAlloc.removeDeadStructural input3655 value1817 value1 value2 = (output3655, value1810, value1) :=
  node3655_cond_eq node3651_eq node3654_eq

theorem node3656_eq : Flapjack.WordAlloc.removeDeadStructural input3656 value1816 value1 value2 = (output3656, value1810, value1) :=
  node3656_cond_eq node3650_eq node3655_eq

theorem node3657_eq : Flapjack.WordAlloc.removeDeadStructural input3657 value1815 value1 value2 = (output3657, value1810, value1) :=
  node3657_cond_eq node3649_eq node3656_eq

theorem node3658_eq : Flapjack.WordAlloc.removeDeadStructural input3658 value1810 value1 value2 = (output3658, value1810, value1) :=
  node3658_cond_eq node3648_eq node3657_eq

theorem node3659_eq : Flapjack.WordAlloc.removeDeadStructural input3659 value1810 value1 value2 = (output3659, value1810, value1) :=
  node3659_cond_eq node3613_eq node3658_eq

theorem node3660_eq : Flapjack.WordAlloc.removeDeadStructural input3660 value1808 value1 value2 = (output3660, value1810, value1) :=
  node3660_cond_eq node3612_eq node3659_eq

theorem node3661_eq : Flapjack.WordAlloc.removeDeadStructural input3661 value1808 value1 value2 = (output3661, value1810, value1) :=
  node3661_cond_eq node3607_eq node3660_eq

theorem node3662_eq : Flapjack.WordAlloc.removeDeadStructural input3662 value1808 value1 value2 = (output3662, value1810, value1) :=
  node3662_cond_eq node3606_eq node3661_eq

theorem node3663_eq : Flapjack.WordAlloc.removeDeadStructural input3663 value1804 value1 value2 = (output3663, value1810, value1) :=
  node3663_cond_eq node3605_eq node3662_eq

theorem node3664_eq : Flapjack.WordAlloc.removeDeadStructural input3664 value1804 value1 value2 = (output3664, value1810, value1) :=
  node3664_cond_eq node3598_eq node3663_eq

theorem node3665_eq : Flapjack.WordAlloc.removeDeadStructural input3665 value1800 value1 value2 = (output3665, value1810, value1) :=
  node3665_cond_eq node3597_eq node3664_eq

theorem node3666_eq : Flapjack.WordAlloc.removeDeadStructural input3666 value1799 value1 value2 = (output3666, value1810, value1) :=
  node3666_cond_eq node3590_eq node3665_eq

theorem node3667_eq : Flapjack.WordAlloc.removeDeadStructural input3667 value1798 value1 value2 = (output3667, value1810, value1) :=
  node3667_cond_eq node3589_eq node3666_eq

theorem node3668_eq : Flapjack.WordAlloc.removeDeadStructural input3668 value5 value1 value2 = (output3668, value1810, value1) :=
  node3668_cond_eq node3588_eq node3667_eq

theorem node3669_eq : Flapjack.WordAlloc.removeDeadStructural input3669 value1793 value1 value2 = (output3669, value1810, value1) :=
  node3669_cond_eq node3585_eq node3668_eq

theorem node3670_eq : Flapjack.WordAlloc.removeDeadStructural input3670 value1793 value1 value2 = (output3670, value1810, value1) :=
  node3670_cond_eq node3578_eq node3669_eq

theorem node3671_eq : Flapjack.WordAlloc.removeDeadStructural input3671 value1792 value1 value2 = (output3671, value1810, value1) :=
  node3671_cond_eq node3577_eq node3670_eq

theorem node3672_eq : Flapjack.WordAlloc.removeDeadStructural input3672 value5 value1 value2 = (output3672, value1810, value1) :=
  node3672_cond_eq node3576_eq node3671_eq

theorem node3673_eq : Flapjack.WordAlloc.removeDeadStructural input3673 value1786 value1 value2 = (output3673, value1810, value1) :=
  node3673_cond_eq node3573_eq node3672_eq

theorem node3674_eq : Flapjack.WordAlloc.removeDeadStructural input3674 value1786 value1 value2 = (output3674, value1810, value1) :=
  node3674_cond_eq node3564_eq node3673_eq

theorem node3675_eq : Flapjack.WordAlloc.removeDeadStructural input3675 value1785 value1 value2 = (output3675, value1810, value1) :=
  node3675_cond_eq node3563_eq node3674_eq

theorem node3676_eq : Flapjack.WordAlloc.removeDeadStructural input3676 value5 value1 value2 = (output3676, value1810, value1) :=
  node3676_cond_eq node3562_eq node3675_eq

theorem node3677_eq : Flapjack.WordAlloc.removeDeadStructural input3677 value1779 value1 value2 = (output3677, value1810, value1) :=
  node3677_cond_eq node3559_eq node3676_eq

theorem node3678_eq : Flapjack.WordAlloc.removeDeadStructural input3678 value1779 value1 value2 = (output3678, value1810, value1) :=
  node3678_cond_eq node3550_eq node3677_eq

theorem node3679_eq : Flapjack.WordAlloc.removeDeadStructural input3679 value1778 value1 value2 = (output3679, value1810, value1) :=
  node3679_cond_eq node3549_eq node3678_eq

theorem node3680_eq : Flapjack.WordAlloc.removeDeadStructural input3680 value5 value1 value2 = (output3680, value1810, value1) :=
  node3680_cond_eq node3548_eq node3679_eq

theorem node3681_eq : Flapjack.WordAlloc.removeDeadStructural input3681 value1772 value1 value2 = (output3681, value1810, value1) :=
  node3681_cond_eq node3545_eq node3680_eq

theorem node3682_eq : Flapjack.WordAlloc.removeDeadStructural input3682 value1772 value1 value2 = (output3682, value1810, value1) :=
  node3682_cond_eq node3536_eq node3681_eq

theorem node3683_eq : Flapjack.WordAlloc.removeDeadStructural input3683 value1771 value1 value2 = (output3683, value1810, value1) :=
  node3683_cond_eq node3535_eq node3682_eq

theorem node3684_eq : Flapjack.WordAlloc.removeDeadStructural input3684 value5 value1 value2 = (output3684, value1810, value1) :=
  node3684_cond_eq node3534_eq node3683_eq

theorem node3685_eq : Flapjack.WordAlloc.removeDeadStructural input3685 value1765 value1 value2 = (output3685, value1810, value1) :=
  node3685_cond_eq node3531_eq node3684_eq

theorem node3686_eq : Flapjack.WordAlloc.removeDeadStructural input3686 value1765 value1 value2 = (output3686, value1810, value1) :=
  node3686_cond_eq node3522_eq node3685_eq

theorem node3687_eq : Flapjack.WordAlloc.removeDeadStructural input3687 value1764 value1 value2 = (output3687, value1810, value1) :=
  node3687_cond_eq node3521_eq node3686_eq

theorem node3688_eq : Flapjack.WordAlloc.removeDeadStructural input3688 value5 value1 value2 = (output3688, value1810, value1) :=
  node3688_cond_eq node3520_eq node3687_eq

theorem node3689_eq : Flapjack.WordAlloc.removeDeadStructural input3689 value1758 value1 value2 = (output3689, value1810, value1) :=
  node3689_cond_eq node3517_eq node3688_eq

theorem node3690_eq : Flapjack.WordAlloc.removeDeadStructural input3690 value1758 value1 value2 = (output3690, value1810, value1) :=
  node3690_cond_eq node3508_eq node3689_eq

theorem node3691_eq : Flapjack.WordAlloc.removeDeadStructural input3691 value1757 value1 value2 = (output3691, value1810, value1) :=
  node3691_cond_eq node3507_eq node3690_eq

theorem node3692_eq : Flapjack.WordAlloc.removeDeadStructural input3692 value5 value1 value2 = (output3692, value1810, value1) :=
  node3692_cond_eq node3506_eq node3691_eq

theorem node3693_eq : Flapjack.WordAlloc.removeDeadStructural input3693 value1751 value1 value2 = (output3693, value1810, value1) :=
  node3693_cond_eq node3503_eq node3692_eq

theorem node3694_eq : Flapjack.WordAlloc.removeDeadStructural input3694 value1751 value1 value2 = (output3694, value1810, value1) :=
  node3694_cond_eq node3494_eq node3693_eq

theorem node3695_eq : Flapjack.WordAlloc.removeDeadStructural input3695 value1750 value1 value2 = (output3695, value1810, value1) :=
  node3695_cond_eq node3493_eq node3694_eq

theorem node3696_eq : Flapjack.WordAlloc.removeDeadStructural input3696 value5 value1 value2 = (output3696, value1810, value1) :=
  node3696_cond_eq node3492_eq node3695_eq

theorem node3697_eq : Flapjack.WordAlloc.removeDeadStructural input3697 value1744 value1 value2 = (output3697, value1810, value1) :=
  node3697_cond_eq node3489_eq node3696_eq

theorem node3698_eq : Flapjack.WordAlloc.removeDeadStructural input3698 value1744 value1 value2 = (output3698, value1810, value1) :=
  node3698_cond_eq node3480_eq node3697_eq

theorem node3699_eq : Flapjack.WordAlloc.removeDeadStructural input3699 value1743 value1 value2 = (output3699, value1810, value1) :=
  node3699_cond_eq node3479_eq node3698_eq

theorem node3700_eq : Flapjack.WordAlloc.removeDeadStructural input3700 value5 value1 value2 = (output3700, value1810, value1) :=
  node3700_cond_eq node3478_eq node3699_eq

theorem node3701_eq : Flapjack.WordAlloc.removeDeadStructural input3701 value1737 value1 value2 = (output3701, value1810, value1) :=
  node3701_cond_eq node3475_eq node3700_eq

theorem node3702_eq : Flapjack.WordAlloc.removeDeadStructural input3702 value1737 value1 value2 = (output3702, value1810, value1) :=
  node3702_cond_eq node3466_eq node3701_eq

theorem node3703_eq : Flapjack.WordAlloc.removeDeadStructural input3703 value1736 value1 value2 = (output3703, value1810, value1) :=
  node3703_cond_eq node3465_eq node3702_eq

theorem node3704_eq : Flapjack.WordAlloc.removeDeadStructural input3704 value5 value1 value2 = (output3704, value1810, value1) :=
  node3704_cond_eq node3464_eq node3703_eq

theorem node3705_eq : Flapjack.WordAlloc.removeDeadStructural input3705 value1730 value1 value2 = (output3705, value1810, value1) :=
  node3705_cond_eq node3461_eq node3704_eq

theorem node3706_eq : Flapjack.WordAlloc.removeDeadStructural input3706 value1730 value1 value2 = (output3706, value1810, value1) :=
  node3706_cond_eq node3452_eq node3705_eq

theorem node3707_eq : Flapjack.WordAlloc.removeDeadStructural input3707 value1729 value1 value2 = (output3707, value1810, value1) :=
  node3707_cond_eq node3451_eq node3706_eq

theorem node3708_eq : Flapjack.WordAlloc.removeDeadStructural input3708 value5 value1 value2 = (output3708, value1810, value1) :=
  node3708_cond_eq node3450_eq node3707_eq

theorem node3709_eq : Flapjack.WordAlloc.removeDeadStructural input3709 value1723 value1 value2 = (output3709, value1810, value1) :=
  node3709_cond_eq node3447_eq node3708_eq

theorem node3710_eq : Flapjack.WordAlloc.removeDeadStructural input3710 value1723 value1 value2 = (output3710, value1810, value1) :=
  node3710_cond_eq node3438_eq node3709_eq

theorem node3711_eq : Flapjack.WordAlloc.removeDeadStructural input3711 value1722 value1 value2 = (output3711, value1810, value1) :=
  node3711_cond_eq node3437_eq node3710_eq

theorem node3712_eq : Flapjack.WordAlloc.removeDeadStructural input3712 value5 value1 value2 = (output3712, value1810, value1) :=
  node3712_cond_eq node3436_eq node3711_eq

theorem node3713_eq : Flapjack.WordAlloc.removeDeadStructural input3713 value1716 value1 value2 = (output3713, value1810, value1) :=
  node3713_cond_eq node3433_eq node3712_eq

theorem node3714_eq : Flapjack.WordAlloc.removeDeadStructural input3714 value1716 value1 value2 = (output3714, value1810, value1) :=
  node3714_cond_eq node3424_eq node3713_eq

theorem node3715_eq : Flapjack.WordAlloc.removeDeadStructural input3715 value1715 value1 value2 = (output3715, value1810, value1) :=
  node3715_cond_eq node3423_eq node3714_eq

theorem node3716_eq : Flapjack.WordAlloc.removeDeadStructural input3716 value5 value1 value2 = (output3716, value1810, value1) :=
  node3716_cond_eq node3422_eq node3715_eq

theorem node3717_eq : Flapjack.WordAlloc.removeDeadStructural input3717 value1709 value1 value2 = (output3717, value1810, value1) :=
  node3717_cond_eq node3419_eq node3716_eq

theorem node3718_eq : Flapjack.WordAlloc.removeDeadStructural input3718 value1709 value1 value2 = (output3718, value1810, value1) :=
  node3718_cond_eq node3410_eq node3717_eq

theorem node3719_eq : Flapjack.WordAlloc.removeDeadStructural input3719 value1708 value1 value2 = (output3719, value1810, value1) :=
  node3719_cond_eq node3409_eq node3718_eq

theorem node3720_eq : Flapjack.WordAlloc.removeDeadStructural input3720 value5 value1 value2 = (output3720, value1810, value1) :=
  node3720_cond_eq node3408_eq node3719_eq

theorem node3721_eq : Flapjack.WordAlloc.removeDeadStructural input3721 value1702 value1 value2 = (output3721, value1810, value1) :=
  node3721_cond_eq node3405_eq node3720_eq

theorem node3722_eq : Flapjack.WordAlloc.removeDeadStructural input3722 value1702 value1 value2 = (output3722, value1810, value1) :=
  node3722_cond_eq node3396_eq node3721_eq

theorem node3723_eq : Flapjack.WordAlloc.removeDeadStructural input3723 value1701 value1 value2 = (output3723, value1810, value1) :=
  node3723_cond_eq node3395_eq node3722_eq

theorem node3724_eq : Flapjack.WordAlloc.removeDeadStructural input3724 value5 value1 value2 = (output3724, value1810, value1) :=
  node3724_cond_eq node3394_eq node3723_eq

theorem node3725_eq : Flapjack.WordAlloc.removeDeadStructural input3725 value1695 value1 value2 = (output3725, value1810, value1) :=
  node3725_cond_eq node3391_eq node3724_eq

theorem node3726_eq : Flapjack.WordAlloc.removeDeadStructural input3726 value1695 value1 value2 = (output3726, value1810, value1) :=
  node3726_cond_eq node3382_eq node3725_eq

theorem node3727_eq : Flapjack.WordAlloc.removeDeadStructural input3727 value1694 value1 value2 = (output3727, value1810, value1) :=
  node3727_cond_eq node3381_eq node3726_eq

theorem node3728_eq : Flapjack.WordAlloc.removeDeadStructural input3728 value5 value1 value2 = (output3728, value1810, value1) :=
  node3728_cond_eq node3380_eq node3727_eq

theorem node3729_eq : Flapjack.WordAlloc.removeDeadStructural input3729 value1688 value1 value2 = (output3729, value1810, value1) :=
  node3729_cond_eq node3377_eq node3728_eq

theorem node3730_eq : Flapjack.WordAlloc.removeDeadStructural input3730 value1688 value1 value2 = (output3730, value1810, value1) :=
  node3730_cond_eq node3368_eq node3729_eq

theorem node3731_eq : Flapjack.WordAlloc.removeDeadStructural input3731 value1687 value1 value2 = (output3731, value1810, value1) :=
  node3731_cond_eq node3367_eq node3730_eq

theorem node3732_eq : Flapjack.WordAlloc.removeDeadStructural input3732 value5 value1 value2 = (output3732, value1810, value1) :=
  node3732_cond_eq node3366_eq node3731_eq

theorem node3733_eq : Flapjack.WordAlloc.removeDeadStructural input3733 value1681 value1 value2 = (output3733, value1810, value1) :=
  node3733_cond_eq node3363_eq node3732_eq

theorem node3734_eq : Flapjack.WordAlloc.removeDeadStructural input3734 value1681 value1 value2 = (output3734, value1810, value1) :=
  node3734_cond_eq node3354_eq node3733_eq

theorem node3735_eq : Flapjack.WordAlloc.removeDeadStructural input3735 value1680 value1 value2 = (output3735, value1810, value1) :=
  node3735_cond_eq node3353_eq node3734_eq

theorem node3736_eq : Flapjack.WordAlloc.removeDeadStructural input3736 value5 value1 value2 = (output3736, value1810, value1) :=
  node3736_cond_eq node3352_eq node3735_eq

theorem node3737_eq : Flapjack.WordAlloc.removeDeadStructural input3737 value1674 value1 value2 = (output3737, value1810, value1) :=
  node3737_cond_eq node3349_eq node3736_eq

theorem node3738_eq : Flapjack.WordAlloc.removeDeadStructural input3738 value1674 value1 value2 = (output3738, value1810, value1) :=
  node3738_cond_eq node3340_eq node3737_eq

theorem node3739_eq : Flapjack.WordAlloc.removeDeadStructural input3739 value1673 value1 value2 = (output3739, value1810, value1) :=
  node3739_cond_eq node3339_eq node3738_eq

theorem node3740_eq : Flapjack.WordAlloc.removeDeadStructural input3740 value5 value1 value2 = (output3740, value1810, value1) :=
  node3740_cond_eq node3338_eq node3739_eq

theorem node3741_eq : Flapjack.WordAlloc.removeDeadStructural input3741 value1667 value1 value2 = (output3741, value1810, value1) :=
  node3741_cond_eq node3335_eq node3740_eq

theorem node3742_eq : Flapjack.WordAlloc.removeDeadStructural input3742 value1667 value1 value2 = (output3742, value1810, value1) :=
  node3742_cond_eq node3326_eq node3741_eq

theorem node3743_eq : Flapjack.WordAlloc.removeDeadStructural input3743 value1666 value1 value2 = (output3743, value1810, value1) :=
  node3743_cond_eq node3325_eq node3742_eq

theorem node3744_eq : Flapjack.WordAlloc.removeDeadStructural input3744 value5 value1 value2 = (output3744, value1810, value1) :=
  node3744_cond_eq node3324_eq node3743_eq

theorem node3745_eq : Flapjack.WordAlloc.removeDeadStructural input3745 value1660 value1 value2 = (output3745, value1810, value1) :=
  node3745_cond_eq node3321_eq node3744_eq

theorem node3746_eq : Flapjack.WordAlloc.removeDeadStructural input3746 value1660 value1 value2 = (output3746, value1810, value1) :=
  node3746_cond_eq node3312_eq node3745_eq

theorem node3747_eq : Flapjack.WordAlloc.removeDeadStructural input3747 value1659 value1 value2 = (output3747, value1810, value1) :=
  node3747_cond_eq node3311_eq node3746_eq

theorem node3748_eq : Flapjack.WordAlloc.removeDeadStructural input3748 value5 value1 value2 = (output3748, value1810, value1) :=
  node3748_cond_eq node3310_eq node3747_eq

theorem node3749_eq : Flapjack.WordAlloc.removeDeadStructural input3749 value1653 value1 value2 = (output3749, value1810, value1) :=
  node3749_cond_eq node3307_eq node3748_eq

theorem node3750_eq : Flapjack.WordAlloc.removeDeadStructural input3750 value1653 value1 value2 = (output3750, value1810, value1) :=
  node3750_cond_eq node3298_eq node3749_eq

theorem node3751_eq : Flapjack.WordAlloc.removeDeadStructural input3751 value1652 value1 value2 = (output3751, value1810, value1) :=
  node3751_cond_eq node3297_eq node3750_eq

theorem node3752_eq : Flapjack.WordAlloc.removeDeadStructural input3752 value5 value1 value2 = (output3752, value1810, value1) :=
  node3752_cond_eq node3296_eq node3751_eq

theorem node3753_eq : Flapjack.WordAlloc.removeDeadStructural input3753 value1646 value1 value2 = (output3753, value1810, value1) :=
  node3753_cond_eq node3293_eq node3752_eq

theorem node3754_eq : Flapjack.WordAlloc.removeDeadStructural input3754 value1646 value1 value2 = (output3754, value1810, value1) :=
  node3754_cond_eq node3284_eq node3753_eq

theorem node3755_eq : Flapjack.WordAlloc.removeDeadStructural input3755 value1645 value1 value2 = (output3755, value1810, value1) :=
  node3755_cond_eq node3283_eq node3754_eq

theorem node3756_eq : Flapjack.WordAlloc.removeDeadStructural input3756 value5 value1 value2 = (output3756, value1810, value1) :=
  node3756_cond_eq node3282_eq node3755_eq

theorem node3757_eq : Flapjack.WordAlloc.removeDeadStructural input3757 value1639 value1 value2 = (output3757, value1810, value1) :=
  node3757_cond_eq node3279_eq node3756_eq

theorem node3758_eq : Flapjack.WordAlloc.removeDeadStructural input3758 value1639 value1 value2 = (output3758, value1810, value1) :=
  node3758_cond_eq node3270_eq node3757_eq

theorem node3759_eq : Flapjack.WordAlloc.removeDeadStructural input3759 value1638 value1 value2 = (output3759, value1810, value1) :=
  node3759_cond_eq node3269_eq node3758_eq

theorem node3760_eq : Flapjack.WordAlloc.removeDeadStructural input3760 value5 value1 value2 = (output3760, value1810, value1) :=
  node3760_cond_eq node3268_eq node3759_eq

theorem node3761_eq : Flapjack.WordAlloc.removeDeadStructural input3761 value1632 value1 value2 = (output3761, value1810, value1) :=
  node3761_cond_eq node3265_eq node3760_eq

theorem node3762_eq : Flapjack.WordAlloc.removeDeadStructural input3762 value1632 value1 value2 = (output3762, value1810, value1) :=
  node3762_cond_eq node3256_eq node3761_eq

theorem node3763_eq : Flapjack.WordAlloc.removeDeadStructural input3763 value1631 value1 value2 = (output3763, value1810, value1) :=
  node3763_cond_eq node3255_eq node3762_eq

theorem node3764_eq : Flapjack.WordAlloc.removeDeadStructural input3764 value5 value1 value2 = (output3764, value1810, value1) :=
  node3764_cond_eq node3254_eq node3763_eq

theorem node3765_eq : Flapjack.WordAlloc.removeDeadStructural input3765 value1625 value1 value2 = (output3765, value1810, value1) :=
  node3765_cond_eq node3251_eq node3764_eq

theorem node3766_eq : Flapjack.WordAlloc.removeDeadStructural input3766 value1625 value1 value2 = (output3766, value1810, value1) :=
  node3766_cond_eq node3242_eq node3765_eq

theorem node3767_eq : Flapjack.WordAlloc.removeDeadStructural input3767 value1624 value1 value2 = (output3767, value1810, value1) :=
  node3767_cond_eq node3241_eq node3766_eq

theorem node3768_eq : Flapjack.WordAlloc.removeDeadStructural input3768 value5 value1 value2 = (output3768, value1810, value1) :=
  node3768_cond_eq node3240_eq node3767_eq

theorem node3769_eq : Flapjack.WordAlloc.removeDeadStructural input3769 value1618 value1 value2 = (output3769, value1810, value1) :=
  node3769_cond_eq node3237_eq node3768_eq

theorem node3770_eq : Flapjack.WordAlloc.removeDeadStructural input3770 value1618 value1 value2 = (output3770, value1810, value1) :=
  node3770_cond_eq node3228_eq node3769_eq

theorem node3771_eq : Flapjack.WordAlloc.removeDeadStructural input3771 value1617 value1 value2 = (output3771, value1810, value1) :=
  node3771_cond_eq node3227_eq node3770_eq

theorem node3772_eq : Flapjack.WordAlloc.removeDeadStructural input3772 value5 value1 value2 = (output3772, value1810, value1) :=
  node3772_cond_eq node3226_eq node3771_eq

theorem node3773_eq : Flapjack.WordAlloc.removeDeadStructural input3773 value1611 value1 value2 = (output3773, value1810, value1) :=
  node3773_cond_eq node3223_eq node3772_eq

theorem node3774_eq : Flapjack.WordAlloc.removeDeadStructural input3774 value1611 value1 value2 = (output3774, value1810, value1) :=
  node3774_cond_eq node3214_eq node3773_eq

theorem node3775_eq : Flapjack.WordAlloc.removeDeadStructural input3775 value1610 value1 value2 = (output3775, value1810, value1) :=
  node3775_cond_eq node3213_eq node3774_eq

theorem node3776_eq : Flapjack.WordAlloc.removeDeadStructural input3776 value5 value1 value2 = (output3776, value1810, value1) :=
  node3776_cond_eq node3212_eq node3775_eq

theorem node3777_eq : Flapjack.WordAlloc.removeDeadStructural input3777 value1604 value1 value2 = (output3777, value1810, value1) :=
  node3777_cond_eq node3209_eq node3776_eq

theorem node3778_eq : Flapjack.WordAlloc.removeDeadStructural input3778 value1604 value1 value2 = (output3778, value1810, value1) :=
  node3778_cond_eq node3200_eq node3777_eq

theorem node3779_eq : Flapjack.WordAlloc.removeDeadStructural input3779 value1603 value1 value2 = (output3779, value1810, value1) :=
  node3779_cond_eq node3199_eq node3778_eq

theorem node3780_eq : Flapjack.WordAlloc.removeDeadStructural input3780 value5 value1 value2 = (output3780, value1810, value1) :=
  node3780_cond_eq node3198_eq node3779_eq

theorem node3781_eq : Flapjack.WordAlloc.removeDeadStructural input3781 value1597 value1 value2 = (output3781, value1810, value1) :=
  node3781_cond_eq node3195_eq node3780_eq

theorem node3782_eq : Flapjack.WordAlloc.removeDeadStructural input3782 value1597 value1 value2 = (output3782, value1810, value1) :=
  node3782_cond_eq node3186_eq node3781_eq

theorem node3783_eq : Flapjack.WordAlloc.removeDeadStructural input3783 value1596 value1 value2 = (output3783, value1810, value1) :=
  node3783_cond_eq node3185_eq node3782_eq

theorem node3784_eq : Flapjack.WordAlloc.removeDeadStructural input3784 value5 value1 value2 = (output3784, value1810, value1) :=
  node3784_cond_eq node3184_eq node3783_eq

theorem node3785_eq : Flapjack.WordAlloc.removeDeadStructural input3785 value1590 value1 value2 = (output3785, value1810, value1) :=
  node3785_cond_eq node3181_eq node3784_eq

theorem node3786_eq : Flapjack.WordAlloc.removeDeadStructural input3786 value1590 value1 value2 = (output3786, value1810, value1) :=
  node3786_cond_eq node3172_eq node3785_eq

theorem node3787_eq : Flapjack.WordAlloc.removeDeadStructural input3787 value1589 value1 value2 = (output3787, value1810, value1) :=
  node3787_cond_eq node3171_eq node3786_eq

theorem node3788_eq : Flapjack.WordAlloc.removeDeadStructural input3788 value5 value1 value2 = (output3788, value1810, value1) :=
  node3788_cond_eq node3170_eq node3787_eq

theorem node3789_eq : Flapjack.WordAlloc.removeDeadStructural input3789 value1583 value1 value2 = (output3789, value1810, value1) :=
  node3789_cond_eq node3167_eq node3788_eq

theorem node3790_eq : Flapjack.WordAlloc.removeDeadStructural input3790 value1583 value1 value2 = (output3790, value1810, value1) :=
  node3790_cond_eq node3158_eq node3789_eq

theorem node3791_eq : Flapjack.WordAlloc.removeDeadStructural input3791 value1582 value1 value2 = (output3791, value1810, value1) :=
  node3791_cond_eq node3157_eq node3790_eq

theorem node3792_eq : Flapjack.WordAlloc.removeDeadStructural input3792 value5 value1 value2 = (output3792, value1810, value1) :=
  node3792_cond_eq node3156_eq node3791_eq

theorem node3793_eq : Flapjack.WordAlloc.removeDeadStructural input3793 value1576 value1 value2 = (output3793, value1810, value1) :=
  node3793_cond_eq node3153_eq node3792_eq

theorem node3794_eq : Flapjack.WordAlloc.removeDeadStructural input3794 value1576 value1 value2 = (output3794, value1810, value1) :=
  node3794_cond_eq node3144_eq node3793_eq

theorem node3795_eq : Flapjack.WordAlloc.removeDeadStructural input3795 value1575 value1 value2 = (output3795, value1810, value1) :=
  node3795_cond_eq node3143_eq node3794_eq

theorem node3796_eq : Flapjack.WordAlloc.removeDeadStructural input3796 value5 value1 value2 = (output3796, value1810, value1) :=
  node3796_cond_eq node3142_eq node3795_eq

theorem node3797_eq : Flapjack.WordAlloc.removeDeadStructural input3797 value1569 value1 value2 = (output3797, value1810, value1) :=
  node3797_cond_eq node3139_eq node3796_eq

theorem node3798_eq : Flapjack.WordAlloc.removeDeadStructural input3798 value1569 value1 value2 = (output3798, value1810, value1) :=
  node3798_cond_eq node3130_eq node3797_eq

theorem node3799_eq : Flapjack.WordAlloc.removeDeadStructural input3799 value1568 value1 value2 = (output3799, value1810, value1) :=
  node3799_cond_eq node3129_eq node3798_eq

theorem node3800_eq : Flapjack.WordAlloc.removeDeadStructural input3800 value5 value1 value2 = (output3800, value1810, value1) :=
  node3800_cond_eq node3128_eq node3799_eq

theorem node3801_eq : Flapjack.WordAlloc.removeDeadStructural input3801 value1562 value1 value2 = (output3801, value1810, value1) :=
  node3801_cond_eq node3125_eq node3800_eq

theorem node3802_eq : Flapjack.WordAlloc.removeDeadStructural input3802 value1562 value1 value2 = (output3802, value1810, value1) :=
  node3802_cond_eq node3116_eq node3801_eq

theorem node3803_eq : Flapjack.WordAlloc.removeDeadStructural input3803 value1561 value1 value2 = (output3803, value1810, value1) :=
  node3803_cond_eq node3115_eq node3802_eq

theorem node3804_eq : Flapjack.WordAlloc.removeDeadStructural input3804 value5 value1 value2 = (output3804, value1810, value1) :=
  node3804_cond_eq node3114_eq node3803_eq

theorem node3805_eq : Flapjack.WordAlloc.removeDeadStructural input3805 value1555 value1 value2 = (output3805, value1810, value1) :=
  node3805_cond_eq node3111_eq node3804_eq

theorem node3806_eq : Flapjack.WordAlloc.removeDeadStructural input3806 value1555 value1 value2 = (output3806, value1810, value1) :=
  node3806_cond_eq node3102_eq node3805_eq

theorem node3807_eq : Flapjack.WordAlloc.removeDeadStructural input3807 value1554 value1 value2 = (output3807, value1810, value1) :=
  node3807_cond_eq node3101_eq node3806_eq

theorem node3808_eq : Flapjack.WordAlloc.removeDeadStructural input3808 value5 value1 value2 = (output3808, value1810, value1) :=
  node3808_cond_eq node3100_eq node3807_eq

theorem node3809_eq : Flapjack.WordAlloc.removeDeadStructural input3809 value1548 value1 value2 = (output3809, value1810, value1) :=
  node3809_cond_eq node3097_eq node3808_eq

theorem node3810_eq : Flapjack.WordAlloc.removeDeadStructural input3810 value1548 value1 value2 = (output3810, value1810, value1) :=
  node3810_cond_eq node3088_eq node3809_eq

theorem node3811_eq : Flapjack.WordAlloc.removeDeadStructural input3811 value1547 value1 value2 = (output3811, value1810, value1) :=
  node3811_cond_eq node3087_eq node3810_eq

theorem node3812_eq : Flapjack.WordAlloc.removeDeadStructural input3812 value5 value1 value2 = (output3812, value1810, value1) :=
  node3812_cond_eq node3086_eq node3811_eq

theorem node3813_eq : Flapjack.WordAlloc.removeDeadStructural input3813 value1541 value1 value2 = (output3813, value1810, value1) :=
  node3813_cond_eq node3083_eq node3812_eq

theorem node3814_eq : Flapjack.WordAlloc.removeDeadStructural input3814 value1541 value1 value2 = (output3814, value1810, value1) :=
  node3814_cond_eq node3074_eq node3813_eq

theorem node3815_eq : Flapjack.WordAlloc.removeDeadStructural input3815 value1540 value1 value2 = (output3815, value1810, value1) :=
  node3815_cond_eq node3073_eq node3814_eq

theorem node3816_eq : Flapjack.WordAlloc.removeDeadStructural input3816 value5 value1 value2 = (output3816, value1810, value1) :=
  node3816_cond_eq node3072_eq node3815_eq

theorem node3817_eq : Flapjack.WordAlloc.removeDeadStructural input3817 value1534 value1 value2 = (output3817, value1810, value1) :=
  node3817_cond_eq node3069_eq node3816_eq

theorem node3818_eq : Flapjack.WordAlloc.removeDeadStructural input3818 value1534 value1 value2 = (output3818, value1810, value1) :=
  node3818_cond_eq node3060_eq node3817_eq

theorem node3819_eq : Flapjack.WordAlloc.removeDeadStructural input3819 value1533 value1 value2 = (output3819, value1810, value1) :=
  node3819_cond_eq node3059_eq node3818_eq

theorem node3820_eq : Flapjack.WordAlloc.removeDeadStructural input3820 value5 value1 value2 = (output3820, value1810, value1) :=
  node3820_cond_eq node3058_eq node3819_eq

theorem node3821_eq : Flapjack.WordAlloc.removeDeadStructural input3821 value1527 value1 value2 = (output3821, value1810, value1) :=
  node3821_cond_eq node3055_eq node3820_eq

theorem node3822_eq : Flapjack.WordAlloc.removeDeadStructural input3822 value1527 value1 value2 = (output3822, value1810, value1) :=
  node3822_cond_eq node3046_eq node3821_eq

theorem node3823_eq : Flapjack.WordAlloc.removeDeadStructural input3823 value1526 value1 value2 = (output3823, value1810, value1) :=
  node3823_cond_eq node3045_eq node3822_eq

theorem node3824_eq : Flapjack.WordAlloc.removeDeadStructural input3824 value5 value1 value2 = (output3824, value1810, value1) :=
  node3824_cond_eq node3044_eq node3823_eq

theorem node3825_eq : Flapjack.WordAlloc.removeDeadStructural input3825 value1520 value1 value2 = (output3825, value1810, value1) :=
  node3825_cond_eq node3041_eq node3824_eq

theorem node3826_eq : Flapjack.WordAlloc.removeDeadStructural input3826 value1520 value1 value2 = (output3826, value1810, value1) :=
  node3826_cond_eq node3032_eq node3825_eq

theorem node3827_eq : Flapjack.WordAlloc.removeDeadStructural input3827 value1519 value1 value2 = (output3827, value1810, value1) :=
  node3827_cond_eq node3031_eq node3826_eq

theorem node3828_eq : Flapjack.WordAlloc.removeDeadStructural input3828 value5 value1 value2 = (output3828, value1810, value1) :=
  node3828_cond_eq node3030_eq node3827_eq

theorem node3829_eq : Flapjack.WordAlloc.removeDeadStructural input3829 value1513 value1 value2 = (output3829, value1810, value1) :=
  node3829_cond_eq node3027_eq node3828_eq

theorem node3830_eq : Flapjack.WordAlloc.removeDeadStructural input3830 value1513 value1 value2 = (output3830, value1810, value1) :=
  node3830_cond_eq node3018_eq node3829_eq

theorem node3831_eq : Flapjack.WordAlloc.removeDeadStructural input3831 value1512 value1 value2 = (output3831, value1810, value1) :=
  node3831_cond_eq node3017_eq node3830_eq

theorem node3832_eq : Flapjack.WordAlloc.removeDeadStructural input3832 value5 value1 value2 = (output3832, value1810, value1) :=
  node3832_cond_eq node3016_eq node3831_eq

theorem node3833_eq : Flapjack.WordAlloc.removeDeadStructural input3833 value1506 value1 value2 = (output3833, value1810, value1) :=
  node3833_cond_eq node3013_eq node3832_eq

theorem node3834_eq : Flapjack.WordAlloc.removeDeadStructural input3834 value1506 value1 value2 = (output3834, value1810, value1) :=
  node3834_cond_eq node3004_eq node3833_eq

theorem node3835_eq : Flapjack.WordAlloc.removeDeadStructural input3835 value1505 value1 value2 = (output3835, value1810, value1) :=
  node3835_cond_eq node3003_eq node3834_eq

theorem node3836_eq : Flapjack.WordAlloc.removeDeadStructural input3836 value5 value1 value2 = (output3836, value1810, value1) :=
  node3836_cond_eq node3002_eq node3835_eq

theorem node3837_eq : Flapjack.WordAlloc.removeDeadStructural input3837 value1499 value1 value2 = (output3837, value1810, value1) :=
  node3837_cond_eq node2999_eq node3836_eq

theorem node3838_eq : Flapjack.WordAlloc.removeDeadStructural input3838 value1499 value1 value2 = (output3838, value1810, value1) :=
  node3838_cond_eq node2990_eq node3837_eq

theorem node3839_eq : Flapjack.WordAlloc.removeDeadStructural input3839 value1498 value1 value2 = (output3839, value1810, value1) :=
  node3839_cond_eq node2989_eq node3838_eq

#print axioms node3839_eq
end InitECandidate.Proofs.DeadStages830.Parallel
