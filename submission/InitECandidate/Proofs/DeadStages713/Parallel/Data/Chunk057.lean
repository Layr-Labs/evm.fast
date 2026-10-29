import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk056
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713.Parallel
@[irreducible, cbv_opaque] def input14592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14591 input11120)).val
theorem input14592_def : input14592 = (.seq input14591 input11120) := by
  unfold input14592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14591 output11120)).val
theorem output14592_def : output14592 = (.seq output14591 output11120) := by
  unfold output14592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14592_skip : Flapjack.WordAlloc.isSkip output14592 = false := by
  rw [output14592_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14592 input11117)).val
theorem input14593_def : input14593 = (.seq input14592 input11117) := by
  unfold input14593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14592 output11117)).val
theorem output14593_def : output14593 = (.seq output14592 output11117) := by
  unfold output14593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14593_skip : Flapjack.WordAlloc.isSkip output14593 = false := by
  rw [output14593_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14593 input11108)).val
theorem input14594_def : input14594 = (.seq input14593 input11108) := by
  unfold input14594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14593)).val
theorem output14594_def : output14594 = (output14593) := by
  unfold output14594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14594_skip : Flapjack.WordAlloc.isSkip output14594 = false := by
  rw [output14594_def]
  exact output14593_skip


@[irreducible, cbv_opaque] def input14595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14594 input11107)).val
theorem input14595_def : input14595 = (.seq input14594 input11107) := by
  unfold input14595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14594 output11107)).val
theorem output14595_def : output14595 = (.seq output14594 output11107) := by
  unfold output14595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14595_skip : Flapjack.WordAlloc.isSkip output14595 = false := by
  rw [output14595_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14595 input11106)).val
theorem input14596_def : input14596 = (.seq input14595 input11106) := by
  unfold input14596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14595 output11106)).val
theorem output14596_def : output14596 = (.seq output14595 output11106) := by
  unfold output14596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14596_skip : Flapjack.WordAlloc.isSkip output14596 = false := by
  rw [output14596_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14596 input11103)).val
theorem input14597_def : input14597 = (.seq input14596 input11103) := by
  unfold input14597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14596 output11103)).val
theorem output14597_def : output14597 = (.seq output14596 output11103) := by
  unfold output14597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14597_skip : Flapjack.WordAlloc.isSkip output14597 = false := by
  rw [output14597_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14597 input11094)).val
theorem input14598_def : input14598 = (.seq input14597 input11094) := by
  unfold input14598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14597)).val
theorem output14598_def : output14598 = (output14597) := by
  unfold output14598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14598_skip : Flapjack.WordAlloc.isSkip output14598 = false := by
  rw [output14598_def]
  exact output14597_skip


@[irreducible, cbv_opaque] def input14599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14598 input11093)).val
theorem input14599_def : input14599 = (.seq input14598 input11093) := by
  unfold input14599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14598 output11093)).val
theorem output14599_def : output14599 = (.seq output14598 output11093) := by
  unfold output14599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14599_skip : Flapjack.WordAlloc.isSkip output14599 = false := by
  rw [output14599_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14599 input11092)).val
theorem input14600_def : input14600 = (.seq input14599 input11092) := by
  unfold input14600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14599 output11092)).val
theorem output14600_def : output14600 = (.seq output14599 output11092) := by
  unfold output14600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14600_skip : Flapjack.WordAlloc.isSkip output14600 = false := by
  rw [output14600_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14600 input11089)).val
theorem input14601_def : input14601 = (.seq input14600 input11089) := by
  unfold input14601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14600 output11089)).val
theorem output14601_def : output14601 = (.seq output14600 output11089) := by
  unfold output14601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14601_skip : Flapjack.WordAlloc.isSkip output14601 = false := by
  rw [output14601_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14601 input11080)).val
theorem input14602_def : input14602 = (.seq input14601 input11080) := by
  unfold input14602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14601)).val
theorem output14602_def : output14602 = (output14601) := by
  unfold output14602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14602_skip : Flapjack.WordAlloc.isSkip output14602 = false := by
  rw [output14602_def]
  exact output14601_skip


@[irreducible, cbv_opaque] def input14603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14602 input11079)).val
theorem input14603_def : input14603 = (.seq input14602 input11079) := by
  unfold input14603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14602 output11079)).val
theorem output14603_def : output14603 = (.seq output14602 output11079) := by
  unfold output14603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14603_skip : Flapjack.WordAlloc.isSkip output14603 = false := by
  rw [output14603_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14603 input11078)).val
theorem input14604_def : input14604 = (.seq input14603 input11078) := by
  unfold input14604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14603 output11078)).val
theorem output14604_def : output14604 = (.seq output14603 output11078) := by
  unfold output14604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14604_skip : Flapjack.WordAlloc.isSkip output14604 = false := by
  rw [output14604_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14604 input11075)).val
theorem input14605_def : input14605 = (.seq input14604 input11075) := by
  unfold input14605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14604 output11075)).val
theorem output14605_def : output14605 = (.seq output14604 output11075) := by
  unfold output14605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14605_skip : Flapjack.WordAlloc.isSkip output14605 = false := by
  rw [output14605_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14605 input11066)).val
theorem input14606_def : input14606 = (.seq input14605 input11066) := by
  unfold input14606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14605)).val
theorem output14606_def : output14606 = (output14605) := by
  unfold output14606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14606_skip : Flapjack.WordAlloc.isSkip output14606 = false := by
  rw [output14606_def]
  exact output14605_skip


@[irreducible, cbv_opaque] def input14607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14606 input11065)).val
theorem input14607_def : input14607 = (.seq input14606 input11065) := by
  unfold input14607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14606 output11065)).val
theorem output14607_def : output14607 = (.seq output14606 output11065) := by
  unfold output14607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14607_skip : Flapjack.WordAlloc.isSkip output14607 = false := by
  rw [output14607_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14607 input11064)).val
theorem input14608_def : input14608 = (.seq input14607 input11064) := by
  unfold input14608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14607 output11064)).val
theorem output14608_def : output14608 = (.seq output14607 output11064) := by
  unfold output14608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14608_skip : Flapjack.WordAlloc.isSkip output14608 = false := by
  rw [output14608_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14608 input11061)).val
theorem input14609_def : input14609 = (.seq input14608 input11061) := by
  unfold input14609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14608 output11061)).val
theorem output14609_def : output14609 = (.seq output14608 output11061) := by
  unfold output14609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14609_skip : Flapjack.WordAlloc.isSkip output14609 = false := by
  rw [output14609_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14609 input11052)).val
theorem input14610_def : input14610 = (.seq input14609 input11052) := by
  unfold input14610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14609)).val
theorem output14610_def : output14610 = (output14609) := by
  unfold output14610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14610_skip : Flapjack.WordAlloc.isSkip output14610 = false := by
  rw [output14610_def]
  exact output14609_skip


@[irreducible, cbv_opaque] def input14611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14610 input11051)).val
theorem input14611_def : input14611 = (.seq input14610 input11051) := by
  unfold input14611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14610 output11051)).val
theorem output14611_def : output14611 = (.seq output14610 output11051) := by
  unfold output14611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14611_skip : Flapjack.WordAlloc.isSkip output14611 = false := by
  rw [output14611_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14611 input11050)).val
theorem input14612_def : input14612 = (.seq input14611 input11050) := by
  unfold input14612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14611 output11050)).val
theorem output14612_def : output14612 = (.seq output14611 output11050) := by
  unfold output14612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14612_skip : Flapjack.WordAlloc.isSkip output14612 = false := by
  rw [output14612_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14612 input11047)).val
theorem input14613_def : input14613 = (.seq input14612 input11047) := by
  unfold input14613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14612 output11047)).val
theorem output14613_def : output14613 = (.seq output14612 output11047) := by
  unfold output14613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14613_skip : Flapjack.WordAlloc.isSkip output14613 = false := by
  rw [output14613_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14613 input11038)).val
theorem input14614_def : input14614 = (.seq input14613 input11038) := by
  unfold input14614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14613)).val
theorem output14614_def : output14614 = (output14613) := by
  unfold output14614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14614_skip : Flapjack.WordAlloc.isSkip output14614 = false := by
  rw [output14614_def]
  exact output14613_skip


@[irreducible, cbv_opaque] def input14615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14614 input11037)).val
theorem input14615_def : input14615 = (.seq input14614 input11037) := by
  unfold input14615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14614 output11037)).val
theorem output14615_def : output14615 = (.seq output14614 output11037) := by
  unfold output14615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14615_skip : Flapjack.WordAlloc.isSkip output14615 = false := by
  rw [output14615_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14615 input11036)).val
theorem input14616_def : input14616 = (.seq input14615 input11036) := by
  unfold input14616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14615 output11036)).val
theorem output14616_def : output14616 = (.seq output14615 output11036) := by
  unfold output14616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14616_skip : Flapjack.WordAlloc.isSkip output14616 = false := by
  rw [output14616_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14616 input11033)).val
theorem input14617_def : input14617 = (.seq input14616 input11033) := by
  unfold input14617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14616 output11033)).val
theorem output14617_def : output14617 = (.seq output14616 output11033) := by
  unfold output14617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14617_skip : Flapjack.WordAlloc.isSkip output14617 = false := by
  rw [output14617_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14617 input11024)).val
theorem input14618_def : input14618 = (.seq input14617 input11024) := by
  unfold input14618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14617)).val
theorem output14618_def : output14618 = (output14617) := by
  unfold output14618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14618_skip : Flapjack.WordAlloc.isSkip output14618 = false := by
  rw [output14618_def]
  exact output14617_skip


@[irreducible, cbv_opaque] def input14619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14618 input11023)).val
theorem input14619_def : input14619 = (.seq input14618 input11023) := by
  unfold input14619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14618 output11023)).val
theorem output14619_def : output14619 = (.seq output14618 output11023) := by
  unfold output14619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14619_skip : Flapjack.WordAlloc.isSkip output14619 = false := by
  rw [output14619_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14619 input11022)).val
theorem input14620_def : input14620 = (.seq input14619 input11022) := by
  unfold input14620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14619 output11022)).val
theorem output14620_def : output14620 = (.seq output14619 output11022) := by
  unfold output14620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14620_skip : Flapjack.WordAlloc.isSkip output14620 = false := by
  rw [output14620_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14620 input11019)).val
theorem input14621_def : input14621 = (.seq input14620 input11019) := by
  unfold input14621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14620 output11019)).val
theorem output14621_def : output14621 = (.seq output14620 output11019) := by
  unfold output14621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14621_skip : Flapjack.WordAlloc.isSkip output14621 = false := by
  rw [output14621_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14621 input11010)).val
theorem input14622_def : input14622 = (.seq input14621 input11010) := by
  unfold input14622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14621)).val
theorem output14622_def : output14622 = (output14621) := by
  unfold output14622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14622_skip : Flapjack.WordAlloc.isSkip output14622 = false := by
  rw [output14622_def]
  exact output14621_skip


@[irreducible, cbv_opaque] def input14623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14622 input11009)).val
theorem input14623_def : input14623 = (.seq input14622 input11009) := by
  unfold input14623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14622 output11009)).val
