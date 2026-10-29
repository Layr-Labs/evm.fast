import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk060
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713.Parallel
@[irreducible, cbv_opaque] def input15616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15615 input7158)).val
theorem input15616_def : input15616 = (.seq input15615 input7158) := by
  unfold input15616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15615 output7158)).val
theorem output15616_def : output15616 = (.seq output15615 output7158) := by
  unfold output15616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15616_skip : Flapjack.WordAlloc.isSkip output15616 = false := by
  rw [output15616_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15616 input7155)).val
theorem input15617_def : input15617 = (.seq input15616 input7155) := by
  unfold input15617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15616 output7155)).val
theorem output15617_def : output15617 = (.seq output15616 output7155) := by
  unfold output15617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15617_skip : Flapjack.WordAlloc.isSkip output15617 = false := by
  rw [output15617_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15617 input7144)).val
theorem input15618_def : input15618 = (.seq input15617 input7144) := by
  unfold input15618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15617)).val
theorem output15618_def : output15618 = (output15617) := by
  unfold output15618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15618_skip : Flapjack.WordAlloc.isSkip output15618 = false := by
  rw [output15618_def]
  exact output15617_skip


@[irreducible, cbv_opaque] def input15619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15618 input7143)).val
theorem input15619_def : input15619 = (.seq input15618 input7143) := by
  unfold input15619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15618 output7143)).val
theorem output15619_def : output15619 = (.seq output15618 output7143) := by
  unfold output15619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15619_skip : Flapjack.WordAlloc.isSkip output15619 = false := by
  rw [output15619_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15619 input7142)).val
theorem input15620_def : input15620 = (.seq input15619 input7142) := by
  unfold input15620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15619 output7142)).val
theorem output15620_def : output15620 = (.seq output15619 output7142) := by
  unfold output15620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15620_skip : Flapjack.WordAlloc.isSkip output15620 = false := by
  rw [output15620_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15620 input7139)).val
theorem input15621_def : input15621 = (.seq input15620 input7139) := by
  unfold input15621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15620 output7139)).val
theorem output15621_def : output15621 = (.seq output15620 output7139) := by
  unfold output15621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15621_skip : Flapjack.WordAlloc.isSkip output15621 = false := by
  rw [output15621_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15621 input7128)).val
theorem input15622_def : input15622 = (.seq input15621 input7128) := by
  unfold input15622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15621)).val
theorem output15622_def : output15622 = (output15621) := by
  unfold output15622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15622_skip : Flapjack.WordAlloc.isSkip output15622 = false := by
  rw [output15622_def]
  exact output15621_skip


@[irreducible, cbv_opaque] def input15623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15622 input7127)).val
theorem input15623_def : input15623 = (.seq input15622 input7127) := by
  unfold input15623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15622 output7127)).val
theorem output15623_def : output15623 = (.seq output15622 output7127) := by
  unfold output15623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15623_skip : Flapjack.WordAlloc.isSkip output15623 = false := by
  rw [output15623_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15623 input7126)).val
theorem input15624_def : input15624 = (.seq input15623 input7126) := by
  unfold input15624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15623 output7126)).val
theorem output15624_def : output15624 = (.seq output15623 output7126) := by
  unfold output15624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15624_skip : Flapjack.WordAlloc.isSkip output15624 = false := by
  rw [output15624_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15624 input7123)).val
theorem input15625_def : input15625 = (.seq input15624 input7123) := by
  unfold input15625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15624 output7123)).val
theorem output15625_def : output15625 = (.seq output15624 output7123) := by
  unfold output15625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15625_skip : Flapjack.WordAlloc.isSkip output15625 = false := by
  rw [output15625_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15625 input7112)).val
theorem input15626_def : input15626 = (.seq input15625 input7112) := by
  unfold input15626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15625)).val
theorem output15626_def : output15626 = (output15625) := by
  unfold output15626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15626_skip : Flapjack.WordAlloc.isSkip output15626 = false := by
  rw [output15626_def]
  exact output15625_skip


@[irreducible, cbv_opaque] def input15627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15626 input7111)).val
theorem input15627_def : input15627 = (.seq input15626 input7111) := by
  unfold input15627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15626 output7111)).val
theorem output15627_def : output15627 = (.seq output15626 output7111) := by
  unfold output15627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15627_skip : Flapjack.WordAlloc.isSkip output15627 = false := by
  rw [output15627_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15627 input7110)).val
theorem input15628_def : input15628 = (.seq input15627 input7110) := by
  unfold input15628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15627 output7110)).val
theorem output15628_def : output15628 = (.seq output15627 output7110) := by
  unfold output15628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15628_skip : Flapjack.WordAlloc.isSkip output15628 = false := by
  rw [output15628_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15628 input7107)).val
theorem input15629_def : input15629 = (.seq input15628 input7107) := by
  unfold input15629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15628 output7107)).val
theorem output15629_def : output15629 = (.seq output15628 output7107) := by
  unfold output15629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15629_skip : Flapjack.WordAlloc.isSkip output15629 = false := by
  rw [output15629_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15629 input7096)).val
theorem input15630_def : input15630 = (.seq input15629 input7096) := by
  unfold input15630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15629)).val
theorem output15630_def : output15630 = (output15629) := by
  unfold output15630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15630_skip : Flapjack.WordAlloc.isSkip output15630 = false := by
  rw [output15630_def]
  exact output15629_skip


@[irreducible, cbv_opaque] def input15631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15630 input7095)).val
theorem input15631_def : input15631 = (.seq input15630 input7095) := by
  unfold input15631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15630 output7095)).val
theorem output15631_def : output15631 = (.seq output15630 output7095) := by
  unfold output15631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15631_skip : Flapjack.WordAlloc.isSkip output15631 = false := by
  rw [output15631_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15631 input7094)).val
theorem input15632_def : input15632 = (.seq input15631 input7094) := by
  unfold input15632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15631 output7094)).val
theorem output15632_def : output15632 = (.seq output15631 output7094) := by
  unfold output15632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15632_skip : Flapjack.WordAlloc.isSkip output15632 = false := by
  rw [output15632_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15632 input7091)).val
theorem input15633_def : input15633 = (.seq input15632 input7091) := by
  unfold input15633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15632 output7091)).val
theorem output15633_def : output15633 = (.seq output15632 output7091) := by
  unfold output15633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15633_skip : Flapjack.WordAlloc.isSkip output15633 = false := by
  rw [output15633_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15633 input7080)).val
theorem input15634_def : input15634 = (.seq input15633 input7080) := by
  unfold input15634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15633)).val
theorem output15634_def : output15634 = (output15633) := by
  unfold output15634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15634_skip : Flapjack.WordAlloc.isSkip output15634 = false := by
  rw [output15634_def]
  exact output15633_skip


@[irreducible, cbv_opaque] def input15635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15634 input7079)).val
theorem input15635_def : input15635 = (.seq input15634 input7079) := by
  unfold input15635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15634 output7079)).val
theorem output15635_def : output15635 = (.seq output15634 output7079) := by
  unfold output15635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15635_skip : Flapjack.WordAlloc.isSkip output15635 = false := by
  rw [output15635_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15635 input7078)).val
theorem input15636_def : input15636 = (.seq input15635 input7078) := by
  unfold input15636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15635 output7078)).val
theorem output15636_def : output15636 = (.seq output15635 output7078) := by
  unfold output15636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15636_skip : Flapjack.WordAlloc.isSkip output15636 = false := by
  rw [output15636_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15636 input7075)).val
theorem input15637_def : input15637 = (.seq input15636 input7075) := by
  unfold input15637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15636 output7075)).val
theorem output15637_def : output15637 = (.seq output15636 output7075) := by
  unfold output15637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15637_skip : Flapjack.WordAlloc.isSkip output15637 = false := by
  rw [output15637_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15637 input7064)).val
theorem input15638_def : input15638 = (.seq input15637 input7064) := by
  unfold input15638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15637)).val
theorem output15638_def : output15638 = (output15637) := by
  unfold output15638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15638_skip : Flapjack.WordAlloc.isSkip output15638 = false := by
  rw [output15638_def]
  exact output15637_skip


@[irreducible, cbv_opaque] def input15639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15638 input7063)).val
theorem input15639_def : input15639 = (.seq input15638 input7063) := by
  unfold input15639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15638 output7063)).val
theorem output15639_def : output15639 = (.seq output15638 output7063) := by
  unfold output15639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15639_skip : Flapjack.WordAlloc.isSkip output15639 = false := by
  rw [output15639_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15639 input7062)).val
theorem input15640_def : input15640 = (.seq input15639 input7062) := by
  unfold input15640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15639 output7062)).val
theorem output15640_def : output15640 = (.seq output15639 output7062) := by
  unfold output15640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15640_skip : Flapjack.WordAlloc.isSkip output15640 = false := by
  rw [output15640_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15640 input7059)).val
theorem input15641_def : input15641 = (.seq input15640 input7059) := by
  unfold input15641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15640 output7059)).val
theorem output15641_def : output15641 = (.seq output15640 output7059) := by
  unfold output15641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15641_skip : Flapjack.WordAlloc.isSkip output15641 = false := by
  rw [output15641_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15641 input7048)).val
theorem input15642_def : input15642 = (.seq input15641 input7048) := by
  unfold input15642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15641)).val
theorem output15642_def : output15642 = (output15641) := by
  unfold output15642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15642_skip : Flapjack.WordAlloc.isSkip output15642 = false := by
  rw [output15642_def]
  exact output15641_skip


@[irreducible, cbv_opaque] def input15643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15642 input7047)).val
theorem input15643_def : input15643 = (.seq input15642 input7047) := by
  unfold input15643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15642 output7047)).val
theorem output15643_def : output15643 = (.seq output15642 output7047) := by
  unfold output15643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15643_skip : Flapjack.WordAlloc.isSkip output15643 = false := by
  rw [output15643_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15643 input7046)).val
theorem input15644_def : input15644 = (.seq input15643 input7046) := by
  unfold input15644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15643 output7046)).val
theorem output15644_def : output15644 = (.seq output15643 output7046) := by
  unfold output15644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15644_skip : Flapjack.WordAlloc.isSkip output15644 = false := by
  rw [output15644_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15644 input7043)).val
theorem input15645_def : input15645 = (.seq input15644 input7043) := by
  unfold input15645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15644 output7043)).val
theorem output15645_def : output15645 = (.seq output15644 output7043) := by
  unfold output15645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15645_skip : Flapjack.WordAlloc.isSkip output15645 = false := by
  rw [output15645_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15645 input7032)).val
theorem input15646_def : input15646 = (.seq input15645 input7032) := by
  unfold input15646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15645)).val
theorem output15646_def : output15646 = (output15645) := by
  unfold output15646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15646_skip : Flapjack.WordAlloc.isSkip output15646 = false := by
  rw [output15646_def]
  exact output15645_skip


@[irreducible, cbv_opaque] def input15647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15646 input7031)).val
theorem input15647_def : input15647 = (.seq input15646 input7031) := by
  unfold input15647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15646 output7031)).val
