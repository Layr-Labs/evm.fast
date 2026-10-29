import InitECandidate.Proofs.DeadStages875.Chunk013
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages875
@[irreducible, cbv_opaque] def input3584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3583 input1084)).val
theorem input3584_def : input3584 = (.seq input3583 input1084) := by
  unfold input3584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3583 output1084)).val
theorem output3584_def : output3584 = (.seq output3583 output1084) := by
  unfold output3584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3584_skip : Flapjack.WordAlloc.isSkip output3584 = false := by
  rw [output3584_def]
  conv => lhs; cbv
  try rfl
theorem node3584_eq : Flapjack.WordAlloc.removeDeadStructural input3584 value239 value1 value2 = (output3584, value1161, value1) := by
  rw [input3584_def, output3584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1084_eq]
  try dsimp only
  rw [node3583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3584 input1083)).val
theorem input3585_def : input3585 = (.seq input3584 input1083) := by
  unfold input3585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3584 output1083)).val
theorem output3585_def : output3585 = (.seq output3584 output1083) := by
  unfold output3585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3585_skip : Flapjack.WordAlloc.isSkip output3585 = false := by
  rw [output3585_def]
  conv => lhs; cbv
  try rfl
theorem node3585_eq : Flapjack.WordAlloc.removeDeadStructural input3585 value237 value1 value2 = (output3585, value1161, value1) := by
  rw [input3585_def, output3585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1083_eq]
  try dsimp only
  rw [node3584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3585 input1080)).val
theorem input3586_def : input3586 = (.seq input3585 input1080) := by
  unfold input3586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3585 output1080)).val
theorem output3586_def : output3586 = (.seq output3585 output1080) := by
  unfold output3586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3586_skip : Flapjack.WordAlloc.isSkip output3586 = false := by
  rw [output3586_def]
  conv => lhs; cbv
  try rfl
theorem node3586_eq : Flapjack.WordAlloc.removeDeadStructural input3586 value232 value1 value2 = (output3586, value1161, value1) := by
  rw [input3586_def, output3586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1080_eq]
  try dsimp only
  rw [node3585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3586 input1071)).val
theorem input3587_def : input3587 = (.seq input3586 input1071) := by
  unfold input3587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3586 output1071)).val
theorem output3587_def : output3587 = (.seq output3586 output1071) := by
  unfold output3587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3587_skip : Flapjack.WordAlloc.isSkip output3587 = false := by
  rw [output3587_def]
  conv => lhs; cbv
  try rfl
theorem node3587_eq : Flapjack.WordAlloc.removeDeadStructural input3587 value225 value1 value2 = (output3587, value1161, value1) := by
  rw [input3587_def, output3587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1071_eq]
  try dsimp only
  rw [node3586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3587 input1058)).val
theorem input3588_def : input3588 = (.seq input3587 input1058) := by
  unfold input3588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3587 output1058)).val
theorem output3588_def : output3588 = (.seq output3587 output1058) := by
  unfold output3588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3588_skip : Flapjack.WordAlloc.isSkip output3588 = false := by
  rw [output3588_def]
  conv => lhs; cbv
  try rfl
theorem node3588_eq : Flapjack.WordAlloc.removeDeadStructural input3588 value224 value1 value2 = (output3588, value1161, value1) := by
  rw [input3588_def, output3588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1058_eq]
  try dsimp only
  rw [node3587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3588 input1057)).val
theorem input3589_def : input3589 = (.seq input3588 input1057) := by
  unfold input3589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3588 output1057)).val
theorem output3589_def : output3589 = (.seq output3588 output1057) := by
  unfold output3589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3589_skip : Flapjack.WordAlloc.isSkip output3589 = false := by
  rw [output3589_def]
  conv => lhs; cbv
  try rfl
theorem node3589_eq : Flapjack.WordAlloc.removeDeadStructural input3589 value222 value1 value2 = (output3589, value1161, value1) := by
  rw [input3589_def, output3589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1057_eq]
  try dsimp only
  rw [node3588_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3589 input1054)).val
theorem input3590_def : input3590 = (.seq input3589 input1054) := by
  unfold input3590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3589 output1054)).val
theorem output3590_def : output3590 = (.seq output3589 output1054) := by
  unfold output3590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3590_skip : Flapjack.WordAlloc.isSkip output3590 = false := by
  rw [output3590_def]
  conv => lhs; cbv
  try rfl
theorem node3590_eq : Flapjack.WordAlloc.removeDeadStructural input3590 value217 value1 value2 = (output3590, value1161, value1) := by
  rw [input3590_def, output3590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1054_eq]
  try dsimp only
  rw [node3589_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3590 input1045)).val
theorem input3591_def : input3591 = (.seq input3590 input1045) := by
  unfold input3591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3590 output1045)).val
theorem output3591_def : output3591 = (.seq output3590 output1045) := by
  unfold output3591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3591_skip : Flapjack.WordAlloc.isSkip output3591 = false := by
  rw [output3591_def]
  conv => lhs; cbv
  try rfl
theorem node3591_eq : Flapjack.WordAlloc.removeDeadStructural input3591 value210 value1 value2 = (output3591, value1161, value1) := by
  rw [input3591_def, output3591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1045_eq]
  try dsimp only
  rw [node3590_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3591 input1032)).val
theorem input3592_def : input3592 = (.seq input3591 input1032) := by
  unfold input3592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3591 output1032)).val
theorem output3592_def : output3592 = (.seq output3591 output1032) := by
  unfold output3592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3592_skip : Flapjack.WordAlloc.isSkip output3592 = false := by
  rw [output3592_def]
  conv => lhs; cbv
  try rfl
theorem node3592_eq : Flapjack.WordAlloc.removeDeadStructural input3592 value209 value1 value2 = (output3592, value1161, value1) := by
  rw [input3592_def, output3592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1032_eq]
  try dsimp only
  rw [node3591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3592 input1031)).val
theorem input3593_def : input3593 = (.seq input3592 input1031) := by
  unfold input3593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3592 output1031)).val
theorem output3593_def : output3593 = (.seq output3592 output1031) := by
  unfold output3593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3593_skip : Flapjack.WordAlloc.isSkip output3593 = false := by
  rw [output3593_def]
  conv => lhs; cbv
  try rfl
theorem node3593_eq : Flapjack.WordAlloc.removeDeadStructural input3593 value207 value1 value2 = (output3593, value1161, value1) := by
  rw [input3593_def, output3593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1031_eq]
  try dsimp only
  rw [node3592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3593 input1028)).val