theorem output14623_def : output14623 = (.seq output14622 output11009) := by
  unfold output14623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14623_skip : Flapjack.WordAlloc.isSkip output14623 = false := by
  rw [output14623_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14623 input11008)).val
theorem input14624_def : input14624 = (.seq input14623 input11008) := by
  unfold input14624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14623 output11008)).val
theorem output14624_def : output14624 = (.seq output14623 output11008) := by
  unfold output14624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14624_skip : Flapjack.WordAlloc.isSkip output14624 = false := by
  rw [output14624_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14624 input11005)).val
theorem input14625_def : input14625 = (.seq input14624 input11005) := by
  unfold input14625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14624 output11005)).val
theorem output14625_def : output14625 = (.seq output14624 output11005) := by
  unfold output14625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14625_skip : Flapjack.WordAlloc.isSkip output14625 = false := by
  rw [output14625_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14625 input10996)).val
theorem input14626_def : input14626 = (.seq input14625 input10996) := by
  unfold input14626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14625)).val
theorem output14626_def : output14626 = (output14625) := by
  unfold output14626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14626_skip : Flapjack.WordAlloc.isSkip output14626 = false := by
  rw [output14626_def]
  exact output14625_skip


@[irreducible, cbv_opaque] def input14627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14626 input10995)).val
theorem input14627_def : input14627 = (.seq input14626 input10995) := by
  unfold input14627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14626 output10995)).val
theorem output14627_def : output14627 = (.seq output14626 output10995) := by
  unfold output14627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14627_skip : Flapjack.WordAlloc.isSkip output14627 = false := by
  rw [output14627_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14627 input10994)).val
theorem input14628_def : input14628 = (.seq input14627 input10994) := by
  unfold input14628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14627 output10994)).val
theorem output14628_def : output14628 = (.seq output14627 output10994) := by
  unfold output14628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14628_skip : Flapjack.WordAlloc.isSkip output14628 = false := by
  rw [output14628_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14628 input10991)).val
theorem input14629_def : input14629 = (.seq input14628 input10991) := by
  unfold input14629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14628 output10991)).val
theorem output14629_def : output14629 = (.seq output14628 output10991) := by
  unfold output14629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14629_skip : Flapjack.WordAlloc.isSkip output14629 = false := by
  rw [output14629_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14629 input10982)).val
theorem input14630_def : input14630 = (.seq input14629 input10982) := by
  unfold input14630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14629)).val
theorem output14630_def : output14630 = (output14629) := by
  unfold output14630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14630_skip : Flapjack.WordAlloc.isSkip output14630 = false := by
  rw [output14630_def]
  exact output14629_skip


@[irreducible, cbv_opaque] def input14631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14630 input10981)).val
theorem input14631_def : input14631 = (.seq input14630 input10981) := by
  unfold input14631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14630 output10981)).val
theorem output14631_def : output14631 = (.seq output14630 output10981) := by
  unfold output14631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14631_skip : Flapjack.WordAlloc.isSkip output14631 = false := by
  rw [output14631_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14631 input10980)).val
theorem input14632_def : input14632 = (.seq input14631 input10980) := by
  unfold input14632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14631 output10980)).val
theorem output14632_def : output14632 = (.seq output14631 output10980) := by
  unfold output14632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14632_skip : Flapjack.WordAlloc.isSkip output14632 = false := by
  rw [output14632_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14632 input10977)).val
theorem input14633_def : input14633 = (.seq input14632 input10977) := by
  unfold input14633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14632 output10977)).val
theorem output14633_def : output14633 = (.seq output14632 output10977) := by
  unfold output14633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14633_skip : Flapjack.WordAlloc.isSkip output14633 = false := by
  rw [output14633_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14633 input10968)).val
theorem input14634_def : input14634 = (.seq input14633 input10968) := by
  unfold input14634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14633)).val
theorem output14634_def : output14634 = (output14633) := by
  unfold output14634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14634_skip : Flapjack.WordAlloc.isSkip output14634 = false := by
  rw [output14634_def]
  exact output14633_skip


@[irreducible, cbv_opaque] def input14635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14634 input10967)).val
theorem input14635_def : input14635 = (.seq input14634 input10967) := by
  unfold input14635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14634 output10967)).val
theorem output14635_def : output14635 = (.seq output14634 output10967) := by
  unfold output14635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14635_skip : Flapjack.WordAlloc.isSkip output14635 = false := by
  rw [output14635_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14635 input10966)).val
theorem input14636_def : input14636 = (.seq input14635 input10966) := by
  unfold input14636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14635 output10966)).val
theorem output14636_def : output14636 = (.seq output14635 output10966) := by
  unfold output14636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14636_skip : Flapjack.WordAlloc.isSkip output14636 = false := by
  rw [output14636_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14636 input10963)).val
theorem input14637_def : input14637 = (.seq input14636 input10963) := by
  unfold input14637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14636 output10963)).val
theorem output14637_def : output14637 = (.seq output14636 output10963) := by
  unfold output14637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14637_skip : Flapjack.WordAlloc.isSkip output14637 = false := by
  rw [output14637_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14637 input10954)).val
theorem input14638_def : input14638 = (.seq input14637 input10954) := by
  unfold input14638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14637)).val
theorem output14638_def : output14638 = (output14637) := by
  unfold output14638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14638_skip : Flapjack.WordAlloc.isSkip output14638 = false := by
  rw [output14638_def]
  exact output14637_skip


@[irreducible, cbv_opaque] def input14639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14638 input10953)).val
theorem input14639_def : input14639 = (.seq input14638 input10953) := by
  unfold input14639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14638 output10953)).val
theorem output14639_def : output14639 = (.seq output14638 output10953) := by
  unfold output14639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14639_skip : Flapjack.WordAlloc.isSkip output14639 = false := by
  rw [output14639_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14639 input10952)).val
theorem input14640_def : input14640 = (.seq input14639 input10952) := by
  unfold input14640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14639 output10952)).val
theorem output14640_def : output14640 = (.seq output14639 output10952) := by
  unfold output14640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14640_skip : Flapjack.WordAlloc.isSkip output14640 = false := by
  rw [output14640_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14640 input10949)).val
theorem input14641_def : input14641 = (.seq input14640 input10949) := by
  unfold input14641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14640 output10949)).val
theorem output14641_def : output14641 = (.seq output14640 output10949) := by
  unfold output14641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14641_skip : Flapjack.WordAlloc.isSkip output14641 = false := by
  rw [output14641_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14641 input10940)).val
theorem input14642_def : input14642 = (.seq input14641 input10940) := by
  unfold input14642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14641)).val
theorem output14642_def : output14642 = (output14641) := by
  unfold output14642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14642_skip : Flapjack.WordAlloc.isSkip output14642 = false := by
  rw [output14642_def]
  exact output14641_skip


@[irreducible, cbv_opaque] def input14643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14642 input10939)).val
theorem input14643_def : input14643 = (.seq input14642 input10939) := by
  unfold input14643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14642 output10939)).val
theorem output14643_def : output14643 = (.seq output14642 output10939) := by
  unfold output14643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14643_skip : Flapjack.WordAlloc.isSkip output14643 = false := by
  rw [output14643_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14643 input10938)).val
theorem input14644_def : input14644 = (.seq input14643 input10938) := by
  unfold input14644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14643 output10938)).val
theorem output14644_def : output14644 = (.seq output14643 output10938) := by
  unfold output14644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14644_skip : Flapjack.WordAlloc.isSkip output14644 = false := by
  rw [output14644_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14644 input10935)).val
theorem input14645_def : input14645 = (.seq input14644 input10935) := by
  unfold input14645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14644 output10935)).val
theorem output14645_def : output14645 = (.seq output14644 output10935) := by
  unfold output14645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14645_skip : Flapjack.WordAlloc.isSkip output14645 = false := by
  rw [output14645_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14645 input10926)).val
theorem input14646_def : input14646 = (.seq input14645 input10926) := by
  unfold input14646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14645)).val
theorem output14646_def : output14646 = (output14645) := by
  unfold output14646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14646_skip : Flapjack.WordAlloc.isSkip output14646 = false := by
  rw [output14646_def]
  exact output14645_skip


@[irreducible, cbv_opaque] def input14647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14646 input10925)).val
theorem input14647_def : input14647 = (.seq input14646 input10925) := by
  unfold input14647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14646 output10925)).val
theorem output14647_def : output14647 = (.seq output14646 output10925) := by
  unfold output14647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14647_skip : Flapjack.WordAlloc.isSkip output14647 = false := by
  rw [output14647_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14647 input10924)).val
theorem input14648_def : input14648 = (.seq input14647 input10924) := by
  unfold input14648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14647 output10924)).val
theorem output14648_def : output14648 = (.seq output14647 output10924) := by
  unfold output14648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14648_skip : Flapjack.WordAlloc.isSkip output14648 = false := by
  rw [output14648_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14648 input10921)).val
theorem input14649_def : input14649 = (.seq input14648 input10921) := by
  unfold input14649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14648 output10921)).val
theorem output14649_def : output14649 = (.seq output14648 output10921) := by
  unfold output14649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14649_skip : Flapjack.WordAlloc.isSkip output14649 = false := by
  rw [output14649_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14649 input10912)).val
theorem input14650_def : input14650 = (.seq input14649 input10912) := by
  unfold input14650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14649)).val
theorem output14650_def : output14650 = (output14649) := by
  unfold output14650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14650_skip : Flapjack.WordAlloc.isSkip output14650 = false := by
  rw [output14650_def]
  exact output14649_skip


@[irreducible, cbv_opaque] def input14651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14650 input10911)).val
theorem input14651_def : input14651 = (.seq input14650 input10911) := by
  unfold input14651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14650 output10911)).val
theorem output14651_def : output14651 = (.seq output14650 output10911) := by
  unfold output14651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14651_skip : Flapjack.WordAlloc.isSkip output14651 = false := by
  rw [output14651_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14651 input10910)).val
theorem input14652_def : input14652 = (.seq input14651 input10910) := by
  unfold input14652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14651 output10910)).val
theorem output14652_def : output14652 = (.seq output14651 output10910) := by
  unfold output14652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14652_skip : Flapjack.WordAlloc.isSkip output14652 = false := by
  rw [output14652_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14652 input10907)).val
theorem input14653_def : input14653 = (.seq input14652 input10907) := by
  unfold input14653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14652 output10907)).val
theorem output14653_def : output14653 = (.seq output14652 output10907) := by
  unfold output14653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14653_skip : Flapjack.WordAlloc.isSkip output14653 = false := by
  rw [output14653_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14653 input10898)).val
theorem input14654_def : input14654 = (.seq input14653 input10898) := by
  unfold input14654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14653)).val
theorem output14654_def : output14654 = (output14653) := by
  unfold output14654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14654_skip : Flapjack.WordAlloc.isSkip output14654 = false := by
  rw [output14654_def]
  exact output14653_skip


@[irreducible, cbv_opaque] def input14655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14654 input10897)).val
theorem input14655_def : input14655 = (.seq input14654 input10897) := by
  unfold input14655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14654 output10897)).val