theorem output15647_def : output15647 = (.seq output15646 output7031) := by
  unfold output15647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15647_skip : Flapjack.WordAlloc.isSkip output15647 = false := by
  rw [output15647_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15647 input7030)).val
theorem input15648_def : input15648 = (.seq input15647 input7030) := by
  unfold input15648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15647 output7030)).val
theorem output15648_def : output15648 = (.seq output15647 output7030) := by
  unfold output15648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15648_skip : Flapjack.WordAlloc.isSkip output15648 = false := by
  rw [output15648_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15648 input7027)).val
theorem input15649_def : input15649 = (.seq input15648 input7027) := by
  unfold input15649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15648 output7027)).val
theorem output15649_def : output15649 = (.seq output15648 output7027) := by
  unfold output15649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15649_skip : Flapjack.WordAlloc.isSkip output15649 = false := by
  rw [output15649_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15649 input7016)).val
theorem input15650_def : input15650 = (.seq input15649 input7016) := by
  unfold input15650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15649)).val
theorem output15650_def : output15650 = (output15649) := by
  unfold output15650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15650_skip : Flapjack.WordAlloc.isSkip output15650 = false := by
  rw [output15650_def]
  exact output15649_skip


@[irreducible, cbv_opaque] def input15651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15650 input7015)).val
theorem input15651_def : input15651 = (.seq input15650 input7015) := by
  unfold input15651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15650 output7015)).val
theorem output15651_def : output15651 = (.seq output15650 output7015) := by
  unfold output15651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15651_skip : Flapjack.WordAlloc.isSkip output15651 = false := by
  rw [output15651_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15651 input7014)).val
theorem input15652_def : input15652 = (.seq input15651 input7014) := by
  unfold input15652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15651 output7014)).val
theorem output15652_def : output15652 = (.seq output15651 output7014) := by
  unfold output15652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15652_skip : Flapjack.WordAlloc.isSkip output15652 = false := by
  rw [output15652_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15652 input7011)).val
theorem input15653_def : input15653 = (.seq input15652 input7011) := by
  unfold input15653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15652 output7011)).val
theorem output15653_def : output15653 = (.seq output15652 output7011) := by
  unfold output15653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15653_skip : Flapjack.WordAlloc.isSkip output15653 = false := by
  rw [output15653_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15653 input7000)).val
theorem input15654_def : input15654 = (.seq input15653 input7000) := by
  unfold input15654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15653)).val
theorem output15654_def : output15654 = (output15653) := by
  unfold output15654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15654_skip : Flapjack.WordAlloc.isSkip output15654 = false := by
  rw [output15654_def]
  exact output15653_skip


@[irreducible, cbv_opaque] def input15655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15654 input6999)).val
theorem input15655_def : input15655 = (.seq input15654 input6999) := by
  unfold input15655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15654 output6999)).val
theorem output15655_def : output15655 = (.seq output15654 output6999) := by
  unfold output15655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15655_skip : Flapjack.WordAlloc.isSkip output15655 = false := by
  rw [output15655_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15655 input6998)).val
theorem input15656_def : input15656 = (.seq input15655 input6998) := by
  unfold input15656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15655 output6998)).val
theorem output15656_def : output15656 = (.seq output15655 output6998) := by
  unfold output15656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15656_skip : Flapjack.WordAlloc.isSkip output15656 = false := by
  rw [output15656_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15656 input6995)).val
theorem input15657_def : input15657 = (.seq input15656 input6995) := by
  unfold input15657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15656 output6995)).val
theorem output15657_def : output15657 = (.seq output15656 output6995) := by
  unfold output15657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15657_skip : Flapjack.WordAlloc.isSkip output15657 = false := by
  rw [output15657_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15657 input6984)).val
theorem input15658_def : input15658 = (.seq input15657 input6984) := by
  unfold input15658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15657)).val
theorem output15658_def : output15658 = (output15657) := by
  unfold output15658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15658_skip : Flapjack.WordAlloc.isSkip output15658 = false := by
  rw [output15658_def]
  exact output15657_skip


@[irreducible, cbv_opaque] def input15659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15658 input6983)).val
theorem input15659_def : input15659 = (.seq input15658 input6983) := by
  unfold input15659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15658 output6983)).val
theorem output15659_def : output15659 = (.seq output15658 output6983) := by
  unfold output15659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15659_skip : Flapjack.WordAlloc.isSkip output15659 = false := by
  rw [output15659_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15659 input6982)).val
theorem input15660_def : input15660 = (.seq input15659 input6982) := by
  unfold input15660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15659 output6982)).val
theorem output15660_def : output15660 = (.seq output15659 output6982) := by
  unfold output15660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15660_skip : Flapjack.WordAlloc.isSkip output15660 = false := by
  rw [output15660_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15660 input6979)).val
theorem input15661_def : input15661 = (.seq input15660 input6979) := by
  unfold input15661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15660 output6979)).val
theorem output15661_def : output15661 = (.seq output15660 output6979) := by
  unfold output15661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15661_skip : Flapjack.WordAlloc.isSkip output15661 = false := by
  rw [output15661_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15661 input6968)).val
theorem input15662_def : input15662 = (.seq input15661 input6968) := by
  unfold input15662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15661)).val
theorem output15662_def : output15662 = (output15661) := by
  unfold output15662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15662_skip : Flapjack.WordAlloc.isSkip output15662 = false := by
  rw [output15662_def]
  exact output15661_skip


@[irreducible, cbv_opaque] def input15663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15662 input6967)).val
theorem input15663_def : input15663 = (.seq input15662 input6967) := by
  unfold input15663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15662 output6967)).val
theorem output15663_def : output15663 = (.seq output15662 output6967) := by
  unfold output15663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15663_skip : Flapjack.WordAlloc.isSkip output15663 = false := by
  rw [output15663_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15663 input6966)).val
theorem input15664_def : input15664 = (.seq input15663 input6966) := by
  unfold input15664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15663 output6966)).val
theorem output15664_def : output15664 = (.seq output15663 output6966) := by
  unfold output15664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15664_skip : Flapjack.WordAlloc.isSkip output15664 = false := by
  rw [output15664_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15664 input6963)).val
theorem input15665_def : input15665 = (.seq input15664 input6963) := by
  unfold input15665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15664 output6963)).val
theorem output15665_def : output15665 = (.seq output15664 output6963) := by
  unfold output15665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15665_skip : Flapjack.WordAlloc.isSkip output15665 = false := by
  rw [output15665_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15665 input6952)).val
theorem input15666_def : input15666 = (.seq input15665 input6952) := by
  unfold input15666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15665)).val
theorem output15666_def : output15666 = (output15665) := by
  unfold output15666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15666_skip : Flapjack.WordAlloc.isSkip output15666 = false := by
  rw [output15666_def]
  exact output15665_skip


@[irreducible, cbv_opaque] def input15667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15666 input6951)).val
theorem input15667_def : input15667 = (.seq input15666 input6951) := by
  unfold input15667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15666 output6951)).val
theorem output15667_def : output15667 = (.seq output15666 output6951) := by
  unfold output15667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15667_skip : Flapjack.WordAlloc.isSkip output15667 = false := by
  rw [output15667_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15667 input6950)).val
theorem input15668_def : input15668 = (.seq input15667 input6950) := by
  unfold input15668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15667 output6950)).val
theorem output15668_def : output15668 = (.seq output15667 output6950) := by
  unfold output15668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15668_skip : Flapjack.WordAlloc.isSkip output15668 = false := by
  rw [output15668_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15668 input6947)).val
theorem input15669_def : input15669 = (.seq input15668 input6947) := by
  unfold input15669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15668 output6947)).val
theorem output15669_def : output15669 = (.seq output15668 output6947) := by
  unfold output15669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15669_skip : Flapjack.WordAlloc.isSkip output15669 = false := by
  rw [output15669_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15669 input6936)).val
theorem input15670_def : input15670 = (.seq input15669 input6936) := by
  unfold input15670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15669)).val
theorem output15670_def : output15670 = (output15669) := by
  unfold output15670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15670_skip : Flapjack.WordAlloc.isSkip output15670 = false := by
  rw [output15670_def]
  exact output15669_skip


@[irreducible, cbv_opaque] def input15671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15670 input6935)).val
theorem input15671_def : input15671 = (.seq input15670 input6935) := by
  unfold input15671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15670 output6935)).val
theorem output15671_def : output15671 = (.seq output15670 output6935) := by
  unfold output15671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15671_skip : Flapjack.WordAlloc.isSkip output15671 = false := by
  rw [output15671_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15671 input6934)).val
theorem input15672_def : input15672 = (.seq input15671 input6934) := by
  unfold input15672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15671 output6934)).val
theorem output15672_def : output15672 = (.seq output15671 output6934) := by
  unfold output15672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15672_skip : Flapjack.WordAlloc.isSkip output15672 = false := by
  rw [output15672_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15672 input6931)).val
theorem input15673_def : input15673 = (.seq input15672 input6931) := by
  unfold input15673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15672 output6931)).val
theorem output15673_def : output15673 = (.seq output15672 output6931) := by
  unfold output15673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15673_skip : Flapjack.WordAlloc.isSkip output15673 = false := by
  rw [output15673_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15673 input6920)).val
theorem input15674_def : input15674 = (.seq input15673 input6920) := by
  unfold input15674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15673)).val
theorem output15674_def : output15674 = (output15673) := by
  unfold output15674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15674_skip : Flapjack.WordAlloc.isSkip output15674 = false := by
  rw [output15674_def]
  exact output15673_skip


@[irreducible, cbv_opaque] def input15675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15674 input6919)).val
theorem input15675_def : input15675 = (.seq input15674 input6919) := by
  unfold input15675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15674 output6919)).val
theorem output15675_def : output15675 = (.seq output15674 output6919) := by
  unfold output15675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15675_skip : Flapjack.WordAlloc.isSkip output15675 = false := by
  rw [output15675_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15675 input6918)).val
theorem input15676_def : input15676 = (.seq input15675 input6918) := by
  unfold input15676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15675 output6918)).val
theorem output15676_def : output15676 = (.seq output15675 output6918) := by
  unfold output15676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15676_skip : Flapjack.WordAlloc.isSkip output15676 = false := by
  rw [output15676_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15676 input6915)).val
theorem input15677_def : input15677 = (.seq input15676 input6915) := by
  unfold input15677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15676 output6915)).val
theorem output15677_def : output15677 = (.seq output15676 output6915) := by
  unfold output15677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15677_skip : Flapjack.WordAlloc.isSkip output15677 = false := by
  rw [output15677_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15677 input6904)).val
theorem input15678_def : input15678 = (.seq input15677 input6904) := by
  unfold input15678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15677)).val
theorem output15678_def : output15678 = (output15677) := by
  unfold output15678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15678_skip : Flapjack.WordAlloc.isSkip output15678 = false := by
  rw [output15678_def]
  exact output15677_skip


@[irreducible, cbv_opaque] def input15679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15678 input6903)).val
theorem input15679_def : input15679 = (.seq input15678 input6903) := by
  unfold input15679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15678 output6903)).val