theorem input3594_def : input3594 = (.seq input3593 input1028) := by
  unfold input3594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3593 output1028)).val
theorem output3594_def : output3594 = (.seq output3593 output1028) := by
  unfold output3594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3594_skip : Flapjack.WordAlloc.isSkip output3594 = false := by
  rw [output3594_def]
  conv => lhs; cbv
  try rfl
theorem node3594_eq : Flapjack.WordAlloc.removeDeadStructural input3594 value206 value1 value2 = (output3594, value1161, value1) := by
  rw [input3594_def, output3594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1028_eq]
  try dsimp only
  rw [node3593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3594 input1025)).val
theorem input3595_def : input3595 = (.seq input3594 input1025) := by
  unfold input3595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3594 output1025)).val
theorem output3595_def : output3595 = (.seq output3594 output1025) := by
  unfold output3595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3595_skip : Flapjack.WordAlloc.isSkip output3595 = false := by
  rw [output3595_def]
  conv => lhs; cbv
  try rfl
theorem node3595_eq : Flapjack.WordAlloc.removeDeadStructural input3595 value203 value1 value2 = (output3595, value1161, value1) := by
  rw [input3595_def, output3595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1025_eq]
  try dsimp only
  rw [node3594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3595 input1024)).val
theorem input3596_def : input3596 = (.seq input3595 input1024) := by
  unfold input3596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3595 output1024)).val
theorem output3596_def : output3596 = (.seq output3595 output1024) := by
  unfold output3596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3596_skip : Flapjack.WordAlloc.isSkip output3596 = false := by
  rw [output3596_def]
  conv => lhs; cbv
  try rfl
theorem node3596_eq : Flapjack.WordAlloc.removeDeadStructural input3596 value205 value1 value2 = (output3596, value1161, value1) := by
  rw [input3596_def, output3596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1024_eq]
  try dsimp only
  rw [node3595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3596 input1023)).val
theorem input3597_def : input3597 = (.seq input3596 input1023) := by
  unfold input3597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3596 output1023)).val
theorem output3597_def : output3597 = (.seq output3596 output1023) := by
  unfold output3597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3597_skip : Flapjack.WordAlloc.isSkip output3597 = false := by
  rw [output3597_def]
  conv => lhs; cbv
  try rfl
theorem node3597_eq : Flapjack.WordAlloc.removeDeadStructural input3597 value196 value1 value2 = (output3597, value1161, value1) := by
  rw [input3597_def, output3597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1023_eq]
  try dsimp only
  rw [node3596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3597 input964)).val
theorem input3598_def : input3598 = (.seq input3597 input964) := by
  unfold input3598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3597 output964)).val
theorem output3598_def : output3598 = (.seq output3597 output964) := by
  unfold output3598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3598_skip : Flapjack.WordAlloc.isSkip output3598 = false := by
  rw [output3598_def]
  conv => lhs; cbv
  try rfl
theorem node3598_eq : Flapjack.WordAlloc.removeDeadStructural input3598 value196 value1 value2 = (output3598, value1161, value1) := by
  rw [input3598_def, output3598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node964_eq]
  try dsimp only
  rw [node3597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3598 input963)).val
theorem input3599_def : input3599 = (.seq input3598 input963) := by
  unfold input3599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3598 output963)).val
theorem output3599_def : output3599 = (.seq output3598 output963) := by
  unfold output3599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3599_skip : Flapjack.WordAlloc.isSkip output3599 = false := by
  rw [output3599_def]
  conv => lhs; cbv
  try rfl
theorem node3599_eq : Flapjack.WordAlloc.removeDeadStructural input3599 value195 value1 value2 = (output3599, value1161, value1) := by
  rw [input3599_def, output3599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node963_eq]
  try dsimp only
  rw [node3598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3599 input962)).val
theorem input3600_def : input3600 = (.seq input3599 input962) := by
  unfold input3600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3599 output962)).val
theorem output3600_def : output3600 = (.seq output3599 output962) := by
  unfold output3600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3600_skip : Flapjack.WordAlloc.isSkip output3600 = false := by
  rw [output3600_def]
  conv => lhs; cbv
  try rfl
theorem node3600_eq : Flapjack.WordAlloc.removeDeadStructural input3600 value194 value1 value2 = (output3600, value1161, value1) := by
  rw [input3600_def, output3600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node962_eq]
  try dsimp only
  rw [node3599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3600 input959)).val
theorem input3601_def : input3601 = (.seq input3600 input959) := by
  unfold input3601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3600 output959)).val
theorem output3601_def : output3601 = (.seq output3600 output959) := by
  unfold output3601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3601_skip : Flapjack.WordAlloc.isSkip output3601 = false := by
  rw [output3601_def]
  conv => lhs; cbv
  try rfl
theorem node3601_eq : Flapjack.WordAlloc.removeDeadStructural input3601 value193 value1 value2 = (output3601, value1161, value1) := by
  rw [input3601_def, output3601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node959_eq]
  try dsimp only
  rw [node3600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3601 input958)).val
theorem input3602_def : input3602 = (.seq input3601 input958) := by
  unfold input3602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3601 output958)).val
theorem output3602_def : output3602 = (.seq output3601 output958) := by
  unfold output3602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3602_skip : Flapjack.WordAlloc.isSkip output3602 = false := by
  rw [output3602_def]
  conv => lhs; cbv
  try rfl
theorem node3602_eq : Flapjack.WordAlloc.removeDeadStructural input3602 value188 value1 value2 = (output3602, value1161, value1) := by
  rw [input3602_def, output3602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node958_eq]
  try dsimp only
  rw [node3601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3602 input937)).val
theorem input3603_def : input3603 = (.seq input3602 input937) := by
  unfold input3603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3602 output937)).val
theorem output3603_def : output3603 = (.seq output3602 output937) := by
  unfold output3603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3603_skip : Flapjack.WordAlloc.isSkip output3603 = false := by
  rw [output3603_def]
  conv => lhs; cbv
  try rfl
theorem node3603_eq : Flapjack.WordAlloc.removeDeadStructural input3603 value188 value1 value2 = (output3603, value1161, value1) := by
  rw [input3603_def, output3603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node937_eq]
  try dsimp only
  rw [node3602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3603 input936)).val
theorem input3604_def : input3604 = (.seq input3603 input936) := by
  unfold input3604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3603 output936)).val
theorem output3604_def : output3604 = (.seq output3603 output936) := by
  unfold output3604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3604_skip : Flapjack.WordAlloc.isSkip output3604 = false := by
  rw [output3604_def]
  conv => lhs; cbv
  try rfl