theorem output14655_def : output14655 = (.seq output14654 output10897) := by
  unfold output14655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14655_skip : Flapjack.WordAlloc.isSkip output14655 = false := by
  rw [output14655_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14655 input10896)).val
theorem input14656_def : input14656 = (.seq input14655 input10896) := by
  unfold input14656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14655 output10896)).val
theorem output14656_def : output14656 = (.seq output14655 output10896) := by
  unfold output14656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14656_skip : Flapjack.WordAlloc.isSkip output14656 = false := by
  rw [output14656_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14656 input10893)).val
theorem input14657_def : input14657 = (.seq input14656 input10893) := by
  unfold input14657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14656 output10893)).val
theorem output14657_def : output14657 = (.seq output14656 output10893) := by
  unfold output14657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14657_skip : Flapjack.WordAlloc.isSkip output14657 = false := by
  rw [output14657_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14657 input10884)).val
theorem input14658_def : input14658 = (.seq input14657 input10884) := by
  unfold input14658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14657)).val
theorem output14658_def : output14658 = (output14657) := by
  unfold output14658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14658_skip : Flapjack.WordAlloc.isSkip output14658 = false := by
  rw [output14658_def]
  exact output14657_skip


@[irreducible, cbv_opaque] def input14659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14658 input10883)).val
theorem input14659_def : input14659 = (.seq input14658 input10883) := by
  unfold input14659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14658 output10883)).val
theorem output14659_def : output14659 = (.seq output14658 output10883) := by
  unfold output14659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14659_skip : Flapjack.WordAlloc.isSkip output14659 = false := by
  rw [output14659_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14659 input10882)).val
theorem input14660_def : input14660 = (.seq input14659 input10882) := by
  unfold input14660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14659 output10882)).val
theorem output14660_def : output14660 = (.seq output14659 output10882) := by
  unfold output14660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14660_skip : Flapjack.WordAlloc.isSkip output14660 = false := by
  rw [output14660_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14660 input10879)).val
theorem input14661_def : input14661 = (.seq input14660 input10879) := by
  unfold input14661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14660 output10879)).val
theorem output14661_def : output14661 = (.seq output14660 output10879) := by
  unfold output14661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14661_skip : Flapjack.WordAlloc.isSkip output14661 = false := by
  rw [output14661_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14661 input10870)).val
theorem input14662_def : input14662 = (.seq input14661 input10870) := by
  unfold input14662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14661)).val
theorem output14662_def : output14662 = (output14661) := by
  unfold output14662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14662_skip : Flapjack.WordAlloc.isSkip output14662 = false := by
  rw [output14662_def]
  exact output14661_skip


@[irreducible, cbv_opaque] def input14663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14662 input10869)).val
theorem input14663_def : input14663 = (.seq input14662 input10869) := by
  unfold input14663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14662 output10869)).val
theorem output14663_def : output14663 = (.seq output14662 output10869) := by
  unfold output14663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14663_skip : Flapjack.WordAlloc.isSkip output14663 = false := by
  rw [output14663_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14663 input10868)).val
theorem input14664_def : input14664 = (.seq input14663 input10868) := by
  unfold input14664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14663 output10868)).val
theorem output14664_def : output14664 = (.seq output14663 output10868) := by
  unfold output14664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14664_skip : Flapjack.WordAlloc.isSkip output14664 = false := by
  rw [output14664_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14664 input10865)).val
theorem input14665_def : input14665 = (.seq input14664 input10865) := by
  unfold input14665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14664 output10865)).val
theorem output14665_def : output14665 = (.seq output14664 output10865) := by
  unfold output14665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14665_skip : Flapjack.WordAlloc.isSkip output14665 = false := by
  rw [output14665_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14665 input10856)).val
theorem input14666_def : input14666 = (.seq input14665 input10856) := by
  unfold input14666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14665)).val
theorem output14666_def : output14666 = (output14665) := by
  unfold output14666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14666_skip : Flapjack.WordAlloc.isSkip output14666 = false := by
  rw [output14666_def]
  exact output14665_skip


@[irreducible, cbv_opaque] def input14667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14666 input10855)).val
theorem input14667_def : input14667 = (.seq input14666 input10855) := by
  unfold input14667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14666 output10855)).val
theorem output14667_def : output14667 = (.seq output14666 output10855) := by
  unfold output14667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14667_skip : Flapjack.WordAlloc.isSkip output14667 = false := by
  rw [output14667_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14667 input10854)).val
theorem input14668_def : input14668 = (.seq input14667 input10854) := by
  unfold input14668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14667 output10854)).val
theorem output14668_def : output14668 = (.seq output14667 output10854) := by
  unfold output14668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14668_skip : Flapjack.WordAlloc.isSkip output14668 = false := by
  rw [output14668_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14668 input10851)).val
theorem input14669_def : input14669 = (.seq input14668 input10851) := by
  unfold input14669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14668 output10851)).val
theorem output14669_def : output14669 = (.seq output14668 output10851) := by
  unfold output14669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14669_skip : Flapjack.WordAlloc.isSkip output14669 = false := by
  rw [output14669_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14669 input10842)).val
theorem input14670_def : input14670 = (.seq input14669 input10842) := by
  unfold input14670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14669)).val
theorem output14670_def : output14670 = (output14669) := by
  unfold output14670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14670_skip : Flapjack.WordAlloc.isSkip output14670 = false := by
  rw [output14670_def]
  exact output14669_skip


@[irreducible, cbv_opaque] def input14671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14670 input10841)).val
theorem input14671_def : input14671 = (.seq input14670 input10841) := by
  unfold input14671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14670 output10841)).val
theorem output14671_def : output14671 = (.seq output14670 output10841) := by
  unfold output14671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14671_skip : Flapjack.WordAlloc.isSkip output14671 = false := by
  rw [output14671_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14671 input10840)).val
theorem input14672_def : input14672 = (.seq input14671 input10840) := by
  unfold input14672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14671 output10840)).val
theorem output14672_def : output14672 = (.seq output14671 output10840) := by
  unfold output14672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14672_skip : Flapjack.WordAlloc.isSkip output14672 = false := by
  rw [output14672_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14672 input10837)).val
theorem input14673_def : input14673 = (.seq input14672 input10837) := by
  unfold input14673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14672 output10837)).val
theorem output14673_def : output14673 = (.seq output14672 output10837) := by
  unfold output14673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14673_skip : Flapjack.WordAlloc.isSkip output14673 = false := by
  rw [output14673_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14673 input10828)).val
theorem input14674_def : input14674 = (.seq input14673 input10828) := by
  unfold input14674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14673)).val
theorem output14674_def : output14674 = (output14673) := by
  unfold output14674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14674_skip : Flapjack.WordAlloc.isSkip output14674 = false := by
  rw [output14674_def]
  exact output14673_skip


@[irreducible, cbv_opaque] def input14675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14674 input10827)).val
theorem input14675_def : input14675 = (.seq input14674 input10827) := by
  unfold input14675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14674 output10827)).val
theorem output14675_def : output14675 = (.seq output14674 output10827) := by
  unfold output14675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14675_skip : Flapjack.WordAlloc.isSkip output14675 = false := by
  rw [output14675_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14675 input10826)).val
theorem input14676_def : input14676 = (.seq input14675 input10826) := by
  unfold input14676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14675 output10826)).val
theorem output14676_def : output14676 = (.seq output14675 output10826) := by
  unfold output14676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14676_skip : Flapjack.WordAlloc.isSkip output14676 = false := by
  rw [output14676_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14676 input10823)).val
theorem input14677_def : input14677 = (.seq input14676 input10823) := by
  unfold input14677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14676 output10823)).val
theorem output14677_def : output14677 = (.seq output14676 output10823) := by
  unfold output14677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14677_skip : Flapjack.WordAlloc.isSkip output14677 = false := by
  rw [output14677_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14677 input10814)).val
theorem input14678_def : input14678 = (.seq input14677 input10814) := by
  unfold input14678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14677)).val
theorem output14678_def : output14678 = (output14677) := by
  unfold output14678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14678_skip : Flapjack.WordAlloc.isSkip output14678 = false := by
  rw [output14678_def]
  exact output14677_skip


@[irreducible, cbv_opaque] def input14679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14678 input10813)).val
theorem input14679_def : input14679 = (.seq input14678 input10813) := by
  unfold input14679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14678 output10813)).val
theorem output14679_def : output14679 = (.seq output14678 output10813) := by
  unfold output14679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14679_skip : Flapjack.WordAlloc.isSkip output14679 = false := by
  rw [output14679_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14679 input10812)).val
theorem input14680_def : input14680 = (.seq input14679 input10812) := by
  unfold input14680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14679 output10812)).val
theorem output14680_def : output14680 = (.seq output14679 output10812) := by
  unfold output14680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14680_skip : Flapjack.WordAlloc.isSkip output14680 = false := by
  rw [output14680_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14680 input10809)).val
theorem input14681_def : input14681 = (.seq input14680 input10809) := by
  unfold input14681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14680 output10809)).val
theorem output14681_def : output14681 = (.seq output14680 output10809) := by
  unfold output14681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14681_skip : Flapjack.WordAlloc.isSkip output14681 = false := by
  rw [output14681_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14681 input10800)).val
theorem input14682_def : input14682 = (.seq input14681 input10800) := by
  unfold input14682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14681)).val
theorem output14682_def : output14682 = (output14681) := by
  unfold output14682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14682_skip : Flapjack.WordAlloc.isSkip output14682 = false := by
  rw [output14682_def]
  exact output14681_skip


@[irreducible, cbv_opaque] def input14683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14682 input10799)).val
theorem input14683_def : input14683 = (.seq input14682 input10799) := by
  unfold input14683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14682 output10799)).val
theorem output14683_def : output14683 = (.seq output14682 output10799) := by
  unfold output14683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14683_skip : Flapjack.WordAlloc.isSkip output14683 = false := by
  rw [output14683_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14683 input10798)).val
theorem input14684_def : input14684 = (.seq input14683 input10798) := by
  unfold input14684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14683 output10798)).val
theorem output14684_def : output14684 = (.seq output14683 output10798) := by
  unfold output14684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14684_skip : Flapjack.WordAlloc.isSkip output14684 = false := by
  rw [output14684_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14684 input10795)).val
theorem input14685_def : input14685 = (.seq input14684 input10795) := by
  unfold input14685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14684 output10795)).val
theorem output14685_def : output14685 = (.seq output14684 output10795) := by
  unfold output14685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14685_skip : Flapjack.WordAlloc.isSkip output14685 = false := by
  rw [output14685_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14685 input10786)).val
theorem input14686_def : input14686 = (.seq input14685 input10786) := by
  unfold input14686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14685)).val
theorem output14686_def : output14686 = (output14685) := by
  unfold output14686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14686_skip : Flapjack.WordAlloc.isSkip output14686 = false := by
  rw [output14686_def]
  exact output14685_skip


@[irreducible, cbv_opaque] def input14687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14686 input10785)).val
theorem input14687_def : input14687 = (.seq input14686 input10785) := by
  unfold input14687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14686 output10785)).val