theorem output15679_def : output15679 = (.seq output15678 output6903) := by
  unfold output15679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15679_skip : Flapjack.WordAlloc.isSkip output15679 = false := by
  rw [output15679_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15679 input6902)).val
theorem input15680_def : input15680 = (.seq input15679 input6902) := by
  unfold input15680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15679 output6902)).val
theorem output15680_def : output15680 = (.seq output15679 output6902) := by
  unfold output15680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15680_skip : Flapjack.WordAlloc.isSkip output15680 = false := by
  rw [output15680_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15680 input6899)).val
theorem input15681_def : input15681 = (.seq input15680 input6899) := by
  unfold input15681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15680 output6899)).val
theorem output15681_def : output15681 = (.seq output15680 output6899) := by
  unfold output15681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15681_skip : Flapjack.WordAlloc.isSkip output15681 = false := by
  rw [output15681_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15681 input6888)).val
theorem input15682_def : input15682 = (.seq input15681 input6888) := by
  unfold input15682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15681)).val
theorem output15682_def : output15682 = (output15681) := by
  unfold output15682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15682_skip : Flapjack.WordAlloc.isSkip output15682 = false := by
  rw [output15682_def]
  exact output15681_skip


@[irreducible, cbv_opaque] def input15683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15682 input6887)).val
theorem input15683_def : input15683 = (.seq input15682 input6887) := by
  unfold input15683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15682 output6887)).val
theorem output15683_def : output15683 = (.seq output15682 output6887) := by
  unfold output15683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15683_skip : Flapjack.WordAlloc.isSkip output15683 = false := by
  rw [output15683_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15683 input6886)).val
theorem input15684_def : input15684 = (.seq input15683 input6886) := by
  unfold input15684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15683 output6886)).val
theorem output15684_def : output15684 = (.seq output15683 output6886) := by
  unfold output15684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15684_skip : Flapjack.WordAlloc.isSkip output15684 = false := by
  rw [output15684_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15684 input6883)).val
theorem input15685_def : input15685 = (.seq input15684 input6883) := by
  unfold input15685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15684 output6883)).val
theorem output15685_def : output15685 = (.seq output15684 output6883) := by
  unfold output15685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15685_skip : Flapjack.WordAlloc.isSkip output15685 = false := by
  rw [output15685_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15685 input6872)).val
theorem input15686_def : input15686 = (.seq input15685 input6872) := by
  unfold input15686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15685)).val
theorem output15686_def : output15686 = (output15685) := by
  unfold output15686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15686_skip : Flapjack.WordAlloc.isSkip output15686 = false := by
  rw [output15686_def]
  exact output15685_skip


@[irreducible, cbv_opaque] def input15687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15686 input6871)).val
theorem input15687_def : input15687 = (.seq input15686 input6871) := by
  unfold input15687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15686 output6871)).val
theorem output15687_def : output15687 = (.seq output15686 output6871) := by
  unfold output15687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15687_skip : Flapjack.WordAlloc.isSkip output15687 = false := by
  rw [output15687_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15687 input6870)).val
theorem input15688_def : input15688 = (.seq input15687 input6870) := by
  unfold input15688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15687 output6870)).val
theorem output15688_def : output15688 = (.seq output15687 output6870) := by
  unfold output15688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15688_skip : Flapjack.WordAlloc.isSkip output15688 = false := by
  rw [output15688_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15688 input6867)).val
theorem input15689_def : input15689 = (.seq input15688 input6867) := by
  unfold input15689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15688 output6867)).val
theorem output15689_def : output15689 = (.seq output15688 output6867) := by
  unfold output15689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15689_skip : Flapjack.WordAlloc.isSkip output15689 = false := by
  rw [output15689_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15689 input6856)).val
theorem input15690_def : input15690 = (.seq input15689 input6856) := by
  unfold input15690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15689)).val
theorem output15690_def : output15690 = (output15689) := by
  unfold output15690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15690_skip : Flapjack.WordAlloc.isSkip output15690 = false := by
  rw [output15690_def]
  exact output15689_skip


@[irreducible, cbv_opaque] def input15691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15690 input6855)).val
theorem input15691_def : input15691 = (.seq input15690 input6855) := by
  unfold input15691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15690 output6855)).val
theorem output15691_def : output15691 = (.seq output15690 output6855) := by
  unfold output15691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15691_skip : Flapjack.WordAlloc.isSkip output15691 = false := by
  rw [output15691_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15691 input6854)).val
theorem input15692_def : input15692 = (.seq input15691 input6854) := by
  unfold input15692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15691 output6854)).val
theorem output15692_def : output15692 = (.seq output15691 output6854) := by
  unfold output15692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15692_skip : Flapjack.WordAlloc.isSkip output15692 = false := by
  rw [output15692_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15692 input6851)).val
theorem input15693_def : input15693 = (.seq input15692 input6851) := by
  unfold input15693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15692 output6851)).val
theorem output15693_def : output15693 = (.seq output15692 output6851) := by
  unfold output15693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15693_skip : Flapjack.WordAlloc.isSkip output15693 = false := by
  rw [output15693_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15693 input6840)).val
theorem input15694_def : input15694 = (.seq input15693 input6840) := by
  unfold input15694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15693)).val
theorem output15694_def : output15694 = (output15693) := by
  unfold output15694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15694_skip : Flapjack.WordAlloc.isSkip output15694 = false := by
  rw [output15694_def]
  exact output15693_skip


@[irreducible, cbv_opaque] def input15695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15694 input6839)).val
theorem input15695_def : input15695 = (.seq input15694 input6839) := by
  unfold input15695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15694 output6839)).val
theorem output15695_def : output15695 = (.seq output15694 output6839) := by
  unfold output15695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15695_skip : Flapjack.WordAlloc.isSkip output15695 = false := by
  rw [output15695_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15695 input6838)).val
theorem input15696_def : input15696 = (.seq input15695 input6838) := by
  unfold input15696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15695 output6838)).val
theorem output15696_def : output15696 = (.seq output15695 output6838) := by
  unfold output15696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15696_skip : Flapjack.WordAlloc.isSkip output15696 = false := by
  rw [output15696_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15696 input6835)).val
theorem input15697_def : input15697 = (.seq input15696 input6835) := by
  unfold input15697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15696 output6835)).val
theorem output15697_def : output15697 = (.seq output15696 output6835) := by
  unfold output15697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15697_skip : Flapjack.WordAlloc.isSkip output15697 = false := by
  rw [output15697_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15697 input6824)).val
theorem input15698_def : input15698 = (.seq input15697 input6824) := by
  unfold input15698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15697)).val
theorem output15698_def : output15698 = (output15697) := by
  unfold output15698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15698_skip : Flapjack.WordAlloc.isSkip output15698 = false := by
  rw [output15698_def]
  exact output15697_skip


@[irreducible, cbv_opaque] def input15699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15698 input6823)).val
theorem input15699_def : input15699 = (.seq input15698 input6823) := by
  unfold input15699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15698 output6823)).val
theorem output15699_def : output15699 = (.seq output15698 output6823) := by
  unfold output15699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15699_skip : Flapjack.WordAlloc.isSkip output15699 = false := by
  rw [output15699_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15699 input6822)).val
theorem input15700_def : input15700 = (.seq input15699 input6822) := by
  unfold input15700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15699 output6822)).val
theorem output15700_def : output15700 = (.seq output15699 output6822) := by
  unfold output15700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15700_skip : Flapjack.WordAlloc.isSkip output15700 = false := by
  rw [output15700_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15700 input6819)).val
theorem input15701_def : input15701 = (.seq input15700 input6819) := by
  unfold input15701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15700 output6819)).val
theorem output15701_def : output15701 = (.seq output15700 output6819) := by
  unfold output15701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15701_skip : Flapjack.WordAlloc.isSkip output15701 = false := by
  rw [output15701_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15701 input6808)).val
theorem input15702_def : input15702 = (.seq input15701 input6808) := by
  unfold input15702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15701)).val
theorem output15702_def : output15702 = (output15701) := by
  unfold output15702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15702_skip : Flapjack.WordAlloc.isSkip output15702 = false := by
  rw [output15702_def]
  exact output15701_skip


@[irreducible, cbv_opaque] def input15703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15702 input6807)).val
theorem input15703_def : input15703 = (.seq input15702 input6807) := by
  unfold input15703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15702 output6807)).val
theorem output15703_def : output15703 = (.seq output15702 output6807) := by
  unfold output15703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15703_skip : Flapjack.WordAlloc.isSkip output15703 = false := by
  rw [output15703_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15703 input6806)).val
theorem input15704_def : input15704 = (.seq input15703 input6806) := by
  unfold input15704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15703 output6806)).val
theorem output15704_def : output15704 = (.seq output15703 output6806) := by
  unfold output15704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15704_skip : Flapjack.WordAlloc.isSkip output15704 = false := by
  rw [output15704_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15704 input6803)).val
theorem input15705_def : input15705 = (.seq input15704 input6803) := by
  unfold input15705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15704 output6803)).val
theorem output15705_def : output15705 = (.seq output15704 output6803) := by
  unfold output15705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15705_skip : Flapjack.WordAlloc.isSkip output15705 = false := by
  rw [output15705_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15705 input6792)).val
theorem input15706_def : input15706 = (.seq input15705 input6792) := by
  unfold input15706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15705)).val
theorem output15706_def : output15706 = (output15705) := by
  unfold output15706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15706_skip : Flapjack.WordAlloc.isSkip output15706 = false := by
  rw [output15706_def]
  exact output15705_skip


@[irreducible, cbv_opaque] def input15707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15706 input6791)).val
theorem input15707_def : input15707 = (.seq input15706 input6791) := by
  unfold input15707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15706 output6791)).val
theorem output15707_def : output15707 = (.seq output15706 output6791) := by
  unfold output15707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15707_skip : Flapjack.WordAlloc.isSkip output15707 = false := by
  rw [output15707_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15707 input6790)).val
theorem input15708_def : input15708 = (.seq input15707 input6790) := by
  unfold input15708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15707 output6790)).val
theorem output15708_def : output15708 = (.seq output15707 output6790) := by
  unfold output15708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15708_skip : Flapjack.WordAlloc.isSkip output15708 = false := by
  rw [output15708_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15708 input6787)).val
theorem input15709_def : input15709 = (.seq input15708 input6787) := by
  unfold input15709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15708 output6787)).val
theorem output15709_def : output15709 = (.seq output15708 output6787) := by
  unfold output15709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15709_skip : Flapjack.WordAlloc.isSkip output15709 = false := by
  rw [output15709_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15709 input6776)).val
theorem input15710_def : input15710 = (.seq input15709 input6776) := by
  unfold input15710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15709)).val
theorem output15710_def : output15710 = (output15709) := by
  unfold output15710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15710_skip : Flapjack.WordAlloc.isSkip output15710 = false := by
  rw [output15710_def]
  exact output15709_skip


@[irreducible, cbv_opaque] def input15711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15710 input6775)).val
theorem input15711_def : input15711 = (.seq input15710 input6775) := by
  unfold input15711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15710 output6775)).val
theorem output15711_def : output15711 = (.seq output15710 output6775) := by
  unfold output15711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15711_skip : Flapjack.WordAlloc.isSkip output15711 = false := by
  rw [output15711_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15711 input6774)).val