theorem node3604_eq : Flapjack.WordAlloc.removeDeadStructural input3604 value186 value1 value2 = (output3604, value1161, value1) := by
  rw [input3604_def, output3604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node936_eq]
  try dsimp only
  rw [node3603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3604 input933)).val
theorem input3605_def : input3605 = (.seq input3604 input933) := by
  unfold input3605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3604 output933)).val
theorem output3605_def : output3605 = (.seq output3604 output933) := by
  unfold output3605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3605_skip : Flapjack.WordAlloc.isSkip output3605 = false := by
  rw [output3605_def]
  conv => lhs; cbv
  try rfl
theorem node3605_eq : Flapjack.WordAlloc.removeDeadStructural input3605 value185 value1 value2 = (output3605, value1161, value1) := by
  rw [input3605_def, output3605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node933_eq]
  try dsimp only
  rw [node3604_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3605 input932)).val
theorem input3606_def : input3606 = (.seq input3605 input932) := by
  unfold input3606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3605 output932)).val
theorem output3606_def : output3606 = (.seq output3605 output932) := by
  unfold output3606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3606_skip : Flapjack.WordAlloc.isSkip output3606 = false := by
  rw [output3606_def]
  conv => lhs; cbv
  try rfl
theorem node3606_eq : Flapjack.WordAlloc.removeDeadStructural input3606 value180 value1 value2 = (output3606, value1161, value1) := by
  rw [input3606_def, output3606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node932_eq]
  try dsimp only
  rw [node3605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3606 input923)).val
theorem input3607_def : input3607 = (.seq input3606 input923) := by
  unfold input3607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3606 output923)).val
theorem output3607_def : output3607 = (.seq output3606 output923) := by
  unfold output3607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3607_skip : Flapjack.WordAlloc.isSkip output3607 = false := by
  rw [output3607_def]
  conv => lhs; cbv
  try rfl
theorem node3607_eq : Flapjack.WordAlloc.removeDeadStructural input3607 value179 value1 value2 = (output3607, value1161, value1) := by
  rw [input3607_def, output3607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node923_eq]
  try dsimp only
  rw [node3606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3607 input922)).val
theorem input3608_def : input3608 = (.seq input3607 input922) := by
  unfold input3608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3607 output922)).val
theorem output3608_def : output3608 = (.seq output3607 output922) := by
  unfold output3608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3608_skip : Flapjack.WordAlloc.isSkip output3608 = false := by
  rw [output3608_def]
  conv => lhs; cbv
  try rfl
theorem node3608_eq : Flapjack.WordAlloc.removeDeadStructural input3608 value176 value1 value2 = (output3608, value1161, value1) := by
  rw [input3608_def, output3608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node922_eq]
  try dsimp only
  rw [node3607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3608 input917)).val
theorem input3609_def : input3609 = (.seq input3608 input917) := by
  unfold input3609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3608 output917)).val
theorem output3609_def : output3609 = (.seq output3608 output917) := by
  unfold output3609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3609_skip : Flapjack.WordAlloc.isSkip output3609 = false := by
  rw [output3609_def]
  conv => lhs; cbv
  try rfl
theorem node3609_eq : Flapjack.WordAlloc.removeDeadStructural input3609 value176 value1 value2 = (output3609, value1161, value1) := by
  rw [input3609_def, output3609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node917_eq]
  try dsimp only
  rw [node3608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3609 input916)).val
theorem input3610_def : input3610 = (.seq input3609 input916) := by
  unfold input3610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3609 output916)).val
theorem output3610_def : output3610 = (.seq output3609 output916) := by
  unfold output3610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3610_skip : Flapjack.WordAlloc.isSkip output3610 = false := by
  rw [output3610_def]
  conv => lhs; cbv
  try rfl
theorem node3610_eq : Flapjack.WordAlloc.removeDeadStructural input3610 value168 value1 value2 = (output3610, value1161, value1) := by
  rw [input3610_def, output3610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node916_eq]
  try dsimp only
  rw [node3609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3610 input901)).val
theorem input3611_def : input3611 = (.seq input3610 input901) := by
  unfold input3611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3610 output901)).val
theorem output3611_def : output3611 = (.seq output3610 output901) := by
  unfold output3611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3611_skip : Flapjack.WordAlloc.isSkip output3611 = false := by
  rw [output3611_def]
  conv => lhs; cbv
  try rfl
theorem node3611_eq : Flapjack.WordAlloc.removeDeadStructural input3611 value167 value1 value2 = (output3611, value1161, value1) := by
  rw [input3611_def, output3611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node901_eq]
  try dsimp only
  rw [node3610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3611 input900)).val
theorem input3612_def : input3612 = (.seq input3611 input900) := by
  unfold input3612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3611 output900)).val
theorem output3612_def : output3612 = (.seq output3611 output900) := by
  unfold output3612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3612_skip : Flapjack.WordAlloc.isSkip output3612 = false := by
  rw [output3612_def]
  conv => lhs; cbv
  try rfl
theorem node3612_eq : Flapjack.WordAlloc.removeDeadStructural input3612 value166 value1 value2 = (output3612, value1161, value1) := by
  rw [input3612_def, output3612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node900_eq]
  try dsimp only
  rw [node3611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3612 input899)).val
theorem input3613_def : input3613 = (.seq input3612 input899) := by
  unfold input3613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3612 output899)).val
theorem output3613_def : output3613 = (.seq output3612 output899) := by
  unfold output3613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3613_skip : Flapjack.WordAlloc.isSkip output3613 = false := by
  rw [output3613_def]
  conv => lhs; cbv
  try rfl
theorem node3613_eq : Flapjack.WordAlloc.removeDeadStructural input3613 value164 value1 value2 = (output3613, value1161, value1) := by
  rw [input3613_def, output3613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node899_eq]
  try dsimp only
  rw [node3612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3613 input896)).val
theorem input3614_def : input3614 = (.seq input3613 input896) := by
  unfold input3614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3613 output896)).val
theorem output3614_def : output3614 = (.seq output3613 output896) := by
  unfold output3614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3614_skip : Flapjack.WordAlloc.isSkip output3614 = false := by
  rw [output3614_def]
  conv => lhs; cbv
  try rfl
theorem node3614_eq : Flapjack.WordAlloc.removeDeadStructural input3614 value155 value1 value2 = (output3614, value1161, value1) := by
  rw [input3614_def, output3614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node896_eq]
  try dsimp only
  rw [node3613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3614 input879)).val
theorem input3615_def : input3615 = (.seq input3614 input879) := by
  unfold input3615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3614 output879)).val
