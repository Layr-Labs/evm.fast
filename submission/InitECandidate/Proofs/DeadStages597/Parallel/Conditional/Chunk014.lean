import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk014
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node3584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3584 value646 value1 value2 = (output3584, value646, value1) := by
  rw [input3584_def, output3584_def]
  kernel_rfl

theorem node3585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3585 value646 value1 value2 = (output3585, value646, value1) := by
  rw [input3585_def, output3585_def]
  kernel_rfl

theorem node3586_cond_eq
    (child3584 : Flapjack.WordAlloc.removeDeadStructural input3584 value646 value1 value2 = (output3584, value646, value1))
    (child3585 : Flapjack.WordAlloc.removeDeadStructural input3585 value646 value1 value2 = (output3585, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input3586 value646 value1 value2 = (output3586, value646, value1) := by
  rw [input3586_def, output3586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3584]
  try dsimp only
  rw [child3585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3584_skip, output3585_skip]
  kernel_rfl

theorem node3587_cond_eq
    (child3583 : Flapjack.WordAlloc.removeDeadStructural input3583 value646 value1 value2 = (output3583, value646, value1))
    (child3586 : Flapjack.WordAlloc.removeDeadStructural input3586 value646 value1 value2 = (output3586, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input3587 value646 value1 value2 = (output3587, value646, value1) := by
  rw [input3587_def, output3587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3583]
  try dsimp only
  rw [child3586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3583_skip, output3586_skip]
  kernel_rfl

theorem node3588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3588 value646 value1 value2 = (output3588, value646, value1) := by
  rw [input3588_def, output3588_def]
  kernel_rfl

theorem node3589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3589 value646 value1 value2 = (output3589, value646, value1) := by
  rw [input3589_def, output3589_def]
  kernel_rfl

theorem node3590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3590 value646 value1 value2 = (output3590, value646, value1) := by
  rw [input3590_def, output3590_def]
  kernel_rfl

theorem node3591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3591 value646 value1 value2 = (output3591, value646, value1) := by
  rw [input3591_def, output3591_def]
  kernel_rfl

theorem node3592_cond_eq
    (child3590 : Flapjack.WordAlloc.removeDeadStructural input3590 value646 value1 value2 = (output3590, value646, value1))
    (child3591 : Flapjack.WordAlloc.removeDeadStructural input3591 value646 value1 value2 = (output3591, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input3592 value646 value1 value2 = (output3592, value646, value1) := by
  rw [input3592_def, output3592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3590]
  try dsimp only
  rw [child3591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3590_skip, output3591_skip]
  kernel_rfl

theorem node3593_cond_eq
    (child3589 : Flapjack.WordAlloc.removeDeadStructural input3589 value646 value1 value2 = (output3589, value646, value1))
    (child3592 : Flapjack.WordAlloc.removeDeadStructural input3592 value646 value1 value2 = (output3592, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input3593 value646 value1 value2 = (output3593, value646, value1) := by
  rw [input3593_def, output3593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3589]
  try dsimp only
  rw [child3592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3589_skip, output3592_skip]
  kernel_rfl

theorem node3594_cond_eq
    (child3588 : Flapjack.WordAlloc.removeDeadStructural input3588 value646 value1 value2 = (output3588, value646, value1))
    (child3593 : Flapjack.WordAlloc.removeDeadStructural input3593 value646 value1 value2 = (output3593, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input3594 value646 value1 value2 = (output3594, value646, value1) := by
  rw [input3594_def, output3594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3588]
  try dsimp only
  rw [child3593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3588_skip, output3593_skip]
  kernel_rfl

theorem node3595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3595 value646 value1 value2 = (output3595, value647, value1) := by
  rw [input3595_def, output3595_def]
  kernel_rfl

theorem node3596_cond_eq
    (child3594 : Flapjack.WordAlloc.removeDeadStructural input3594 value646 value1 value2 = (output3594, value646, value1))
    (child3595 : Flapjack.WordAlloc.removeDeadStructural input3595 value646 value1 value2 = (output3595, value647, value1)) : Flapjack.WordAlloc.removeDeadStructural input3596 value646 value1 value2 = (output3596, value647, value1) := by
  rw [input3596_def, output3596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3594]
  try dsimp only
  rw [child3595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3594_skip, output3595_skip]
  kernel_rfl

theorem node3597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3597 value647 value1 value2 = (output3597, value648, value1) := by
  rw [input3597_def, output3597_def]
  kernel_rfl

theorem node3598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3598 value648 value1 value2 = (output3598, value649, value1) := by
  rw [input3598_def, output3598_def]
  kernel_rfl

theorem node3599_cond_eq
    (child3597 : Flapjack.WordAlloc.removeDeadStructural input3597 value647 value1 value2 = (output3597, value648, value1))
    (child3598 : Flapjack.WordAlloc.removeDeadStructural input3598 value648 value1 value2 = (output3598, value649, value1)) : Flapjack.WordAlloc.removeDeadStructural input3599 value647 value1 value2 = (output3599, value649, value1) := by
  rw [input3599_def, output3599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3597]
  try dsimp only
  rw [child3598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3597_skip, output3598_skip]
  kernel_rfl

theorem node3600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3600 value649 value1 value2 = (output3600, value647, value1) := by
  rw [input3600_def, output3600_def]
  kernel_rfl

theorem node3601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3601 value647 value1 value2 = (output3601, value650, value8) := by
  rw [input3601_def, output3601_def]
  kernel_rfl

theorem node3602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3602 value650 value8 value2 = (output3602, value651, value8) := by
  rw [input3602_def, output3602_def]
  kernel_rfl

theorem node3603_cond_eq
    (child3601 : Flapjack.WordAlloc.removeDeadStructural input3601 value647 value1 value2 = (output3601, value650, value8))
    (child3602 : Flapjack.WordAlloc.removeDeadStructural input3602 value650 value8 value2 = (output3602, value651, value8)) : Flapjack.WordAlloc.removeDeadStructural input3603 value647 value1 value2 = (output3603, value651, value8) := by
  rw [input3603_def, output3603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3601]
  try dsimp only
  rw [child3602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3601_skip, output3602_skip]
  kernel_rfl

theorem node3604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3604 value651 value8 value2 = (output3604, value647, value8) := by
  rw [input3604_def, output3604_def]
  kernel_rfl

theorem node3605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3605 value647 value8 value2 = (output3605, value647, value8) := by
  rw [input3605_def, output3605_def]
  kernel_rfl

theorem node3606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3606 value647 value8 value2 = (output3606, value647, value8) := by
  rw [input3606_def, output3606_def]
  kernel_rfl

theorem node3607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3607 value647 value8 value2 = (output3607, value652, value8) := by
  rw [input3607_def, output3607_def]
  kernel_rfl

theorem node3608_cond_eq
    (child3606 : Flapjack.WordAlloc.removeDeadStructural input3606 value647 value8 value2 = (output3606, value647, value8))
    (child3607 : Flapjack.WordAlloc.removeDeadStructural input3607 value647 value8 value2 = (output3607, value652, value8)) : Flapjack.WordAlloc.removeDeadStructural input3608 value647 value8 value2 = (output3608, value652, value8) := by
  rw [input3608_def, output3608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3606]
  try dsimp only
  rw [child3607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3606_skip, output3607_skip]
  kernel_rfl

theorem node3609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3609 value652 value8 value2 = (output3609, value652, value8) := by
  rw [input3609_def, output3609_def]
  kernel_rfl

theorem node3610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3610 value652 value8 value2 = (output3610, value652, value8) := by
  rw [input3610_def, output3610_def]
  kernel_rfl

theorem node3611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3611 value652 value8 value2 = (output3611, value652, value8) := by
  rw [input3611_def, output3611_def]
  kernel_rfl

theorem node3612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3612 value652 value8 value2 = (output3612, value652, value8) := by
  rw [input3612_def, output3612_def]
  kernel_rfl

theorem node3613_cond_eq
    (child3611 : Flapjack.WordAlloc.removeDeadStructural input3611 value652 value8 value2 = (output3611, value652, value8))
    (child3612 : Flapjack.WordAlloc.removeDeadStructural input3612 value652 value8 value2 = (output3612, value652, value8)) : Flapjack.WordAlloc.removeDeadStructural input3613 value652 value8 value2 = (output3613, value652, value8) := by
  rw [input3613_def, output3613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3611]
  try dsimp only
  rw [child3612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3611_skip, output3612_skip]
  kernel_rfl

theorem node3614_cond_eq
    (child3610 : Flapjack.WordAlloc.removeDeadStructural input3610 value652 value8 value2 = (output3610, value652, value8))
    (child3613 : Flapjack.WordAlloc.removeDeadStructural input3613 value652 value8 value2 = (output3613, value652, value8)) : Flapjack.WordAlloc.removeDeadStructural input3614 value652 value8 value2 = (output3614, value652, value8) := by
  rw [input3614_def, output3614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3610]
  try dsimp only
  rw [child3613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3610_skip, output3613_skip]
  kernel_rfl

theorem node3615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3615 value652 value8 value2 = (output3615, value652, value8) := by
  rw [input3615_def, output3615_def]
  kernel_rfl

theorem node3616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3616 value652 value8 value2 = (output3616, value652, value8) := by
  rw [input3616_def, output3616_def]
  kernel_rfl

theorem node3617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3617 value652 value8 value2 = (output3617, value653, value8) := by
  rw [input3617_def, output3617_def]
  kernel_rfl

theorem node3618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3618 value653 value8 value2 = (output3618, value653, value8) := by
  rw [input3618_def, output3618_def]
  kernel_rfl

theorem node3619_cond_eq
    (child3617 : Flapjack.WordAlloc.removeDeadStructural input3617 value652 value8 value2 = (output3617, value653, value8))
    (child3618 : Flapjack.WordAlloc.removeDeadStructural input3618 value653 value8 value2 = (output3618, value653, value8)) : Flapjack.WordAlloc.removeDeadStructural input3619 value652 value8 value2 = (output3619, value653, value8) := by
  rw [input3619_def, output3619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3617]
  try dsimp only
  rw [child3618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3617_skip, output3618_skip]
  kernel_rfl

theorem node3620_cond_eq
    (child3616 : Flapjack.WordAlloc.removeDeadStructural input3616 value652 value8 value2 = (output3616, value652, value8))
    (child3619 : Flapjack.WordAlloc.removeDeadStructural input3619 value652 value8 value2 = (output3619, value653, value8)) : Flapjack.WordAlloc.removeDeadStructural input3620 value652 value8 value2 = (output3620, value653, value8) := by
  rw [input3620_def, output3620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3616]
  try dsimp only
  rw [child3619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3616_skip, output3619_skip]
  kernel_rfl

theorem node3621_cond_eq
    (child3615 : Flapjack.WordAlloc.removeDeadStructural input3615 value652 value8 value2 = (output3615, value652, value8))
    (child3620 : Flapjack.WordAlloc.removeDeadStructural input3620 value652 value8 value2 = (output3620, value653, value8)) : Flapjack.WordAlloc.removeDeadStructural input3621 value652 value8 value2 = (output3621, value653, value8) := by
  rw [input3621_def, output3621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3615]
  try dsimp only
  rw [child3620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3615_skip, output3620_skip]
  kernel_rfl

theorem node3622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3622 value653 value8 value2 = (output3622, value654, value8) := by
  rw [input3622_def, output3622_def]
  kernel_rfl

theorem node3623_cond_eq
    (child3621 : Flapjack.WordAlloc.removeDeadStructural input3621 value652 value8 value2 = (output3621, value653, value8))
    (child3622 : Flapjack.WordAlloc.removeDeadStructural input3622 value653 value8 value2 = (output3622, value654, value8)) : Flapjack.WordAlloc.removeDeadStructural input3623 value652 value8 value2 = (output3623, value654, value8) := by
  rw [input3623_def, output3623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3621]
  try dsimp only
  rw [child3622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3621_skip, output3622_skip]
  kernel_rfl

theorem node3624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3624 value654 value8 value2 = (output3624, value655, value1) := by
  rw [input3624_def, output3624_def]
  kernel_rfl

theorem node3625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3625 value655 value1 value2 = (output3625, value656, value1) := by
  rw [input3625_def, output3625_def]
  kernel_rfl

theorem node3626_cond_eq
    (child3624 : Flapjack.WordAlloc.removeDeadStructural input3624 value654 value8 value2 = (output3624, value655, value1))
    (child3625 : Flapjack.WordAlloc.removeDeadStructural input3625 value655 value1 value2 = (output3625, value656, value1)) : Flapjack.WordAlloc.removeDeadStructural input3626 value654 value8 value2 = (output3626, value656, value1) := by
  rw [input3626_def, output3626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3624]
  try dsimp only
  rw [child3625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3624_skip, output3625_skip]
  kernel_rfl

theorem node3627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3627 value656 value1 value2 = (output3627, value654, value1) := by
  rw [input3627_def, output3627_def]
  kernel_rfl

theorem node3628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3628 value654 value1 value2 = (output3628, value654, value1) := by
  rw [input3628_def, output3628_def]
  kernel_rfl

theorem node3629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3629 value654 value1 value2 = (output3629, value657, value1) := by
  rw [input3629_def, output3629_def]
  kernel_rfl

theorem node3630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3630 value657 value1 value2 = (output3630, value657, value1) := by
  rw [input3630_def, output3630_def]
  kernel_rfl

theorem node3631_cond_eq
    (child3629 : Flapjack.WordAlloc.removeDeadStructural input3629 value654 value1 value2 = (output3629, value657, value1))
    (child3630 : Flapjack.WordAlloc.removeDeadStructural input3630 value657 value1 value2 = (output3630, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input3631 value654 value1 value2 = (output3631, value657, value1) := by
  rw [input3631_def, output3631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3629]
  try dsimp only
  rw [child3630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3629_skip, output3630_skip]
  kernel_rfl

theorem node3632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3632 value657 value1 value2 = (output3632, value658, value1) := by
  rw [input3632_def, output3632_def]
  kernel_rfl

theorem node3633_cond_eq
    (child3631 : Flapjack.WordAlloc.removeDeadStructural input3631 value654 value1 value2 = (output3631, value657, value1))
    (child3632 : Flapjack.WordAlloc.removeDeadStructural input3632 value657 value1 value2 = (output3632, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3633 value654 value1 value2 = (output3633, value658, value1) := by
  rw [input3633_def, output3633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3631]
  try dsimp only
  rw [child3632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3631_skip, output3632_skip]
  kernel_rfl

theorem node3634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3634 value658 value1 value2 = (output3634, value658, value1) := by
  rw [input3634_def, output3634_def]
  kernel_rfl

theorem node3635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3635 value658 value1 value2 = (output3635, value658, value1) := by
  rw [input3635_def, output3635_def]
  kernel_rfl

theorem node3636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3636 value658 value1 value2 = (output3636, value658, value1) := by
  rw [input3636_def, output3636_def]
  kernel_rfl

theorem node3637_cond_eq
    (child3635 : Flapjack.WordAlloc.removeDeadStructural input3635 value658 value1 value2 = (output3635, value658, value1))
    (child3636 : Flapjack.WordAlloc.removeDeadStructural input3636 value658 value1 value2 = (output3636, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3637 value658 value1 value2 = (output3637, value658, value1) := by
  rw [input3637_def, output3637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3635]
  try dsimp only
  rw [child3636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3635_skip, output3636_skip]
  kernel_rfl

theorem node3638_cond_eq
    (child3634 : Flapjack.WordAlloc.removeDeadStructural input3634 value658 value1 value2 = (output3634, value658, value1))
    (child3637 : Flapjack.WordAlloc.removeDeadStructural input3637 value658 value1 value2 = (output3637, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3638 value658 value1 value2 = (output3638, value658, value1) := by
  rw [input3638_def, output3638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3634]
  try dsimp only
  rw [child3637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3634_skip, output3637_skip]
  kernel_rfl

theorem node3639_cond_eq
    (child3633 : Flapjack.WordAlloc.removeDeadStructural input3633 value654 value1 value2 = (output3633, value658, value1))
    (child3638 : Flapjack.WordAlloc.removeDeadStructural input3638 value658 value1 value2 = (output3638, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3639 value654 value1 value2 = (output3639, value658, value1) := by
  rw [input3639_def, output3639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3633]
  try dsimp only
  rw [child3638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3633_skip, output3638_skip]
  kernel_rfl

theorem node3640_cond_eq
    (child3628 : Flapjack.WordAlloc.removeDeadStructural input3628 value654 value1 value2 = (output3628, value654, value1))
    (child3639 : Flapjack.WordAlloc.removeDeadStructural input3639 value654 value1 value2 = (output3639, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3640 value654 value1 value2 = (output3640, value658, value1) := by
  rw [input3640_def, output3640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3628]
  try dsimp only
  rw [child3639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3628_skip, output3639_skip]
  kernel_rfl

theorem node3641_cond_eq
    (child3627 : Flapjack.WordAlloc.removeDeadStructural input3627 value656 value1 value2 = (output3627, value654, value1))
    (child3640 : Flapjack.WordAlloc.removeDeadStructural input3640 value654 value1 value2 = (output3640, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3641 value656 value1 value2 = (output3641, value658, value1) := by
  rw [input3641_def, output3641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3627]
  try dsimp only
  rw [child3640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3627_skip, output3640_skip]
  kernel_rfl

theorem node3642_cond_eq
    (child3626 : Flapjack.WordAlloc.removeDeadStructural input3626 value654 value8 value2 = (output3626, value656, value1))
    (child3641 : Flapjack.WordAlloc.removeDeadStructural input3641 value656 value1 value2 = (output3641, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3642 value654 value8 value2 = (output3642, value658, value1) := by
  rw [input3642_def, output3642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3626]
  try dsimp only
  rw [child3641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3626_skip, output3641_skip]
  kernel_rfl

theorem node3643_cond_eq
    (child3623 : Flapjack.WordAlloc.removeDeadStructural input3623 value652 value8 value2 = (output3623, value654, value8))
    (child3642 : Flapjack.WordAlloc.removeDeadStructural input3642 value654 value8 value2 = (output3642, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3643 value652 value8 value2 = (output3643, value658, value1) := by
  rw [input3643_def, output3643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3623]
  try dsimp only
  rw [child3642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3623_skip, output3642_skip]
  kernel_rfl

theorem node3644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3644 value652 value8 value2 = (output3644, value652, value8) := by
  rw [input3644_def, output3644_def]
  kernel_rfl

theorem node3645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3645 value652 value8 value2 = (output3645, value652, value8) := by
  rw [input3645_def, output3645_def]
  kernel_rfl

theorem node3646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3646 value652 value8 value2 = (output3646, value659, value8) := by
  rw [input3646_def, output3646_def]
  kernel_rfl

theorem node3647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3647 value659 value8 value2 = (output3647, value659, value8) := by
  rw [input3647_def, output3647_def]
  kernel_rfl

theorem node3648_cond_eq
    (child3646 : Flapjack.WordAlloc.removeDeadStructural input3646 value652 value8 value2 = (output3646, value659, value8))
    (child3647 : Flapjack.WordAlloc.removeDeadStructural input3647 value659 value8 value2 = (output3647, value659, value8)) : Flapjack.WordAlloc.removeDeadStructural input3648 value652 value8 value2 = (output3648, value659, value8) := by
  rw [input3648_def, output3648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3646]
  try dsimp only
  rw [child3647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3646_skip, output3647_skip]
  kernel_rfl

theorem node3649_cond_eq
    (child3645 : Flapjack.WordAlloc.removeDeadStructural input3645 value652 value8 value2 = (output3645, value652, value8))
    (child3648 : Flapjack.WordAlloc.removeDeadStructural input3648 value652 value8 value2 = (output3648, value659, value8)) : Flapjack.WordAlloc.removeDeadStructural input3649 value652 value8 value2 = (output3649, value659, value8) := by
  rw [input3649_def, output3649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3645]
  try dsimp only
  rw [child3648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3645_skip, output3648_skip]
  kernel_rfl

theorem node3650_cond_eq
    (child3644 : Flapjack.WordAlloc.removeDeadStructural input3644 value652 value8 value2 = (output3644, value652, value8))
    (child3649 : Flapjack.WordAlloc.removeDeadStructural input3649 value652 value8 value2 = (output3649, value659, value8)) : Flapjack.WordAlloc.removeDeadStructural input3650 value652 value8 value2 = (output3650, value659, value8) := by
  rw [input3650_def, output3650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3644]
  try dsimp only
  rw [child3649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3644_skip, output3649_skip]
  kernel_rfl

theorem node3651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3651 value659 value8 value2 = (output3651, value660, value8) := by
  rw [input3651_def, output3651_def]
  kernel_rfl

theorem node3652_cond_eq
    (child3650 : Flapjack.WordAlloc.removeDeadStructural input3650 value652 value8 value2 = (output3650, value659, value8))
    (child3651 : Flapjack.WordAlloc.removeDeadStructural input3651 value659 value8 value2 = (output3651, value660, value8)) : Flapjack.WordAlloc.removeDeadStructural input3652 value652 value8 value2 = (output3652, value660, value8) := by
  rw [input3652_def, output3652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3650]
  try dsimp only
  rw [child3651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3650_skip, output3651_skip]
  kernel_rfl

theorem node3653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3653 value660 value8 value2 = (output3653, value660, value8) := by
  rw [input3653_def, output3653_def]
  kernel_rfl

theorem node3654_cond_eq
    (child3652 : Flapjack.WordAlloc.removeDeadStructural input3652 value652 value8 value2 = (output3652, value660, value8))
    (child3653 : Flapjack.WordAlloc.removeDeadStructural input3653 value660 value8 value2 = (output3653, value660, value8)) : Flapjack.WordAlloc.removeDeadStructural input3654 value652 value8 value2 = (output3654, value660, value8) := by
  rw [input3654_def, output3654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3652]
  try dsimp only
  rw [child3653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3652_skip, output3653_skip]
  kernel_rfl

theorem node3655_cond_eq
    (child3643 : Flapjack.WordAlloc.removeDeadStructural input3643 value652 value8 value2 = (output3643, value658, value1))
    (child3654 : Flapjack.WordAlloc.removeDeadStructural input3654 value652 value8 value2 = (output3654, value660, value8)) : Flapjack.WordAlloc.removeDeadStructural input3655 value652 value8 value2 = (output3655, value662, value1) := by
  rw [input3655_def, output3655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3643]
  try dsimp only
  rw [child3654]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3643_skip, output3654_skip]
  kernel_rfl

theorem node3656_cond_eq
    (child3614 : Flapjack.WordAlloc.removeDeadStructural input3614 value652 value8 value2 = (output3614, value652, value8))
    (child3655 : Flapjack.WordAlloc.removeDeadStructural input3655 value652 value8 value2 = (output3655, value662, value1)) : Flapjack.WordAlloc.removeDeadStructural input3656 value652 value8 value2 = (output3656, value662, value1) := by
  rw [input3656_def, output3656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3614]
  try dsimp only
  rw [child3655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3614_skip, output3655_skip]
  kernel_rfl

theorem node3657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3657 value662 value1 value2 = (output3657, value660, value1) := by
  rw [input3657_def, output3657_def]
  kernel_rfl

theorem node3658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3658 value660 value1 value2 = (output3658, value663, value1) := by
  rw [input3658_def, output3658_def]
  kernel_rfl

theorem node3659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3659 value663 value1 value2 = (output3659, value663, value1) := by
  rw [input3659_def, output3659_def]
  kernel_rfl

theorem node3660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3660 value663 value1 value2 = (output3660, value663, value1) := by
  rw [input3660_def, output3660_def]
  kernel_rfl

theorem node3661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3661 value663 value1 value2 = (output3661, value663, value1) := by
  rw [input3661_def, output3661_def]
  kernel_rfl

theorem node3662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3662 value663 value1 value2 = (output3662, value663, value1) := by
  rw [input3662_def, output3662_def]
  kernel_rfl

theorem node3663_cond_eq
    (child3661 : Flapjack.WordAlloc.removeDeadStructural input3661 value663 value1 value2 = (output3661, value663, value1))
    (child3662 : Flapjack.WordAlloc.removeDeadStructural input3662 value663 value1 value2 = (output3662, value663, value1)) : Flapjack.WordAlloc.removeDeadStructural input3663 value663 value1 value2 = (output3663, value663, value1) := by
  rw [input3663_def, output3663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3661]
  try dsimp only
  rw [child3662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3661_skip, output3662_skip]
  kernel_rfl

theorem node3664_cond_eq
    (child3660 : Flapjack.WordAlloc.removeDeadStructural input3660 value663 value1 value2 = (output3660, value663, value1))
    (child3663 : Flapjack.WordAlloc.removeDeadStructural input3663 value663 value1 value2 = (output3663, value663, value1)) : Flapjack.WordAlloc.removeDeadStructural input3664 value663 value1 value2 = (output3664, value663, value1) := by
  rw [input3664_def, output3664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3660]
  try dsimp only
  rw [child3663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3660_skip, output3663_skip]
  kernel_rfl

theorem node3665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3665 value663 value1 value2 = (output3665, value663, value1) := by
  rw [input3665_def, output3665_def]
  kernel_rfl

theorem node3666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3666 value663 value1 value2 = (output3666, value663, value1) := by
  rw [input3666_def, output3666_def]
  kernel_rfl

theorem node3667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3667 value663 value1 value2 = (output3667, value658, value1) := by
  rw [input3667_def, output3667_def]
  kernel_rfl

theorem node3668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3668 value658 value1 value2 = (output3668, value658, value1) := by
  rw [input3668_def, output3668_def]
  kernel_rfl

theorem node3669_cond_eq
    (child3667 : Flapjack.WordAlloc.removeDeadStructural input3667 value663 value1 value2 = (output3667, value658, value1))
    (child3668 : Flapjack.WordAlloc.removeDeadStructural input3668 value658 value1 value2 = (output3668, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3669 value663 value1 value2 = (output3669, value658, value1) := by
  rw [input3669_def, output3669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3667]
  try dsimp only
  rw [child3668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3667_skip, output3668_skip]
  kernel_rfl

theorem node3670_cond_eq
    (child3666 : Flapjack.WordAlloc.removeDeadStructural input3666 value663 value1 value2 = (output3666, value663, value1))
    (child3669 : Flapjack.WordAlloc.removeDeadStructural input3669 value663 value1 value2 = (output3669, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3670 value663 value1 value2 = (output3670, value658, value1) := by
  rw [input3670_def, output3670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3666]
  try dsimp only
  rw [child3669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3666_skip, output3669_skip]
  kernel_rfl

theorem node3671_cond_eq
    (child3665 : Flapjack.WordAlloc.removeDeadStructural input3665 value663 value1 value2 = (output3665, value663, value1))
    (child3670 : Flapjack.WordAlloc.removeDeadStructural input3670 value663 value1 value2 = (output3670, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input3671 value663 value1 value2 = (output3671, value658, value1) := by
  rw [input3671_def, output3671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3665]
  try dsimp only
  rw [child3670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3665_skip, output3670_skip]
  kernel_rfl

theorem node3672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3672 value658 value1 value2 = (output3672, value664, value1) := by
  rw [input3672_def, output3672_def]
  kernel_rfl

theorem node3673_cond_eq
    (child3671 : Flapjack.WordAlloc.removeDeadStructural input3671 value663 value1 value2 = (output3671, value658, value1))
    (child3672 : Flapjack.WordAlloc.removeDeadStructural input3672 value658 value1 value2 = (output3672, value664, value1)) : Flapjack.WordAlloc.removeDeadStructural input3673 value663 value1 value2 = (output3673, value664, value1) := by
  rw [input3673_def, output3673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3671]
  try dsimp only
  rw [child3672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3671_skip, output3672_skip]
  kernel_rfl

theorem node3674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3674 value664 value1 value2 = (output3674, value665, value1) := by
  rw [input3674_def, output3674_def]
  kernel_rfl

theorem node3675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3675 value665 value1 value2 = (output3675, value666, value1) := by
  rw [input3675_def, output3675_def]
  kernel_rfl

theorem node3676_cond_eq
    (child3674 : Flapjack.WordAlloc.removeDeadStructural input3674 value664 value1 value2 = (output3674, value665, value1))
    (child3675 : Flapjack.WordAlloc.removeDeadStructural input3675 value665 value1 value2 = (output3675, value666, value1)) : Flapjack.WordAlloc.removeDeadStructural input3676 value664 value1 value2 = (output3676, value666, value1) := by
  rw [input3676_def, output3676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3674]
  try dsimp only
  rw [child3675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3674_skip, output3675_skip]
  kernel_rfl

theorem node3677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3677 value666 value1 value2 = (output3677, value664, value1) := by
  rw [input3677_def, output3677_def]
  kernel_rfl

theorem node3678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3678 value664 value1 value2 = (output3678, value664, value1) := by
  rw [input3678_def, output3678_def]
  kernel_rfl

theorem node3679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3679 value664 value1 value2 = (output3679, value667, value1) := by
  rw [input3679_def, output3679_def]
  kernel_rfl

theorem node3680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3680 value667 value1 value2 = (output3680, value667, value1) := by
  rw [input3680_def, output3680_def]
  kernel_rfl

theorem node3681_cond_eq
    (child3679 : Flapjack.WordAlloc.removeDeadStructural input3679 value664 value1 value2 = (output3679, value667, value1))
    (child3680 : Flapjack.WordAlloc.removeDeadStructural input3680 value667 value1 value2 = (output3680, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input3681 value664 value1 value2 = (output3681, value667, value1) := by
  rw [input3681_def, output3681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3679]
  try dsimp only
  rw [child3680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3679_skip, output3680_skip]
  kernel_rfl

theorem node3682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3682 value667 value1 value2 = (output3682, value668, value1) := by
  rw [input3682_def, output3682_def]
  kernel_rfl

theorem node3683_cond_eq
    (child3681 : Flapjack.WordAlloc.removeDeadStructural input3681 value664 value1 value2 = (output3681, value667, value1))
    (child3682 : Flapjack.WordAlloc.removeDeadStructural input3682 value667 value1 value2 = (output3682, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3683 value664 value1 value2 = (output3683, value668, value1) := by
  rw [input3683_def, output3683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3681]
  try dsimp only
  rw [child3682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3681_skip, output3682_skip]
  kernel_rfl

theorem node3684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3684 value668 value1 value2 = (output3684, value668, value1) := by
  rw [input3684_def, output3684_def]
  kernel_rfl

theorem node3685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3685 value668 value1 value2 = (output3685, value668, value1) := by
  rw [input3685_def, output3685_def]
  kernel_rfl

theorem node3686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3686 value668 value1 value2 = (output3686, value668, value1) := by
  rw [input3686_def, output3686_def]
  kernel_rfl

theorem node3687_cond_eq
    (child3685 : Flapjack.WordAlloc.removeDeadStructural input3685 value668 value1 value2 = (output3685, value668, value1))
    (child3686 : Flapjack.WordAlloc.removeDeadStructural input3686 value668 value1 value2 = (output3686, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3687 value668 value1 value2 = (output3687, value668, value1) := by
  rw [input3687_def, output3687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3685]
  try dsimp only
  rw [child3686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3685_skip, output3686_skip]
  kernel_rfl

theorem node3688_cond_eq
    (child3684 : Flapjack.WordAlloc.removeDeadStructural input3684 value668 value1 value2 = (output3684, value668, value1))
    (child3687 : Flapjack.WordAlloc.removeDeadStructural input3687 value668 value1 value2 = (output3687, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3688 value668 value1 value2 = (output3688, value668, value1) := by
  rw [input3688_def, output3688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3684]
  try dsimp only
  rw [child3687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3684_skip, output3687_skip]
  kernel_rfl

theorem node3689_cond_eq
    (child3683 : Flapjack.WordAlloc.removeDeadStructural input3683 value664 value1 value2 = (output3683, value668, value1))
    (child3688 : Flapjack.WordAlloc.removeDeadStructural input3688 value668 value1 value2 = (output3688, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3689 value664 value1 value2 = (output3689, value668, value1) := by
  rw [input3689_def, output3689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3683]
  try dsimp only
  rw [child3688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3683_skip, output3688_skip]
  kernel_rfl

theorem node3690_cond_eq
    (child3678 : Flapjack.WordAlloc.removeDeadStructural input3678 value664 value1 value2 = (output3678, value664, value1))
    (child3689 : Flapjack.WordAlloc.removeDeadStructural input3689 value664 value1 value2 = (output3689, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3690 value664 value1 value2 = (output3690, value668, value1) := by
  rw [input3690_def, output3690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3678]
  try dsimp only
  rw [child3689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3678_skip, output3689_skip]
  kernel_rfl

theorem node3691_cond_eq
    (child3677 : Flapjack.WordAlloc.removeDeadStructural input3677 value666 value1 value2 = (output3677, value664, value1))
    (child3690 : Flapjack.WordAlloc.removeDeadStructural input3690 value664 value1 value2 = (output3690, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3691 value666 value1 value2 = (output3691, value668, value1) := by
  rw [input3691_def, output3691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3677]
  try dsimp only
  rw [child3690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3677_skip, output3690_skip]
  kernel_rfl

theorem node3692_cond_eq
    (child3676 : Flapjack.WordAlloc.removeDeadStructural input3676 value664 value1 value2 = (output3676, value666, value1))
    (child3691 : Flapjack.WordAlloc.removeDeadStructural input3691 value666 value1 value2 = (output3691, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3692 value664 value1 value2 = (output3692, value668, value1) := by
  rw [input3692_def, output3692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3676]
  try dsimp only
  rw [child3691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3676_skip, output3691_skip]
  kernel_rfl

theorem node3693_cond_eq
    (child3673 : Flapjack.WordAlloc.removeDeadStructural input3673 value663 value1 value2 = (output3673, value664, value1))
    (child3692 : Flapjack.WordAlloc.removeDeadStructural input3692 value664 value1 value2 = (output3692, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3693 value663 value1 value2 = (output3693, value668, value1) := by
  rw [input3693_def, output3693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3673]
  try dsimp only
  rw [child3692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3673_skip, output3692_skip]
  kernel_rfl

theorem node3694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3694 value663 value1 value2 = (output3694, value663, value1) := by
  rw [input3694_def, output3694_def]
  kernel_rfl

theorem node3695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3695 value663 value1 value2 = (output3695, value663, value1) := by
  rw [input3695_def, output3695_def]
  kernel_rfl

theorem node3696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3696 value663 value1 value2 = (output3696, value669, value1) := by
  rw [input3696_def, output3696_def]
  kernel_rfl

theorem node3697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3697 value669 value1 value2 = (output3697, value669, value1) := by
  rw [input3697_def, output3697_def]
  kernel_rfl

theorem node3698_cond_eq
    (child3696 : Flapjack.WordAlloc.removeDeadStructural input3696 value663 value1 value2 = (output3696, value669, value1))
    (child3697 : Flapjack.WordAlloc.removeDeadStructural input3697 value669 value1 value2 = (output3697, value669, value1)) : Flapjack.WordAlloc.removeDeadStructural input3698 value663 value1 value2 = (output3698, value669, value1) := by
  rw [input3698_def, output3698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3696]
  try dsimp only
  rw [child3697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3696_skip, output3697_skip]
  kernel_rfl

theorem node3699_cond_eq
    (child3695 : Flapjack.WordAlloc.removeDeadStructural input3695 value663 value1 value2 = (output3695, value663, value1))
    (child3698 : Flapjack.WordAlloc.removeDeadStructural input3698 value663 value1 value2 = (output3698, value669, value1)) : Flapjack.WordAlloc.removeDeadStructural input3699 value663 value1 value2 = (output3699, value669, value1) := by
  rw [input3699_def, output3699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3695]
  try dsimp only
  rw [child3698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3695_skip, output3698_skip]
  kernel_rfl

theorem node3700_cond_eq
    (child3694 : Flapjack.WordAlloc.removeDeadStructural input3694 value663 value1 value2 = (output3694, value663, value1))
    (child3699 : Flapjack.WordAlloc.removeDeadStructural input3699 value663 value1 value2 = (output3699, value669, value1)) : Flapjack.WordAlloc.removeDeadStructural input3700 value663 value1 value2 = (output3700, value669, value1) := by
  rw [input3700_def, output3700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3694]
  try dsimp only
  rw [child3699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3694_skip, output3699_skip]
  kernel_rfl

theorem node3701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3701 value669 value1 value2 = (output3701, value670, value1) := by
  rw [input3701_def, output3701_def]
  kernel_rfl

theorem node3702_cond_eq
    (child3700 : Flapjack.WordAlloc.removeDeadStructural input3700 value663 value1 value2 = (output3700, value669, value1))
    (child3701 : Flapjack.WordAlloc.removeDeadStructural input3701 value669 value1 value2 = (output3701, value670, value1)) : Flapjack.WordAlloc.removeDeadStructural input3702 value663 value1 value2 = (output3702, value670, value1) := by
  rw [input3702_def, output3702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3700]
  try dsimp only
  rw [child3701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3700_skip, output3701_skip]
  kernel_rfl

theorem node3703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3703 value670 value1 value2 = (output3703, value670, value1) := by
  rw [input3703_def, output3703_def]
  kernel_rfl

theorem node3704_cond_eq
    (child3702 : Flapjack.WordAlloc.removeDeadStructural input3702 value663 value1 value2 = (output3702, value670, value1))
    (child3703 : Flapjack.WordAlloc.removeDeadStructural input3703 value670 value1 value2 = (output3703, value670, value1)) : Flapjack.WordAlloc.removeDeadStructural input3704 value663 value1 value2 = (output3704, value670, value1) := by
  rw [input3704_def, output3704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3702]
  try dsimp only
  rw [child3703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3702_skip, output3703_skip]
  kernel_rfl

theorem node3705_cond_eq
    (child3693 : Flapjack.WordAlloc.removeDeadStructural input3693 value663 value1 value2 = (output3693, value668, value1))
    (child3704 : Flapjack.WordAlloc.removeDeadStructural input3704 value663 value1 value2 = (output3704, value670, value1)) : Flapjack.WordAlloc.removeDeadStructural input3705 value663 value1 value2 = (output3705, value672, value1) := by
  rw [input3705_def, output3705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3693]
  try dsimp only
  rw [child3704]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3693_skip, output3704_skip]
  kernel_rfl

theorem node3706_cond_eq
    (child3664 : Flapjack.WordAlloc.removeDeadStructural input3664 value663 value1 value2 = (output3664, value663, value1))
    (child3705 : Flapjack.WordAlloc.removeDeadStructural input3705 value663 value1 value2 = (output3705, value672, value1)) : Flapjack.WordAlloc.removeDeadStructural input3706 value663 value1 value2 = (output3706, value672, value1) := by
  rw [input3706_def, output3706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3664]
  try dsimp only
  rw [child3705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3664_skip, output3705_skip]
  kernel_rfl

theorem node3707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3707 value672 value1 value2 = (output3707, value670, value1) := by
  rw [input3707_def, output3707_def]
  kernel_rfl

theorem node3708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3708 value670 value1 value2 = (output3708, value673, value1) := by
  rw [input3708_def, output3708_def]
  kernel_rfl

theorem node3709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3709 value673 value1 value2 = (output3709, value673, value1) := by
  rw [input3709_def, output3709_def]
  kernel_rfl

theorem node3710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3710 value673 value1 value2 = (output3710, value673, value1) := by
  rw [input3710_def, output3710_def]
  kernel_rfl

theorem node3711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3711 value673 value1 value2 = (output3711, value673, value1) := by
  rw [input3711_def, output3711_def]
  kernel_rfl

theorem node3712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3712 value673 value1 value2 = (output3712, value673, value1) := by
  rw [input3712_def, output3712_def]
  kernel_rfl

theorem node3713_cond_eq
    (child3711 : Flapjack.WordAlloc.removeDeadStructural input3711 value673 value1 value2 = (output3711, value673, value1))
    (child3712 : Flapjack.WordAlloc.removeDeadStructural input3712 value673 value1 value2 = (output3712, value673, value1)) : Flapjack.WordAlloc.removeDeadStructural input3713 value673 value1 value2 = (output3713, value673, value1) := by
  rw [input3713_def, output3713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3711]
  try dsimp only
  rw [child3712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3711_skip, output3712_skip]
  kernel_rfl

theorem node3714_cond_eq
    (child3710 : Flapjack.WordAlloc.removeDeadStructural input3710 value673 value1 value2 = (output3710, value673, value1))
    (child3713 : Flapjack.WordAlloc.removeDeadStructural input3713 value673 value1 value2 = (output3713, value673, value1)) : Flapjack.WordAlloc.removeDeadStructural input3714 value673 value1 value2 = (output3714, value673, value1) := by
  rw [input3714_def, output3714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3710]
  try dsimp only
  rw [child3713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3710_skip, output3713_skip]
  kernel_rfl

theorem node3715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3715 value673 value1 value2 = (output3715, value673, value1) := by
  rw [input3715_def, output3715_def]
  kernel_rfl

theorem node3716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3716 value673 value1 value2 = (output3716, value673, value1) := by
  rw [input3716_def, output3716_def]
  kernel_rfl

theorem node3717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3717 value673 value1 value2 = (output3717, value668, value1) := by
  rw [input3717_def, output3717_def]
  kernel_rfl

theorem node3718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3718 value668 value1 value2 = (output3718, value668, value1) := by
  rw [input3718_def, output3718_def]
  kernel_rfl

theorem node3719_cond_eq
    (child3717 : Flapjack.WordAlloc.removeDeadStructural input3717 value673 value1 value2 = (output3717, value668, value1))
    (child3718 : Flapjack.WordAlloc.removeDeadStructural input3718 value668 value1 value2 = (output3718, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3719 value673 value1 value2 = (output3719, value668, value1) := by
  rw [input3719_def, output3719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3717]
  try dsimp only
  rw [child3718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3717_skip, output3718_skip]
  kernel_rfl

theorem node3720_cond_eq
    (child3716 : Flapjack.WordAlloc.removeDeadStructural input3716 value673 value1 value2 = (output3716, value673, value1))
    (child3719 : Flapjack.WordAlloc.removeDeadStructural input3719 value673 value1 value2 = (output3719, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3720 value673 value1 value2 = (output3720, value668, value1) := by
  rw [input3720_def, output3720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3716]
  try dsimp only
  rw [child3719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3716_skip, output3719_skip]
  kernel_rfl

theorem node3721_cond_eq
    (child3715 : Flapjack.WordAlloc.removeDeadStructural input3715 value673 value1 value2 = (output3715, value673, value1))
    (child3720 : Flapjack.WordAlloc.removeDeadStructural input3720 value673 value1 value2 = (output3720, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input3721 value673 value1 value2 = (output3721, value668, value1) := by
  rw [input3721_def, output3721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3715]
  try dsimp only
  rw [child3720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3715_skip, output3720_skip]
  kernel_rfl

theorem node3722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3722 value668 value1 value2 = (output3722, value674, value1) := by
  rw [input3722_def, output3722_def]
  kernel_rfl

theorem node3723_cond_eq
    (child3721 : Flapjack.WordAlloc.removeDeadStructural input3721 value673 value1 value2 = (output3721, value668, value1))
    (child3722 : Flapjack.WordAlloc.removeDeadStructural input3722 value668 value1 value2 = (output3722, value674, value1)) : Flapjack.WordAlloc.removeDeadStructural input3723 value673 value1 value2 = (output3723, value674, value1) := by
  rw [input3723_def, output3723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3721]
  try dsimp only
  rw [child3722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3721_skip, output3722_skip]
  kernel_rfl

theorem node3724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3724 value674 value1 value2 = (output3724, value675, value1) := by
  rw [input3724_def, output3724_def]
  kernel_rfl

theorem node3725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3725 value675 value1 value2 = (output3725, value676, value1) := by
  rw [input3725_def, output3725_def]
  kernel_rfl

theorem node3726_cond_eq
    (child3724 : Flapjack.WordAlloc.removeDeadStructural input3724 value674 value1 value2 = (output3724, value675, value1))
    (child3725 : Flapjack.WordAlloc.removeDeadStructural input3725 value675 value1 value2 = (output3725, value676, value1)) : Flapjack.WordAlloc.removeDeadStructural input3726 value674 value1 value2 = (output3726, value676, value1) := by
  rw [input3726_def, output3726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3724]
  try dsimp only
  rw [child3725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3724_skip, output3725_skip]
  kernel_rfl

theorem node3727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3727 value676 value1 value2 = (output3727, value674, value1) := by
  rw [input3727_def, output3727_def]
  kernel_rfl

theorem node3728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3728 value674 value1 value2 = (output3728, value674, value1) := by
  rw [input3728_def, output3728_def]
  kernel_rfl

theorem node3729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3729 value674 value1 value2 = (output3729, value677, value1) := by
  rw [input3729_def, output3729_def]
  kernel_rfl

theorem node3730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3730 value677 value1 value2 = (output3730, value677, value1) := by
  rw [input3730_def, output3730_def]
  kernel_rfl

theorem node3731_cond_eq
    (child3729 : Flapjack.WordAlloc.removeDeadStructural input3729 value674 value1 value2 = (output3729, value677, value1))
    (child3730 : Flapjack.WordAlloc.removeDeadStructural input3730 value677 value1 value2 = (output3730, value677, value1)) : Flapjack.WordAlloc.removeDeadStructural input3731 value674 value1 value2 = (output3731, value677, value1) := by
  rw [input3731_def, output3731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3729]
  try dsimp only
  rw [child3730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3729_skip, output3730_skip]
  kernel_rfl

theorem node3732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3732 value677 value1 value2 = (output3732, value678, value1) := by
  rw [input3732_def, output3732_def]
  kernel_rfl

theorem node3733_cond_eq
    (child3731 : Flapjack.WordAlloc.removeDeadStructural input3731 value674 value1 value2 = (output3731, value677, value1))
    (child3732 : Flapjack.WordAlloc.removeDeadStructural input3732 value677 value1 value2 = (output3732, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3733 value674 value1 value2 = (output3733, value678, value1) := by
  rw [input3733_def, output3733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3731]
  try dsimp only
  rw [child3732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3731_skip, output3732_skip]
  kernel_rfl

theorem node3734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3734 value678 value1 value2 = (output3734, value678, value1) := by
  rw [input3734_def, output3734_def]
  kernel_rfl

theorem node3735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3735 value678 value1 value2 = (output3735, value678, value1) := by
  rw [input3735_def, output3735_def]
  kernel_rfl

theorem node3736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3736 value678 value1 value2 = (output3736, value678, value1) := by
  rw [input3736_def, output3736_def]
  kernel_rfl

theorem node3737_cond_eq
    (child3735 : Flapjack.WordAlloc.removeDeadStructural input3735 value678 value1 value2 = (output3735, value678, value1))
    (child3736 : Flapjack.WordAlloc.removeDeadStructural input3736 value678 value1 value2 = (output3736, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3737 value678 value1 value2 = (output3737, value678, value1) := by
  rw [input3737_def, output3737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3735]
  try dsimp only
  rw [child3736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3735_skip, output3736_skip]
  kernel_rfl

theorem node3738_cond_eq
    (child3734 : Flapjack.WordAlloc.removeDeadStructural input3734 value678 value1 value2 = (output3734, value678, value1))
    (child3737 : Flapjack.WordAlloc.removeDeadStructural input3737 value678 value1 value2 = (output3737, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3738 value678 value1 value2 = (output3738, value678, value1) := by
  rw [input3738_def, output3738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3734]
  try dsimp only
  rw [child3737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3734_skip, output3737_skip]
  kernel_rfl

theorem node3739_cond_eq
    (child3733 : Flapjack.WordAlloc.removeDeadStructural input3733 value674 value1 value2 = (output3733, value678, value1))
    (child3738 : Flapjack.WordAlloc.removeDeadStructural input3738 value678 value1 value2 = (output3738, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3739 value674 value1 value2 = (output3739, value678, value1) := by
  rw [input3739_def, output3739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3733]
  try dsimp only
  rw [child3738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3733_skip, output3738_skip]
  kernel_rfl

theorem node3740_cond_eq
    (child3728 : Flapjack.WordAlloc.removeDeadStructural input3728 value674 value1 value2 = (output3728, value674, value1))
    (child3739 : Flapjack.WordAlloc.removeDeadStructural input3739 value674 value1 value2 = (output3739, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3740 value674 value1 value2 = (output3740, value678, value1) := by
  rw [input3740_def, output3740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3728]
  try dsimp only
  rw [child3739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3728_skip, output3739_skip]
  kernel_rfl

theorem node3741_cond_eq
    (child3727 : Flapjack.WordAlloc.removeDeadStructural input3727 value676 value1 value2 = (output3727, value674, value1))
    (child3740 : Flapjack.WordAlloc.removeDeadStructural input3740 value674 value1 value2 = (output3740, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3741 value676 value1 value2 = (output3741, value678, value1) := by
  rw [input3741_def, output3741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3727]
  try dsimp only
  rw [child3740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3727_skip, output3740_skip]
  kernel_rfl

theorem node3742_cond_eq
    (child3726 : Flapjack.WordAlloc.removeDeadStructural input3726 value674 value1 value2 = (output3726, value676, value1))
    (child3741 : Flapjack.WordAlloc.removeDeadStructural input3741 value676 value1 value2 = (output3741, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3742 value674 value1 value2 = (output3742, value678, value1) := by
  rw [input3742_def, output3742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3726]
  try dsimp only
  rw [child3741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3726_skip, output3741_skip]
  kernel_rfl

theorem node3743_cond_eq
    (child3723 : Flapjack.WordAlloc.removeDeadStructural input3723 value673 value1 value2 = (output3723, value674, value1))
    (child3742 : Flapjack.WordAlloc.removeDeadStructural input3742 value674 value1 value2 = (output3742, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3743 value673 value1 value2 = (output3743, value678, value1) := by
  rw [input3743_def, output3743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3723]
  try dsimp only
  rw [child3742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3723_skip, output3742_skip]
  kernel_rfl

theorem node3744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3744 value673 value1 value2 = (output3744, value673, value1) := by
  rw [input3744_def, output3744_def]
  kernel_rfl

theorem node3745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3745 value673 value1 value2 = (output3745, value673, value1) := by
  rw [input3745_def, output3745_def]
  kernel_rfl

theorem node3746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3746 value673 value1 value2 = (output3746, value679, value1) := by
  rw [input3746_def, output3746_def]
  kernel_rfl

theorem node3747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3747 value679 value1 value2 = (output3747, value679, value1) := by
  rw [input3747_def, output3747_def]
  kernel_rfl

theorem node3748_cond_eq
    (child3746 : Flapjack.WordAlloc.removeDeadStructural input3746 value673 value1 value2 = (output3746, value679, value1))
    (child3747 : Flapjack.WordAlloc.removeDeadStructural input3747 value679 value1 value2 = (output3747, value679, value1)) : Flapjack.WordAlloc.removeDeadStructural input3748 value673 value1 value2 = (output3748, value679, value1) := by
  rw [input3748_def, output3748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3746]
  try dsimp only
  rw [child3747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3746_skip, output3747_skip]
  kernel_rfl

theorem node3749_cond_eq
    (child3745 : Flapjack.WordAlloc.removeDeadStructural input3745 value673 value1 value2 = (output3745, value673, value1))
    (child3748 : Flapjack.WordAlloc.removeDeadStructural input3748 value673 value1 value2 = (output3748, value679, value1)) : Flapjack.WordAlloc.removeDeadStructural input3749 value673 value1 value2 = (output3749, value679, value1) := by
  rw [input3749_def, output3749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3745]
  try dsimp only
  rw [child3748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3745_skip, output3748_skip]
  kernel_rfl

theorem node3750_cond_eq
    (child3744 : Flapjack.WordAlloc.removeDeadStructural input3744 value673 value1 value2 = (output3744, value673, value1))
    (child3749 : Flapjack.WordAlloc.removeDeadStructural input3749 value673 value1 value2 = (output3749, value679, value1)) : Flapjack.WordAlloc.removeDeadStructural input3750 value673 value1 value2 = (output3750, value679, value1) := by
  rw [input3750_def, output3750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3744]
  try dsimp only
  rw [child3749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3744_skip, output3749_skip]
  kernel_rfl

theorem node3751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3751 value679 value1 value2 = (output3751, value680, value1) := by
  rw [input3751_def, output3751_def]
  kernel_rfl

theorem node3752_cond_eq
    (child3750 : Flapjack.WordAlloc.removeDeadStructural input3750 value673 value1 value2 = (output3750, value679, value1))
    (child3751 : Flapjack.WordAlloc.removeDeadStructural input3751 value679 value1 value2 = (output3751, value680, value1)) : Flapjack.WordAlloc.removeDeadStructural input3752 value673 value1 value2 = (output3752, value680, value1) := by
  rw [input3752_def, output3752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3750]
  try dsimp only
  rw [child3751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3750_skip, output3751_skip]
  kernel_rfl

theorem node3753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3753 value680 value1 value2 = (output3753, value680, value1) := by
  rw [input3753_def, output3753_def]
  kernel_rfl

theorem node3754_cond_eq
    (child3752 : Flapjack.WordAlloc.removeDeadStructural input3752 value673 value1 value2 = (output3752, value680, value1))
    (child3753 : Flapjack.WordAlloc.removeDeadStructural input3753 value680 value1 value2 = (output3753, value680, value1)) : Flapjack.WordAlloc.removeDeadStructural input3754 value673 value1 value2 = (output3754, value680, value1) := by
  rw [input3754_def, output3754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3752]
  try dsimp only
  rw [child3753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3752_skip, output3753_skip]
  kernel_rfl

theorem node3755_cond_eq
    (child3743 : Flapjack.WordAlloc.removeDeadStructural input3743 value673 value1 value2 = (output3743, value678, value1))
    (child3754 : Flapjack.WordAlloc.removeDeadStructural input3754 value673 value1 value2 = (output3754, value680, value1)) : Flapjack.WordAlloc.removeDeadStructural input3755 value673 value1 value2 = (output3755, value682, value1) := by
  rw [input3755_def, output3755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3743]
  try dsimp only
  rw [child3754]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3743_skip, output3754_skip]
  kernel_rfl

theorem node3756_cond_eq
    (child3714 : Flapjack.WordAlloc.removeDeadStructural input3714 value673 value1 value2 = (output3714, value673, value1))
    (child3755 : Flapjack.WordAlloc.removeDeadStructural input3755 value673 value1 value2 = (output3755, value682, value1)) : Flapjack.WordAlloc.removeDeadStructural input3756 value673 value1 value2 = (output3756, value682, value1) := by
  rw [input3756_def, output3756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3714]
  try dsimp only
  rw [child3755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3714_skip, output3755_skip]
  kernel_rfl

theorem node3757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3757 value682 value1 value2 = (output3757, value680, value1) := by
  rw [input3757_def, output3757_def]
  kernel_rfl

theorem node3758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3758 value680 value1 value2 = (output3758, value683, value1) := by
  rw [input3758_def, output3758_def]
  kernel_rfl

theorem node3759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3759 value683 value1 value2 = (output3759, value683, value1) := by
  rw [input3759_def, output3759_def]
  kernel_rfl

theorem node3760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3760 value683 value1 value2 = (output3760, value683, value1) := by
  rw [input3760_def, output3760_def]
  kernel_rfl

theorem node3761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3761 value683 value1 value2 = (output3761, value683, value1) := by
  rw [input3761_def, output3761_def]
  kernel_rfl

theorem node3762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3762 value683 value1 value2 = (output3762, value683, value1) := by
  rw [input3762_def, output3762_def]
  kernel_rfl

theorem node3763_cond_eq
    (child3761 : Flapjack.WordAlloc.removeDeadStructural input3761 value683 value1 value2 = (output3761, value683, value1))
    (child3762 : Flapjack.WordAlloc.removeDeadStructural input3762 value683 value1 value2 = (output3762, value683, value1)) : Flapjack.WordAlloc.removeDeadStructural input3763 value683 value1 value2 = (output3763, value683, value1) := by
  rw [input3763_def, output3763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3761]
  try dsimp only
  rw [child3762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3761_skip, output3762_skip]
  kernel_rfl

theorem node3764_cond_eq
    (child3760 : Flapjack.WordAlloc.removeDeadStructural input3760 value683 value1 value2 = (output3760, value683, value1))
    (child3763 : Flapjack.WordAlloc.removeDeadStructural input3763 value683 value1 value2 = (output3763, value683, value1)) : Flapjack.WordAlloc.removeDeadStructural input3764 value683 value1 value2 = (output3764, value683, value1) := by
  rw [input3764_def, output3764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3760]
  try dsimp only
  rw [child3763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3760_skip, output3763_skip]
  kernel_rfl

theorem node3765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3765 value683 value1 value2 = (output3765, value683, value1) := by
  rw [input3765_def, output3765_def]
  kernel_rfl

theorem node3766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3766 value683 value1 value2 = (output3766, value683, value1) := by
  rw [input3766_def, output3766_def]
  kernel_rfl

theorem node3767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3767 value683 value1 value2 = (output3767, value678, value1) := by
  rw [input3767_def, output3767_def]
  kernel_rfl

theorem node3768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3768 value678 value1 value2 = (output3768, value678, value1) := by
  rw [input3768_def, output3768_def]
  kernel_rfl

theorem node3769_cond_eq
    (child3767 : Flapjack.WordAlloc.removeDeadStructural input3767 value683 value1 value2 = (output3767, value678, value1))
    (child3768 : Flapjack.WordAlloc.removeDeadStructural input3768 value678 value1 value2 = (output3768, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3769 value683 value1 value2 = (output3769, value678, value1) := by
  rw [input3769_def, output3769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3767]
  try dsimp only
  rw [child3768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3767_skip, output3768_skip]
  kernel_rfl

theorem node3770_cond_eq
    (child3766 : Flapjack.WordAlloc.removeDeadStructural input3766 value683 value1 value2 = (output3766, value683, value1))
    (child3769 : Flapjack.WordAlloc.removeDeadStructural input3769 value683 value1 value2 = (output3769, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3770 value683 value1 value2 = (output3770, value678, value1) := by
  rw [input3770_def, output3770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3766]
  try dsimp only
  rw [child3769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3766_skip, output3769_skip]
  kernel_rfl

theorem node3771_cond_eq
    (child3765 : Flapjack.WordAlloc.removeDeadStructural input3765 value683 value1 value2 = (output3765, value683, value1))
    (child3770 : Flapjack.WordAlloc.removeDeadStructural input3770 value683 value1 value2 = (output3770, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input3771 value683 value1 value2 = (output3771, value678, value1) := by
  rw [input3771_def, output3771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3765]
  try dsimp only
  rw [child3770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3765_skip, output3770_skip]
  kernel_rfl

theorem node3772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3772 value678 value1 value2 = (output3772, value684, value1) := by
  rw [input3772_def, output3772_def]
  kernel_rfl

theorem node3773_cond_eq
    (child3771 : Flapjack.WordAlloc.removeDeadStructural input3771 value683 value1 value2 = (output3771, value678, value1))
    (child3772 : Flapjack.WordAlloc.removeDeadStructural input3772 value678 value1 value2 = (output3772, value684, value1)) : Flapjack.WordAlloc.removeDeadStructural input3773 value683 value1 value2 = (output3773, value684, value1) := by
  rw [input3773_def, output3773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3771]
  try dsimp only
  rw [child3772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3771_skip, output3772_skip]
  kernel_rfl

theorem node3774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3774 value684 value1 value2 = (output3774, value685, value1) := by
  rw [input3774_def, output3774_def]
  kernel_rfl

theorem node3775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3775 value685 value1 value2 = (output3775, value686, value1) := by
  rw [input3775_def, output3775_def]
  kernel_rfl

theorem node3776_cond_eq
    (child3774 : Flapjack.WordAlloc.removeDeadStructural input3774 value684 value1 value2 = (output3774, value685, value1))
    (child3775 : Flapjack.WordAlloc.removeDeadStructural input3775 value685 value1 value2 = (output3775, value686, value1)) : Flapjack.WordAlloc.removeDeadStructural input3776 value684 value1 value2 = (output3776, value686, value1) := by
  rw [input3776_def, output3776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3774]
  try dsimp only
  rw [child3775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3774_skip, output3775_skip]
  kernel_rfl

theorem node3777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3777 value686 value1 value2 = (output3777, value684, value1) := by
  rw [input3777_def, output3777_def]
  kernel_rfl

theorem node3778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3778 value684 value1 value2 = (output3778, value684, value1) := by
  rw [input3778_def, output3778_def]
  kernel_rfl

theorem node3779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3779 value684 value1 value2 = (output3779, value687, value1) := by
  rw [input3779_def, output3779_def]
  kernel_rfl

theorem node3780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3780 value687 value1 value2 = (output3780, value687, value1) := by
  rw [input3780_def, output3780_def]
  kernel_rfl

theorem node3781_cond_eq
    (child3779 : Flapjack.WordAlloc.removeDeadStructural input3779 value684 value1 value2 = (output3779, value687, value1))
    (child3780 : Flapjack.WordAlloc.removeDeadStructural input3780 value687 value1 value2 = (output3780, value687, value1)) : Flapjack.WordAlloc.removeDeadStructural input3781 value684 value1 value2 = (output3781, value687, value1) := by
  rw [input3781_def, output3781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3779]
  try dsimp only
  rw [child3780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3779_skip, output3780_skip]
  kernel_rfl

theorem node3782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3782 value687 value1 value2 = (output3782, value688, value1) := by
  rw [input3782_def, output3782_def]
  kernel_rfl

theorem node3783_cond_eq
    (child3781 : Flapjack.WordAlloc.removeDeadStructural input3781 value684 value1 value2 = (output3781, value687, value1))
    (child3782 : Flapjack.WordAlloc.removeDeadStructural input3782 value687 value1 value2 = (output3782, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3783 value684 value1 value2 = (output3783, value688, value1) := by
  rw [input3783_def, output3783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3781]
  try dsimp only
  rw [child3782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3781_skip, output3782_skip]
  kernel_rfl

theorem node3784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3784 value688 value1 value2 = (output3784, value688, value1) := by
  rw [input3784_def, output3784_def]
  kernel_rfl

theorem node3785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3785 value688 value1 value2 = (output3785, value688, value1) := by
  rw [input3785_def, output3785_def]
  kernel_rfl

theorem node3786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3786 value688 value1 value2 = (output3786, value688, value1) := by
  rw [input3786_def, output3786_def]
  kernel_rfl

theorem node3787_cond_eq
    (child3785 : Flapjack.WordAlloc.removeDeadStructural input3785 value688 value1 value2 = (output3785, value688, value1))
    (child3786 : Flapjack.WordAlloc.removeDeadStructural input3786 value688 value1 value2 = (output3786, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3787 value688 value1 value2 = (output3787, value688, value1) := by
  rw [input3787_def, output3787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3785]
  try dsimp only
  rw [child3786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3785_skip, output3786_skip]
  kernel_rfl

theorem node3788_cond_eq
    (child3784 : Flapjack.WordAlloc.removeDeadStructural input3784 value688 value1 value2 = (output3784, value688, value1))
    (child3787 : Flapjack.WordAlloc.removeDeadStructural input3787 value688 value1 value2 = (output3787, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3788 value688 value1 value2 = (output3788, value688, value1) := by
  rw [input3788_def, output3788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3784]
  try dsimp only
  rw [child3787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3784_skip, output3787_skip]
  kernel_rfl

theorem node3789_cond_eq
    (child3783 : Flapjack.WordAlloc.removeDeadStructural input3783 value684 value1 value2 = (output3783, value688, value1))
    (child3788 : Flapjack.WordAlloc.removeDeadStructural input3788 value688 value1 value2 = (output3788, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3789 value684 value1 value2 = (output3789, value688, value1) := by
  rw [input3789_def, output3789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3783]
  try dsimp only
  rw [child3788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3783_skip, output3788_skip]
  kernel_rfl

theorem node3790_cond_eq
    (child3778 : Flapjack.WordAlloc.removeDeadStructural input3778 value684 value1 value2 = (output3778, value684, value1))
    (child3789 : Flapjack.WordAlloc.removeDeadStructural input3789 value684 value1 value2 = (output3789, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3790 value684 value1 value2 = (output3790, value688, value1) := by
  rw [input3790_def, output3790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3778]
  try dsimp only
  rw [child3789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3778_skip, output3789_skip]
  kernel_rfl

theorem node3791_cond_eq
    (child3777 : Flapjack.WordAlloc.removeDeadStructural input3777 value686 value1 value2 = (output3777, value684, value1))
    (child3790 : Flapjack.WordAlloc.removeDeadStructural input3790 value684 value1 value2 = (output3790, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3791 value686 value1 value2 = (output3791, value688, value1) := by
  rw [input3791_def, output3791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3777]
  try dsimp only
  rw [child3790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3777_skip, output3790_skip]
  kernel_rfl

theorem node3792_cond_eq
    (child3776 : Flapjack.WordAlloc.removeDeadStructural input3776 value684 value1 value2 = (output3776, value686, value1))
    (child3791 : Flapjack.WordAlloc.removeDeadStructural input3791 value686 value1 value2 = (output3791, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3792 value684 value1 value2 = (output3792, value688, value1) := by
  rw [input3792_def, output3792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3776]
  try dsimp only
  rw [child3791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3776_skip, output3791_skip]
  kernel_rfl

theorem node3793_cond_eq
    (child3773 : Flapjack.WordAlloc.removeDeadStructural input3773 value683 value1 value2 = (output3773, value684, value1))
    (child3792 : Flapjack.WordAlloc.removeDeadStructural input3792 value684 value1 value2 = (output3792, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3793 value683 value1 value2 = (output3793, value688, value1) := by
  rw [input3793_def, output3793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3773]
  try dsimp only
  rw [child3792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3773_skip, output3792_skip]
  kernel_rfl

theorem node3794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3794 value683 value1 value2 = (output3794, value683, value1) := by
  rw [input3794_def, output3794_def]
  kernel_rfl

theorem node3795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3795 value683 value1 value2 = (output3795, value683, value1) := by
  rw [input3795_def, output3795_def]
  kernel_rfl

theorem node3796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3796 value683 value1 value2 = (output3796, value689, value1) := by
  rw [input3796_def, output3796_def]
  kernel_rfl

theorem node3797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3797 value689 value1 value2 = (output3797, value689, value1) := by
  rw [input3797_def, output3797_def]
  kernel_rfl

theorem node3798_cond_eq
    (child3796 : Flapjack.WordAlloc.removeDeadStructural input3796 value683 value1 value2 = (output3796, value689, value1))
    (child3797 : Flapjack.WordAlloc.removeDeadStructural input3797 value689 value1 value2 = (output3797, value689, value1)) : Flapjack.WordAlloc.removeDeadStructural input3798 value683 value1 value2 = (output3798, value689, value1) := by
  rw [input3798_def, output3798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3796]
  try dsimp only
  rw [child3797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3796_skip, output3797_skip]
  kernel_rfl

theorem node3799_cond_eq
    (child3795 : Flapjack.WordAlloc.removeDeadStructural input3795 value683 value1 value2 = (output3795, value683, value1))
    (child3798 : Flapjack.WordAlloc.removeDeadStructural input3798 value683 value1 value2 = (output3798, value689, value1)) : Flapjack.WordAlloc.removeDeadStructural input3799 value683 value1 value2 = (output3799, value689, value1) := by
  rw [input3799_def, output3799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3795]
  try dsimp only
  rw [child3798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3795_skip, output3798_skip]
  kernel_rfl

theorem node3800_cond_eq
    (child3794 : Flapjack.WordAlloc.removeDeadStructural input3794 value683 value1 value2 = (output3794, value683, value1))
    (child3799 : Flapjack.WordAlloc.removeDeadStructural input3799 value683 value1 value2 = (output3799, value689, value1)) : Flapjack.WordAlloc.removeDeadStructural input3800 value683 value1 value2 = (output3800, value689, value1) := by
  rw [input3800_def, output3800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3794]
  try dsimp only
  rw [child3799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3794_skip, output3799_skip]
  kernel_rfl

theorem node3801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3801 value689 value1 value2 = (output3801, value690, value1) := by
  rw [input3801_def, output3801_def]
  kernel_rfl

theorem node3802_cond_eq
    (child3800 : Flapjack.WordAlloc.removeDeadStructural input3800 value683 value1 value2 = (output3800, value689, value1))
    (child3801 : Flapjack.WordAlloc.removeDeadStructural input3801 value689 value1 value2 = (output3801, value690, value1)) : Flapjack.WordAlloc.removeDeadStructural input3802 value683 value1 value2 = (output3802, value690, value1) := by
  rw [input3802_def, output3802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3800]
  try dsimp only
  rw [child3801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3800_skip, output3801_skip]
  kernel_rfl

theorem node3803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3803 value690 value1 value2 = (output3803, value690, value1) := by
  rw [input3803_def, output3803_def]
  kernel_rfl

theorem node3804_cond_eq
    (child3802 : Flapjack.WordAlloc.removeDeadStructural input3802 value683 value1 value2 = (output3802, value690, value1))
    (child3803 : Flapjack.WordAlloc.removeDeadStructural input3803 value690 value1 value2 = (output3803, value690, value1)) : Flapjack.WordAlloc.removeDeadStructural input3804 value683 value1 value2 = (output3804, value690, value1) := by
  rw [input3804_def, output3804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3802]
  try dsimp only
  rw [child3803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3802_skip, output3803_skip]
  kernel_rfl

theorem node3805_cond_eq
    (child3793 : Flapjack.WordAlloc.removeDeadStructural input3793 value683 value1 value2 = (output3793, value688, value1))
    (child3804 : Flapjack.WordAlloc.removeDeadStructural input3804 value683 value1 value2 = (output3804, value690, value1)) : Flapjack.WordAlloc.removeDeadStructural input3805 value683 value1 value2 = (output3805, value692, value1) := by
  rw [input3805_def, output3805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3793]
  try dsimp only
  rw [child3804]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3793_skip, output3804_skip]
  kernel_rfl

theorem node3806_cond_eq
    (child3764 : Flapjack.WordAlloc.removeDeadStructural input3764 value683 value1 value2 = (output3764, value683, value1))
    (child3805 : Flapjack.WordAlloc.removeDeadStructural input3805 value683 value1 value2 = (output3805, value692, value1)) : Flapjack.WordAlloc.removeDeadStructural input3806 value683 value1 value2 = (output3806, value692, value1) := by
  rw [input3806_def, output3806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3764]
  try dsimp only
  rw [child3805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3764_skip, output3805_skip]
  kernel_rfl

theorem node3807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3807 value692 value1 value2 = (output3807, value690, value1) := by
  rw [input3807_def, output3807_def]
  kernel_rfl

theorem node3808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3808 value690 value1 value2 = (output3808, value693, value1) := by
  rw [input3808_def, output3808_def]
  kernel_rfl

theorem node3809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3809 value693 value1 value2 = (output3809, value693, value1) := by
  rw [input3809_def, output3809_def]
  kernel_rfl

theorem node3810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3810 value693 value1 value2 = (output3810, value693, value1) := by
  rw [input3810_def, output3810_def]
  kernel_rfl

theorem node3811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3811 value693 value1 value2 = (output3811, value693, value1) := by
  rw [input3811_def, output3811_def]
  kernel_rfl

theorem node3812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3812 value693 value1 value2 = (output3812, value693, value1) := by
  rw [input3812_def, output3812_def]
  kernel_rfl

theorem node3813_cond_eq
    (child3811 : Flapjack.WordAlloc.removeDeadStructural input3811 value693 value1 value2 = (output3811, value693, value1))
    (child3812 : Flapjack.WordAlloc.removeDeadStructural input3812 value693 value1 value2 = (output3812, value693, value1)) : Flapjack.WordAlloc.removeDeadStructural input3813 value693 value1 value2 = (output3813, value693, value1) := by
  rw [input3813_def, output3813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3811]
  try dsimp only
  rw [child3812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3811_skip, output3812_skip]
  kernel_rfl

theorem node3814_cond_eq
    (child3810 : Flapjack.WordAlloc.removeDeadStructural input3810 value693 value1 value2 = (output3810, value693, value1))
    (child3813 : Flapjack.WordAlloc.removeDeadStructural input3813 value693 value1 value2 = (output3813, value693, value1)) : Flapjack.WordAlloc.removeDeadStructural input3814 value693 value1 value2 = (output3814, value693, value1) := by
  rw [input3814_def, output3814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3810]
  try dsimp only
  rw [child3813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3810_skip, output3813_skip]
  kernel_rfl

theorem node3815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3815 value693 value1 value2 = (output3815, value693, value1) := by
  rw [input3815_def, output3815_def]
  kernel_rfl

theorem node3816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3816 value693 value1 value2 = (output3816, value693, value1) := by
  rw [input3816_def, output3816_def]
  kernel_rfl

theorem node3817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3817 value693 value1 value2 = (output3817, value688, value1) := by
  rw [input3817_def, output3817_def]
  kernel_rfl

theorem node3818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3818 value688 value1 value2 = (output3818, value688, value1) := by
  rw [input3818_def, output3818_def]
  kernel_rfl

theorem node3819_cond_eq
    (child3817 : Flapjack.WordAlloc.removeDeadStructural input3817 value693 value1 value2 = (output3817, value688, value1))
    (child3818 : Flapjack.WordAlloc.removeDeadStructural input3818 value688 value1 value2 = (output3818, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3819 value693 value1 value2 = (output3819, value688, value1) := by
  rw [input3819_def, output3819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3817]
  try dsimp only
  rw [child3818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3817_skip, output3818_skip]
  kernel_rfl

theorem node3820_cond_eq
    (child3816 : Flapjack.WordAlloc.removeDeadStructural input3816 value693 value1 value2 = (output3816, value693, value1))
    (child3819 : Flapjack.WordAlloc.removeDeadStructural input3819 value693 value1 value2 = (output3819, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3820 value693 value1 value2 = (output3820, value688, value1) := by
  rw [input3820_def, output3820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3816]
  try dsimp only
  rw [child3819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3816_skip, output3819_skip]
  kernel_rfl

theorem node3821_cond_eq
    (child3815 : Flapjack.WordAlloc.removeDeadStructural input3815 value693 value1 value2 = (output3815, value693, value1))
    (child3820 : Flapjack.WordAlloc.removeDeadStructural input3820 value693 value1 value2 = (output3820, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input3821 value693 value1 value2 = (output3821, value688, value1) := by
  rw [input3821_def, output3821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3815]
  try dsimp only
  rw [child3820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3815_skip, output3820_skip]
  kernel_rfl

theorem node3822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3822 value688 value1 value2 = (output3822, value694, value1) := by
  rw [input3822_def, output3822_def]
  kernel_rfl

theorem node3823_cond_eq
    (child3821 : Flapjack.WordAlloc.removeDeadStructural input3821 value693 value1 value2 = (output3821, value688, value1))
    (child3822 : Flapjack.WordAlloc.removeDeadStructural input3822 value688 value1 value2 = (output3822, value694, value1)) : Flapjack.WordAlloc.removeDeadStructural input3823 value693 value1 value2 = (output3823, value694, value1) := by
  rw [input3823_def, output3823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3821]
  try dsimp only
  rw [child3822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3821_skip, output3822_skip]
  kernel_rfl

theorem node3824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3824 value694 value1 value2 = (output3824, value695, value1) := by
  rw [input3824_def, output3824_def]
  kernel_rfl

theorem node3825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3825 value695 value1 value2 = (output3825, value696, value1) := by
  rw [input3825_def, output3825_def]
  kernel_rfl

theorem node3826_cond_eq
    (child3824 : Flapjack.WordAlloc.removeDeadStructural input3824 value694 value1 value2 = (output3824, value695, value1))
    (child3825 : Flapjack.WordAlloc.removeDeadStructural input3825 value695 value1 value2 = (output3825, value696, value1)) : Flapjack.WordAlloc.removeDeadStructural input3826 value694 value1 value2 = (output3826, value696, value1) := by
  rw [input3826_def, output3826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3824]
  try dsimp only
  rw [child3825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3824_skip, output3825_skip]
  kernel_rfl

theorem node3827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3827 value696 value1 value2 = (output3827, value694, value1) := by
  rw [input3827_def, output3827_def]
  kernel_rfl

theorem node3828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3828 value694 value1 value2 = (output3828, value694, value1) := by
  rw [input3828_def, output3828_def]
  kernel_rfl

theorem node3829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3829 value694 value1 value2 = (output3829, value697, value1) := by
  rw [input3829_def, output3829_def]
  kernel_rfl

theorem node3830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3830 value697 value1 value2 = (output3830, value697, value1) := by
  rw [input3830_def, output3830_def]
  kernel_rfl

theorem node3831_cond_eq
    (child3829 : Flapjack.WordAlloc.removeDeadStructural input3829 value694 value1 value2 = (output3829, value697, value1))
    (child3830 : Flapjack.WordAlloc.removeDeadStructural input3830 value697 value1 value2 = (output3830, value697, value1)) : Flapjack.WordAlloc.removeDeadStructural input3831 value694 value1 value2 = (output3831, value697, value1) := by
  rw [input3831_def, output3831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3829]
  try dsimp only
  rw [child3830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3829_skip, output3830_skip]
  kernel_rfl

theorem node3832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3832 value697 value1 value2 = (output3832, value698, value1) := by
  rw [input3832_def, output3832_def]
  kernel_rfl

theorem node3833_cond_eq
    (child3831 : Flapjack.WordAlloc.removeDeadStructural input3831 value694 value1 value2 = (output3831, value697, value1))
    (child3832 : Flapjack.WordAlloc.removeDeadStructural input3832 value697 value1 value2 = (output3832, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3833 value694 value1 value2 = (output3833, value698, value1) := by
  rw [input3833_def, output3833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3831]
  try dsimp only
  rw [child3832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3831_skip, output3832_skip]
  kernel_rfl

theorem node3834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3834 value698 value1 value2 = (output3834, value698, value1) := by
  rw [input3834_def, output3834_def]
  kernel_rfl

theorem node3835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3835 value698 value1 value2 = (output3835, value698, value1) := by
  rw [input3835_def, output3835_def]
  kernel_rfl

theorem node3836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3836 value698 value1 value2 = (output3836, value698, value1) := by
  rw [input3836_def, output3836_def]
  kernel_rfl

theorem node3837_cond_eq
    (child3835 : Flapjack.WordAlloc.removeDeadStructural input3835 value698 value1 value2 = (output3835, value698, value1))
    (child3836 : Flapjack.WordAlloc.removeDeadStructural input3836 value698 value1 value2 = (output3836, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3837 value698 value1 value2 = (output3837, value698, value1) := by
  rw [input3837_def, output3837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3835]
  try dsimp only
  rw [child3836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3835_skip, output3836_skip]
  kernel_rfl

theorem node3838_cond_eq
    (child3834 : Flapjack.WordAlloc.removeDeadStructural input3834 value698 value1 value2 = (output3834, value698, value1))
    (child3837 : Flapjack.WordAlloc.removeDeadStructural input3837 value698 value1 value2 = (output3837, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3838 value698 value1 value2 = (output3838, value698, value1) := by
  rw [input3838_def, output3838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3834]
  try dsimp only
  rw [child3837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3834_skip, output3837_skip]
  kernel_rfl

theorem node3839_cond_eq
    (child3833 : Flapjack.WordAlloc.removeDeadStructural input3833 value694 value1 value2 = (output3833, value698, value1))
    (child3838 : Flapjack.WordAlloc.removeDeadStructural input3838 value698 value1 value2 = (output3838, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3839 value694 value1 value2 = (output3839, value698, value1) := by
  rw [input3839_def, output3839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3833]
  try dsimp only
  rw [child3838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3833_skip, output3838_skip]
  kernel_rfl

#print axioms node3839_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