theorem input15712_def : input15712 = (.seq input15711 input6774) := by
  unfold input15712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15711 output6774)).val
theorem output15712_def : output15712 = (.seq output15711 output6774) := by
  unfold output15712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15712_skip : Flapjack.WordAlloc.isSkip output15712 = false := by
  rw [output15712_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15712 input6771)).val
theorem input15713_def : input15713 = (.seq input15712 input6771) := by
  unfold input15713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15712 output6771)).val
theorem output15713_def : output15713 = (.seq output15712 output6771) := by
  unfold output15713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15713_skip : Flapjack.WordAlloc.isSkip output15713 = false := by
  rw [output15713_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15713 input6760)).val
theorem input15714_def : input15714 = (.seq input15713 input6760) := by
  unfold input15714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15713)).val
theorem output15714_def : output15714 = (output15713) := by
  unfold output15714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15714_skip : Flapjack.WordAlloc.isSkip output15714 = false := by
  rw [output15714_def]
  exact output15713_skip


@[irreducible, cbv_opaque] def input15715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15714 input6759)).val
theorem input15715_def : input15715 = (.seq input15714 input6759) := by
  unfold input15715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15714 output6759)).val
theorem output15715_def : output15715 = (.seq output15714 output6759) := by
  unfold output15715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15715_skip : Flapjack.WordAlloc.isSkip output15715 = false := by
  rw [output15715_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15715 input6758)).val
theorem input15716_def : input15716 = (.seq input15715 input6758) := by
  unfold input15716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15715 output6758)).val
theorem output15716_def : output15716 = (.seq output15715 output6758) := by
  unfold output15716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15716_skip : Flapjack.WordAlloc.isSkip output15716 = false := by
  rw [output15716_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15716 input6755)).val
theorem input15717_def : input15717 = (.seq input15716 input6755) := by
  unfold input15717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15716 output6755)).val
theorem output15717_def : output15717 = (.seq output15716 output6755) := by
  unfold output15717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15717_skip : Flapjack.WordAlloc.isSkip output15717 = false := by
  rw [output15717_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15717 input6744)).val
theorem input15718_def : input15718 = (.seq input15717 input6744) := by
  unfold input15718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15717)).val
theorem output15718_def : output15718 = (output15717) := by
  unfold output15718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15718_skip : Flapjack.WordAlloc.isSkip output15718 = false := by
  rw [output15718_def]
  exact output15717_skip


@[irreducible, cbv_opaque] def input15719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15718 input6743)).val
theorem input15719_def : input15719 = (.seq input15718 input6743) := by
  unfold input15719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15718 output6743)).val
theorem output15719_def : output15719 = (.seq output15718 output6743) := by
  unfold output15719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15719_skip : Flapjack.WordAlloc.isSkip output15719 = false := by
  rw [output15719_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15719 input6742)).val
theorem input15720_def : input15720 = (.seq input15719 input6742) := by
  unfold input15720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15719 output6742)).val
theorem output15720_def : output15720 = (.seq output15719 output6742) := by
  unfold output15720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15720_skip : Flapjack.WordAlloc.isSkip output15720 = false := by
  rw [output15720_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15720 input6739)).val
theorem input15721_def : input15721 = (.seq input15720 input6739) := by
  unfold input15721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15720 output6739)).val
theorem output15721_def : output15721 = (.seq output15720 output6739) := by
  unfold output15721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15721_skip : Flapjack.WordAlloc.isSkip output15721 = false := by
  rw [output15721_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15721 input6728)).val
theorem input15722_def : input15722 = (.seq input15721 input6728) := by
  unfold input15722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15721)).val
theorem output15722_def : output15722 = (output15721) := by
  unfold output15722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15722_skip : Flapjack.WordAlloc.isSkip output15722 = false := by
  rw [output15722_def]
  exact output15721_skip


@[irreducible, cbv_opaque] def input15723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15722 input6727)).val
theorem input15723_def : input15723 = (.seq input15722 input6727) := by
  unfold input15723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15722 output6727)).val
theorem output15723_def : output15723 = (.seq output15722 output6727) := by
  unfold output15723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15723_skip : Flapjack.WordAlloc.isSkip output15723 = false := by
  rw [output15723_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15723 input6726)).val
theorem input15724_def : input15724 = (.seq input15723 input6726) := by
  unfold input15724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15723 output6726)).val
theorem output15724_def : output15724 = (.seq output15723 output6726) := by
  unfold output15724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15724_skip : Flapjack.WordAlloc.isSkip output15724 = false := by
  rw [output15724_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15724 input6723)).val
theorem input15725_def : input15725 = (.seq input15724 input6723) := by
  unfold input15725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15724 output6723)).val
theorem output15725_def : output15725 = (.seq output15724 output6723) := by
  unfold output15725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15725_skip : Flapjack.WordAlloc.isSkip output15725 = false := by
  rw [output15725_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15725 input6712)).val
theorem input15726_def : input15726 = (.seq input15725 input6712) := by
  unfold input15726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15725)).val
theorem output15726_def : output15726 = (output15725) := by
  unfold output15726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15726_skip : Flapjack.WordAlloc.isSkip output15726 = false := by
  rw [output15726_def]
  exact output15725_skip


@[irreducible, cbv_opaque] def input15727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15726 input6711)).val
theorem input15727_def : input15727 = (.seq input15726 input6711) := by
  unfold input15727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15726 output6711)).val
theorem output15727_def : output15727 = (.seq output15726 output6711) := by
  unfold output15727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15727_skip : Flapjack.WordAlloc.isSkip output15727 = false := by
  rw [output15727_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15727 input6710)).val
theorem input15728_def : input15728 = (.seq input15727 input6710) := by
  unfold input15728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15727 output6710)).val
theorem output15728_def : output15728 = (.seq output15727 output6710) := by
  unfold output15728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15728_skip : Flapjack.WordAlloc.isSkip output15728 = false := by
  rw [output15728_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15728 input6707)).val
theorem input15729_def : input15729 = (.seq input15728 input6707) := by
  unfold input15729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15728 output6707)).val
theorem output15729_def : output15729 = (.seq output15728 output6707) := by
  unfold output15729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15729_skip : Flapjack.WordAlloc.isSkip output15729 = false := by
  rw [output15729_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15729 input6696)).val
theorem input15730_def : input15730 = (.seq input15729 input6696) := by
  unfold input15730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15729)).val
theorem output15730_def : output15730 = (output15729) := by
  unfold output15730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15730_skip : Flapjack.WordAlloc.isSkip output15730 = false := by
  rw [output15730_def]
  exact output15729_skip


@[irreducible, cbv_opaque] def input15731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15730 input6695)).val
theorem input15731_def : input15731 = (.seq input15730 input6695) := by
  unfold input15731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15730 output6695)).val
theorem output15731_def : output15731 = (.seq output15730 output6695) := by
  unfold output15731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15731_skip : Flapjack.WordAlloc.isSkip output15731 = false := by
  rw [output15731_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15731 input6694)).val
theorem input15732_def : input15732 = (.seq input15731 input6694) := by
  unfold input15732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15731 output6694)).val
theorem output15732_def : output15732 = (.seq output15731 output6694) := by
  unfold output15732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15732_skip : Flapjack.WordAlloc.isSkip output15732 = false := by
  rw [output15732_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15732 input6691)).val
theorem input15733_def : input15733 = (.seq input15732 input6691) := by
  unfold input15733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15732 output6691)).val
theorem output15733_def : output15733 = (.seq output15732 output6691) := by
  unfold output15733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15733_skip : Flapjack.WordAlloc.isSkip output15733 = false := by
  rw [output15733_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15733 input6680)).val
theorem input15734_def : input15734 = (.seq input15733 input6680) := by
  unfold input15734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15733)).val
theorem output15734_def : output15734 = (output15733) := by
  unfold output15734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15734_skip : Flapjack.WordAlloc.isSkip output15734 = false := by
  rw [output15734_def]
  exact output15733_skip


@[irreducible, cbv_opaque] def input15735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15734 input6679)).val
theorem input15735_def : input15735 = (.seq input15734 input6679) := by
  unfold input15735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15734 output6679)).val
theorem output15735_def : output15735 = (.seq output15734 output6679) := by
  unfold output15735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15735_skip : Flapjack.WordAlloc.isSkip output15735 = false := by
  rw [output15735_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15735 input6678)).val
theorem input15736_def : input15736 = (.seq input15735 input6678) := by
  unfold input15736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15735 output6678)).val
theorem output15736_def : output15736 = (.seq output15735 output6678) := by
  unfold output15736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15736_skip : Flapjack.WordAlloc.isSkip output15736 = false := by
  rw [output15736_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15736 input6675)).val
theorem input15737_def : input15737 = (.seq input15736 input6675) := by
  unfold input15737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15736 output6675)).val
theorem output15737_def : output15737 = (.seq output15736 output6675) := by
  unfold output15737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15737_skip : Flapjack.WordAlloc.isSkip output15737 = false := by
  rw [output15737_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15737 input6664)).val
theorem input15738_def : input15738 = (.seq input15737 input6664) := by
  unfold input15738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15737)).val
theorem output15738_def : output15738 = (output15737) := by
  unfold output15738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15738_skip : Flapjack.WordAlloc.isSkip output15738 = false := by
  rw [output15738_def]
  exact output15737_skip


@[irreducible, cbv_opaque] def input15739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15738 input6663)).val
theorem input15739_def : input15739 = (.seq input15738 input6663) := by
  unfold input15739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15738 output6663)).val
theorem output15739_def : output15739 = (.seq output15738 output6663) := by
  unfold output15739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15739_skip : Flapjack.WordAlloc.isSkip output15739 = false := by
  rw [output15739_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15739 input6662)).val
theorem input15740_def : input15740 = (.seq input15739 input6662) := by
  unfold input15740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15739 output6662)).val
theorem output15740_def : output15740 = (.seq output15739 output6662) := by
  unfold output15740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15740_skip : Flapjack.WordAlloc.isSkip output15740 = false := by
  rw [output15740_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15740 input6659)).val
theorem input15741_def : input15741 = (.seq input15740 input6659) := by
  unfold input15741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15740 output6659)).val
theorem output15741_def : output15741 = (.seq output15740 output6659) := by
  unfold output15741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15741_skip : Flapjack.WordAlloc.isSkip output15741 = false := by
  rw [output15741_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15741 input6648)).val
theorem input15742_def : input15742 = (.seq input15741 input6648) := by
  unfold input15742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15741)).val
theorem output15742_def : output15742 = (output15741) := by
  unfold output15742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15742_skip : Flapjack.WordAlloc.isSkip output15742 = false := by
  rw [output15742_def]
  exact output15741_skip


@[irreducible, cbv_opaque] def input15743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15742 input6647)).val
theorem input15743_def : input15743 = (.seq input15742 input6647) := by
  unfold input15743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15742 output6647)).val
theorem output15743_def : output15743 = (.seq output15742 output6647) := by
  unfold output15743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15743_skip : Flapjack.WordAlloc.isSkip output15743 = false := by
  rw [output15743_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15743 input6646)).val