theorem output3615_def : output3615 = (.seq output3614 output879) := by
  unfold output3615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3615_skip : Flapjack.WordAlloc.isSkip output3615 = false := by
  rw [output3615_def]
  conv => lhs; cbv
  try rfl
theorem node3615_eq : Flapjack.WordAlloc.removeDeadStructural input3615 value154 value1 value2 = (output3615, value1161, value1) := by
  rw [input3615_def, output3615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node879_eq]
  try dsimp only
  rw [node3614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3615 input878)).val
theorem input3616_def : input3616 = (.seq input3615 input878) := by
  unfold input3616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3615 output878)).val
theorem output3616_def : output3616 = (.seq output3615 output878) := by
  unfold output3616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3616_skip : Flapjack.WordAlloc.isSkip output3616 = false := by
  rw [output3616_def]
  conv => lhs; cbv
  try rfl
theorem node3616_eq : Flapjack.WordAlloc.removeDeadStructural input3616 value153 value1 value2 = (output3616, value1161, value1) := by
  rw [input3616_def, output3616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node878_eq]
  try dsimp only
  rw [node3615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3616 input877)).val
theorem input3617_def : input3617 = (.seq input3616 input877) := by
  unfold input3617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3616 output877)).val
theorem output3617_def : output3617 = (.seq output3616 output877) := by
  unfold output3617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3617_skip : Flapjack.WordAlloc.isSkip output3617 = false := by
  rw [output3617_def]
  conv => lhs; cbv
  try rfl
theorem node3617_eq : Flapjack.WordAlloc.removeDeadStructural input3617 value151 value1 value2 = (output3617, value1161, value1) := by
  rw [input3617_def, output3617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node877_eq]
  try dsimp only
  rw [node3616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3617 input874)).val
theorem input3618_def : input3618 = (.seq input3617 input874) := by
  unfold input3618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3617 output874)).val
theorem output3618_def : output3618 = (.seq output3617 output874) := by
  unfold output3618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3618_skip : Flapjack.WordAlloc.isSkip output3618 = false := by
  rw [output3618_def]
  conv => lhs; cbv
  try rfl
theorem node3618_eq : Flapjack.WordAlloc.removeDeadStructural input3618 value149 value1 value2 = (output3618, value1161, value1) := by
  rw [input3618_def, output3618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node874_eq]
  try dsimp only
  rw [node3617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3618 input871)).val
theorem input3619_def : input3619 = (.seq input3618 input871) := by
  unfold input3619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3618 output871)).val
theorem output3619_def : output3619 = (.seq output3618 output871) := by
  unfold output3619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3619_skip : Flapjack.WordAlloc.isSkip output3619 = false := by
  rw [output3619_def]
  conv => lhs; cbv
  try rfl
theorem node3619_eq : Flapjack.WordAlloc.removeDeadStructural input3619 value147 value1 value2 = (output3619, value1161, value1) := by
  rw [input3619_def, output3619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node871_eq]
  try dsimp only
  rw [node3618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3619 input868)).val
theorem input3620_def : input3620 = (.seq input3619 input868) := by
  unfold input3620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3619 output868)).val
theorem output3620_def : output3620 = (.seq output3619 output868) := by
  unfold output3620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3620_skip : Flapjack.WordAlloc.isSkip output3620 = false := by
  rw [output3620_def]
  conv => lhs; cbv
  try rfl
theorem node3620_eq : Flapjack.WordAlloc.removeDeadStructural input3620 value146 value1 value2 = (output3620, value1161, value1) := by
  rw [input3620_def, output3620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node868_eq]
  try dsimp only
  rw [node3619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3620 input867)).val
theorem input3621_def : input3621 = (.seq input3620 input867) := by
  unfold input3621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3620 output867)).val
theorem output3621_def : output3621 = (.seq output3620 output867) := by
  unfold output3621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3621_skip : Flapjack.WordAlloc.isSkip output3621 = false := by
  rw [output3621_def]
  conv => lhs; cbv
  try rfl
theorem node3621_eq : Flapjack.WordAlloc.removeDeadStructural input3621 value146 value1 value2 = (output3621, value1161, value1) := by
  rw [input3621_def, output3621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node867_eq]
  try dsimp only
  rw [node3620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3621 input866)).val
theorem input3622_def : input3622 = (.seq input3621 input866) := by
  unfold input3622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3621 output866)).val
theorem output3622_def : output3622 = (.seq output3621 output866) := by
  unfold output3622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3622_skip : Flapjack.WordAlloc.isSkip output3622 = false := by
  rw [output3622_def]
  conv => lhs; cbv
  try rfl
theorem node3622_eq : Flapjack.WordAlloc.removeDeadStructural input3622 value117 value1 value2 = (output3622, value1161, value1) := by
  rw [input3622_def, output3622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node866_eq]
  try dsimp only
  rw [node3621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3622 input766)).val
theorem input3623_def : input3623 = (.seq input3622 input766) := by
  unfold input3623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3622 output766)).val
theorem output3623_def : output3623 = (.seq output3622 output766) := by
  unfold output3623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3623_skip : Flapjack.WordAlloc.isSkip output3623 = false := by
  rw [output3623_def]
  conv => lhs; cbv
  try rfl
theorem node3623_eq : Flapjack.WordAlloc.removeDeadStructural input3623 value117 value1 value2 = (output3623, value1161, value1) := by
  rw [input3623_def, output3623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node766_eq]
  try dsimp only
  rw [node3622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3623 input765)).val
theorem input3624_def : input3624 = (.seq input3623 input765) := by
  unfold input3624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3623 output765)).val
theorem output3624_def : output3624 = (.seq output3623 output765) := by
  unfold output3624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3624_skip : Flapjack.WordAlloc.isSkip output3624 = false := by
  rw [output3624_def]
  conv => lhs; cbv
  try rfl
theorem node3624_eq : Flapjack.WordAlloc.removeDeadStructural input3624 value112 value1 value2 = (output3624, value1161, value1) := by
  rw [input3624_def, output3624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node765_eq]
  try dsimp only
  rw [node3623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3624 input764)).val
theorem input3625_def : input3625 = (.seq input3624 input764) := by
  unfold input3625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3624 output764)).val
theorem output3625_def : output3625 = (.seq output3624 output764) := by
  unfold output3625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3625_skip : Flapjack.WordAlloc.isSkip output3625 = false := by
  rw [output3625_def]
  conv => lhs; cbv
  try rfl
theorem node3625_eq : Flapjack.WordAlloc.removeDeadStructural input3625 value113 value1 value2 = (output3625, value1161, value1) := by
  rw [input3625_def, output3625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node764_eq]
  try dsimp only
  rw [node3624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3625 input763)).val
