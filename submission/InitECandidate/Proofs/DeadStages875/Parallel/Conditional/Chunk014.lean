import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk014
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node3584_cond_eq
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value239 value1 value2 = (output1084, value240, value1))
    (child3583 : Flapjack.WordAlloc.removeDeadStructural input3583 value240 value1 value2 = (output3583, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3584 value239 value1 value2 = (output3584, value1161, value1) := by
  rw [input3584_def, output3584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1084]
  try dsimp only
  rw [child3583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1084_skip, output3583_skip]
  kernel_rfl

theorem node3585_cond_eq
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value237 value1 value2 = (output1083, value239, value1))
    (child3584 : Flapjack.WordAlloc.removeDeadStructural input3584 value239 value1 value2 = (output3584, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3585 value237 value1 value2 = (output3585, value1161, value1) := by
  rw [input3585_def, output3585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1083]
  try dsimp only
  rw [child3584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1083_skip, output3584_skip]
  kernel_rfl

theorem node3586_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value232 value1 value2 = (output1080, value237, value1))
    (child3585 : Flapjack.WordAlloc.removeDeadStructural input3585 value237 value1 value2 = (output3585, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3586 value232 value1 value2 = (output3586, value1161, value1) := by
  rw [input3586_def, output3586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child3585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output3585_skip]
  kernel_rfl

theorem node3587_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value225 value1 value2 = (output1071, value232, value1))
    (child3586 : Flapjack.WordAlloc.removeDeadStructural input3586 value232 value1 value2 = (output3586, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3587 value225 value1 value2 = (output3587, value1161, value1) := by
  rw [input3587_def, output3587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  try dsimp only
  rw [child3586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1071_skip, output3586_skip]
  kernel_rfl

theorem node3588_cond_eq
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value224 value1 value2 = (output1058, value225, value1))
    (child3587 : Flapjack.WordAlloc.removeDeadStructural input3587 value225 value1 value2 = (output3587, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3588 value224 value1 value2 = (output3588, value1161, value1) := by
  rw [input3588_def, output3588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1058]
  try dsimp only
  rw [child3587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1058_skip, output3587_skip]
  kernel_rfl

theorem node3589_cond_eq
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value222 value1 value2 = (output1057, value224, value1))
    (child3588 : Flapjack.WordAlloc.removeDeadStructural input3588 value224 value1 value2 = (output3588, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3589 value222 value1 value2 = (output3589, value1161, value1) := by
  rw [input3589_def, output3589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1057]
  try dsimp only
  rw [child3588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1057_skip, output3588_skip]
  kernel_rfl

theorem node3590_cond_eq
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value217 value1 value2 = (output1054, value222, value1))
    (child3589 : Flapjack.WordAlloc.removeDeadStructural input3589 value222 value1 value2 = (output3589, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3590 value217 value1 value2 = (output3590, value1161, value1) := by
  rw [input3590_def, output3590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1054]
  try dsimp only
  rw [child3589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1054_skip, output3589_skip]
  kernel_rfl

theorem node3591_cond_eq
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value210 value1 value2 = (output1045, value217, value1))
    (child3590 : Flapjack.WordAlloc.removeDeadStructural input3590 value217 value1 value2 = (output3590, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3591 value210 value1 value2 = (output3591, value1161, value1) := by
  rw [input3591_def, output3591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1045]
  try dsimp only
  rw [child3590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1045_skip, output3590_skip]
  kernel_rfl

theorem node3592_cond_eq
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value209 value1 value2 = (output1032, value210, value1))
    (child3591 : Flapjack.WordAlloc.removeDeadStructural input3591 value210 value1 value2 = (output3591, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3592 value209 value1 value2 = (output3592, value1161, value1) := by
  rw [input3592_def, output3592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1032]
  try dsimp only
  rw [child3591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1032_skip, output3591_skip]
  kernel_rfl

theorem node3593_cond_eq
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value207 value1 value2 = (output1031, value209, value1))
    (child3592 : Flapjack.WordAlloc.removeDeadStructural input3592 value209 value1 value2 = (output3592, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3593 value207 value1 value2 = (output3593, value1161, value1) := by
  rw [input3593_def, output3593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1031]
  try dsimp only
  rw [child3592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1031_skip, output3592_skip]
  kernel_rfl

theorem node3594_cond_eq
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value206 value1 value2 = (output1028, value207, value1))
    (child3593 : Flapjack.WordAlloc.removeDeadStructural input3593 value207 value1 value2 = (output3593, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3594 value206 value1 value2 = (output3594, value1161, value1) := by
  rw [input3594_def, output3594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1028]
  try dsimp only
  rw [child3593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1028_skip, output3593_skip]
  kernel_rfl

theorem node3595_cond_eq
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value203 value1 value2 = (output1025, value206, value1))
    (child3594 : Flapjack.WordAlloc.removeDeadStructural input3594 value206 value1 value2 = (output3594, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3595 value203 value1 value2 = (output3595, value1161, value1) := by
  rw [input3595_def, output3595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1025]
  try dsimp only
  rw [child3594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1025_skip, output3594_skip]
  kernel_rfl

theorem node3596_cond_eq
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value205 value1 value2 = (output1024, value203, value1))
    (child3595 : Flapjack.WordAlloc.removeDeadStructural input3595 value203 value1 value2 = (output3595, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3596 value205 value1 value2 = (output3596, value1161, value1) := by
  rw [input3596_def, output3596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1024]
  try dsimp only
  rw [child3595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1024_skip, output3595_skip]
  kernel_rfl

theorem node3597_cond_eq
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value196 value1 value2 = (output1023, value205, value1))
    (child3596 : Flapjack.WordAlloc.removeDeadStructural input3596 value205 value1 value2 = (output3596, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3597 value196 value1 value2 = (output3597, value1161, value1) := by
  rw [input3597_def, output3597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1023]
  try dsimp only
  rw [child3596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1023_skip, output3596_skip]
  kernel_rfl

theorem node3598_cond_eq
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value196 value1 value2 = (output964, value196, value1))
    (child3597 : Flapjack.WordAlloc.removeDeadStructural input3597 value196 value1 value2 = (output3597, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3598 value196 value1 value2 = (output3598, value1161, value1) := by
  rw [input3598_def, output3598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child964]
  try dsimp only
  rw [child3597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output964_skip, output3597_skip]
  kernel_rfl

theorem node3599_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value195 value1 value2 = (output963, value196, value1))
    (child3598 : Flapjack.WordAlloc.removeDeadStructural input3598 value196 value1 value2 = (output3598, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3599 value195 value1 value2 = (output3599, value1161, value1) := by
  rw [input3599_def, output3599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  try dsimp only
  rw [child3598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output3598_skip]
  kernel_rfl

theorem node3600_cond_eq
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value194 value1 value2 = (output962, value195, value1))
    (child3599 : Flapjack.WordAlloc.removeDeadStructural input3599 value195 value1 value2 = (output3599, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3600 value194 value1 value2 = (output3600, value1161, value1) := by
  rw [input3600_def, output3600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child962]
  try dsimp only
  rw [child3599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output962_skip, output3599_skip]
  kernel_rfl

theorem node3601_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value193 value1 value2 = (output959, value194, value1))
    (child3600 : Flapjack.WordAlloc.removeDeadStructural input3600 value194 value1 value2 = (output3600, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3601 value193 value1 value2 = (output3601, value1161, value1) := by
  rw [input3601_def, output3601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child3600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output3600_skip]
  kernel_rfl

theorem node3602_cond_eq
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value188 value1 value2 = (output958, value193, value1))
    (child3601 : Flapjack.WordAlloc.removeDeadStructural input3601 value193 value1 value2 = (output3601, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3602 value188 value1 value2 = (output3602, value1161, value1) := by
  rw [input3602_def, output3602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child958]
  try dsimp only
  rw [child3601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output958_skip, output3601_skip]
  kernel_rfl

theorem node3603_cond_eq
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value188 value1 value2 = (output937, value188, value1))
    (child3602 : Flapjack.WordAlloc.removeDeadStructural input3602 value188 value1 value2 = (output3602, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3603 value188 value1 value2 = (output3603, value1161, value1) := by
  rw [input3603_def, output3603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child937]
  try dsimp only
  rw [child3602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output937_skip, output3602_skip]
  kernel_rfl

theorem node3604_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value186 value1 value2 = (output936, value188, value1))
    (child3603 : Flapjack.WordAlloc.removeDeadStructural input3603 value188 value1 value2 = (output3603, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3604 value186 value1 value2 = (output3604, value1161, value1) := by
  rw [input3604_def, output3604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child3603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output3603_skip]
  kernel_rfl

theorem node3605_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value185 value1 value2 = (output933, value186, value1))
    (child3604 : Flapjack.WordAlloc.removeDeadStructural input3604 value186 value1 value2 = (output3604, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3605 value185 value1 value2 = (output3605, value1161, value1) := by
  rw [input3605_def, output3605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child3604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output3604_skip]
  kernel_rfl

theorem node3606_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value180 value1 value2 = (output932, value185, value1))
    (child3605 : Flapjack.WordAlloc.removeDeadStructural input3605 value185 value1 value2 = (output3605, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3606 value180 value1 value2 = (output3606, value1161, value1) := by
  rw [input3606_def, output3606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child3605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output3605_skip]
  kernel_rfl

theorem node3607_cond_eq
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value179 value1 value2 = (output923, value180, value1))
    (child3606 : Flapjack.WordAlloc.removeDeadStructural input3606 value180 value1 value2 = (output3606, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3607 value179 value1 value2 = (output3607, value1161, value1) := by
  rw [input3607_def, output3607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child923]
  try dsimp only
  rw [child3606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output923_skip, output3606_skip]
  kernel_rfl

theorem node3608_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value176 value1 value2 = (output922, value179, value1))
    (child3607 : Flapjack.WordAlloc.removeDeadStructural input3607 value179 value1 value2 = (output3607, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3608 value176 value1 value2 = (output3608, value1161, value1) := by
  rw [input3608_def, output3608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child3607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output3607_skip]
  kernel_rfl

theorem node3609_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value176 value1 value2 = (output917, value176, value1))
    (child3608 : Flapjack.WordAlloc.removeDeadStructural input3608 value176 value1 value2 = (output3608, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3609 value176 value1 value2 = (output3609, value1161, value1) := by
  rw [input3609_def, output3609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child3608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output3608_skip]
  kernel_rfl

theorem node3610_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value168 value1 value2 = (output916, value176, value1))
    (child3609 : Flapjack.WordAlloc.removeDeadStructural input3609 value176 value1 value2 = (output3609, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3610 value168 value1 value2 = (output3610, value1161, value1) := by
  rw [input3610_def, output3610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child3609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output3609_skip]
  kernel_rfl

theorem node3611_cond_eq
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value167 value1 value2 = (output901, value168, value1))
    (child3610 : Flapjack.WordAlloc.removeDeadStructural input3610 value168 value1 value2 = (output3610, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3611 value167 value1 value2 = (output3611, value1161, value1) := by
  rw [input3611_def, output3611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child901]
  try dsimp only
  rw [child3610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output901_skip, output3610_skip]
  kernel_rfl

theorem node3612_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value166 value1 value2 = (output900, value167, value1))
    (child3611 : Flapjack.WordAlloc.removeDeadStructural input3611 value167 value1 value2 = (output3611, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3612 value166 value1 value2 = (output3612, value1161, value1) := by
  rw [input3612_def, output3612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child3611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output3611_skip]
  kernel_rfl

theorem node3613_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value164 value1 value2 = (output899, value166, value1))
    (child3612 : Flapjack.WordAlloc.removeDeadStructural input3612 value166 value1 value2 = (output3612, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3613 value164 value1 value2 = (output3613, value1161, value1) := by
  rw [input3613_def, output3613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child3612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output3612_skip]
  kernel_rfl

theorem node3614_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value155 value1 value2 = (output896, value164, value1))
    (child3613 : Flapjack.WordAlloc.removeDeadStructural input3613 value164 value1 value2 = (output3613, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3614 value155 value1 value2 = (output3614, value1161, value1) := by
  rw [input3614_def, output3614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child3613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output3613_skip]
  kernel_rfl

theorem node3615_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value154 value1 value2 = (output879, value155, value1))
    (child3614 : Flapjack.WordAlloc.removeDeadStructural input3614 value155 value1 value2 = (output3614, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3615 value154 value1 value2 = (output3615, value1161, value1) := by
  rw [input3615_def, output3615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child3614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output3614_skip]
  kernel_rfl

theorem node3616_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value153 value1 value2 = (output878, value154, value1))
    (child3615 : Flapjack.WordAlloc.removeDeadStructural input3615 value154 value1 value2 = (output3615, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3616 value153 value1 value2 = (output3616, value1161, value1) := by
  rw [input3616_def, output3616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child3615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output3615_skip]
  kernel_rfl

theorem node3617_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value151 value1 value2 = (output877, value153, value1))
    (child3616 : Flapjack.WordAlloc.removeDeadStructural input3616 value153 value1 value2 = (output3616, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3617 value151 value1 value2 = (output3617, value1161, value1) := by
  rw [input3617_def, output3617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child3616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output3616_skip]
  kernel_rfl

theorem node3618_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value149 value1 value2 = (output874, value151, value1))
    (child3617 : Flapjack.WordAlloc.removeDeadStructural input3617 value151 value1 value2 = (output3617, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3618 value149 value1 value2 = (output3618, value1161, value1) := by
  rw [input3618_def, output3618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child3617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output3617_skip]
  kernel_rfl

theorem node3619_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value147 value1 value2 = (output871, value149, value1))
    (child3618 : Flapjack.WordAlloc.removeDeadStructural input3618 value149 value1 value2 = (output3618, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3619 value147 value1 value2 = (output3619, value1161, value1) := by
  rw [input3619_def, output3619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child3618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output3618_skip]
  kernel_rfl

theorem node3620_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value146 value1 value2 = (output868, value147, value1))
    (child3619 : Flapjack.WordAlloc.removeDeadStructural input3619 value147 value1 value2 = (output3619, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3620 value146 value1 value2 = (output3620, value1161, value1) := by
  rw [input3620_def, output3620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child3619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output3619_skip]
  kernel_rfl

theorem node3621_cond_eq
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value146 value1 value2 = (output867, value146, value1))
    (child3620 : Flapjack.WordAlloc.removeDeadStructural input3620 value146 value1 value2 = (output3620, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3621 value146 value1 value2 = (output3621, value1161, value1) := by
  rw [input3621_def, output3621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child867]
  try dsimp only
  rw [child3620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output867_skip, output3620_skip]
  kernel_rfl

theorem node3622_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value117 value1 value2 = (output866, value146, value1))
    (child3621 : Flapjack.WordAlloc.removeDeadStructural input3621 value146 value1 value2 = (output3621, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3622 value117 value1 value2 = (output3622, value1161, value1) := by
  rw [input3622_def, output3622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child3621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output3621_skip]
  kernel_rfl

theorem node3623_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value117 value1 value2 = (output766, value117, value1))
    (child3622 : Flapjack.WordAlloc.removeDeadStructural input3622 value117 value1 value2 = (output3622, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3623 value117 value1 value2 = (output3623, value1161, value1) := by
  rw [input3623_def, output3623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  try dsimp only
  rw [child3622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output3622_skip]
  kernel_rfl

theorem node3624_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value112 value1 value2 = (output765, value117, value1))
    (child3623 : Flapjack.WordAlloc.removeDeadStructural input3623 value117 value1 value2 = (output3623, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3624 value112 value1 value2 = (output3624, value1161, value1) := by
  rw [input3624_def, output3624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  try dsimp only
  rw [child3623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output3623_skip]
  kernel_rfl

theorem node3625_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value113 value1 value2 = (output764, value112, value1))
    (child3624 : Flapjack.WordAlloc.removeDeadStructural input3624 value112 value1 value2 = (output3624, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3625 value113 value1 value2 = (output3625, value1161, value1) := by
  rw [input3625_def, output3625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child3624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output3624_skip]
  kernel_rfl

theorem node3626_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value116 value1 value2 = (output763, value113, value1))
    (child3625 : Flapjack.WordAlloc.removeDeadStructural input3625 value113 value1 value2 = (output3625, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3626 value116 value1 value2 = (output3626, value1161, value1) := by
  rw [input3626_def, output3626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child3625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output3625_skip]
  kernel_rfl

theorem node3627_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value110 value1 value2 = (output762, value116, value1))
    (child3626 : Flapjack.WordAlloc.removeDeadStructural input3626 value116 value1 value2 = (output3626, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3627 value110 value1 value2 = (output3627, value1161, value1) := by
  rw [input3627_def, output3627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child3626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output3626_skip]
  kernel_rfl

theorem node3628_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value110 value1 value2 = (output741, value110, value1))
    (child3627 : Flapjack.WordAlloc.removeDeadStructural input3627 value110 value1 value2 = (output3627, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3628 value110 value1 value2 = (output3628, value1161, value1) := by
  rw [input3628_def, output3628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child3627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output3627_skip]
  kernel_rfl

theorem node3629_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value110 value1 value2 = (output740, value110, value1))
    (child3628 : Flapjack.WordAlloc.removeDeadStructural input3628 value110 value1 value2 = (output3628, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3629 value110 value1 value2 = (output3629, value1161, value1) := by
  rw [input3629_def, output3629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child3628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output3628_skip]
  kernel_rfl

theorem node3630_cond_eq
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value109 value1 value2 = (output739, value110, value1))
    (child3629 : Flapjack.WordAlloc.removeDeadStructural input3629 value110 value1 value2 = (output3629, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3630 value109 value1 value2 = (output3630, value1161, value1) := by
  rw [input3630_def, output3630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child739]
  try dsimp only
  rw [child3629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output739_skip, output3629_skip]
  kernel_rfl

theorem node3631_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value108 value1 value2 = (output738, value109, value1))
    (child3630 : Flapjack.WordAlloc.removeDeadStructural input3630 value109 value1 value2 = (output3630, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3631 value108 value1 value2 = (output3631, value1161, value1) := by
  rw [input3631_def, output3631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child3630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output738_skip, output3630_skip]
  kernel_rfl

theorem node3632_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value105 value1 value2 = (output737, value108, value1))
    (child3631 : Flapjack.WordAlloc.removeDeadStructural input3631 value108 value1 value2 = (output3631, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3632 value105 value1 value2 = (output3632, value1161, value1) := by
  rw [input3632_def, output3632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  try dsimp only
  rw [child3631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output737_skip, output3631_skip]
  kernel_rfl

theorem node3633_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value105 value1 value2 = (output732, value105, value1))
    (child3632 : Flapjack.WordAlloc.removeDeadStructural input3632 value105 value1 value2 = (output3632, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3633 value105 value1 value2 = (output3633, value1161, value1) := by
  rw [input3633_def, output3633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child3632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output3632_skip]
  kernel_rfl

theorem node3634_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value103 value1 value2 = (output731, value105, value1))
    (child3633 : Flapjack.WordAlloc.removeDeadStructural input3633 value105 value1 value2 = (output3633, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3634 value103 value1 value2 = (output3634, value1161, value1) := by
  rw [input3634_def, output3634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child3633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output3633_skip]
  kernel_rfl

theorem node3635_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value102 value1 value2 = (output728, value103, value1))
    (child3634 : Flapjack.WordAlloc.removeDeadStructural input3634 value103 value1 value2 = (output3634, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3635 value102 value1 value2 = (output3635, value1161, value1) := by
  rw [input3635_def, output3635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child3634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output3634_skip]
  kernel_rfl

theorem node3636_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value101 value1 value2 = (output727, value102, value1))
    (child3635 : Flapjack.WordAlloc.removeDeadStructural input3635 value102 value1 value2 = (output3635, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3636 value101 value1 value2 = (output3636, value1161, value1) := by
  rw [input3636_def, output3636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child3635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output3635_skip]
  kernel_rfl

theorem node3637_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value99 value1 value2 = (output726, value101, value1))
    (child3636 : Flapjack.WordAlloc.removeDeadStructural input3636 value101 value1 value2 = (output3636, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3637 value99 value1 value2 = (output3637, value1161, value1) := by
  rw [input3637_def, output3637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child3636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output3636_skip]
  kernel_rfl

theorem node3638_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value97 value1 value2 = (output723, value99, value1))
    (child3637 : Flapjack.WordAlloc.removeDeadStructural input3637 value99 value1 value2 = (output3637, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3638 value97 value1 value2 = (output3638, value1161, value1) := by
  rw [input3638_def, output3638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child3637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output3637_skip]
  kernel_rfl

theorem node3639_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value96 value1 value2 = (output720, value97, value1))
    (child3638 : Flapjack.WordAlloc.removeDeadStructural input3638 value97 value1 value2 = (output3638, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3639 value96 value1 value2 = (output3639, value1161, value1) := by
  rw [input3639_def, output3639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child3638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output3638_skip]
  kernel_rfl

theorem node3640_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value96 value1 value2 = (output719, value96, value1))
    (child3639 : Flapjack.WordAlloc.removeDeadStructural input3639 value96 value1 value2 = (output3639, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3640 value96 value1 value2 = (output3640, value1161, value1) := by
  rw [input3640_def, output3640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child3639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output3639_skip]
  kernel_rfl

theorem node3641_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value73 value1 value2 = (output718, value96, value1))
    (child3640 : Flapjack.WordAlloc.removeDeadStructural input3640 value96 value1 value2 = (output3640, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3641 value73 value1 value2 = (output3641, value1161, value1) := by
  rw [input3641_def, output3641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child3640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output3640_skip]
  kernel_rfl

theorem node3642_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value73 value1 value2 = (output636, value73, value1))
    (child3641 : Flapjack.WordAlloc.removeDeadStructural input3641 value73 value1 value2 = (output3641, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3642 value73 value1 value2 = (output3642, value1161, value1) := by
  rw [input3642_def, output3642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child3641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output3641_skip]
  kernel_rfl

theorem node3643_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value68 value1 value2 = (output635, value73, value1))
    (child3642 : Flapjack.WordAlloc.removeDeadStructural input3642 value73 value1 value2 = (output3642, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3643 value68 value1 value2 = (output3643, value1161, value1) := by
  rw [input3643_def, output3643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child3642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output3642_skip]
  kernel_rfl

theorem node3644_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value68 value1 value2 = (output626, value68, value1))
    (child3643 : Flapjack.WordAlloc.removeDeadStructural input3643 value68 value1 value2 = (output3643, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3644 value68 value1 value2 = (output3644, value1161, value1) := by
  rw [input3644_def, output3644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child3643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output3643_skip]
  kernel_rfl

theorem node3645_cond_eq
    (child625 : Flapjack.WordAlloc.removeDeadStructural input625 value67 value1 value2 = (output625, value68, value1))
    (child3644 : Flapjack.WordAlloc.removeDeadStructural input3644 value68 value1 value2 = (output3644, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3645 value67 value1 value2 = (output3645, value1161, value1) := by
  rw [input3645_def, output3645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child625]
  try dsimp only
  rw [child3644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output625_skip, output3644_skip]
  kernel_rfl

theorem node3646_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value64 value1 value2 = (output624, value67, value1))
    (child3645 : Flapjack.WordAlloc.removeDeadStructural input3645 value67 value1 value2 = (output3645, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3646 value64 value1 value2 = (output3646, value1161, value1) := by
  rw [input3646_def, output3646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child3645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output3645_skip]
  kernel_rfl

theorem node3647_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value64 value1 value2 = (output619, value64, value1))
    (child3646 : Flapjack.WordAlloc.removeDeadStructural input3646 value64 value1 value2 = (output3646, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3647 value64 value1 value2 = (output3647, value1161, value1) := by
  rw [input3647_def, output3647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child3646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output3646_skip]
  kernel_rfl

theorem node3648_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value63 value1 value2 = (output618, value64, value1))
    (child3647 : Flapjack.WordAlloc.removeDeadStructural input3647 value64 value1 value2 = (output3647, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3648 value63 value1 value2 = (output3648, value1161, value1) := by
  rw [input3648_def, output3648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child3647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output3647_skip]
  kernel_rfl

theorem node3649_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value60 value1 value2 = (output617, value63, value1))
    (child3648 : Flapjack.WordAlloc.removeDeadStructural input3648 value63 value1 value2 = (output3648, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3649 value60 value1 value2 = (output3649, value1161, value1) := by
  rw [input3649_def, output3649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child3648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output3648_skip]
  kernel_rfl

theorem node3650_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value62 value1 value2 = (output616, value60, value1))
    (child3649 : Flapjack.WordAlloc.removeDeadStructural input3649 value60 value1 value2 = (output3649, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3650 value62 value1 value2 = (output3650, value1161, value1) := by
  rw [input3650_def, output3650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child3649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output3649_skip]
  kernel_rfl

theorem node3651_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value60 value1 value2 = (output615, value62, value1))
    (child3650 : Flapjack.WordAlloc.removeDeadStructural input3650 value62 value1 value2 = (output3650, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3651 value60 value1 value2 = (output3651, value1161, value1) := by
  rw [input3651_def, output3651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child3650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output3650_skip]
  kernel_rfl

theorem node3652_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value58 value1 value2 = (output612, value60, value1))
    (child3651 : Flapjack.WordAlloc.removeDeadStructural input3651 value60 value1 value2 = (output3651, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3652 value58 value1 value2 = (output3652, value1161, value1) := by
  rw [input3652_def, output3652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child3651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output3651_skip]
  kernel_rfl

theorem node3653_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value54 value1 value2 = (output609, value58, value1))
    (child3652 : Flapjack.WordAlloc.removeDeadStructural input3652 value58 value1 value2 = (output3652, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3653 value54 value1 value2 = (output3653, value1161, value1) := by
  rw [input3653_def, output3653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child3652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output3652_skip]
  kernel_rfl

theorem node3654_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value57 value1 value2 = (output608, value54, value1))
    (child3653 : Flapjack.WordAlloc.removeDeadStructural input3653 value54 value1 value2 = (output3653, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3654 value57 value1 value2 = (output3654, value1161, value1) := by
  rw [input3654_def, output3654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child3653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output3653_skip]
  kernel_rfl

theorem node3655_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value24 value1 value2 = (output607, value57, value1))
    (child3654 : Flapjack.WordAlloc.removeDeadStructural input3654 value57 value1 value2 = (output3654, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3655 value24 value1 value2 = (output3655, value1161, value1) := by
  rw [input3655_def, output3655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child3654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output3654_skip]
  kernel_rfl

theorem node3656_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value24 value1 value2 = (output77, value24, value1))
    (child3655 : Flapjack.WordAlloc.removeDeadStructural input3655 value24 value1 value2 = (output3655, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3656 value24 value1 value2 = (output3656, value1161, value1) := by
  rw [input3656_def, output3656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child3655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output3655_skip]
  kernel_rfl

theorem node3657_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value22 value1 value2 = (output76, value24, value1))
    (child3656 : Flapjack.WordAlloc.removeDeadStructural input3656 value24 value1 value2 = (output3656, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3657 value22 value1 value2 = (output3657, value1161, value1) := by
  rw [input3657_def, output3657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child3656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output3656_skip]
  kernel_rfl

theorem node3658_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value22 value1 value2 = (output71, value22, value1))
    (child3657 : Flapjack.WordAlloc.removeDeadStructural input3657 value22 value1 value2 = (output3657, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3658 value22 value1 value2 = (output3658, value1161, value1) := by
  rw [input3658_def, output3658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child3657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output3657_skip]
  kernel_rfl

theorem node3659_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value20 value1 value2 = (output70, value22, value1))
    (child3658 : Flapjack.WordAlloc.removeDeadStructural input3658 value22 value1 value2 = (output3658, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3659 value20 value1 value2 = (output3659, value1161, value1) := by
  rw [input3659_def, output3659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child3658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output3658_skip]
  kernel_rfl

theorem node3660_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value15 value1 value2 = (output67, value20, value1))
    (child3659 : Flapjack.WordAlloc.removeDeadStructural input3659 value20 value1 value2 = (output3659, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3660 value15 value1 value2 = (output3660, value1161, value1) := by
  rw [input3660_def, output3660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child3659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output3659_skip]
  kernel_rfl

theorem node3661_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value19 value1 value2 = (output66, value15, value1))
    (child3660 : Flapjack.WordAlloc.removeDeadStructural input3660 value15 value1 value2 = (output3660, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3661 value19 value1 value2 = (output3661, value1161, value1) := by
  rw [input3661_def, output3661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child3660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output3660_skip]
  kernel_rfl

theorem node3662_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value5 value1 value2 = (output65, value19, value1))
    (child3661 : Flapjack.WordAlloc.removeDeadStructural input3661 value19 value1 value2 = (output3661, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3662 value5 value1 value2 = (output3662, value1161, value1) := by
  rw [input3662_def, output3662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child3661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output3661_skip]
  kernel_rfl

theorem node3663_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child3662 : Flapjack.WordAlloc.removeDeadStructural input3662 value5 value1 value2 = (output3662, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3663 value5 value1 value2 = (output3663, value1161, value1) := by
  rw [input3663_def, output3663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child3662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output3662_skip]
  kernel_rfl

theorem node3664_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child3663 : Flapjack.WordAlloc.removeDeadStructural input3663 value5 value1 value2 = (output3663, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3664 value4 value1 value2 = (output3664, value1161, value1) := by
  rw [input3664_def, output3664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child3663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output3663_skip]
  kernel_rfl

theorem node3665_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child3664 : Flapjack.WordAlloc.removeDeadStructural input3664 value4 value1 value2 = (output3664, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3665 value0 value1 value2 = (output3665, value1161, value1) := by
  rw [input3665_def, output3665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child3664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output3664_skip]
  kernel_rfl

theorem node3666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3666 value1161 value1 value2 = (output3666, value1162, value1) := by
  rw [input3666_def, output3666_def]
  kernel_rfl

theorem node3667_cond_eq
    (child3665 : Flapjack.WordAlloc.removeDeadStructural input3665 value0 value1 value2 = (output3665, value1161, value1))
    (child3666 : Flapjack.WordAlloc.removeDeadStructural input3666 value1161 value1 value2 = (output3666, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input3667 value0 value1 value2 = (output3667, value1162, value1) := by
  rw [input3667_def, output3667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3665]
  try dsimp only
  rw [child3666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3665_skip, output3666_skip]
  kernel_rfl

#print axioms node3667_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