theorem input15744_def : input15744 = (.seq input15743 input6646) := by
  unfold input15744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15743 output6646)).val
theorem output15744_def : output15744 = (.seq output15743 output6646) := by
  unfold output15744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15744_skip : Flapjack.WordAlloc.isSkip output15744 = false := by
  rw [output15744_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15744 input6643)).val
theorem input15745_def : input15745 = (.seq input15744 input6643) := by
  unfold input15745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15744 output6643)).val
theorem output15745_def : output15745 = (.seq output15744 output6643) := by
  unfold output15745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15745_skip : Flapjack.WordAlloc.isSkip output15745 = false := by
  rw [output15745_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15745 input6632)).val
theorem input15746_def : input15746 = (.seq input15745 input6632) := by
  unfold input15746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15745)).val
theorem output15746_def : output15746 = (output15745) := by
  unfold output15746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15746_skip : Flapjack.WordAlloc.isSkip output15746 = false := by
  rw [output15746_def]
  exact output15745_skip


@[irreducible, cbv_opaque] def input15747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15746 input6631)).val
theorem input15747_def : input15747 = (.seq input15746 input6631) := by
  unfold input15747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15746 output6631)).val
theorem output15747_def : output15747 = (.seq output15746 output6631) := by
  unfold output15747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15747_skip : Flapjack.WordAlloc.isSkip output15747 = false := by
  rw [output15747_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15747 input6630)).val
theorem input15748_def : input15748 = (.seq input15747 input6630) := by
  unfold input15748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15747 output6630)).val
theorem output15748_def : output15748 = (.seq output15747 output6630) := by
  unfold output15748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15748_skip : Flapjack.WordAlloc.isSkip output15748 = false := by
  rw [output15748_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15748 input6627)).val
theorem input15749_def : input15749 = (.seq input15748 input6627) := by
  unfold input15749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15748 output6627)).val
theorem output15749_def : output15749 = (.seq output15748 output6627) := by
  unfold output15749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15749_skip : Flapjack.WordAlloc.isSkip output15749 = false := by
  rw [output15749_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15749 input6616)).val
theorem input15750_def : input15750 = (.seq input15749 input6616) := by
  unfold input15750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15749)).val
theorem output15750_def : output15750 = (output15749) := by
  unfold output15750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15750_skip : Flapjack.WordAlloc.isSkip output15750 = false := by
  rw [output15750_def]
  exact output15749_skip


@[irreducible, cbv_opaque] def input15751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15750 input6615)).val
theorem input15751_def : input15751 = (.seq input15750 input6615) := by
  unfold input15751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15750 output6615)).val
theorem output15751_def : output15751 = (.seq output15750 output6615) := by
  unfold output15751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15751_skip : Flapjack.WordAlloc.isSkip output15751 = false := by
  rw [output15751_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15751 input6614)).val
theorem input15752_def : input15752 = (.seq input15751 input6614) := by
  unfold input15752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15751 output6614)).val
theorem output15752_def : output15752 = (.seq output15751 output6614) := by
  unfold output15752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15752_skip : Flapjack.WordAlloc.isSkip output15752 = false := by
  rw [output15752_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15752 input6611)).val
theorem input15753_def : input15753 = (.seq input15752 input6611) := by
  unfold input15753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15752 output6611)).val
theorem output15753_def : output15753 = (.seq output15752 output6611) := by
  unfold output15753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15753_skip : Flapjack.WordAlloc.isSkip output15753 = false := by
  rw [output15753_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15753 input6600)).val
theorem input15754_def : input15754 = (.seq input15753 input6600) := by
  unfold input15754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15753)).val
theorem output15754_def : output15754 = (output15753) := by
  unfold output15754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15754_skip : Flapjack.WordAlloc.isSkip output15754 = false := by
  rw [output15754_def]
  exact output15753_skip


@[irreducible, cbv_opaque] def input15755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15754 input6599)).val
theorem input15755_def : input15755 = (.seq input15754 input6599) := by
  unfold input15755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15754 output6599)).val
theorem output15755_def : output15755 = (.seq output15754 output6599) := by
  unfold output15755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15755_skip : Flapjack.WordAlloc.isSkip output15755 = false := by
  rw [output15755_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15755 input6598)).val
theorem input15756_def : input15756 = (.seq input15755 input6598) := by
  unfold input15756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15755 output6598)).val
theorem output15756_def : output15756 = (.seq output15755 output6598) := by
  unfold output15756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15756_skip : Flapjack.WordAlloc.isSkip output15756 = false := by
  rw [output15756_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15756 input6595)).val
theorem input15757_def : input15757 = (.seq input15756 input6595) := by
  unfold input15757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15756 output6595)).val
theorem output15757_def : output15757 = (.seq output15756 output6595) := by
  unfold output15757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15757_skip : Flapjack.WordAlloc.isSkip output15757 = false := by
  rw [output15757_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15757 input6584)).val
theorem input15758_def : input15758 = (.seq input15757 input6584) := by
  unfold input15758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15757)).val
theorem output15758_def : output15758 = (output15757) := by
  unfold output15758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15758_skip : Flapjack.WordAlloc.isSkip output15758 = false := by
  rw [output15758_def]
  exact output15757_skip


@[irreducible, cbv_opaque] def input15759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15758 input6583)).val
theorem input15759_def : input15759 = (.seq input15758 input6583) := by
  unfold input15759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15758 output6583)).val
theorem output15759_def : output15759 = (.seq output15758 output6583) := by
  unfold output15759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15759_skip : Flapjack.WordAlloc.isSkip output15759 = false := by
  rw [output15759_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15759 input6582)).val
theorem input15760_def : input15760 = (.seq input15759 input6582) := by
  unfold input15760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15759 output6582)).val
theorem output15760_def : output15760 = (.seq output15759 output6582) := by
  unfold output15760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15760_skip : Flapjack.WordAlloc.isSkip output15760 = false := by
  rw [output15760_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15760 input6579)).val
theorem input15761_def : input15761 = (.seq input15760 input6579) := by
  unfold input15761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15760 output6579)).val
theorem output15761_def : output15761 = (.seq output15760 output6579) := by
  unfold output15761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15761_skip : Flapjack.WordAlloc.isSkip output15761 = false := by
  rw [output15761_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15761 input6568)).val
theorem input15762_def : input15762 = (.seq input15761 input6568) := by
  unfold input15762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15761)).val
theorem output15762_def : output15762 = (output15761) := by
  unfold output15762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15762_skip : Flapjack.WordAlloc.isSkip output15762 = false := by
  rw [output15762_def]
  exact output15761_skip


@[irreducible, cbv_opaque] def input15763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15762 input6567)).val
theorem input15763_def : input15763 = (.seq input15762 input6567) := by
  unfold input15763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15762 output6567)).val
theorem output15763_def : output15763 = (.seq output15762 output6567) := by
  unfold output15763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15763_skip : Flapjack.WordAlloc.isSkip output15763 = false := by
  rw [output15763_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15763 input6566)).val
theorem input15764_def : input15764 = (.seq input15763 input6566) := by
  unfold input15764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15763 output6566)).val
theorem output15764_def : output15764 = (.seq output15763 output6566) := by
  unfold output15764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15764_skip : Flapjack.WordAlloc.isSkip output15764 = false := by
  rw [output15764_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15764 input6563)).val
theorem input15765_def : input15765 = (.seq input15764 input6563) := by
  unfold input15765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15764 output6563)).val
theorem output15765_def : output15765 = (.seq output15764 output6563) := by
  unfold output15765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15765_skip : Flapjack.WordAlloc.isSkip output15765 = false := by
  rw [output15765_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15765 input6552)).val
theorem input15766_def : input15766 = (.seq input15765 input6552) := by
  unfold input15766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15765)).val
theorem output15766_def : output15766 = (output15765) := by
  unfold output15766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15766_skip : Flapjack.WordAlloc.isSkip output15766 = false := by
  rw [output15766_def]
  exact output15765_skip


@[irreducible, cbv_opaque] def input15767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15766 input6551)).val
theorem input15767_def : input15767 = (.seq input15766 input6551) := by
  unfold input15767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15766 output6551)).val
theorem output15767_def : output15767 = (.seq output15766 output6551) := by
  unfold output15767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15767_skip : Flapjack.WordAlloc.isSkip output15767 = false := by
  rw [output15767_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15767 input6550)).val
theorem input15768_def : input15768 = (.seq input15767 input6550) := by
  unfold input15768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15767 output6550)).val
theorem output15768_def : output15768 = (.seq output15767 output6550) := by
  unfold output15768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15768_skip : Flapjack.WordAlloc.isSkip output15768 = false := by
  rw [output15768_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15768 input6547)).val
theorem input15769_def : input15769 = (.seq input15768 input6547) := by
  unfold input15769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15768 output6547)).val
theorem output15769_def : output15769 = (.seq output15768 output6547) := by
  unfold output15769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15769_skip : Flapjack.WordAlloc.isSkip output15769 = false := by
  rw [output15769_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15769 input6536)).val
theorem input15770_def : input15770 = (.seq input15769 input6536) := by
  unfold input15770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15769)).val
theorem output15770_def : output15770 = (output15769) := by
  unfold output15770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15770_skip : Flapjack.WordAlloc.isSkip output15770 = false := by
  rw [output15770_def]
  exact output15769_skip


@[irreducible, cbv_opaque] def input15771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15770 input6535)).val
theorem input15771_def : input15771 = (.seq input15770 input6535) := by
  unfold input15771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15770 output6535)).val
theorem output15771_def : output15771 = (.seq output15770 output6535) := by
  unfold output15771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15771_skip : Flapjack.WordAlloc.isSkip output15771 = false := by
  rw [output15771_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15771 input6534)).val
theorem input15772_def : input15772 = (.seq input15771 input6534) := by
  unfold input15772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15771 output6534)).val
theorem output15772_def : output15772 = (.seq output15771 output6534) := by
  unfold output15772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15772_skip : Flapjack.WordAlloc.isSkip output15772 = false := by
  rw [output15772_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15772 input6531)).val
theorem input15773_def : input15773 = (.seq input15772 input6531) := by
  unfold input15773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15772 output6531)).val
theorem output15773_def : output15773 = (.seq output15772 output6531) := by
  unfold output15773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15773_skip : Flapjack.WordAlloc.isSkip output15773 = false := by
  rw [output15773_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15773 input6520)).val
theorem input15774_def : input15774 = (.seq input15773 input6520) := by
  unfold input15774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15773)).val
theorem output15774_def : output15774 = (output15773) := by
  unfold output15774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15774_skip : Flapjack.WordAlloc.isSkip output15774 = false := by
  rw [output15774_def]
  exact output15773_skip


@[irreducible, cbv_opaque] def input15775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15774 input6519)).val
theorem input15775_def : input15775 = (.seq input15774 input6519) := by
  unfold input15775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15774 output6519)).val
theorem output15775_def : output15775 = (.seq output15774 output6519) := by
  unfold output15775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15775_skip : Flapjack.WordAlloc.isSkip output15775 = false := by
  rw [output15775_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15775 input6518)).val