theorem input3626_def : input3626 = (.seq input3625 input763) := by
  unfold input3626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3625 output763)).val
theorem output3626_def : output3626 = (.seq output3625 output763) := by
  unfold output3626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3626_skip : Flapjack.WordAlloc.isSkip output3626 = false := by
  rw [output3626_def]
  conv => lhs; cbv
  try rfl
theorem node3626_eq : Flapjack.WordAlloc.removeDeadStructural input3626 value116 value1 value2 = (output3626, value1161, value1) := by
  rw [input3626_def, output3626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node763_eq]
  try dsimp only
  rw [node3625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3626 input762)).val
theorem input3627_def : input3627 = (.seq input3626 input762) := by
  unfold input3627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3626 output762)).val
theorem output3627_def : output3627 = (.seq output3626 output762) := by
  unfold output3627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3627_skip : Flapjack.WordAlloc.isSkip output3627 = false := by
  rw [output3627_def]
  conv => lhs; cbv
  try rfl
theorem node3627_eq : Flapjack.WordAlloc.removeDeadStructural input3627 value110 value1 value2 = (output3627, value1161, value1) := by
  rw [input3627_def, output3627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node762_eq]
  try dsimp only
  rw [node3626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3627 input741)).val
theorem input3628_def : input3628 = (.seq input3627 input741) := by
  unfold input3628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3627 output741)).val
theorem output3628_def : output3628 = (.seq output3627 output741) := by
  unfold output3628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3628_skip : Flapjack.WordAlloc.isSkip output3628 = false := by
  rw [output3628_def]
  conv => lhs; cbv
  try rfl
theorem node3628_eq : Flapjack.WordAlloc.removeDeadStructural input3628 value110 value1 value2 = (output3628, value1161, value1) := by
  rw [input3628_def, output3628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node741_eq]
  try dsimp only
  rw [node3627_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3628 input740)).val
theorem input3629_def : input3629 = (.seq input3628 input740) := by
  unfold input3629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3628)).val
theorem output3629_def : output3629 = (output3628) := by
  unfold output3629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3629_skip : Flapjack.WordAlloc.isSkip output3629 = false := by
  rw [output3629_def]
  conv => lhs; cbv
  try rfl
theorem node3629_eq : Flapjack.WordAlloc.removeDeadStructural input3629 value110 value1 value2 = (output3629, value1161, value1) := by
  rw [input3629_def, output3629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node740_eq]
  try dsimp only
  rw [node3628_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3629 input739)).val
theorem input3630_def : input3630 = (.seq input3629 input739) := by
  unfold input3630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3629 output739)).val
theorem output3630_def : output3630 = (.seq output3629 output739) := by
  unfold output3630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3630_skip : Flapjack.WordAlloc.isSkip output3630 = false := by
  rw [output3630_def]
  conv => lhs; cbv
  try rfl
theorem node3630_eq : Flapjack.WordAlloc.removeDeadStructural input3630 value109 value1 value2 = (output3630, value1161, value1) := by
  rw [input3630_def, output3630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node739_eq]
  try dsimp only
  rw [node3629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3630 input738)).val
theorem input3631_def : input3631 = (.seq input3630 input738) := by
  unfold input3631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3630 output738)).val
theorem output3631_def : output3631 = (.seq output3630 output738) := by
  unfold output3631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3631_skip : Flapjack.WordAlloc.isSkip output3631 = false := by
  rw [output3631_def]
  conv => lhs; cbv
  try rfl
theorem node3631_eq : Flapjack.WordAlloc.removeDeadStructural input3631 value108 value1 value2 = (output3631, value1161, value1) := by
  rw [input3631_def, output3631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node738_eq]
  try dsimp only
  rw [node3630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3631 input737)).val
theorem input3632_def : input3632 = (.seq input3631 input737) := by
  unfold input3632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3631 output737)).val
theorem output3632_def : output3632 = (.seq output3631 output737) := by
  unfold output3632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3632_skip : Flapjack.WordAlloc.isSkip output3632 = false := by
  rw [output3632_def]
  conv => lhs; cbv
  try rfl
theorem node3632_eq : Flapjack.WordAlloc.removeDeadStructural input3632 value105 value1 value2 = (output3632, value1161, value1) := by
  rw [input3632_def, output3632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node737_eq]
  try dsimp only
  rw [node3631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3632 input732)).val
theorem input3633_def : input3633 = (.seq input3632 input732) := by
  unfold input3633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3632 output732)).val
theorem output3633_def : output3633 = (.seq output3632 output732) := by
  unfold output3633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3633_skip : Flapjack.WordAlloc.isSkip output3633 = false := by
  rw [output3633_def]
  conv => lhs; cbv
  try rfl
theorem node3633_eq : Flapjack.WordAlloc.removeDeadStructural input3633 value105 value1 value2 = (output3633, value1161, value1) := by
  rw [input3633_def, output3633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node732_eq]
  try dsimp only
  rw [node3632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3633 input731)).val
theorem input3634_def : input3634 = (.seq input3633 input731) := by
  unfold input3634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3633 output731)).val
theorem output3634_def : output3634 = (.seq output3633 output731) := by
  unfold output3634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3634_skip : Flapjack.WordAlloc.isSkip output3634 = false := by
  rw [output3634_def]
  conv => lhs; cbv
  try rfl
theorem node3634_eq : Flapjack.WordAlloc.removeDeadStructural input3634 value103 value1 value2 = (output3634, value1161, value1) := by
  rw [input3634_def, output3634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node731_eq]
  try dsimp only
  rw [node3633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3634 input728)).val
theorem input3635_def : input3635 = (.seq input3634 input728) := by
  unfold input3635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3634 output728)).val
theorem output3635_def : output3635 = (.seq output3634 output728) := by
  unfold output3635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3635_skip : Flapjack.WordAlloc.isSkip output3635 = false := by
  rw [output3635_def]
  conv => lhs; cbv
  try rfl
theorem node3635_eq : Flapjack.WordAlloc.removeDeadStructural input3635 value102 value1 value2 = (output3635, value1161, value1) := by
  rw [input3635_def, output3635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node728_eq]
  try dsimp only
  rw [node3634_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3635 input727)).val
theorem input3636_def : input3636 = (.seq input3635 input727) := by
  unfold input3636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3635 output727)).val
theorem output3636_def : output3636 = (.seq output3635 output727) := by
  unfold output3636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3636_skip : Flapjack.WordAlloc.isSkip output3636 = false := by
  rw [output3636_def]
  conv => lhs; cbv
  try rfl