theorem output14687_def : output14687 = (.seq output14686 output10785) := by
  unfold output14687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14687_skip : Flapjack.WordAlloc.isSkip output14687 = false := by
  rw [output14687_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14687 input10784)).val
theorem input14688_def : input14688 = (.seq input14687 input10784) := by
  unfold input14688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14687 output10784)).val
theorem output14688_def : output14688 = (.seq output14687 output10784) := by
  unfold output14688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14688_skip : Flapjack.WordAlloc.isSkip output14688 = false := by
  rw [output14688_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14688 input10781)).val
theorem input14689_def : input14689 = (.seq input14688 input10781) := by
  unfold input14689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14688 output10781)).val
theorem output14689_def : output14689 = (.seq output14688 output10781) := by
  unfold output14689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14689_skip : Flapjack.WordAlloc.isSkip output14689 = false := by
  rw [output14689_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14689 input10772)).val
theorem input14690_def : input14690 = (.seq input14689 input10772) := by
  unfold input14690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14689)).val
theorem output14690_def : output14690 = (output14689) := by
  unfold output14690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14690_skip : Flapjack.WordAlloc.isSkip output14690 = false := by
  rw [output14690_def]
  exact output14689_skip


@[irreducible, cbv_opaque] def input14691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14690 input10771)).val
theorem input14691_def : input14691 = (.seq input14690 input10771) := by
  unfold input14691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14690 output10771)).val
theorem output14691_def : output14691 = (.seq output14690 output10771) := by
  unfold output14691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14691_skip : Flapjack.WordAlloc.isSkip output14691 = false := by
  rw [output14691_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14691 input10770)).val
theorem input14692_def : input14692 = (.seq input14691 input10770) := by
  unfold input14692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14691 output10770)).val
theorem output14692_def : output14692 = (.seq output14691 output10770) := by
  unfold output14692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14692_skip : Flapjack.WordAlloc.isSkip output14692 = false := by
  rw [output14692_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14692 input10767)).val
theorem input14693_def : input14693 = (.seq input14692 input10767) := by
  unfold input14693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14692 output10767)).val
theorem output14693_def : output14693 = (.seq output14692 output10767) := by
  unfold output14693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14693_skip : Flapjack.WordAlloc.isSkip output14693 = false := by
  rw [output14693_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14693 input10758)).val
theorem input14694_def : input14694 = (.seq input14693 input10758) := by
  unfold input14694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14693)).val
theorem output14694_def : output14694 = (output14693) := by
  unfold output14694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14694_skip : Flapjack.WordAlloc.isSkip output14694 = false := by
  rw [output14694_def]
  exact output14693_skip


@[irreducible, cbv_opaque] def input14695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14694 input10757)).val
theorem input14695_def : input14695 = (.seq input14694 input10757) := by
  unfold input14695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14694 output10757)).val
theorem output14695_def : output14695 = (.seq output14694 output10757) := by
  unfold output14695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14695_skip : Flapjack.WordAlloc.isSkip output14695 = false := by
  rw [output14695_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14695 input10756)).val
theorem input14696_def : input14696 = (.seq input14695 input10756) := by
  unfold input14696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14695 output10756)).val
theorem output14696_def : output14696 = (.seq output14695 output10756) := by
  unfold output14696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14696_skip : Flapjack.WordAlloc.isSkip output14696 = false := by
  rw [output14696_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14696 input10753)).val
theorem input14697_def : input14697 = (.seq input14696 input10753) := by
  unfold input14697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14696 output10753)).val
theorem output14697_def : output14697 = (.seq output14696 output10753) := by
  unfold output14697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14697_skip : Flapjack.WordAlloc.isSkip output14697 = false := by
  rw [output14697_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14697 input10744)).val
theorem input14698_def : input14698 = (.seq input14697 input10744) := by
  unfold input14698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14697)).val
theorem output14698_def : output14698 = (output14697) := by
  unfold output14698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14698_skip : Flapjack.WordAlloc.isSkip output14698 = false := by
  rw [output14698_def]
  exact output14697_skip


@[irreducible, cbv_opaque] def input14699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14698 input10743)).val
theorem input14699_def : input14699 = (.seq input14698 input10743) := by
  unfold input14699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14698 output10743)).val
theorem output14699_def : output14699 = (.seq output14698 output10743) := by
  unfold output14699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14699_skip : Flapjack.WordAlloc.isSkip output14699 = false := by
  rw [output14699_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14699 input10742)).val
theorem input14700_def : input14700 = (.seq input14699 input10742) := by
  unfold input14700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14699 output10742)).val
theorem output14700_def : output14700 = (.seq output14699 output10742) := by
  unfold output14700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14700_skip : Flapjack.WordAlloc.isSkip output14700 = false := by
  rw [output14700_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14700 input10739)).val
theorem input14701_def : input14701 = (.seq input14700 input10739) := by
  unfold input14701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14700 output10739)).val
theorem output14701_def : output14701 = (.seq output14700 output10739) := by
  unfold output14701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14701_skip : Flapjack.WordAlloc.isSkip output14701 = false := by
  rw [output14701_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14701 input10730)).val
theorem input14702_def : input14702 = (.seq input14701 input10730) := by
  unfold input14702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14701)).val
theorem output14702_def : output14702 = (output14701) := by
  unfold output14702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14702_skip : Flapjack.WordAlloc.isSkip output14702 = false := by
  rw [output14702_def]
  exact output14701_skip


@[irreducible, cbv_opaque] def input14703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14702 input10729)).val
theorem input14703_def : input14703 = (.seq input14702 input10729) := by
  unfold input14703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14702 output10729)).val
theorem output14703_def : output14703 = (.seq output14702 output10729) := by
  unfold output14703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14703_skip : Flapjack.WordAlloc.isSkip output14703 = false := by
  rw [output14703_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14703 input10728)).val
theorem input14704_def : input14704 = (.seq input14703 input10728) := by
  unfold input14704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14703 output10728)).val
theorem output14704_def : output14704 = (.seq output14703 output10728) := by
  unfold output14704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14704_skip : Flapjack.WordAlloc.isSkip output14704 = false := by
  rw [output14704_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14704 input10725)).val
theorem input14705_def : input14705 = (.seq input14704 input10725) := by
  unfold input14705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14704 output10725)).val
theorem output14705_def : output14705 = (.seq output14704 output10725) := by
  unfold output14705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14705_skip : Flapjack.WordAlloc.isSkip output14705 = false := by
  rw [output14705_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14705 input10716)).val
theorem input14706_def : input14706 = (.seq input14705 input10716) := by
  unfold input14706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14705)).val
theorem output14706_def : output14706 = (output14705) := by
  unfold output14706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14706_skip : Flapjack.WordAlloc.isSkip output14706 = false := by
  rw [output14706_def]
  exact output14705_skip


@[irreducible, cbv_opaque] def input14707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14706 input10715)).val
theorem input14707_def : input14707 = (.seq input14706 input10715) := by
  unfold input14707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14706 output10715)).val
theorem output14707_def : output14707 = (.seq output14706 output10715) := by
  unfold output14707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14707_skip : Flapjack.WordAlloc.isSkip output14707 = false := by
  rw [output14707_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14707 input10714)).val
theorem input14708_def : input14708 = (.seq input14707 input10714) := by
  unfold input14708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14707 output10714)).val
theorem output14708_def : output14708 = (.seq output14707 output10714) := by
  unfold output14708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14708_skip : Flapjack.WordAlloc.isSkip output14708 = false := by
  rw [output14708_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14708 input10711)).val
theorem input14709_def : input14709 = (.seq input14708 input10711) := by
  unfold input14709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14708 output10711)).val
theorem output14709_def : output14709 = (.seq output14708 output10711) := by
  unfold output14709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14709_skip : Flapjack.WordAlloc.isSkip output14709 = false := by
  rw [output14709_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14709 input10702)).val
theorem input14710_def : input14710 = (.seq input14709 input10702) := by
  unfold input14710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14709)).val
theorem output14710_def : output14710 = (output14709) := by
  unfold output14710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14710_skip : Flapjack.WordAlloc.isSkip output14710 = false := by
  rw [output14710_def]
  exact output14709_skip


@[irreducible, cbv_opaque] def input14711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14710 input10701)).val
theorem input14711_def : input14711 = (.seq input14710 input10701) := by
  unfold input14711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14710 output10701)).val
theorem output14711_def : output14711 = (.seq output14710 output10701) := by
  unfold output14711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14711_skip : Flapjack.WordAlloc.isSkip output14711 = false := by
  rw [output14711_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14711 input10700)).val
theorem input14712_def : input14712 = (.seq input14711 input10700) := by
  unfold input14712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14711 output10700)).val
theorem output14712_def : output14712 = (.seq output14711 output10700) := by
  unfold output14712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14712_skip : Flapjack.WordAlloc.isSkip output14712 = false := by
  rw [output14712_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14712 input10697)).val
theorem input14713_def : input14713 = (.seq input14712 input10697) := by
  unfold input14713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14712 output10697)).val
theorem output14713_def : output14713 = (.seq output14712 output10697) := by
  unfold output14713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14713_skip : Flapjack.WordAlloc.isSkip output14713 = false := by
  rw [output14713_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14713 input10688)).val
theorem input14714_def : input14714 = (.seq input14713 input10688) := by
  unfold input14714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14713)).val
theorem output14714_def : output14714 = (output14713) := by
  unfold output14714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14714_skip : Flapjack.WordAlloc.isSkip output14714 = false := by
  rw [output14714_def]
  exact output14713_skip


@[irreducible, cbv_opaque] def input14715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14714 input10687)).val
theorem input14715_def : input14715 = (.seq input14714 input10687) := by
  unfold input14715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14714 output10687)).val
theorem output14715_def : output14715 = (.seq output14714 output10687) := by
  unfold output14715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14715_skip : Flapjack.WordAlloc.isSkip output14715 = false := by
  rw [output14715_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14715 input10686)).val
theorem input14716_def : input14716 = (.seq input14715 input10686) := by
  unfold input14716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14715 output10686)).val
theorem output14716_def : output14716 = (.seq output14715 output10686) := by
  unfold output14716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14716_skip : Flapjack.WordAlloc.isSkip output14716 = false := by
  rw [output14716_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14716 input10683)).val
theorem input14717_def : input14717 = (.seq input14716 input10683) := by
  unfold input14717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14716 output10683)).val
theorem output14717_def : output14717 = (.seq output14716 output10683) := by
  unfold output14717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14717_skip : Flapjack.WordAlloc.isSkip output14717 = false := by
  rw [output14717_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14717 input10674)).val
theorem input14718_def : input14718 = (.seq input14717 input10674) := by
  unfold input14718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14717)).val
theorem output14718_def : output14718 = (output14717) := by
  unfold output14718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14718_skip : Flapjack.WordAlloc.isSkip output14718 = false := by
  rw [output14718_def]
  exact output14717_skip


@[irreducible, cbv_opaque] def input14719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14718 input10673)).val
theorem input14719_def : input14719 = (.seq input14718 input10673) := by
  unfold input14719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14718 output10673)).val