theorem input15776_def : input15776 = (.seq input15775 input6518) := by
  unfold input15776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15775 output6518)).val
theorem output15776_def : output15776 = (.seq output15775 output6518) := by
  unfold output15776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15776_skip : Flapjack.WordAlloc.isSkip output15776 = false := by
  rw [output15776_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15776 input6515)).val
theorem input15777_def : input15777 = (.seq input15776 input6515) := by
  unfold input15777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15776 output6515)).val
theorem output15777_def : output15777 = (.seq output15776 output6515) := by
  unfold output15777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15777_skip : Flapjack.WordAlloc.isSkip output15777 = false := by
  rw [output15777_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15777 input6504)).val
theorem input15778_def : input15778 = (.seq input15777 input6504) := by
  unfold input15778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15777)).val
theorem output15778_def : output15778 = (output15777) := by
  unfold output15778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15778_skip : Flapjack.WordAlloc.isSkip output15778 = false := by
  rw [output15778_def]
  exact output15777_skip


@[irreducible, cbv_opaque] def input15779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15778 input6503)).val
theorem input15779_def : input15779 = (.seq input15778 input6503) := by
  unfold input15779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15778 output6503)).val
theorem output15779_def : output15779 = (.seq output15778 output6503) := by
  unfold output15779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15779_skip : Flapjack.WordAlloc.isSkip output15779 = false := by
  rw [output15779_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15779 input6502)).val
theorem input15780_def : input15780 = (.seq input15779 input6502) := by
  unfold input15780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15779 output6502)).val
theorem output15780_def : output15780 = (.seq output15779 output6502) := by
  unfold output15780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15780_skip : Flapjack.WordAlloc.isSkip output15780 = false := by
  rw [output15780_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15780 input6499)).val
theorem input15781_def : input15781 = (.seq input15780 input6499) := by
  unfold input15781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15780 output6499)).val
theorem output15781_def : output15781 = (.seq output15780 output6499) := by
  unfold output15781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15781_skip : Flapjack.WordAlloc.isSkip output15781 = false := by
  rw [output15781_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15781 input6488)).val
theorem input15782_def : input15782 = (.seq input15781 input6488) := by
  unfold input15782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15781)).val
theorem output15782_def : output15782 = (output15781) := by
  unfold output15782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15782_skip : Flapjack.WordAlloc.isSkip output15782 = false := by
  rw [output15782_def]
  exact output15781_skip


@[irreducible, cbv_opaque] def input15783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15782 input6487)).val
theorem input15783_def : input15783 = (.seq input15782 input6487) := by
  unfold input15783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15782 output6487)).val
theorem output15783_def : output15783 = (.seq output15782 output6487) := by
  unfold output15783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15783_skip : Flapjack.WordAlloc.isSkip output15783 = false := by
  rw [output15783_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15783 input6486)).val
theorem input15784_def : input15784 = (.seq input15783 input6486) := by
  unfold input15784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15783 output6486)).val
theorem output15784_def : output15784 = (.seq output15783 output6486) := by
  unfold output15784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15784_skip : Flapjack.WordAlloc.isSkip output15784 = false := by
  rw [output15784_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15784 input6483)).val
theorem input15785_def : input15785 = (.seq input15784 input6483) := by
  unfold input15785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15784 output6483)).val
theorem output15785_def : output15785 = (.seq output15784 output6483) := by
  unfold output15785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15785_skip : Flapjack.WordAlloc.isSkip output15785 = false := by
  rw [output15785_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15785 input6472)).val
theorem input15786_def : input15786 = (.seq input15785 input6472) := by
  unfold input15786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15785)).val
theorem output15786_def : output15786 = (output15785) := by
  unfold output15786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15786_skip : Flapjack.WordAlloc.isSkip output15786 = false := by
  rw [output15786_def]
  exact output15785_skip


@[irreducible, cbv_opaque] def input15787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15786 input6471)).val
theorem input15787_def : input15787 = (.seq input15786 input6471) := by
  unfold input15787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15786 output6471)).val
theorem output15787_def : output15787 = (.seq output15786 output6471) := by
  unfold output15787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15787_skip : Flapjack.WordAlloc.isSkip output15787 = false := by
  rw [output15787_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15787 input6470)).val
theorem input15788_def : input15788 = (.seq input15787 input6470) := by
  unfold input15788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15787 output6470)).val
theorem output15788_def : output15788 = (.seq output15787 output6470) := by
  unfold output15788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15788_skip : Flapjack.WordAlloc.isSkip output15788 = false := by
  rw [output15788_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15788 input6467)).val
theorem input15789_def : input15789 = (.seq input15788 input6467) := by
  unfold input15789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15788 output6467)).val
theorem output15789_def : output15789 = (.seq output15788 output6467) := by
  unfold output15789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15789_skip : Flapjack.WordAlloc.isSkip output15789 = false := by
  rw [output15789_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15789 input6456)).val
theorem input15790_def : input15790 = (.seq input15789 input6456) := by
  unfold input15790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15789)).val
theorem output15790_def : output15790 = (output15789) := by
  unfold output15790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15790_skip : Flapjack.WordAlloc.isSkip output15790 = false := by
  rw [output15790_def]
  exact output15789_skip


@[irreducible, cbv_opaque] def input15791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15790 input6455)).val
theorem input15791_def : input15791 = (.seq input15790 input6455) := by
  unfold input15791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15790 output6455)).val
theorem output15791_def : output15791 = (.seq output15790 output6455) := by
  unfold output15791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15791_skip : Flapjack.WordAlloc.isSkip output15791 = false := by
  rw [output15791_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15791 input6454)).val
theorem input15792_def : input15792 = (.seq input15791 input6454) := by
  unfold input15792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15791 output6454)).val
theorem output15792_def : output15792 = (.seq output15791 output6454) := by
  unfold output15792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15792_skip : Flapjack.WordAlloc.isSkip output15792 = false := by
  rw [output15792_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15792 input6451)).val
theorem input15793_def : input15793 = (.seq input15792 input6451) := by
  unfold input15793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15792 output6451)).val
theorem output15793_def : output15793 = (.seq output15792 output6451) := by
  unfold output15793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15793_skip : Flapjack.WordAlloc.isSkip output15793 = false := by
  rw [output15793_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15793 input6440)).val
theorem input15794_def : input15794 = (.seq input15793 input6440) := by
  unfold input15794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15793)).val
theorem output15794_def : output15794 = (output15793) := by
  unfold output15794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15794_skip : Flapjack.WordAlloc.isSkip output15794 = false := by
  rw [output15794_def]
  exact output15793_skip


@[irreducible, cbv_opaque] def input15795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15794 input6439)).val
theorem input15795_def : input15795 = (.seq input15794 input6439) := by
  unfold input15795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15794 output6439)).val
theorem output15795_def : output15795 = (.seq output15794 output6439) := by
  unfold output15795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15795_skip : Flapjack.WordAlloc.isSkip output15795 = false := by
  rw [output15795_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15795 input6438)).val
theorem input15796_def : input15796 = (.seq input15795 input6438) := by
  unfold input15796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15795 output6438)).val
theorem output15796_def : output15796 = (.seq output15795 output6438) := by
  unfold output15796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15796_skip : Flapjack.WordAlloc.isSkip output15796 = false := by
  rw [output15796_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15796 input6435)).val
theorem input15797_def : input15797 = (.seq input15796 input6435) := by
  unfold input15797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15796 output6435)).val
theorem output15797_def : output15797 = (.seq output15796 output6435) := by
  unfold output15797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15797_skip : Flapjack.WordAlloc.isSkip output15797 = false := by
  rw [output15797_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15797 input6424)).val
theorem input15798_def : input15798 = (.seq input15797 input6424) := by
  unfold input15798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15797)).val
theorem output15798_def : output15798 = (output15797) := by
  unfold output15798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15798_skip : Flapjack.WordAlloc.isSkip output15798 = false := by
  rw [output15798_def]
  exact output15797_skip


@[irreducible, cbv_opaque] def input15799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15798 input6423)).val
theorem input15799_def : input15799 = (.seq input15798 input6423) := by
  unfold input15799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15798 output6423)).val
theorem output15799_def : output15799 = (.seq output15798 output6423) := by
  unfold output15799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15799_skip : Flapjack.WordAlloc.isSkip output15799 = false := by
  rw [output15799_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15799 input6422)).val
theorem input15800_def : input15800 = (.seq input15799 input6422) := by
  unfold input15800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15799 output6422)).val
theorem output15800_def : output15800 = (.seq output15799 output6422) := by
  unfold output15800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15800_skip : Flapjack.WordAlloc.isSkip output15800 = false := by
  rw [output15800_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15800 input6419)).val
theorem input15801_def : input15801 = (.seq input15800 input6419) := by
  unfold input15801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15800 output6419)).val
theorem output15801_def : output15801 = (.seq output15800 output6419) := by
  unfold output15801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15801_skip : Flapjack.WordAlloc.isSkip output15801 = false := by
  rw [output15801_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15801 input6408)).val
theorem input15802_def : input15802 = (.seq input15801 input6408) := by
  unfold input15802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15801)).val
theorem output15802_def : output15802 = (output15801) := by
  unfold output15802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15802_skip : Flapjack.WordAlloc.isSkip output15802 = false := by
  rw [output15802_def]
  exact output15801_skip


@[irreducible, cbv_opaque] def input15803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15802 input6407)).val
theorem input15803_def : input15803 = (.seq input15802 input6407) := by
  unfold input15803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15802 output6407)).val
theorem output15803_def : output15803 = (.seq output15802 output6407) := by
  unfold output15803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15803_skip : Flapjack.WordAlloc.isSkip output15803 = false := by
  rw [output15803_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15803 input6406)).val
theorem input15804_def : input15804 = (.seq input15803 input6406) := by
  unfold input15804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15803 output6406)).val
theorem output15804_def : output15804 = (.seq output15803 output6406) := by
  unfold output15804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15804_skip : Flapjack.WordAlloc.isSkip output15804 = false := by
  rw [output15804_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15804 input6403)).val
theorem input15805_def : input15805 = (.seq input15804 input6403) := by
  unfold input15805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15804 output6403)).val
theorem output15805_def : output15805 = (.seq output15804 output6403) := by
  unfold output15805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15805_skip : Flapjack.WordAlloc.isSkip output15805 = false := by
  rw [output15805_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15805 input6392)).val
theorem input15806_def : input15806 = (.seq input15805 input6392) := by
  unfold input15806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15805)).val
theorem output15806_def : output15806 = (output15805) := by
  unfold output15806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15806_skip : Flapjack.WordAlloc.isSkip output15806 = false := by
  rw [output15806_def]
  exact output15805_skip


@[irreducible, cbv_opaque] def input15807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15806 input6391)).val
theorem input15807_def : input15807 = (.seq input15806 input6391) := by
  unfold input15807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15806 output6391)).val
theorem output15807_def : output15807 = (.seq output15806 output6391) := by
  unfold output15807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15807_skip : Flapjack.WordAlloc.isSkip output15807 = false := by
  rw [output15807_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15807 input6390)).val