theorem node3636_eq : Flapjack.WordAlloc.removeDeadStructural input3636 value101 value1 value2 = (output3636, value1161, value1) := by
  rw [input3636_def, output3636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node727_eq]
  try dsimp only
  rw [node3635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3636 input726)).val
theorem input3637_def : input3637 = (.seq input3636 input726) := by
  unfold input3637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3636 output726)).val
theorem output3637_def : output3637 = (.seq output3636 output726) := by
  unfold output3637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3637_skip : Flapjack.WordAlloc.isSkip output3637 = false := by
  rw [output3637_def]
  conv => lhs; cbv
  try rfl
theorem node3637_eq : Flapjack.WordAlloc.removeDeadStructural input3637 value99 value1 value2 = (output3637, value1161, value1) := by
  rw [input3637_def, output3637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node726_eq]
  try dsimp only
  rw [node3636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3637 input723)).val
theorem input3638_def : input3638 = (.seq input3637 input723) := by
  unfold input3638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3637 output723)).val
theorem output3638_def : output3638 = (.seq output3637 output723) := by
  unfold output3638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3638_skip : Flapjack.WordAlloc.isSkip output3638 = false := by
  rw [output3638_def]
  conv => lhs; cbv
  try rfl
theorem node3638_eq : Flapjack.WordAlloc.removeDeadStructural input3638 value97 value1 value2 = (output3638, value1161, value1) := by
  rw [input3638_def, output3638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node723_eq]
  try dsimp only
  rw [node3637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3638 input720)).val
theorem input3639_def : input3639 = (.seq input3638 input720) := by
  unfold input3639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3638 output720)).val
theorem output3639_def : output3639 = (.seq output3638 output720) := by
  unfold output3639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3639_skip : Flapjack.WordAlloc.isSkip output3639 = false := by
  rw [output3639_def]
  conv => lhs; cbv
  try rfl
theorem node3639_eq : Flapjack.WordAlloc.removeDeadStructural input3639 value96 value1 value2 = (output3639, value1161, value1) := by
  rw [input3639_def, output3639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node720_eq]
  try dsimp only
  rw [node3638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3639 input719)).val
theorem input3640_def : input3640 = (.seq input3639 input719) := by
  unfold input3640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3639 output719)).val
theorem output3640_def : output3640 = (.seq output3639 output719) := by
  unfold output3640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3640_skip : Flapjack.WordAlloc.isSkip output3640 = false := by
  rw [output3640_def]
  conv => lhs; cbv
  try rfl
theorem node3640_eq : Flapjack.WordAlloc.removeDeadStructural input3640 value96 value1 value2 = (output3640, value1161, value1) := by
  rw [input3640_def, output3640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node719_eq]
  try dsimp only
  rw [node3639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3640 input718)).val
theorem input3641_def : input3641 = (.seq input3640 input718) := by
  unfold input3641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3640 output718)).val
theorem output3641_def : output3641 = (.seq output3640 output718) := by
  unfold output3641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3641_skip : Flapjack.WordAlloc.isSkip output3641 = false := by
  rw [output3641_def]
  conv => lhs; cbv
  try rfl
theorem node3641_eq : Flapjack.WordAlloc.removeDeadStructural input3641 value73 value1 value2 = (output3641, value1161, value1) := by
  rw [input3641_def, output3641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node718_eq]
  try dsimp only
  rw [node3640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3641 input636)).val
theorem input3642_def : input3642 = (.seq input3641 input636) := by
  unfold input3642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3641 output636)).val
theorem output3642_def : output3642 = (.seq output3641 output636) := by
  unfold output3642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3642_skip : Flapjack.WordAlloc.isSkip output3642 = false := by
  rw [output3642_def]
  conv => lhs; cbv
  try rfl
theorem node3642_eq : Flapjack.WordAlloc.removeDeadStructural input3642 value73 value1 value2 = (output3642, value1161, value1) := by
  rw [input3642_def, output3642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node636_eq]
  try dsimp only
  rw [node3641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3642 input635)).val
theorem input3643_def : input3643 = (.seq input3642 input635) := by
  unfold input3643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3642 output635)).val
theorem output3643_def : output3643 = (.seq output3642 output635) := by
  unfold output3643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3643_skip : Flapjack.WordAlloc.isSkip output3643 = false := by
  rw [output3643_def]
  conv => lhs; cbv
  try rfl
theorem node3643_eq : Flapjack.WordAlloc.removeDeadStructural input3643 value68 value1 value2 = (output3643, value1161, value1) := by
  rw [input3643_def, output3643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node635_eq]
  try dsimp only
  rw [node3642_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3643 input626)).val
theorem input3644_def : input3644 = (.seq input3643 input626) := by
  unfold input3644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3643)).val
theorem output3644_def : output3644 = (output3643) := by
  unfold output3644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3644_skip : Flapjack.WordAlloc.isSkip output3644 = false := by
  rw [output3644_def]
  conv => lhs; cbv
  try rfl
theorem node3644_eq : Flapjack.WordAlloc.removeDeadStructural input3644 value68 value1 value2 = (output3644, value1161, value1) := by
  rw [input3644_def, output3644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node626_eq]
  try dsimp only
  rw [node3643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3644 input625)).val
theorem input3645_def : input3645 = (.seq input3644 input625) := by
  unfold input3645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3644 output625)).val
theorem output3645_def : output3645 = (.seq output3644 output625) := by
  unfold output3645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3645_skip : Flapjack.WordAlloc.isSkip output3645 = false := by
  rw [output3645_def]
  conv => lhs; cbv
  try rfl
theorem node3645_eq : Flapjack.WordAlloc.removeDeadStructural input3645 value67 value1 value2 = (output3645, value1161, value1) := by
  rw [input3645_def, output3645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node625_eq]
  try dsimp only
  rw [node3644_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3645 input624)).val
theorem input3646_def : input3646 = (.seq input3645 input624) := by
  unfold input3646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3645 output624)).val
theorem output3646_def : output3646 = (.seq output3645 output624) := by
  unfold output3646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3646_skip : Flapjack.WordAlloc.isSkip output3646 = false := by
  rw [output3646_def]
  conv => lhs; cbv
  try rfl
theorem node3646_eq : Flapjack.WordAlloc.removeDeadStructural input3646 value64 value1 value2 = (output3646, value1161, value1) := by
  rw [input3646_def, output3646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node624_eq]
  try dsimp only
  rw [node3645_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3646 input619)).val