theorem output14719_def : output14719 = (.seq output14718 output10673) := by
  unfold output14719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14719_skip : Flapjack.WordAlloc.isSkip output14719 = false := by
  rw [output14719_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14719 input10672)).val
theorem input14720_def : input14720 = (.seq input14719 input10672) := by
  unfold input14720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14719 output10672)).val
theorem output14720_def : output14720 = (.seq output14719 output10672) := by
  unfold output14720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14720_skip : Flapjack.WordAlloc.isSkip output14720 = false := by
  rw [output14720_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14720 input10669)).val
theorem input14721_def : input14721 = (.seq input14720 input10669) := by
  unfold input14721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14720 output10669)).val
theorem output14721_def : output14721 = (.seq output14720 output10669) := by
  unfold output14721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14721_skip : Flapjack.WordAlloc.isSkip output14721 = false := by
  rw [output14721_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14721 input10660)).val
theorem input14722_def : input14722 = (.seq input14721 input10660) := by
  unfold input14722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14721)).val
theorem output14722_def : output14722 = (output14721) := by
  unfold output14722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14722_skip : Flapjack.WordAlloc.isSkip output14722 = false := by
  rw [output14722_def]
  exact output14721_skip


@[irreducible, cbv_opaque] def input14723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14722 input10659)).val
theorem input14723_def : input14723 = (.seq input14722 input10659) := by
  unfold input14723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14722 output10659)).val
theorem output14723_def : output14723 = (.seq output14722 output10659) := by
  unfold output14723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14723_skip : Flapjack.WordAlloc.isSkip output14723 = false := by
  rw [output14723_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14723 input10658)).val
theorem input14724_def : input14724 = (.seq input14723 input10658) := by
  unfold input14724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14723 output10658)).val
theorem output14724_def : output14724 = (.seq output14723 output10658) := by
  unfold output14724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14724_skip : Flapjack.WordAlloc.isSkip output14724 = false := by
  rw [output14724_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14724 input10655)).val
theorem input14725_def : input14725 = (.seq input14724 input10655) := by
  unfold input14725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14724 output10655)).val
theorem output14725_def : output14725 = (.seq output14724 output10655) := by
  unfold output14725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14725_skip : Flapjack.WordAlloc.isSkip output14725 = false := by
  rw [output14725_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14725 input10646)).val
theorem input14726_def : input14726 = (.seq input14725 input10646) := by
  unfold input14726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14725)).val
theorem output14726_def : output14726 = (output14725) := by
  unfold output14726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14726_skip : Flapjack.WordAlloc.isSkip output14726 = false := by
  rw [output14726_def]
  exact output14725_skip


@[irreducible, cbv_opaque] def input14727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14726 input10645)).val
theorem input14727_def : input14727 = (.seq input14726 input10645) := by
  unfold input14727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14726 output10645)).val
theorem output14727_def : output14727 = (.seq output14726 output10645) := by
  unfold output14727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14727_skip : Flapjack.WordAlloc.isSkip output14727 = false := by
  rw [output14727_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14727 input10644)).val
theorem input14728_def : input14728 = (.seq input14727 input10644) := by
  unfold input14728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14727 output10644)).val
theorem output14728_def : output14728 = (.seq output14727 output10644) := by
  unfold output14728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14728_skip : Flapjack.WordAlloc.isSkip output14728 = false := by
  rw [output14728_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14728 input10641)).val
theorem input14729_def : input14729 = (.seq input14728 input10641) := by
  unfold input14729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14728 output10641)).val
theorem output14729_def : output14729 = (.seq output14728 output10641) := by
  unfold output14729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14729_skip : Flapjack.WordAlloc.isSkip output14729 = false := by
  rw [output14729_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14729 input10632)).val
theorem input14730_def : input14730 = (.seq input14729 input10632) := by
  unfold input14730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14729)).val
theorem output14730_def : output14730 = (output14729) := by
  unfold output14730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14730_skip : Flapjack.WordAlloc.isSkip output14730 = false := by
  rw [output14730_def]
  exact output14729_skip


@[irreducible, cbv_opaque] def input14731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14730 input10631)).val
theorem input14731_def : input14731 = (.seq input14730 input10631) := by
  unfold input14731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14730 output10631)).val
theorem output14731_def : output14731 = (.seq output14730 output10631) := by
  unfold output14731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14731_skip : Flapjack.WordAlloc.isSkip output14731 = false := by
  rw [output14731_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14731 input10630)).val
theorem input14732_def : input14732 = (.seq input14731 input10630) := by
  unfold input14732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14731 output10630)).val
theorem output14732_def : output14732 = (.seq output14731 output10630) := by
  unfold output14732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14732_skip : Flapjack.WordAlloc.isSkip output14732 = false := by
  rw [output14732_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14732 input10627)).val
theorem input14733_def : input14733 = (.seq input14732 input10627) := by
  unfold input14733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14732 output10627)).val
theorem output14733_def : output14733 = (.seq output14732 output10627) := by
  unfold output14733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14733_skip : Flapjack.WordAlloc.isSkip output14733 = false := by
  rw [output14733_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14733 input10618)).val
theorem input14734_def : input14734 = (.seq input14733 input10618) := by
  unfold input14734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14733)).val
theorem output14734_def : output14734 = (output14733) := by
  unfold output14734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14734_skip : Flapjack.WordAlloc.isSkip output14734 = false := by
  rw [output14734_def]
  exact output14733_skip


@[irreducible, cbv_opaque] def input14735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14734 input10617)).val
theorem input14735_def : input14735 = (.seq input14734 input10617) := by
  unfold input14735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14734 output10617)).val
theorem output14735_def : output14735 = (.seq output14734 output10617) := by
  unfold output14735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14735_skip : Flapjack.WordAlloc.isSkip output14735 = false := by
  rw [output14735_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14735 input10616)).val
theorem input14736_def : input14736 = (.seq input14735 input10616) := by
  unfold input14736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14735 output10616)).val
theorem output14736_def : output14736 = (.seq output14735 output10616) := by
  unfold output14736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14736_skip : Flapjack.WordAlloc.isSkip output14736 = false := by
  rw [output14736_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14736 input10613)).val
theorem input14737_def : input14737 = (.seq input14736 input10613) := by
  unfold input14737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14736 output10613)).val
theorem output14737_def : output14737 = (.seq output14736 output10613) := by
  unfold output14737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14737_skip : Flapjack.WordAlloc.isSkip output14737 = false := by
  rw [output14737_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14737 input10604)).val
theorem input14738_def : input14738 = (.seq input14737 input10604) := by
  unfold input14738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14737)).val
theorem output14738_def : output14738 = (output14737) := by
  unfold output14738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14738_skip : Flapjack.WordAlloc.isSkip output14738 = false := by
  rw [output14738_def]
  exact output14737_skip


@[irreducible, cbv_opaque] def input14739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14738 input10603)).val
theorem input14739_def : input14739 = (.seq input14738 input10603) := by
  unfold input14739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14738 output10603)).val
theorem output14739_def : output14739 = (.seq output14738 output10603) := by
  unfold output14739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14739_skip : Flapjack.WordAlloc.isSkip output14739 = false := by
  rw [output14739_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14739 input10602)).val
theorem input14740_def : input14740 = (.seq input14739 input10602) := by
  unfold input14740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14739 output10602)).val
theorem output14740_def : output14740 = (.seq output14739 output10602) := by
  unfold output14740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14740_skip : Flapjack.WordAlloc.isSkip output14740 = false := by
  rw [output14740_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14740 input10599)).val
theorem input14741_def : input14741 = (.seq input14740 input10599) := by
  unfold input14741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14740 output10599)).val
theorem output14741_def : output14741 = (.seq output14740 output10599) := by
  unfold output14741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14741_skip : Flapjack.WordAlloc.isSkip output14741 = false := by
  rw [output14741_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14741 input10590)).val
theorem input14742_def : input14742 = (.seq input14741 input10590) := by
  unfold input14742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14741)).val
theorem output14742_def : output14742 = (output14741) := by
  unfold output14742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14742_skip : Flapjack.WordAlloc.isSkip output14742 = false := by
  rw [output14742_def]
  exact output14741_skip


@[irreducible, cbv_opaque] def input14743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14742 input10589)).val
theorem input14743_def : input14743 = (.seq input14742 input10589) := by
  unfold input14743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14742 output10589)).val
theorem output14743_def : output14743 = (.seq output14742 output10589) := by
  unfold output14743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14743_skip : Flapjack.WordAlloc.isSkip output14743 = false := by
  rw [output14743_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14743 input10588)).val
theorem input14744_def : input14744 = (.seq input14743 input10588) := by
  unfold input14744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14743 output10588)).val
theorem output14744_def : output14744 = (.seq output14743 output10588) := by
  unfold output14744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14744_skip : Flapjack.WordAlloc.isSkip output14744 = false := by
  rw [output14744_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14744 input10585)).val
theorem input14745_def : input14745 = (.seq input14744 input10585) := by
  unfold input14745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14744 output10585)).val
theorem output14745_def : output14745 = (.seq output14744 output10585) := by
  unfold output14745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14745_skip : Flapjack.WordAlloc.isSkip output14745 = false := by
  rw [output14745_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14745 input10576)).val
theorem input14746_def : input14746 = (.seq input14745 input10576) := by
  unfold input14746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14745)).val
theorem output14746_def : output14746 = (output14745) := by
  unfold output14746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14746_skip : Flapjack.WordAlloc.isSkip output14746 = false := by
  rw [output14746_def]
  exact output14745_skip


@[irreducible, cbv_opaque] def input14747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14746 input10575)).val
theorem input14747_def : input14747 = (.seq input14746 input10575) := by
  unfold input14747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14746 output10575)).val
theorem output14747_def : output14747 = (.seq output14746 output10575) := by
  unfold output14747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14747_skip : Flapjack.WordAlloc.isSkip output14747 = false := by
  rw [output14747_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14747 input10574)).val
theorem input14748_def : input14748 = (.seq input14747 input10574) := by
  unfold input14748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14747 output10574)).val
theorem output14748_def : output14748 = (.seq output14747 output10574) := by
  unfold output14748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14748_skip : Flapjack.WordAlloc.isSkip output14748 = false := by
  rw [output14748_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14748 input10571)).val
theorem input14749_def : input14749 = (.seq input14748 input10571) := by
  unfold input14749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14748 output10571)).val
theorem output14749_def : output14749 = (.seq output14748 output10571) := by
  unfold output14749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14749_skip : Flapjack.WordAlloc.isSkip output14749 = false := by
  rw [output14749_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14749 input10562)).val
theorem input14750_def : input14750 = (.seq input14749 input10562) := by
  unfold input14750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14749)).val
theorem output14750_def : output14750 = (output14749) := by
  unfold output14750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14750_skip : Flapjack.WordAlloc.isSkip output14750 = false := by
  rw [output14750_def]
  exact output14749_skip


@[irreducible, cbv_opaque] def input14751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14750 input10561)).val
theorem input14751_def : input14751 = (.seq input14750 input10561) := by
  unfold input14751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14750 output10561)).val
theorem output14751_def : output14751 = (.seq output14750 output10561) := by
  unfold output14751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14751_skip : Flapjack.WordAlloc.isSkip output14751 = false := by
  rw [output14751_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14751 input10560)).val