theorem input15808_def : input15808 = (.seq input15807 input6390) := by
  unfold input15808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15807 output6390)).val
theorem output15808_def : output15808 = (.seq output15807 output6390) := by
  unfold output15808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15808_skip : Flapjack.WordAlloc.isSkip output15808 = false := by
  rw [output15808_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15808 input6387)).val
theorem input15809_def : input15809 = (.seq input15808 input6387) := by
  unfold input15809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15808 output6387)).val
theorem output15809_def : output15809 = (.seq output15808 output6387) := by
  unfold output15809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15809_skip : Flapjack.WordAlloc.isSkip output15809 = false := by
  rw [output15809_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15809 input6376)).val
theorem input15810_def : input15810 = (.seq input15809 input6376) := by
  unfold input15810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15809)).val
theorem output15810_def : output15810 = (output15809) := by
  unfold output15810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15810_skip : Flapjack.WordAlloc.isSkip output15810 = false := by
  rw [output15810_def]
  exact output15809_skip


@[irreducible, cbv_opaque] def input15811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15810 input6375)).val
theorem input15811_def : input15811 = (.seq input15810 input6375) := by
  unfold input15811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15810 output6375)).val
theorem output15811_def : output15811 = (.seq output15810 output6375) := by
  unfold output15811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15811_skip : Flapjack.WordAlloc.isSkip output15811 = false := by
  rw [output15811_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15811 input6374)).val
theorem input15812_def : input15812 = (.seq input15811 input6374) := by
  unfold input15812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15811 output6374)).val
theorem output15812_def : output15812 = (.seq output15811 output6374) := by
  unfold output15812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15812_skip : Flapjack.WordAlloc.isSkip output15812 = false := by
  rw [output15812_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15812 input6371)).val
theorem input15813_def : input15813 = (.seq input15812 input6371) := by
  unfold input15813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15812 output6371)).val
theorem output15813_def : output15813 = (.seq output15812 output6371) := by
  unfold output15813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15813_skip : Flapjack.WordAlloc.isSkip output15813 = false := by
  rw [output15813_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15813 input6360)).val
theorem input15814_def : input15814 = (.seq input15813 input6360) := by
  unfold input15814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15813)).val
theorem output15814_def : output15814 = (output15813) := by
  unfold output15814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15814_skip : Flapjack.WordAlloc.isSkip output15814 = false := by
  rw [output15814_def]
  exact output15813_skip


@[irreducible, cbv_opaque] def input15815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15814 input6359)).val
theorem input15815_def : input15815 = (.seq input15814 input6359) := by
  unfold input15815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15814 output6359)).val
theorem output15815_def : output15815 = (.seq output15814 output6359) := by
  unfold output15815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15815_skip : Flapjack.WordAlloc.isSkip output15815 = false := by
  rw [output15815_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15815 input6358)).val
theorem input15816_def : input15816 = (.seq input15815 input6358) := by
  unfold input15816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15815 output6358)).val
theorem output15816_def : output15816 = (.seq output15815 output6358) := by
  unfold output15816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15816_skip : Flapjack.WordAlloc.isSkip output15816 = false := by
  rw [output15816_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15816 input6355)).val
theorem input15817_def : input15817 = (.seq input15816 input6355) := by
  unfold input15817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15816 output6355)).val
theorem output15817_def : output15817 = (.seq output15816 output6355) := by
  unfold output15817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15817_skip : Flapjack.WordAlloc.isSkip output15817 = false := by
  rw [output15817_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15817 input6344)).val
theorem input15818_def : input15818 = (.seq input15817 input6344) := by
  unfold input15818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15817)).val
theorem output15818_def : output15818 = (output15817) := by
  unfold output15818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15818_skip : Flapjack.WordAlloc.isSkip output15818 = false := by
  rw [output15818_def]
  exact output15817_skip


@[irreducible, cbv_opaque] def input15819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15818 input6343)).val
theorem input15819_def : input15819 = (.seq input15818 input6343) := by
  unfold input15819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15818 output6343)).val
theorem output15819_def : output15819 = (.seq output15818 output6343) := by
  unfold output15819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15819_skip : Flapjack.WordAlloc.isSkip output15819 = false := by
  rw [output15819_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15819 input6342)).val
theorem input15820_def : input15820 = (.seq input15819 input6342) := by
  unfold input15820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15819 output6342)).val
theorem output15820_def : output15820 = (.seq output15819 output6342) := by
  unfold output15820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15820_skip : Flapjack.WordAlloc.isSkip output15820 = false := by
  rw [output15820_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15820 input6339)).val
theorem input15821_def : input15821 = (.seq input15820 input6339) := by
  unfold input15821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15820 output6339)).val
theorem output15821_def : output15821 = (.seq output15820 output6339) := by
  unfold output15821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15821_skip : Flapjack.WordAlloc.isSkip output15821 = false := by
  rw [output15821_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15821 input6328)).val
theorem input15822_def : input15822 = (.seq input15821 input6328) := by
  unfold input15822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15821)).val
theorem output15822_def : output15822 = (output15821) := by
  unfold output15822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15822_skip : Flapjack.WordAlloc.isSkip output15822 = false := by
  rw [output15822_def]
  exact output15821_skip


@[irreducible, cbv_opaque] def input15823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15822 input6327)).val
theorem input15823_def : input15823 = (.seq input15822 input6327) := by
  unfold input15823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15822 output6327)).val
theorem output15823_def : output15823 = (.seq output15822 output6327) := by
  unfold output15823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15823_skip : Flapjack.WordAlloc.isSkip output15823 = false := by
  rw [output15823_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15823 input6326)).val
theorem input15824_def : input15824 = (.seq input15823 input6326) := by
  unfold input15824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15823 output6326)).val
theorem output15824_def : output15824 = (.seq output15823 output6326) := by
  unfold output15824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15824_skip : Flapjack.WordAlloc.isSkip output15824 = false := by
  rw [output15824_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15824 input6323)).val
theorem input15825_def : input15825 = (.seq input15824 input6323) := by
  unfold input15825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15824 output6323)).val
theorem output15825_def : output15825 = (.seq output15824 output6323) := by
  unfold output15825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15825_skip : Flapjack.WordAlloc.isSkip output15825 = false := by
  rw [output15825_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15825 input6312)).val
theorem input15826_def : input15826 = (.seq input15825 input6312) := by
  unfold input15826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15825)).val
theorem output15826_def : output15826 = (output15825) := by
  unfold output15826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15826_skip : Flapjack.WordAlloc.isSkip output15826 = false := by
  rw [output15826_def]
  exact output15825_skip


@[irreducible, cbv_opaque] def input15827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15826 input6311)).val
theorem input15827_def : input15827 = (.seq input15826 input6311) := by
  unfold input15827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15826 output6311)).val
theorem output15827_def : output15827 = (.seq output15826 output6311) := by
  unfold output15827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15827_skip : Flapjack.WordAlloc.isSkip output15827 = false := by
  rw [output15827_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15827 input6310)).val
theorem input15828_def : input15828 = (.seq input15827 input6310) := by
  unfold input15828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15827 output6310)).val
theorem output15828_def : output15828 = (.seq output15827 output6310) := by
  unfold output15828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15828_skip : Flapjack.WordAlloc.isSkip output15828 = false := by
  rw [output15828_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15828 input6307)).val
theorem input15829_def : input15829 = (.seq input15828 input6307) := by
  unfold input15829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15828 output6307)).val
theorem output15829_def : output15829 = (.seq output15828 output6307) := by
  unfold output15829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15829_skip : Flapjack.WordAlloc.isSkip output15829 = false := by
  rw [output15829_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15829 input6296)).val
theorem input15830_def : input15830 = (.seq input15829 input6296) := by
  unfold input15830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15829)).val
theorem output15830_def : output15830 = (output15829) := by
  unfold output15830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15830_skip : Flapjack.WordAlloc.isSkip output15830 = false := by
  rw [output15830_def]
  exact output15829_skip


@[irreducible, cbv_opaque] def input15831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15830 input6295)).val
theorem input15831_def : input15831 = (.seq input15830 input6295) := by
  unfold input15831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15830 output6295)).val
theorem output15831_def : output15831 = (.seq output15830 output6295) := by
  unfold output15831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15831_skip : Flapjack.WordAlloc.isSkip output15831 = false := by
  rw [output15831_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15831 input6294)).val
theorem input15832_def : input15832 = (.seq input15831 input6294) := by
  unfold input15832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15831 output6294)).val
theorem output15832_def : output15832 = (.seq output15831 output6294) := by
  unfold output15832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15832_skip : Flapjack.WordAlloc.isSkip output15832 = false := by
  rw [output15832_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15832 input6291)).val
theorem input15833_def : input15833 = (.seq input15832 input6291) := by
  unfold input15833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15832 output6291)).val
theorem output15833_def : output15833 = (.seq output15832 output6291) := by
  unfold output15833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15833_skip : Flapjack.WordAlloc.isSkip output15833 = false := by
  rw [output15833_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15833 input6280)).val
theorem input15834_def : input15834 = (.seq input15833 input6280) := by
  unfold input15834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15833)).val
theorem output15834_def : output15834 = (output15833) := by
  unfold output15834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15834_skip : Flapjack.WordAlloc.isSkip output15834 = false := by
  rw [output15834_def]
  exact output15833_skip


@[irreducible, cbv_opaque] def input15835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15834 input6279)).val
theorem input15835_def : input15835 = (.seq input15834 input6279) := by
  unfold input15835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15834 output6279)).val
theorem output15835_def : output15835 = (.seq output15834 output6279) := by
  unfold output15835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15835_skip : Flapjack.WordAlloc.isSkip output15835 = false := by
  rw [output15835_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15835 input6278)).val
theorem input15836_def : input15836 = (.seq input15835 input6278) := by
  unfold input15836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15835 output6278)).val
theorem output15836_def : output15836 = (.seq output15835 output6278) := by
  unfold output15836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15836_skip : Flapjack.WordAlloc.isSkip output15836 = false := by
  rw [output15836_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15836 input6275)).val
theorem input15837_def : input15837 = (.seq input15836 input6275) := by
  unfold input15837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15836 output6275)).val
theorem output15837_def : output15837 = (.seq output15836 output6275) := by
  unfold output15837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15837_skip : Flapjack.WordAlloc.isSkip output15837 = false := by
  rw [output15837_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15837 input6264)).val
theorem input15838_def : input15838 = (.seq input15837 input6264) := by
  unfold input15838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15837)).val
theorem output15838_def : output15838 = (output15837) := by
  unfold output15838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15838_skip : Flapjack.WordAlloc.isSkip output15838 = false := by
  rw [output15838_def]
  exact output15837_skip


@[irreducible, cbv_opaque] def input15839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15838 input6263)).val
theorem input15839_def : input15839 = (.seq input15838 input6263) := by
  unfold input15839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15838 output6263)).val
theorem output15839_def : output15839 = (.seq output15838 output6263) := by
  unfold output15839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15839_skip : Flapjack.WordAlloc.isSkip output15839 = false := by
  rw [output15839_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15839 input6262)).val