theorem input3647_def : input3647 = (.seq input3646 input619) := by
  unfold input3647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3646 output619)).val
theorem output3647_def : output3647 = (.seq output3646 output619) := by
  unfold output3647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3647_skip : Flapjack.WordAlloc.isSkip output3647 = false := by
  rw [output3647_def]
  conv => lhs; cbv
  try rfl
theorem node3647_eq : Flapjack.WordAlloc.removeDeadStructural input3647 value64 value1 value2 = (output3647, value1161, value1) := by
  rw [input3647_def, output3647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node619_eq]
  try dsimp only
  rw [node3646_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3647 input618)).val
theorem input3648_def : input3648 = (.seq input3647 input618) := by
  unfold input3648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3647 output618)).val
theorem output3648_def : output3648 = (.seq output3647 output618) := by
  unfold output3648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3648_skip : Flapjack.WordAlloc.isSkip output3648 = false := by
  rw [output3648_def]
  conv => lhs; cbv
  try rfl
theorem node3648_eq : Flapjack.WordAlloc.removeDeadStructural input3648 value63 value1 value2 = (output3648, value1161, value1) := by
  rw [input3648_def, output3648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node618_eq]
  try dsimp only
  rw [node3647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3648 input617)).val
theorem input3649_def : input3649 = (.seq input3648 input617) := by
  unfold input3649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3648 output617)).val
theorem output3649_def : output3649 = (.seq output3648 output617) := by
  unfold output3649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3649_skip : Flapjack.WordAlloc.isSkip output3649 = false := by
  rw [output3649_def]
  conv => lhs; cbv
  try rfl
theorem node3649_eq : Flapjack.WordAlloc.removeDeadStructural input3649 value60 value1 value2 = (output3649, value1161, value1) := by
  rw [input3649_def, output3649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node617_eq]
  try dsimp only
  rw [node3648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3649 input616)).val
theorem input3650_def : input3650 = (.seq input3649 input616) := by
  unfold input3650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3649 output616)).val
theorem output3650_def : output3650 = (.seq output3649 output616) := by
  unfold output3650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3650_skip : Flapjack.WordAlloc.isSkip output3650 = false := by
  rw [output3650_def]
  conv => lhs; cbv
  try rfl
theorem node3650_eq : Flapjack.WordAlloc.removeDeadStructural input3650 value62 value1 value2 = (output3650, value1161, value1) := by
  rw [input3650_def, output3650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node616_eq]
  try dsimp only
  rw [node3649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3650 input615)).val
theorem input3651_def : input3651 = (.seq input3650 input615) := by
  unfold input3651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3650 output615)).val
theorem output3651_def : output3651 = (.seq output3650 output615) := by
  unfold output3651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3651_skip : Flapjack.WordAlloc.isSkip output3651 = false := by
  rw [output3651_def]
  conv => lhs; cbv
  try rfl
theorem node3651_eq : Flapjack.WordAlloc.removeDeadStructural input3651 value60 value1 value2 = (output3651, value1161, value1) := by
  rw [input3651_def, output3651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node615_eq]
  try dsimp only
  rw [node3650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3651 input612)).val
theorem input3652_def : input3652 = (.seq input3651 input612) := by
  unfold input3652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3651 output612)).val
theorem output3652_def : output3652 = (.seq output3651 output612) := by
  unfold output3652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3652_skip : Flapjack.WordAlloc.isSkip output3652 = false := by
  rw [output3652_def]
  conv => lhs; cbv
  try rfl
theorem node3652_eq : Flapjack.WordAlloc.removeDeadStructural input3652 value58 value1 value2 = (output3652, value1161, value1) := by
  rw [input3652_def, output3652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node612_eq]
  try dsimp only
  rw [node3651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3652 input609)).val
theorem input3653_def : input3653 = (.seq input3652 input609) := by
  unfold input3653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3652 output609)).val
theorem output3653_def : output3653 = (.seq output3652 output609) := by
  unfold output3653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3653_skip : Flapjack.WordAlloc.isSkip output3653 = false := by
  rw [output3653_def]
  conv => lhs; cbv
  try rfl
theorem node3653_eq : Flapjack.WordAlloc.removeDeadStructural input3653 value54 value1 value2 = (output3653, value1161, value1) := by
  rw [input3653_def, output3653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node609_eq]
  try dsimp only
  rw [node3652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3653 input608)).val
theorem input3654_def : input3654 = (.seq input3653 input608) := by
  unfold input3654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3653 output608)).val
theorem output3654_def : output3654 = (.seq output3653 output608) := by
  unfold output3654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3654_skip : Flapjack.WordAlloc.isSkip output3654 = false := by
  rw [output3654_def]
  conv => lhs; cbv
  try rfl
theorem node3654_eq : Flapjack.WordAlloc.removeDeadStructural input3654 value57 value1 value2 = (output3654, value1161, value1) := by
  rw [input3654_def, output3654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node608_eq]
  try dsimp only
  rw [node3653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3654 input607)).val
theorem input3655_def : input3655 = (.seq input3654 input607) := by
  unfold input3655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3654 output607)).val
theorem output3655_def : output3655 = (.seq output3654 output607) := by
  unfold output3655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3655_skip : Flapjack.WordAlloc.isSkip output3655 = false := by
  rw [output3655_def]
  conv => lhs; cbv
  try rfl
theorem node3655_eq : Flapjack.WordAlloc.removeDeadStructural input3655 value24 value1 value2 = (output3655, value1161, value1) := by
  rw [input3655_def, output3655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node607_eq]
  try dsimp only
  rw [node3654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3655 input77)).val
theorem input3656_def : input3656 = (.seq input3655 input77) := by
  unfold input3656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3655 output77)).val
theorem output3656_def : output3656 = (.seq output3655 output77) := by
  unfold output3656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3656_skip : Flapjack.WordAlloc.isSkip output3656 = false := by
  rw [output3656_def]
  conv => lhs; cbv
  try rfl
theorem node3656_eq : Flapjack.WordAlloc.removeDeadStructural input3656 value24 value1 value2 = (output3656, value1161, value1) := by
  rw [input3656_def, output3656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node77_eq]
  try dsimp only
  rw [node3655_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3656 input76)).val
theorem input3657_def : input3657 = (.seq input3656 input76) := by
  unfold input3657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3656 output76)).val
theorem output3657_def : output3657 = (.seq output3656 output76) := by
  unfold output3657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3657_skip : Flapjack.WordAlloc.isSkip output3657 = false := by
  rw [output3657_def]
  conv => lhs; cbv
  try rfl