theorem input14752_def : input14752 = (.seq input14751 input10560) := by
  unfold input14752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14751 output10560)).val
theorem output14752_def : output14752 = (.seq output14751 output10560) := by
  unfold output14752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14752_skip : Flapjack.WordAlloc.isSkip output14752 = false := by
  rw [output14752_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14752 input10557)).val
theorem input14753_def : input14753 = (.seq input14752 input10557) := by
  unfold input14753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14752 output10557)).val
theorem output14753_def : output14753 = (.seq output14752 output10557) := by
  unfold output14753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14753_skip : Flapjack.WordAlloc.isSkip output14753 = false := by
  rw [output14753_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14753 input10548)).val
theorem input14754_def : input14754 = (.seq input14753 input10548) := by
  unfold input14754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14753)).val
theorem output14754_def : output14754 = (output14753) := by
  unfold output14754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14754_skip : Flapjack.WordAlloc.isSkip output14754 = false := by
  rw [output14754_def]
  exact output14753_skip


@[irreducible, cbv_opaque] def input14755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14754 input10547)).val
theorem input14755_def : input14755 = (.seq input14754 input10547) := by
  unfold input14755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14754 output10547)).val
theorem output14755_def : output14755 = (.seq output14754 output10547) := by
  unfold output14755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14755_skip : Flapjack.WordAlloc.isSkip output14755 = false := by
  rw [output14755_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14755 input10546)).val
theorem input14756_def : input14756 = (.seq input14755 input10546) := by
  unfold input14756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14755 output10546)).val
theorem output14756_def : output14756 = (.seq output14755 output10546) := by
  unfold output14756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14756_skip : Flapjack.WordAlloc.isSkip output14756 = false := by
  rw [output14756_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14756 input10543)).val
theorem input14757_def : input14757 = (.seq input14756 input10543) := by
  unfold input14757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14756 output10543)).val
theorem output14757_def : output14757 = (.seq output14756 output10543) := by
  unfold output14757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14757_skip : Flapjack.WordAlloc.isSkip output14757 = false := by
  rw [output14757_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14757 input10534)).val
theorem input14758_def : input14758 = (.seq input14757 input10534) := by
  unfold input14758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14757)).val
theorem output14758_def : output14758 = (output14757) := by
  unfold output14758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14758_skip : Flapjack.WordAlloc.isSkip output14758 = false := by
  rw [output14758_def]
  exact output14757_skip


@[irreducible, cbv_opaque] def input14759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14758 input10533)).val
theorem input14759_def : input14759 = (.seq input14758 input10533) := by
  unfold input14759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14758 output10533)).val
theorem output14759_def : output14759 = (.seq output14758 output10533) := by
  unfold output14759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14759_skip : Flapjack.WordAlloc.isSkip output14759 = false := by
  rw [output14759_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14759 input10532)).val
theorem input14760_def : input14760 = (.seq input14759 input10532) := by
  unfold input14760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14759 output10532)).val
theorem output14760_def : output14760 = (.seq output14759 output10532) := by
  unfold output14760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14760_skip : Flapjack.WordAlloc.isSkip output14760 = false := by
  rw [output14760_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14760 input10529)).val
theorem input14761_def : input14761 = (.seq input14760 input10529) := by
  unfold input14761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14760 output10529)).val
theorem output14761_def : output14761 = (.seq output14760 output10529) := by
  unfold output14761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14761_skip : Flapjack.WordAlloc.isSkip output14761 = false := by
  rw [output14761_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14761 input10520)).val
theorem input14762_def : input14762 = (.seq input14761 input10520) := by
  unfold input14762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14761)).val
theorem output14762_def : output14762 = (output14761) := by
  unfold output14762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14762_skip : Flapjack.WordAlloc.isSkip output14762 = false := by
  rw [output14762_def]
  exact output14761_skip


@[irreducible, cbv_opaque] def input14763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14762 input10519)).val
theorem input14763_def : input14763 = (.seq input14762 input10519) := by
  unfold input14763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14762 output10519)).val
theorem output14763_def : output14763 = (.seq output14762 output10519) := by
  unfold output14763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14763_skip : Flapjack.WordAlloc.isSkip output14763 = false := by
  rw [output14763_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14763 input10518)).val
theorem input14764_def : input14764 = (.seq input14763 input10518) := by
  unfold input14764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14763 output10518)).val
theorem output14764_def : output14764 = (.seq output14763 output10518) := by
  unfold output14764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14764_skip : Flapjack.WordAlloc.isSkip output14764 = false := by
  rw [output14764_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14764 input10515)).val
theorem input14765_def : input14765 = (.seq input14764 input10515) := by
  unfold input14765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14764 output10515)).val
theorem output14765_def : output14765 = (.seq output14764 output10515) := by
  unfold output14765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14765_skip : Flapjack.WordAlloc.isSkip output14765 = false := by
  rw [output14765_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14765 input10506)).val
theorem input14766_def : input14766 = (.seq input14765 input10506) := by
  unfold input14766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14765)).val
theorem output14766_def : output14766 = (output14765) := by
  unfold output14766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14766_skip : Flapjack.WordAlloc.isSkip output14766 = false := by
  rw [output14766_def]
  exact output14765_skip


@[irreducible, cbv_opaque] def input14767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14766 input10505)).val
theorem input14767_def : input14767 = (.seq input14766 input10505) := by
  unfold input14767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14766 output10505)).val
theorem output14767_def : output14767 = (.seq output14766 output10505) := by
  unfold output14767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14767_skip : Flapjack.WordAlloc.isSkip output14767 = false := by
  rw [output14767_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14767 input10504)).val
theorem input14768_def : input14768 = (.seq input14767 input10504) := by
  unfold input14768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14767 output10504)).val
theorem output14768_def : output14768 = (.seq output14767 output10504) := by
  unfold output14768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14768_skip : Flapjack.WordAlloc.isSkip output14768 = false := by
  rw [output14768_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14768 input10501)).val
theorem input14769_def : input14769 = (.seq input14768 input10501) := by
  unfold input14769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14768 output10501)).val
theorem output14769_def : output14769 = (.seq output14768 output10501) := by
  unfold output14769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14769_skip : Flapjack.WordAlloc.isSkip output14769 = false := by
  rw [output14769_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14769 input10492)).val
theorem input14770_def : input14770 = (.seq input14769 input10492) := by
  unfold input14770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14769)).val
theorem output14770_def : output14770 = (output14769) := by
  unfold output14770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14770_skip : Flapjack.WordAlloc.isSkip output14770 = false := by
  rw [output14770_def]
  exact output14769_skip


@[irreducible, cbv_opaque] def input14771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14770 input10491)).val
theorem input14771_def : input14771 = (.seq input14770 input10491) := by
  unfold input14771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14770 output10491)).val
theorem output14771_def : output14771 = (.seq output14770 output10491) := by
  unfold output14771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14771_skip : Flapjack.WordAlloc.isSkip output14771 = false := by
  rw [output14771_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14771 input10490)).val
theorem input14772_def : input14772 = (.seq input14771 input10490) := by
  unfold input14772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14771 output10490)).val
theorem output14772_def : output14772 = (.seq output14771 output10490) := by
  unfold output14772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14772_skip : Flapjack.WordAlloc.isSkip output14772 = false := by
  rw [output14772_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14772 input10487)).val
theorem input14773_def : input14773 = (.seq input14772 input10487) := by
  unfold input14773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14772 output10487)).val
theorem output14773_def : output14773 = (.seq output14772 output10487) := by
  unfold output14773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14773_skip : Flapjack.WordAlloc.isSkip output14773 = false := by
  rw [output14773_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14773 input10478)).val
theorem input14774_def : input14774 = (.seq input14773 input10478) := by
  unfold input14774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14773)).val
theorem output14774_def : output14774 = (output14773) := by
  unfold output14774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14774_skip : Flapjack.WordAlloc.isSkip output14774 = false := by
  rw [output14774_def]
  exact output14773_skip


@[irreducible, cbv_opaque] def input14775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14774 input10477)).val
theorem input14775_def : input14775 = (.seq input14774 input10477) := by
  unfold input14775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14774 output10477)).val
theorem output14775_def : output14775 = (.seq output14774 output10477) := by
  unfold output14775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14775_skip : Flapjack.WordAlloc.isSkip output14775 = false := by
  rw [output14775_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14775 input10476)).val
theorem input14776_def : input14776 = (.seq input14775 input10476) := by
  unfold input14776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14775 output10476)).val
theorem output14776_def : output14776 = (.seq output14775 output10476) := by
  unfold output14776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14776_skip : Flapjack.WordAlloc.isSkip output14776 = false := by
  rw [output14776_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14776 input10473)).val
theorem input14777_def : input14777 = (.seq input14776 input10473) := by
  unfold input14777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14776 output10473)).val
theorem output14777_def : output14777 = (.seq output14776 output10473) := by
  unfold output14777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14777_skip : Flapjack.WordAlloc.isSkip output14777 = false := by
  rw [output14777_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14777 input10464)).val
theorem input14778_def : input14778 = (.seq input14777 input10464) := by
  unfold input14778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14777)).val
theorem output14778_def : output14778 = (output14777) := by
  unfold output14778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14778_skip : Flapjack.WordAlloc.isSkip output14778 = false := by
  rw [output14778_def]
  exact output14777_skip


@[irreducible, cbv_opaque] def input14779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14778 input10463)).val
theorem input14779_def : input14779 = (.seq input14778 input10463) := by
  unfold input14779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14778 output10463)).val
theorem output14779_def : output14779 = (.seq output14778 output10463) := by
  unfold output14779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14779_skip : Flapjack.WordAlloc.isSkip output14779 = false := by
  rw [output14779_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14779 input10462)).val
theorem input14780_def : input14780 = (.seq input14779 input10462) := by
  unfold input14780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14779 output10462)).val
theorem output14780_def : output14780 = (.seq output14779 output10462) := by
  unfold output14780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14780_skip : Flapjack.WordAlloc.isSkip output14780 = false := by
  rw [output14780_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14780 input10459)).val
theorem input14781_def : input14781 = (.seq input14780 input10459) := by
  unfold input14781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14780 output10459)).val
theorem output14781_def : output14781 = (.seq output14780 output10459) := by
  unfold output14781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14781_skip : Flapjack.WordAlloc.isSkip output14781 = false := by
  rw [output14781_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14781 input10450)).val
theorem input14782_def : input14782 = (.seq input14781 input10450) := by
  unfold input14782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14781)).val
theorem output14782_def : output14782 = (output14781) := by
  unfold output14782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14782_skip : Flapjack.WordAlloc.isSkip output14782 = false := by
  rw [output14782_def]
  exact output14781_skip


@[irreducible, cbv_opaque] def input14783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14782 input10449)).val
theorem input14783_def : input14783 = (.seq input14782 input10449) := by
  unfold input14783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14782 output10449)).val
theorem output14783_def : output14783 = (.seq output14782 output10449) := by
  unfold output14783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14783_skip : Flapjack.WordAlloc.isSkip output14783 = false := by
  rw [output14783_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14783 input10448)).val