theorem input15840_def : input15840 = (.seq input15839 input6262) := by
  unfold input15840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15839 output6262)).val
theorem output15840_def : output15840 = (.seq output15839 output6262) := by
  unfold output15840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15840_skip : Flapjack.WordAlloc.isSkip output15840 = false := by
  rw [output15840_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15840 input6259)).val
theorem input15841_def : input15841 = (.seq input15840 input6259) := by
  unfold input15841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15840 output6259)).val
theorem output15841_def : output15841 = (.seq output15840 output6259) := by
  unfold output15841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15841_skip : Flapjack.WordAlloc.isSkip output15841 = false := by
  rw [output15841_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15841 input6248)).val
theorem input15842_def : input15842 = (.seq input15841 input6248) := by
  unfold input15842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15841)).val
theorem output15842_def : output15842 = (output15841) := by
  unfold output15842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15842_skip : Flapjack.WordAlloc.isSkip output15842 = false := by
  rw [output15842_def]
  exact output15841_skip


@[irreducible, cbv_opaque] def input15843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15842 input6247)).val
theorem input15843_def : input15843 = (.seq input15842 input6247) := by
  unfold input15843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15842 output6247)).val
theorem output15843_def : output15843 = (.seq output15842 output6247) := by
  unfold output15843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15843_skip : Flapjack.WordAlloc.isSkip output15843 = false := by
  rw [output15843_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15843 input6246)).val
theorem input15844_def : input15844 = (.seq input15843 input6246) := by
  unfold input15844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15843 output6246)).val
theorem output15844_def : output15844 = (.seq output15843 output6246) := by
  unfold output15844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15844_skip : Flapjack.WordAlloc.isSkip output15844 = false := by
  rw [output15844_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15844 input6243)).val
theorem input15845_def : input15845 = (.seq input15844 input6243) := by
  unfold input15845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15844 output6243)).val
theorem output15845_def : output15845 = (.seq output15844 output6243) := by
  unfold output15845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15845_skip : Flapjack.WordAlloc.isSkip output15845 = false := by
  rw [output15845_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15845 input6232)).val
theorem input15846_def : input15846 = (.seq input15845 input6232) := by
  unfold input15846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15845)).val
theorem output15846_def : output15846 = (output15845) := by
  unfold output15846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15846_skip : Flapjack.WordAlloc.isSkip output15846 = false := by
  rw [output15846_def]
  exact output15845_skip


@[irreducible, cbv_opaque] def input15847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15846 input6231)).val
theorem input15847_def : input15847 = (.seq input15846 input6231) := by
  unfold input15847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15846 output6231)).val
theorem output15847_def : output15847 = (.seq output15846 output6231) := by
  unfold output15847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15847_skip : Flapjack.WordAlloc.isSkip output15847 = false := by
  rw [output15847_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15847 input6230)).val
theorem input15848_def : input15848 = (.seq input15847 input6230) := by
  unfold input15848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15847 output6230)).val
theorem output15848_def : output15848 = (.seq output15847 output6230) := by
  unfold output15848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15848_skip : Flapjack.WordAlloc.isSkip output15848 = false := by
  rw [output15848_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15848 input6227)).val
theorem input15849_def : input15849 = (.seq input15848 input6227) := by
  unfold input15849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15848 output6227)).val
theorem output15849_def : output15849 = (.seq output15848 output6227) := by
  unfold output15849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15849_skip : Flapjack.WordAlloc.isSkip output15849 = false := by
  rw [output15849_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15849 input6216)).val
theorem input15850_def : input15850 = (.seq input15849 input6216) := by
  unfold input15850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15849)).val
theorem output15850_def : output15850 = (output15849) := by
  unfold output15850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15850_skip : Flapjack.WordAlloc.isSkip output15850 = false := by
  rw [output15850_def]
  exact output15849_skip


@[irreducible, cbv_opaque] def input15851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15850 input6215)).val
theorem input15851_def : input15851 = (.seq input15850 input6215) := by
  unfold input15851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15850 output6215)).val
theorem output15851_def : output15851 = (.seq output15850 output6215) := by
  unfold output15851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15851_skip : Flapjack.WordAlloc.isSkip output15851 = false := by
  rw [output15851_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15851 input6214)).val
theorem input15852_def : input15852 = (.seq input15851 input6214) := by
  unfold input15852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15851 output6214)).val
theorem output15852_def : output15852 = (.seq output15851 output6214) := by
  unfold output15852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15852_skip : Flapjack.WordAlloc.isSkip output15852 = false := by
  rw [output15852_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15852 input6211)).val
theorem input15853_def : input15853 = (.seq input15852 input6211) := by
  unfold input15853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15852 output6211)).val
theorem output15853_def : output15853 = (.seq output15852 output6211) := by
  unfold output15853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15853_skip : Flapjack.WordAlloc.isSkip output15853 = false := by
  rw [output15853_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15853 input6200)).val
theorem input15854_def : input15854 = (.seq input15853 input6200) := by
  unfold input15854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15853)).val
theorem output15854_def : output15854 = (output15853) := by
  unfold output15854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15854_skip : Flapjack.WordAlloc.isSkip output15854 = false := by
  rw [output15854_def]
  exact output15853_skip


@[irreducible, cbv_opaque] def input15855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15854 input6199)).val
theorem input15855_def : input15855 = (.seq input15854 input6199) := by
  unfold input15855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15854 output6199)).val
theorem output15855_def : output15855 = (.seq output15854 output6199) := by
  unfold output15855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15855_skip : Flapjack.WordAlloc.isSkip output15855 = false := by
  rw [output15855_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15855 input6198)).val
theorem input15856_def : input15856 = (.seq input15855 input6198) := by
  unfold input15856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15855 output6198)).val
theorem output15856_def : output15856 = (.seq output15855 output6198) := by
  unfold output15856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15856_skip : Flapjack.WordAlloc.isSkip output15856 = false := by
  rw [output15856_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15856 input6195)).val
theorem input15857_def : input15857 = (.seq input15856 input6195) := by
  unfold input15857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15856 output6195)).val
theorem output15857_def : output15857 = (.seq output15856 output6195) := by
  unfold output15857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15857_skip : Flapjack.WordAlloc.isSkip output15857 = false := by
  rw [output15857_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15857 input6184)).val
theorem input15858_def : input15858 = (.seq input15857 input6184) := by
  unfold input15858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15857)).val
theorem output15858_def : output15858 = (output15857) := by
  unfold output15858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15858_skip : Flapjack.WordAlloc.isSkip output15858 = false := by
  rw [output15858_def]
  exact output15857_skip


@[irreducible, cbv_opaque] def input15859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15858 input6183)).val
theorem input15859_def : input15859 = (.seq input15858 input6183) := by
  unfold input15859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15858 output6183)).val
theorem output15859_def : output15859 = (.seq output15858 output6183) := by
  unfold output15859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15859_skip : Flapjack.WordAlloc.isSkip output15859 = false := by
  rw [output15859_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15859 input6182)).val
theorem input15860_def : input15860 = (.seq input15859 input6182) := by
  unfold input15860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15859 output6182)).val
theorem output15860_def : output15860 = (.seq output15859 output6182) := by
  unfold output15860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15860_skip : Flapjack.WordAlloc.isSkip output15860 = false := by
  rw [output15860_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15860 input6179)).val
theorem input15861_def : input15861 = (.seq input15860 input6179) := by
  unfold input15861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15860 output6179)).val
theorem output15861_def : output15861 = (.seq output15860 output6179) := by
  unfold output15861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15861_skip : Flapjack.WordAlloc.isSkip output15861 = false := by
  rw [output15861_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15861 input6168)).val
theorem input15862_def : input15862 = (.seq input15861 input6168) := by
  unfold input15862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15861)).val
theorem output15862_def : output15862 = (output15861) := by
  unfold output15862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15862_skip : Flapjack.WordAlloc.isSkip output15862 = false := by
  rw [output15862_def]
  exact output15861_skip


@[irreducible, cbv_opaque] def input15863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15862 input6167)).val
theorem input15863_def : input15863 = (.seq input15862 input6167) := by
  unfold input15863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15862 output6167)).val
theorem output15863_def : output15863 = (.seq output15862 output6167) := by
  unfold output15863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15863_skip : Flapjack.WordAlloc.isSkip output15863 = false := by
  rw [output15863_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15863 input6166)).val
theorem input15864_def : input15864 = (.seq input15863 input6166) := by
  unfold input15864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15863 output6166)).val
theorem output15864_def : output15864 = (.seq output15863 output6166) := by
  unfold output15864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15864_skip : Flapjack.WordAlloc.isSkip output15864 = false := by
  rw [output15864_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15864 input6163)).val
theorem input15865_def : input15865 = (.seq input15864 input6163) := by
  unfold input15865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15864 output6163)).val
theorem output15865_def : output15865 = (.seq output15864 output6163) := by
  unfold output15865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15865_skip : Flapjack.WordAlloc.isSkip output15865 = false := by
  rw [output15865_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15865 input6152)).val
theorem input15866_def : input15866 = (.seq input15865 input6152) := by
  unfold input15866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15865)).val
theorem output15866_def : output15866 = (output15865) := by
  unfold output15866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15866_skip : Flapjack.WordAlloc.isSkip output15866 = false := by
  rw [output15866_def]
  exact output15865_skip


@[irreducible, cbv_opaque] def input15867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15866 input6151)).val
theorem input15867_def : input15867 = (.seq input15866 input6151) := by
  unfold input15867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15866 output6151)).val
theorem output15867_def : output15867 = (.seq output15866 output6151) := by
  unfold output15867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15867_skip : Flapjack.WordAlloc.isSkip output15867 = false := by
  rw [output15867_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15867 input6150)).val
theorem input15868_def : input15868 = (.seq input15867 input6150) := by
  unfold input15868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15867 output6150)).val
theorem output15868_def : output15868 = (.seq output15867 output6150) := by
  unfold output15868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15868_skip : Flapjack.WordAlloc.isSkip output15868 = false := by
  rw [output15868_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15868 input6147)).val
theorem input15869_def : input15869 = (.seq input15868 input6147) := by
  unfold input15869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15868 output6147)).val
theorem output15869_def : output15869 = (.seq output15868 output6147) := by
  unfold output15869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15869_skip : Flapjack.WordAlloc.isSkip output15869 = false := by
  rw [output15869_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15869 input6136)).val
theorem input15870_def : input15870 = (.seq input15869 input6136) := by
  unfold input15870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15869)).val
theorem output15870_def : output15870 = (output15869) := by
  unfold output15870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15870_skip : Flapjack.WordAlloc.isSkip output15870 = false := by
  rw [output15870_def]
  exact output15869_skip


@[irreducible, cbv_opaque] def input15871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15870 input6135)).val
theorem input15871_def : input15871 = (.seq input15870 input6135) := by
  unfold input15871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15870 output6135)).val
theorem output15871_def : output15871 = (.seq output15870 output6135) := by
  unfold output15871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15871_skip : Flapjack.WordAlloc.isSkip output15871 = false := by
  rw [output15871_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages713.Parallel