theorem node3657_eq : Flapjack.WordAlloc.removeDeadStructural input3657 value22 value1 value2 = (output3657, value1161, value1) := by
  rw [input3657_def, output3657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node76_eq]
  try dsimp only
  rw [node3656_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3657 input71)).val
theorem input3658_def : input3658 = (.seq input3657 input71) := by
  unfold input3658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3657 output71)).val
theorem output3658_def : output3658 = (.seq output3657 output71) := by
  unfold output3658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3658_skip : Flapjack.WordAlloc.isSkip output3658 = false := by
  rw [output3658_def]
  conv => lhs; cbv
  try rfl
theorem node3658_eq : Flapjack.WordAlloc.removeDeadStructural input3658 value22 value1 value2 = (output3658, value1161, value1) := by
  rw [input3658_def, output3658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node71_eq]
  try dsimp only
  rw [node3657_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3658 input70)).val
theorem input3659_def : input3659 = (.seq input3658 input70) := by
  unfold input3659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3658 output70)).val
theorem output3659_def : output3659 = (.seq output3658 output70) := by
  unfold output3659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3659_skip : Flapjack.WordAlloc.isSkip output3659 = false := by
  rw [output3659_def]
  conv => lhs; cbv
  try rfl
theorem node3659_eq : Flapjack.WordAlloc.removeDeadStructural input3659 value20 value1 value2 = (output3659, value1161, value1) := by
  rw [input3659_def, output3659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node70_eq]
  try dsimp only
  rw [node3658_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3659 input67)).val
theorem input3660_def : input3660 = (.seq input3659 input67) := by
  unfold input3660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3659 output67)).val
theorem output3660_def : output3660 = (.seq output3659 output67) := by
  unfold output3660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3660_skip : Flapjack.WordAlloc.isSkip output3660 = false := by
  rw [output3660_def]
  conv => lhs; cbv
  try rfl
theorem node3660_eq : Flapjack.WordAlloc.removeDeadStructural input3660 value15 value1 value2 = (output3660, value1161, value1) := by
  rw [input3660_def, output3660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node67_eq]
  try dsimp only
  rw [node3659_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3660 input66)).val
theorem input3661_def : input3661 = (.seq input3660 input66) := by
  unfold input3661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3660 output66)).val
theorem output3661_def : output3661 = (.seq output3660 output66) := by
  unfold output3661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3661_skip : Flapjack.WordAlloc.isSkip output3661 = false := by
  rw [output3661_def]
  conv => lhs; cbv
  try rfl
theorem node3661_eq : Flapjack.WordAlloc.removeDeadStructural input3661 value19 value1 value2 = (output3661, value1161, value1) := by
  rw [input3661_def, output3661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node66_eq]
  try dsimp only
  rw [node3660_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3661 input65)).val
theorem input3662_def : input3662 = (.seq input3661 input65) := by
  unfold input3662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3661 output65)).val
theorem output3662_def : output3662 = (.seq output3661 output65) := by
  unfold output3662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3662_skip : Flapjack.WordAlloc.isSkip output3662 = false := by
  rw [output3662_def]
  conv => lhs; cbv
  try rfl
theorem node3662_eq : Flapjack.WordAlloc.removeDeadStructural input3662 value5 value1 value2 = (output3662, value1161, value1) := by
  rw [input3662_def, output3662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node65_eq]
  try dsimp only
  rw [node3661_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3662 input4)).val
theorem input3663_def : input3663 = (.seq input3662 input4) := by
  unfold input3663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3662 output4)).val
theorem output3663_def : output3663 = (.seq output3662 output4) := by
  unfold output3663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3663_skip : Flapjack.WordAlloc.isSkip output3663 = false := by
  rw [output3663_def]
  conv => lhs; cbv
  try rfl
theorem node3663_eq : Flapjack.WordAlloc.removeDeadStructural input3663 value5 value1 value2 = (output3663, value1161, value1) := by
  rw [input3663_def, output3663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4_eq]
  try dsimp only
  rw [node3662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3663 input3)).val
theorem input3664_def : input3664 = (.seq input3663 input3) := by
  unfold input3664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3663 output3)).val
theorem output3664_def : output3664 = (.seq output3663 output3) := by
  unfold output3664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3664_skip : Flapjack.WordAlloc.isSkip output3664 = false := by
  rw [output3664_def]
  conv => lhs; cbv
  try rfl
theorem node3664_eq : Flapjack.WordAlloc.removeDeadStructural input3664 value4 value1 value2 = (output3664, value1161, value1) := by
  rw [input3664_def, output3664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node3663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3664 input2)).val
theorem input3665_def : input3665 = (.seq input3664 input2) := by
  unfold input3665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3664 output2)).val
theorem output3665_def : output3665 = (.seq output3664 output2) := by
  unfold output3665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3665_skip : Flapjack.WordAlloc.isSkip output3665 = false := by
  rw [output3665_def]
  conv => lhs; cbv
  try rfl
theorem node3665_eq : Flapjack.WordAlloc.removeDeadStructural input3665 value0 value1 value2 = (output3665, value1161, value1) := by
  rw [input3665_def, output3665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node3664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1162 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input3666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(201, 0), (205, 2), (209, 4)])).val
theorem input3666_def : input3666 = (Flapjack.WordLangProgHOL.move 1 [(201, 0), (205, 2), (209, 4)]) := by
  unfold input3666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(201, 0), (205, 2), (209, 4)])).val
theorem output3666_def : output3666 = (Flapjack.WordLangProgHOL.move 1 [(201, 0), (205, 2), (209, 4)]) := by
  unfold output3666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3666_skip : Flapjack.WordAlloc.isSkip output3666 = false := by
  rw [output3666_def]
  conv => lhs; cbv
  try rfl
theorem node3666_eq : Flapjack.WordAlloc.removeDeadStructural input3666 value1161 value1 value2 = (output3666, value1162, value1) := by
  rw [input3666_def, output3666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3666 input3665)).val
theorem input3667_def : input3667 = (.seq input3666 input3665) := by
  unfold input3667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3666 output3665)).val
theorem output3667_def : output3667 = (.seq output3666 output3665) := by
  unfold output3667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3667_skip : Flapjack.WordAlloc.isSkip output3667 = false := by
  rw [output3667_def]
  conv => lhs; cbv
  try rfl
theorem node3667_eq : Flapjack.WordAlloc.removeDeadStructural input3667 value0 value1 value2 = (output3667, value1162, value1) := by
  rw [input3667_def, output3667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3665_eq]
  try dsimp only
  rw [node3666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node3667_eq
end InitECandidate.Proofs.DeadStages875