theorem input14784_def : input14784 = (.seq input14783 input10448) := by
  unfold input14784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14783 output10448)).val
theorem output14784_def : output14784 = (.seq output14783 output10448) := by
  unfold output14784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14784_skip : Flapjack.WordAlloc.isSkip output14784 = false := by
  rw [output14784_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14784 input10445)).val
theorem input14785_def : input14785 = (.seq input14784 input10445) := by
  unfold input14785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14784 output10445)).val
theorem output14785_def : output14785 = (.seq output14784 output10445) := by
  unfold output14785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14785_skip : Flapjack.WordAlloc.isSkip output14785 = false := by
  rw [output14785_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14785 input10436)).val
theorem input14786_def : input14786 = (.seq input14785 input10436) := by
  unfold input14786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14785)).val
theorem output14786_def : output14786 = (output14785) := by
  unfold output14786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14786_skip : Flapjack.WordAlloc.isSkip output14786 = false := by
  rw [output14786_def]
  exact output14785_skip


@[irreducible, cbv_opaque] def input14787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14786 input10435)).val
theorem input14787_def : input14787 = (.seq input14786 input10435) := by
  unfold input14787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14786 output10435)).val
theorem output14787_def : output14787 = (.seq output14786 output10435) := by
  unfold output14787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14787_skip : Flapjack.WordAlloc.isSkip output14787 = false := by
  rw [output14787_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14787 input10434)).val
theorem input14788_def : input14788 = (.seq input14787 input10434) := by
  unfold input14788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14787 output10434)).val
theorem output14788_def : output14788 = (.seq output14787 output10434) := by
  unfold output14788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14788_skip : Flapjack.WordAlloc.isSkip output14788 = false := by
  rw [output14788_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14788 input10431)).val
theorem input14789_def : input14789 = (.seq input14788 input10431) := by
  unfold input14789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14788 output10431)).val
theorem output14789_def : output14789 = (.seq output14788 output10431) := by
  unfold output14789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14789_skip : Flapjack.WordAlloc.isSkip output14789 = false := by
  rw [output14789_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14789 input10422)).val
theorem input14790_def : input14790 = (.seq input14789 input10422) := by
  unfold input14790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14789)).val
theorem output14790_def : output14790 = (output14789) := by
  unfold output14790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14790_skip : Flapjack.WordAlloc.isSkip output14790 = false := by
  rw [output14790_def]
  exact output14789_skip


@[irreducible, cbv_opaque] def input14791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14790 input10421)).val
theorem input14791_def : input14791 = (.seq input14790 input10421) := by
  unfold input14791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14790 output10421)).val
theorem output14791_def : output14791 = (.seq output14790 output10421) := by
  unfold output14791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14791_skip : Flapjack.WordAlloc.isSkip output14791 = false := by
  rw [output14791_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14791 input10420)).val
theorem input14792_def : input14792 = (.seq input14791 input10420) := by
  unfold input14792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14791 output10420)).val
theorem output14792_def : output14792 = (.seq output14791 output10420) := by
  unfold output14792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14792_skip : Flapjack.WordAlloc.isSkip output14792 = false := by
  rw [output14792_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14792 input10417)).val
theorem input14793_def : input14793 = (.seq input14792 input10417) := by
  unfold input14793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14792 output10417)).val
theorem output14793_def : output14793 = (.seq output14792 output10417) := by
  unfold output14793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14793_skip : Flapjack.WordAlloc.isSkip output14793 = false := by
  rw [output14793_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14793 input10408)).val
theorem input14794_def : input14794 = (.seq input14793 input10408) := by
  unfold input14794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14793)).val
theorem output14794_def : output14794 = (output14793) := by
  unfold output14794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14794_skip : Flapjack.WordAlloc.isSkip output14794 = false := by
  rw [output14794_def]
  exact output14793_skip


@[irreducible, cbv_opaque] def input14795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14794 input10407)).val
theorem input14795_def : input14795 = (.seq input14794 input10407) := by
  unfold input14795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14794 output10407)).val
theorem output14795_def : output14795 = (.seq output14794 output10407) := by
  unfold output14795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14795_skip : Flapjack.WordAlloc.isSkip output14795 = false := by
  rw [output14795_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14795 input10406)).val
theorem input14796_def : input14796 = (.seq input14795 input10406) := by
  unfold input14796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14795 output10406)).val
theorem output14796_def : output14796 = (.seq output14795 output10406) := by
  unfold output14796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14796_skip : Flapjack.WordAlloc.isSkip output14796 = false := by
  rw [output14796_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14796 input10403)).val
theorem input14797_def : input14797 = (.seq input14796 input10403) := by
  unfold input14797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14796 output10403)).val
theorem output14797_def : output14797 = (.seq output14796 output10403) := by
  unfold output14797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14797_skip : Flapjack.WordAlloc.isSkip output14797 = false := by
  rw [output14797_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14797 input10394)).val
theorem input14798_def : input14798 = (.seq input14797 input10394) := by
  unfold input14798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14797)).val
theorem output14798_def : output14798 = (output14797) := by
  unfold output14798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14798_skip : Flapjack.WordAlloc.isSkip output14798 = false := by
  rw [output14798_def]
  exact output14797_skip


@[irreducible, cbv_opaque] def input14799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14798 input10393)).val
theorem input14799_def : input14799 = (.seq input14798 input10393) := by
  unfold input14799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14798 output10393)).val
theorem output14799_def : output14799 = (.seq output14798 output10393) := by
  unfold output14799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14799_skip : Flapjack.WordAlloc.isSkip output14799 = false := by
  rw [output14799_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14799 input10392)).val
theorem input14800_def : input14800 = (.seq input14799 input10392) := by
  unfold input14800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14799 output10392)).val
theorem output14800_def : output14800 = (.seq output14799 output10392) := by
  unfold output14800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14800_skip : Flapjack.WordAlloc.isSkip output14800 = false := by
  rw [output14800_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14800 input10389)).val
theorem input14801_def : input14801 = (.seq input14800 input10389) := by
  unfold input14801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14800 output10389)).val
theorem output14801_def : output14801 = (.seq output14800 output10389) := by
  unfold output14801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14801_skip : Flapjack.WordAlloc.isSkip output14801 = false := by
  rw [output14801_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14801 input10380)).val
theorem input14802_def : input14802 = (.seq input14801 input10380) := by
  unfold input14802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14801)).val
theorem output14802_def : output14802 = (output14801) := by
  unfold output14802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14802_skip : Flapjack.WordAlloc.isSkip output14802 = false := by
  rw [output14802_def]
  exact output14801_skip


@[irreducible, cbv_opaque] def input14803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14802 input10379)).val
theorem input14803_def : input14803 = (.seq input14802 input10379) := by
  unfold input14803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14802 output10379)).val
theorem output14803_def : output14803 = (.seq output14802 output10379) := by
  unfold output14803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14803_skip : Flapjack.WordAlloc.isSkip output14803 = false := by
  rw [output14803_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14803 input10378)).val
theorem input14804_def : input14804 = (.seq input14803 input10378) := by
  unfold input14804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14803 output10378)).val
theorem output14804_def : output14804 = (.seq output14803 output10378) := by
  unfold output14804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14804_skip : Flapjack.WordAlloc.isSkip output14804 = false := by
  rw [output14804_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14804 input10375)).val
theorem input14805_def : input14805 = (.seq input14804 input10375) := by
  unfold input14805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14804 output10375)).val
theorem output14805_def : output14805 = (.seq output14804 output10375) := by
  unfold output14805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14805_skip : Flapjack.WordAlloc.isSkip output14805 = false := by
  rw [output14805_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14805 input10366)).val
theorem input14806_def : input14806 = (.seq input14805 input10366) := by
  unfold input14806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14805)).val
theorem output14806_def : output14806 = (output14805) := by
  unfold output14806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14806_skip : Flapjack.WordAlloc.isSkip output14806 = false := by
  rw [output14806_def]
  exact output14805_skip


@[irreducible, cbv_opaque] def input14807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14806 input10365)).val
theorem input14807_def : input14807 = (.seq input14806 input10365) := by
  unfold input14807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14806 output10365)).val
theorem output14807_def : output14807 = (.seq output14806 output10365) := by
  unfold output14807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14807_skip : Flapjack.WordAlloc.isSkip output14807 = false := by
  rw [output14807_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14807 input10364)).val
theorem input14808_def : input14808 = (.seq input14807 input10364) := by
  unfold input14808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14807 output10364)).val
theorem output14808_def : output14808 = (.seq output14807 output10364) := by
  unfold output14808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14808_skip : Flapjack.WordAlloc.isSkip output14808 = false := by
  rw [output14808_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14808 input10361)).val
theorem input14809_def : input14809 = (.seq input14808 input10361) := by
  unfold input14809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14808 output10361)).val
theorem output14809_def : output14809 = (.seq output14808 output10361) := by
  unfold output14809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14809_skip : Flapjack.WordAlloc.isSkip output14809 = false := by
  rw [output14809_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14809 input10352)).val
theorem input14810_def : input14810 = (.seq input14809 input10352) := by
  unfold input14810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14809)).val
theorem output14810_def : output14810 = (output14809) := by
  unfold output14810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14810_skip : Flapjack.WordAlloc.isSkip output14810 = false := by
  rw [output14810_def]
  exact output14809_skip


@[irreducible, cbv_opaque] def input14811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14810 input10351)).val
theorem input14811_def : input14811 = (.seq input14810 input10351) := by
  unfold input14811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14810 output10351)).val
theorem output14811_def : output14811 = (.seq output14810 output10351) := by
  unfold output14811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14811_skip : Flapjack.WordAlloc.isSkip output14811 = false := by
  rw [output14811_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14811 input10350)).val
theorem input14812_def : input14812 = (.seq input14811 input10350) := by
  unfold input14812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14811 output10350)).val
theorem output14812_def : output14812 = (.seq output14811 output10350) := by
  unfold output14812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14812_skip : Flapjack.WordAlloc.isSkip output14812 = false := by
  rw [output14812_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14812 input10347)).val
theorem input14813_def : input14813 = (.seq input14812 input10347) := by
  unfold input14813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14812 output10347)).val
theorem output14813_def : output14813 = (.seq output14812 output10347) := by
  unfold output14813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14813_skip : Flapjack.WordAlloc.isSkip output14813 = false := by
  rw [output14813_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14813 input10338)).val
theorem input14814_def : input14814 = (.seq input14813 input10338) := by
  unfold input14814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14813)).val
theorem output14814_def : output14814 = (output14813) := by
  unfold output14814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14814_skip : Flapjack.WordAlloc.isSkip output14814 = false := by
  rw [output14814_def]
  exact output14813_skip


@[irreducible, cbv_opaque] def input14815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14814 input10337)).val
theorem input14815_def : input14815 = (.seq input14814 input10337) := by
  unfold input14815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14814 output10337)).val
theorem output14815_def : output14815 = (.seq output14814 output10337) := by
  unfold output14815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14815_skip : Flapjack.WordAlloc.isSkip output14815 = false := by
  rw [output14815_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14815 input10336)).val
theorem input14816_def : input14816 = (.seq input14815 input10336) := by
  unfold input14816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14815 output10336)).val
theorem output14816_def : output14816 = (.seq output14815 output10336) := by
  unfold output14816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14816_skip : Flapjack.WordAlloc.isSkip output14816 = false := by
  rw [output14816_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14816 input10333)).val
theorem input14817_def : input14817 = (.seq input14816 input10333) := by
  unfold input14817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14816 output10333)).val
theorem output14817_def : output14817 = (.seq output14816 output10333) := by
  unfold output14817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14817_skip : Flapjack.WordAlloc.isSkip output14817 = false := by
  rw [output14817_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14817 input10324)).val
theorem input14818_def : input14818 = (.seq input14817 input10324) := by
  unfold input14818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14817)).val
theorem output14818_def : output14818 = (output14817) := by
  unfold output14818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14818_skip : Flapjack.WordAlloc.isSkip output14818 = false := by
  rw [output14818_def]
  exact output14817_skip


@[irreducible, cbv_opaque] def input14819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14818 input10323)).val
theorem input14819_def : input14819 = (.seq input14818 input10323) := by
  unfold input14819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14818 output10323)).val
theorem output14819_def : output14819 = (.seq output14818 output10323) := by
  unfold output14819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14819_skip : Flapjack.WordAlloc.isSkip output14819 = false := by
  rw [output14819_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14819 input10322)).val
theorem input14820_def : input14820 = (.seq input14819 input10322) := by
  unfold input14820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14819 output10322)).val
theorem output14820_def : output14820 = (.seq output14819 output10322) := by
  unfold output14820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14820_skip : Flapjack.WordAlloc.isSkip output14820 = false := by
  rw [output14820_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14820 input10319)).val
theorem input14821_def : input14821 = (.seq input14820 input10319) := by
  unfold input14821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14820 output10319)).val
theorem output14821_def : output14821 = (.seq output14820 output10319) := by
  unfold output14821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14821_skip : Flapjack.WordAlloc.isSkip output14821 = false := by
  rw [output14821_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14821 input10310)).val
theorem input14822_def : input14822 = (.seq input14821 input10310) := by
  unfold input14822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14821)).val
theorem output14822_def : output14822 = (output14821) := by
  unfold output14822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14822_skip : Flapjack.WordAlloc.isSkip output14822 = false := by
  rw [output14822_def]
  exact output14821_skip


@[irreducible, cbv_opaque] def input14823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14822 input10309)).val
theorem input14823_def : input14823 = (.seq input14822 input10309) := by
  unfold input14823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14822 output10309)).val
theorem output14823_def : output14823 = (.seq output14822 output10309) := by
  unfold output14823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14823_skip : Flapjack.WordAlloc.isSkip output14823 = false := by
  rw [output14823_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14823 input10308)).val
theorem input14824_def : input14824 = (.seq input14823 input10308) := by
  unfold input14824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14823 output10308)).val
theorem output14824_def : output14824 = (.seq output14823 output10308) := by
  unfold output14824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14824_skip : Flapjack.WordAlloc.isSkip output14824 = false := by
  rw [output14824_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14824 input10305)).val
theorem input14825_def : input14825 = (.seq input14824 input10305) := by
  unfold input14825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14824 output10305)).val
theorem output14825_def : output14825 = (.seq output14824 output10305) := by
  unfold output14825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14825_skip : Flapjack.WordAlloc.isSkip output14825 = false := by
  rw [output14825_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14825 input10296)).val
theorem input14826_def : input14826 = (.seq input14825 input10296) := by
  unfold input14826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14825)).val
theorem output14826_def : output14826 = (output14825) := by
  unfold output14826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14826_skip : Flapjack.WordAlloc.isSkip output14826 = false := by
  rw [output14826_def]
  exact output14825_skip


@[irreducible, cbv_opaque] def input14827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14826 input10295)).val
theorem input14827_def : input14827 = (.seq input14826 input10295) := by
  unfold input14827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14826 output10295)).val
theorem output14827_def : output14827 = (.seq output14826 output10295) := by
  unfold output14827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14827_skip : Flapjack.WordAlloc.isSkip output14827 = false := by
  rw [output14827_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14827 input10294)).val
theorem input14828_def : input14828 = (.seq input14827 input10294) := by
  unfold input14828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14827 output10294)).val
theorem output14828_def : output14828 = (.seq output14827 output10294) := by
  unfold output14828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14828_skip : Flapjack.WordAlloc.isSkip output14828 = false := by
  rw [output14828_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14828 input10291)).val
theorem input14829_def : input14829 = (.seq input14828 input10291) := by
  unfold input14829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14828 output10291)).val
theorem output14829_def : output14829 = (.seq output14828 output10291) := by
  unfold output14829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14829_skip : Flapjack.WordAlloc.isSkip output14829 = false := by
  rw [output14829_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14829 input10282)).val
theorem input14830_def : input14830 = (.seq input14829 input10282) := by
  unfold input14830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14829)).val
theorem output14830_def : output14830 = (output14829) := by
  unfold output14830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14830_skip : Flapjack.WordAlloc.isSkip output14830 = false := by
  rw [output14830_def]
  exact output14829_skip


@[irreducible, cbv_opaque] def input14831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14830 input10281)).val
theorem input14831_def : input14831 = (.seq input14830 input10281) := by
  unfold input14831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14830 output10281)).val
theorem output14831_def : output14831 = (.seq output14830 output10281) := by
  unfold output14831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14831_skip : Flapjack.WordAlloc.isSkip output14831 = false := by
  rw [output14831_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14831 input10280)).val
theorem input14832_def : input14832 = (.seq input14831 input10280) := by
  unfold input14832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14831 output10280)).val
theorem output14832_def : output14832 = (.seq output14831 output10280) := by
  unfold output14832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14832_skip : Flapjack.WordAlloc.isSkip output14832 = false := by
  rw [output14832_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14832 input10277)).val
theorem input14833_def : input14833 = (.seq input14832 input10277) := by
  unfold input14833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14832 output10277)).val
theorem output14833_def : output14833 = (.seq output14832 output10277) := by
  unfold output14833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14833_skip : Flapjack.WordAlloc.isSkip output14833 = false := by
  rw [output14833_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14833 input10268)).val
theorem input14834_def : input14834 = (.seq input14833 input10268) := by
  unfold input14834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14833)).val
theorem output14834_def : output14834 = (output14833) := by
  unfold output14834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14834_skip : Flapjack.WordAlloc.isSkip output14834 = false := by
  rw [output14834_def]
  exact output14833_skip


@[irreducible, cbv_opaque] def input14835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14834 input10267)).val
theorem input14835_def : input14835 = (.seq input14834 input10267) := by
  unfold input14835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14834 output10267)).val
theorem output14835_def : output14835 = (.seq output14834 output10267) := by
  unfold output14835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14835_skip : Flapjack.WordAlloc.isSkip output14835 = false := by
  rw [output14835_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14835 input10266)).val
theorem input14836_def : input14836 = (.seq input14835 input10266) := by
  unfold input14836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14835 output10266)).val
theorem output14836_def : output14836 = (.seq output14835 output10266) := by
  unfold output14836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14836_skip : Flapjack.WordAlloc.isSkip output14836 = false := by
  rw [output14836_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14836 input10263)).val
theorem input14837_def : input14837 = (.seq input14836 input10263) := by
  unfold input14837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14836 output10263)).val
theorem output14837_def : output14837 = (.seq output14836 output10263) := by
  unfold output14837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14837_skip : Flapjack.WordAlloc.isSkip output14837 = false := by
  rw [output14837_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14837 input10254)).val
theorem input14838_def : input14838 = (.seq input14837 input10254) := by
  unfold input14838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14837)).val
theorem output14838_def : output14838 = (output14837) := by
  unfold output14838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14838_skip : Flapjack.WordAlloc.isSkip output14838 = false := by
  rw [output14838_def]
  exact output14837_skip


@[irreducible, cbv_opaque] def input14839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14838 input10253)).val
theorem input14839_def : input14839 = (.seq input14838 input10253) := by
  unfold input14839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14838 output10253)).val
theorem output14839_def : output14839 = (.seq output14838 output10253) := by
  unfold output14839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14839_skip : Flapjack.WordAlloc.isSkip output14839 = false := by
  rw [output14839_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14839 input10252)).val
theorem input14840_def : input14840 = (.seq input14839 input10252) := by
  unfold input14840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14839 output10252)).val
theorem output14840_def : output14840 = (.seq output14839 output10252) := by
  unfold output14840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14840_skip : Flapjack.WordAlloc.isSkip output14840 = false := by
  rw [output14840_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14840 input10249)).val
theorem input14841_def : input14841 = (.seq input14840 input10249) := by
  unfold input14841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14840 output10249)).val
theorem output14841_def : output14841 = (.seq output14840 output10249) := by
  unfold output14841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14841_skip : Flapjack.WordAlloc.isSkip output14841 = false := by
  rw [output14841_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14841 input10240)).val
theorem input14842_def : input14842 = (.seq input14841 input10240) := by
  unfold input14842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14841)).val
theorem output14842_def : output14842 = (output14841) := by
  unfold output14842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14842_skip : Flapjack.WordAlloc.isSkip output14842 = false := by
  rw [output14842_def]
  exact output14841_skip


@[irreducible, cbv_opaque] def input14843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14842 input10239)).val
theorem input14843_def : input14843 = (.seq input14842 input10239) := by
  unfold input14843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14842 output10239)).val
theorem output14843_def : output14843 = (.seq output14842 output10239) := by
  unfold output14843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14843_skip : Flapjack.WordAlloc.isSkip output14843 = false := by
  rw [output14843_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14843 input10238)).val
theorem input14844_def : input14844 = (.seq input14843 input10238) := by
  unfold input14844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14843 output10238)).val
theorem output14844_def : output14844 = (.seq output14843 output10238) := by
  unfold output14844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14844_skip : Flapjack.WordAlloc.isSkip output14844 = false := by
  rw [output14844_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14844 input10235)).val
theorem input14845_def : input14845 = (.seq input14844 input10235) := by
  unfold input14845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14844 output10235)).val
theorem output14845_def : output14845 = (.seq output14844 output10235) := by
  unfold output14845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14845_skip : Flapjack.WordAlloc.isSkip output14845 = false := by
  rw [output14845_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input14846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14845 input10226)).val
theorem input14846_def : input14846 = (.seq input14845 input10226) := by
  unfold input14846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14845)).val
theorem output14846_def : output14846 = (output14845) := by
  unfold output14846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14846_skip : Flapjack.WordAlloc.isSkip output14846 = false := by
  rw [output14846_def]
  exact output14845_skip


@[irreducible, cbv_opaque] def input14847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14846 input10225)).val
theorem input14847_def : input14847 = (.seq input14846 input10225) := by
  unfold input14847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14846 output10225)).val
theorem output14847_def : output14847 = (.seq output14846 output10225) := by
  unfold output14847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14847_skip : Flapjack.WordAlloc.isSkip output14847 = false := by
  rw [output14847_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages713.Parallel
