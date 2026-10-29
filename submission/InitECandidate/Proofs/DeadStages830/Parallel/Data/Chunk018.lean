import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages830.Parallel.Data.Chunk017
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages830.Parallel
@[irreducible, cbv_opaque] def input4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4607 input300)).val
theorem input4608_def : input4608 = (.seq input4607 input300) := by
  unfold input4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4607 output300)).val
theorem output4608_def : output4608 = (.seq output4607 output300) := by
  unfold output4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4608_skip : Flapjack.WordAlloc.isSkip output4608 = false := by
  rw [output4608_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4608 input297)).val
theorem input4609_def : input4609 = (.seq input4608 input297) := by
  unfold input4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4608 output297)).val
theorem output4609_def : output4609 = (.seq output4608 output297) := by
  unfold output4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4609_skip : Flapjack.WordAlloc.isSkip output4609 = false := by
  rw [output4609_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4609 input288)).val
theorem input4610_def : input4610 = (.seq input4609 input288) := by
  unfold input4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4609)).val
theorem output4610_def : output4610 = (output4609) := by
  unfold output4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4610_skip : Flapjack.WordAlloc.isSkip output4610 = false := by
  rw [output4610_def]
  exact output4609_skip


@[irreducible, cbv_opaque] def input4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4610 input287)).val
theorem input4611_def : input4611 = (.seq input4610 input287) := by
  unfold input4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4610 output287)).val
theorem output4611_def : output4611 = (.seq output4610 output287) := by
  unfold output4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4611_skip : Flapjack.WordAlloc.isSkip output4611 = false := by
  rw [output4611_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4611 input286)).val
theorem input4612_def : input4612 = (.seq input4611 input286) := by
  unfold input4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4611 output286)).val
theorem output4612_def : output4612 = (.seq output4611 output286) := by
  unfold output4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4612_skip : Flapjack.WordAlloc.isSkip output4612 = false := by
  rw [output4612_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4612 input283)).val
theorem input4613_def : input4613 = (.seq input4612 input283) := by
  unfold input4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4612 output283)).val
theorem output4613_def : output4613 = (.seq output4612 output283) := by
  unfold output4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4613_skip : Flapjack.WordAlloc.isSkip output4613 = false := by
  rw [output4613_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4613 input274)).val
theorem input4614_def : input4614 = (.seq input4613 input274) := by
  unfold input4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4613)).val
theorem output4614_def : output4614 = (output4613) := by
  unfold output4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4614_skip : Flapjack.WordAlloc.isSkip output4614 = false := by
  rw [output4614_def]
  exact output4613_skip


@[irreducible, cbv_opaque] def input4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4614 input273)).val
theorem input4615_def : input4615 = (.seq input4614 input273) := by
  unfold input4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4614 output273)).val
theorem output4615_def : output4615 = (.seq output4614 output273) := by
  unfold output4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4615_skip : Flapjack.WordAlloc.isSkip output4615 = false := by
  rw [output4615_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4615 input272)).val
theorem input4616_def : input4616 = (.seq input4615 input272) := by
  unfold input4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4615 output272)).val
theorem output4616_def : output4616 = (.seq output4615 output272) := by
  unfold output4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4616_skip : Flapjack.WordAlloc.isSkip output4616 = false := by
  rw [output4616_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4616 input269)).val
theorem input4617_def : input4617 = (.seq input4616 input269) := by
  unfold input4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4616 output269)).val
theorem output4617_def : output4617 = (.seq output4616 output269) := by
  unfold output4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4617_skip : Flapjack.WordAlloc.isSkip output4617 = false := by
  rw [output4617_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4617 input260)).val
theorem input4618_def : input4618 = (.seq input4617 input260) := by
  unfold input4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4617)).val
theorem output4618_def : output4618 = (output4617) := by
  unfold output4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4618_skip : Flapjack.WordAlloc.isSkip output4618 = false := by
  rw [output4618_def]
  exact output4617_skip


@[irreducible, cbv_opaque] def input4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4618 input259)).val
theorem input4619_def : input4619 = (.seq input4618 input259) := by
  unfold input4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4618 output259)).val
theorem output4619_def : output4619 = (.seq output4618 output259) := by
  unfold output4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4619_skip : Flapjack.WordAlloc.isSkip output4619 = false := by
  rw [output4619_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4619 input258)).val
theorem input4620_def : input4620 = (.seq input4619 input258) := by
  unfold input4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4619 output258)).val
theorem output4620_def : output4620 = (.seq output4619 output258) := by
  unfold output4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4620_skip : Flapjack.WordAlloc.isSkip output4620 = false := by
  rw [output4620_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4620 input255)).val
theorem input4621_def : input4621 = (.seq input4620 input255) := by
  unfold input4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4620 output255)).val
theorem output4621_def : output4621 = (.seq output4620 output255) := by
  unfold output4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4621_skip : Flapjack.WordAlloc.isSkip output4621 = false := by
  rw [output4621_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4621 input246)).val
theorem input4622_def : input4622 = (.seq input4621 input246) := by
  unfold input4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4621)).val
theorem output4622_def : output4622 = (output4621) := by
  unfold output4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4622_skip : Flapjack.WordAlloc.isSkip output4622 = false := by
  rw [output4622_def]
  exact output4621_skip


@[irreducible, cbv_opaque] def input4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4622 input245)).val
theorem input4623_def : input4623 = (.seq input4622 input245) := by
  unfold input4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4622 output245)).val
theorem output4623_def : output4623 = (.seq output4622 output245) := by
  unfold output4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4623_skip : Flapjack.WordAlloc.isSkip output4623 = false := by
  rw [output4623_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4623 input244)).val
theorem input4624_def : input4624 = (.seq input4623 input244) := by
  unfold input4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4623 output244)).val
theorem output4624_def : output4624 = (.seq output4623 output244) := by
  unfold output4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4624_skip : Flapjack.WordAlloc.isSkip output4624 = false := by
  rw [output4624_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4624 input241)).val
theorem input4625_def : input4625 = (.seq input4624 input241) := by
  unfold input4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4624 output241)).val
theorem output4625_def : output4625 = (.seq output4624 output241) := by
  unfold output4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4625_skip : Flapjack.WordAlloc.isSkip output4625 = false := by
  rw [output4625_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4625 input232)).val
theorem input4626_def : input4626 = (.seq input4625 input232) := by
  unfold input4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4625)).val
theorem output4626_def : output4626 = (output4625) := by
  unfold output4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4626_skip : Flapjack.WordAlloc.isSkip output4626 = false := by
  rw [output4626_def]
  exact output4625_skip


@[irreducible, cbv_opaque] def input4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4626 input231)).val
theorem input4627_def : input4627 = (.seq input4626 input231) := by
  unfold input4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4626 output231)).val
theorem output4627_def : output4627 = (.seq output4626 output231) := by
  unfold output4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4627_skip : Flapjack.WordAlloc.isSkip output4627 = false := by
  rw [output4627_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4627 input230)).val
theorem input4628_def : input4628 = (.seq input4627 input230) := by
  unfold input4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4627 output230)).val
theorem output4628_def : output4628 = (.seq output4627 output230) := by
  unfold output4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4628_skip : Flapjack.WordAlloc.isSkip output4628 = false := by
  rw [output4628_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4628 input227)).val
theorem input4629_def : input4629 = (.seq input4628 input227) := by
  unfold input4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4628 output227)).val
theorem output4629_def : output4629 = (.seq output4628 output227) := by
  unfold output4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4629_skip : Flapjack.WordAlloc.isSkip output4629 = false := by
  rw [output4629_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4629 input218)).val
theorem input4630_def : input4630 = (.seq input4629 input218) := by
  unfold input4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4629)).val
theorem output4630_def : output4630 = (output4629) := by
  unfold output4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4630_skip : Flapjack.WordAlloc.isSkip output4630 = false := by
  rw [output4630_def]
  exact output4629_skip


@[irreducible, cbv_opaque] def input4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4630 input217)).val
theorem input4631_def : input4631 = (.seq input4630 input217) := by
  unfold input4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4630 output217)).val
theorem output4631_def : output4631 = (.seq output4630 output217) := by
  unfold output4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4631_skip : Flapjack.WordAlloc.isSkip output4631 = false := by
  rw [output4631_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4631 input216)).val
theorem input4632_def : input4632 = (.seq input4631 input216) := by
  unfold input4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4631 output216)).val
theorem output4632_def : output4632 = (.seq output4631 output216) := by
  unfold output4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4632_skip : Flapjack.WordAlloc.isSkip output4632 = false := by
  rw [output4632_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4632 input213)).val
theorem input4633_def : input4633 = (.seq input4632 input213) := by
  unfold input4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4632 output213)).val
theorem output4633_def : output4633 = (.seq output4632 output213) := by
  unfold output4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4633_skip : Flapjack.WordAlloc.isSkip output4633 = false := by
  rw [output4633_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4633 input204)).val
theorem input4634_def : input4634 = (.seq input4633 input204) := by
  unfold input4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4633)).val
theorem output4634_def : output4634 = (output4633) := by
  unfold output4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4634_skip : Flapjack.WordAlloc.isSkip output4634 = false := by
  rw [output4634_def]
  exact output4633_skip


@[irreducible, cbv_opaque] def input4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4634 input203)).val
theorem input4635_def : input4635 = (.seq input4634 input203) := by
  unfold input4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4634 output203)).val
theorem output4635_def : output4635 = (.seq output4634 output203) := by
  unfold output4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4635_skip : Flapjack.WordAlloc.isSkip output4635 = false := by
  rw [output4635_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4635 input202)).val
theorem input4636_def : input4636 = (.seq input4635 input202) := by
  unfold input4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4635 output202)).val
theorem output4636_def : output4636 = (.seq output4635 output202) := by
  unfold output4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4636_skip : Flapjack.WordAlloc.isSkip output4636 = false := by
  rw [output4636_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4636 input199)).val
theorem input4637_def : input4637 = (.seq input4636 input199) := by
  unfold input4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4636 output199)).val
theorem output4637_def : output4637 = (.seq output4636 output199) := by
  unfold output4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4637_skip : Flapjack.WordAlloc.isSkip output4637 = false := by
  rw [output4637_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4637 input190)).val
theorem input4638_def : input4638 = (.seq input4637 input190) := by
  unfold input4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4637)).val
theorem output4638_def : output4638 = (output4637) := by
  unfold output4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4638_skip : Flapjack.WordAlloc.isSkip output4638 = false := by
  rw [output4638_def]
  exact output4637_skip


@[irreducible, cbv_opaque] def input4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4638 input189)).val
theorem input4639_def : input4639 = (.seq input4638 input189) := by
  unfold input4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4638 output189)).val
theorem output4639_def : output4639 = (.seq output4638 output189) := by
  unfold output4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4639_skip : Flapjack.WordAlloc.isSkip output4639 = false := by
  rw [output4639_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4639 input188)).val
theorem input4640_def : input4640 = (.seq input4639 input188) := by
  unfold input4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4639 output188)).val
theorem output4640_def : output4640 = (.seq output4639 output188) := by
  unfold output4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4640_skip : Flapjack.WordAlloc.isSkip output4640 = false := by
  rw [output4640_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4640 input185)).val
theorem input4641_def : input4641 = (.seq input4640 input185) := by
  unfold input4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4640 output185)).val
theorem output4641_def : output4641 = (.seq output4640 output185) := by
  unfold output4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4641_skip : Flapjack.WordAlloc.isSkip output4641 = false := by
  rw [output4641_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4641 input176)).val
theorem input4642_def : input4642 = (.seq input4641 input176) := by
  unfold input4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4641)).val
theorem output4642_def : output4642 = (output4641) := by
  unfold output4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4642_skip : Flapjack.WordAlloc.isSkip output4642 = false := by
  rw [output4642_def]
  exact output4641_skip


@[irreducible, cbv_opaque] def input4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4642 input175)).val
theorem input4643_def : input4643 = (.seq input4642 input175) := by
  unfold input4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4642 output175)).val
theorem output4643_def : output4643 = (.seq output4642 output175) := by
  unfold output4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4643_skip : Flapjack.WordAlloc.isSkip output4643 = false := by
  rw [output4643_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4643 input174)).val
theorem input4644_def : input4644 = (.seq input4643 input174) := by
  unfold input4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4643 output174)).val
theorem output4644_def : output4644 = (.seq output4643 output174) := by
  unfold output4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4644_skip : Flapjack.WordAlloc.isSkip output4644 = false := by
  rw [output4644_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4644 input171)).val
theorem input4645_def : input4645 = (.seq input4644 input171) := by
  unfold input4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4644 output171)).val
theorem output4645_def : output4645 = (.seq output4644 output171) := by
  unfold output4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4645_skip : Flapjack.WordAlloc.isSkip output4645 = false := by
  rw [output4645_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4645 input162)).val
theorem input4646_def : input4646 = (.seq input4645 input162) := by
  unfold input4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4645)).val
theorem output4646_def : output4646 = (output4645) := by
  unfold output4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4646_skip : Flapjack.WordAlloc.isSkip output4646 = false := by
  rw [output4646_def]
  exact output4645_skip


@[irreducible, cbv_opaque] def input4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4646 input161)).val
theorem input4647_def : input4647 = (.seq input4646 input161) := by
  unfold input4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4646 output161)).val
theorem output4647_def : output4647 = (.seq output4646 output161) := by
  unfold output4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4647_skip : Flapjack.WordAlloc.isSkip output4647 = false := by
  rw [output4647_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4647 input160)).val
theorem input4648_def : input4648 = (.seq input4647 input160) := by
  unfold input4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4647 output160)).val
theorem output4648_def : output4648 = (.seq output4647 output160) := by
  unfold output4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4648_skip : Flapjack.WordAlloc.isSkip output4648 = false := by
  rw [output4648_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4648 input157)).val
theorem input4649_def : input4649 = (.seq input4648 input157) := by
  unfold input4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4648 output157)).val
theorem output4649_def : output4649 = (.seq output4648 output157) := by
  unfold output4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4649_skip : Flapjack.WordAlloc.isSkip output4649 = false := by
  rw [output4649_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4649 input148)).val
theorem input4650_def : input4650 = (.seq input4649 input148) := by
  unfold input4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4649)).val
theorem output4650_def : output4650 = (output4649) := by
  unfold output4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4650_skip : Flapjack.WordAlloc.isSkip output4650 = false := by
  rw [output4650_def]
  exact output4649_skip


@[irreducible, cbv_opaque] def input4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4650 input147)).val
theorem input4651_def : input4651 = (.seq input4650 input147) := by
  unfold input4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4650 output147)).val
theorem output4651_def : output4651 = (.seq output4650 output147) := by
  unfold output4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4651_skip : Flapjack.WordAlloc.isSkip output4651 = false := by
  rw [output4651_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4651 input146)).val
theorem input4652_def : input4652 = (.seq input4651 input146) := by
  unfold input4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4651 output146)).val
theorem output4652_def : output4652 = (.seq output4651 output146) := by
  unfold output4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4652_skip : Flapjack.WordAlloc.isSkip output4652 = false := by
  rw [output4652_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4652 input143)).val
theorem input4653_def : input4653 = (.seq input4652 input143) := by
  unfold input4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4652 output143)).val
theorem output4653_def : output4653 = (.seq output4652 output143) := by
  unfold output4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4653_skip : Flapjack.WordAlloc.isSkip output4653 = false := by
  rw [output4653_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4653 input134)).val
theorem input4654_def : input4654 = (.seq input4653 input134) := by
  unfold input4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4653)).val
theorem output4654_def : output4654 = (output4653) := by
  unfold output4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4654_skip : Flapjack.WordAlloc.isSkip output4654 = false := by
  rw [output4654_def]
  exact output4653_skip


@[irreducible, cbv_opaque] def input4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4654 input133)).val
theorem input4655_def : input4655 = (.seq input4654 input133) := by
  unfold input4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4654 output133)).val
theorem output4655_def : output4655 = (.seq output4654 output133) := by
  unfold output4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4655_skip : Flapjack.WordAlloc.isSkip output4655 = false := by
  rw [output4655_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4655 input132)).val
theorem input4656_def : input4656 = (.seq input4655 input132) := by
  unfold input4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4655 output132)).val
theorem output4656_def : output4656 = (.seq output4655 output132) := by
  unfold output4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4656_skip : Flapjack.WordAlloc.isSkip output4656 = false := by
  rw [output4656_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4656 input129)).val
theorem input4657_def : input4657 = (.seq input4656 input129) := by
  unfold input4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4656 output129)).val
theorem output4657_def : output4657 = (.seq output4656 output129) := by
  unfold output4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4657_skip : Flapjack.WordAlloc.isSkip output4657 = false := by
  rw [output4657_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4657 input120)).val
theorem input4658_def : input4658 = (.seq input4657 input120) := by
  unfold input4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4657)).val
theorem output4658_def : output4658 = (output4657) := by
  unfold output4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4658_skip : Flapjack.WordAlloc.isSkip output4658 = false := by
  rw [output4658_def]
  exact output4657_skip


@[irreducible, cbv_opaque] def input4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4658 input119)).val
theorem input4659_def : input4659 = (.seq input4658 input119) := by
  unfold input4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4658 output119)).val
theorem output4659_def : output4659 = (.seq output4658 output119) := by
  unfold output4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4659_skip : Flapjack.WordAlloc.isSkip output4659 = false := by
  rw [output4659_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4659 input118)).val
theorem input4660_def : input4660 = (.seq input4659 input118) := by
  unfold input4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4659 output118)).val
theorem output4660_def : output4660 = (.seq output4659 output118) := by
  unfold output4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4660_skip : Flapjack.WordAlloc.isSkip output4660 = false := by
  rw [output4660_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4660 input115)).val
theorem input4661_def : input4661 = (.seq input4660 input115) := by
  unfold input4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4660 output115)).val
theorem output4661_def : output4661 = (.seq output4660 output115) := by
  unfold output4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4661_skip : Flapjack.WordAlloc.isSkip output4661 = false := by
  rw [output4661_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4661 input106)).val
theorem input4662_def : input4662 = (.seq input4661 input106) := by
  unfold input4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4661)).val
theorem output4662_def : output4662 = (output4661) := by
  unfold output4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4662_skip : Flapjack.WordAlloc.isSkip output4662 = false := by
  rw [output4662_def]
  exact output4661_skip


@[irreducible, cbv_opaque] def input4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4662 input105)).val
theorem input4663_def : input4663 = (.seq input4662 input105) := by
  unfold input4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4662 output105)).val
theorem output4663_def : output4663 = (.seq output4662 output105) := by
  unfold output4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4663_skip : Flapjack.WordAlloc.isSkip output4663 = false := by
  rw [output4663_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4663 input104)).val
theorem input4664_def : input4664 = (.seq input4663 input104) := by
  unfold input4664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4663 output104)).val
theorem output4664_def : output4664 = (.seq output4663 output104) := by
  unfold output4664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4664_skip : Flapjack.WordAlloc.isSkip output4664 = false := by
  rw [output4664_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4664 input101)).val
theorem input4665_def : input4665 = (.seq input4664 input101) := by
  unfold input4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4664 output101)).val
theorem output4665_def : output4665 = (.seq output4664 output101) := by
  unfold output4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4665_skip : Flapjack.WordAlloc.isSkip output4665 = false := by
  rw [output4665_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4665 input92)).val
theorem input4666_def : input4666 = (.seq input4665 input92) := by
  unfold input4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4665)).val
theorem output4666_def : output4666 = (output4665) := by
  unfold output4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4666_skip : Flapjack.WordAlloc.isSkip output4666 = false := by
  rw [output4666_def]
  exact output4665_skip


@[irreducible, cbv_opaque] def input4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4666 input91)).val
theorem input4667_def : input4667 = (.seq input4666 input91) := by
  unfold input4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4666 output91)).val
theorem output4667_def : output4667 = (.seq output4666 output91) := by
  unfold output4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4667_skip : Flapjack.WordAlloc.isSkip output4667 = false := by
  rw [output4667_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4667 input90)).val
theorem input4668_def : input4668 = (.seq input4667 input90) := by
  unfold input4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4667 output90)).val
theorem output4668_def : output4668 = (.seq output4667 output90) := by
  unfold output4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4668_skip : Flapjack.WordAlloc.isSkip output4668 = false := by
  rw [output4668_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4668 input87)).val
theorem input4669_def : input4669 = (.seq input4668 input87) := by
  unfold input4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4668 output87)).val
theorem output4669_def : output4669 = (.seq output4668 output87) := by
  unfold output4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4669_skip : Flapjack.WordAlloc.isSkip output4669 = false := by
  rw [output4669_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4669 input78)).val
theorem input4670_def : input4670 = (.seq input4669 input78) := by
  unfold input4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4669)).val
theorem output4670_def : output4670 = (output4669) := by
  unfold output4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4670_skip : Flapjack.WordAlloc.isSkip output4670 = false := by
  rw [output4670_def]
  exact output4669_skip


@[irreducible, cbv_opaque] def input4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4670 input77)).val
theorem input4671_def : input4671 = (.seq input4670 input77) := by
  unfold input4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4670 output77)).val
theorem output4671_def : output4671 = (.seq output4670 output77) := by
  unfold output4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4671_skip : Flapjack.WordAlloc.isSkip output4671 = false := by
  rw [output4671_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4671 input76)).val
theorem input4672_def : input4672 = (.seq input4671 input76) := by
  unfold input4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4671 output76)).val
theorem output4672_def : output4672 = (.seq output4671 output76) := by
  unfold output4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4672_skip : Flapjack.WordAlloc.isSkip output4672 = false := by
  rw [output4672_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4672 input73)).val
theorem input4673_def : input4673 = (.seq input4672 input73) := by
  unfold input4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4672 output73)).val
theorem output4673_def : output4673 = (.seq output4672 output73) := by
  unfold output4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4673_skip : Flapjack.WordAlloc.isSkip output4673 = false := by
  rw [output4673_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4673 input64)).val
theorem input4674_def : input4674 = (.seq input4673 input64) := by
  unfold input4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4673)).val
theorem output4674_def : output4674 = (output4673) := by
  unfold output4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4674_skip : Flapjack.WordAlloc.isSkip output4674 = false := by
  rw [output4674_def]
  exact output4673_skip


@[irreducible, cbv_opaque] def input4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4674 input63)).val
theorem input4675_def : input4675 = (.seq input4674 input63) := by
  unfold input4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4674 output63)).val
theorem output4675_def : output4675 = (.seq output4674 output63) := by
  unfold output4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4675_skip : Flapjack.WordAlloc.isSkip output4675 = false := by
  rw [output4675_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4675 input62)).val
theorem input4676_def : input4676 = (.seq input4675 input62) := by
  unfold input4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4675 output62)).val
theorem output4676_def : output4676 = (.seq output4675 output62) := by
  unfold output4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4676_skip : Flapjack.WordAlloc.isSkip output4676 = false := by
  rw [output4676_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4676 input59)).val
theorem input4677_def : input4677 = (.seq input4676 input59) := by
  unfold input4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4676 output59)).val
theorem output4677_def : output4677 = (.seq output4676 output59) := by
  unfold output4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4677_skip : Flapjack.WordAlloc.isSkip output4677 = false := by
  rw [output4677_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4677 input50)).val
theorem input4678_def : input4678 = (.seq input4677 input50) := by
  unfold input4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4677)).val
theorem output4678_def : output4678 = (output4677) := by
  unfold output4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4678_skip : Flapjack.WordAlloc.isSkip output4678 = false := by
  rw [output4678_def]
  exact output4677_skip


@[irreducible, cbv_opaque] def input4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4678 input49)).val
theorem input4679_def : input4679 = (.seq input4678 input49) := by
  unfold input4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4678 output49)).val
theorem output4679_def : output4679 = (.seq output4678 output49) := by
  unfold output4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4679_skip : Flapjack.WordAlloc.isSkip output4679 = false := by
  rw [output4679_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4679 input48)).val
theorem input4680_def : input4680 = (.seq input4679 input48) := by
  unfold input4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4679 output48)).val
theorem output4680_def : output4680 = (.seq output4679 output48) := by
  unfold output4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4680_skip : Flapjack.WordAlloc.isSkip output4680 = false := by
  rw [output4680_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4680 input45)).val
theorem input4681_def : input4681 = (.seq input4680 input45) := by
  unfold input4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4680 output45)).val
theorem output4681_def : output4681 = (.seq output4680 output45) := by
  unfold output4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4681_skip : Flapjack.WordAlloc.isSkip output4681 = false := by
  rw [output4681_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4681 input36)).val
theorem input4682_def : input4682 = (.seq input4681 input36) := by
  unfold input4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4681)).val
theorem output4682_def : output4682 = (output4681) := by
  unfold output4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4682_skip : Flapjack.WordAlloc.isSkip output4682 = false := by
  rw [output4682_def]
  exact output4681_skip


@[irreducible, cbv_opaque] def input4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4682 input35)).val
theorem input4683_def : input4683 = (.seq input4682 input35) := by
  unfold input4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4682 output35)).val
theorem output4683_def : output4683 = (.seq output4682 output35) := by
  unfold output4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4683_skip : Flapjack.WordAlloc.isSkip output4683 = false := by
  rw [output4683_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4683 input34)).val
theorem input4684_def : input4684 = (.seq input4683 input34) := by
  unfold input4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4683 output34)).val
theorem output4684_def : output4684 = (.seq output4683 output34) := by
  unfold output4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4684_skip : Flapjack.WordAlloc.isSkip output4684 = false := by
  rw [output4684_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4684 input31)).val
theorem input4685_def : input4685 = (.seq input4684 input31) := by
  unfold input4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4684 output31)).val
theorem output4685_def : output4685 = (.seq output4684 output31) := by
  unfold output4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4685_skip : Flapjack.WordAlloc.isSkip output4685 = false := by
  rw [output4685_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4685 input22)).val
theorem input4686_def : input4686 = (.seq input4685 input22) := by
  unfold input4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4685)).val
theorem output4686_def : output4686 = (output4685) := by
  unfold output4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4686_skip : Flapjack.WordAlloc.isSkip output4686 = false := by
  rw [output4686_def]
  exact output4685_skip


@[irreducible, cbv_opaque] def input4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4686 input21)).val
theorem input4687_def : input4687 = (.seq input4686 input21) := by
  unfold input4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4686 output21)).val
theorem output4687_def : output4687 = (.seq output4686 output21) := by
  unfold output4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4687_skip : Flapjack.WordAlloc.isSkip output4687 = false := by
  rw [output4687_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4687 input20)).val
theorem input4688_def : input4688 = (.seq input4687 input20) := by
  unfold input4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4687 output20)).val
theorem output4688_def : output4688 = (.seq output4687 output20) := by
  unfold output4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4688_skip : Flapjack.WordAlloc.isSkip output4688 = false := by
  rw [output4688_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4688 input17)).val
theorem input4689_def : input4689 = (.seq input4688 input17) := by
  unfold input4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4688 output17)).val
theorem output4689_def : output4689 = (.seq output4688 output17) := by
  unfold output4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4689_skip : Flapjack.WordAlloc.isSkip output4689 = false := by
  rw [output4689_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4689 input8)).val
theorem input4690_def : input4690 = (.seq input4689 input8) := by
  unfold input4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4689)).val
theorem output4690_def : output4690 = (output4689) := by
  unfold output4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4690_skip : Flapjack.WordAlloc.isSkip output4690 = false := by
  rw [output4690_def]
  exact output4689_skip


@[irreducible, cbv_opaque] def input4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4690 input7)).val
theorem input4691_def : input4691 = (.seq input4690 input7) := by
  unfold input4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4690 output7)).val
theorem output4691_def : output4691 = (.seq output4690 output7) := by
  unfold output4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4691_skip : Flapjack.WordAlloc.isSkip output4691 = false := by
  rw [output4691_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4691 input6)).val
theorem input4692_def : input4692 = (.seq input4691 input6) := by
  unfold input4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4691 output6)).val
theorem output4692_def : output4692 = (.seq output4691 output6) := by
  unfold output4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4692_skip : Flapjack.WordAlloc.isSkip output4692 = false := by
  rw [output4692_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4692 input3)).val
theorem input4693_def : input4693 = (.seq input4692 input3) := by
  unfold input4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4692 output3)).val
theorem output4693_def : output4693 = (.seq output4692 output3) := by
  unfold output4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4693_skip : Flapjack.WordAlloc.isSkip output4693 = false := by
  rw [output4693_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4693 input2)).val
theorem input4694_def : input4694 = (.seq input4693 input2) := by
  unfold input4694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4693 output2)).val
theorem output4694_def : output4694 = (.seq output4693 output2) := by
  unfold output4694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4694_skip : Flapjack.WordAlloc.isSkip output4694 = false := by
  rw [output4694_def]
  kernel_rfl


def value1820 : Flapjack.NumSet :=
Flapjack.Spt.ls PUnit.unit

@[irreducible, cbv_opaque] def input4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0)])).val
theorem input4695_def : input4695 = (Flapjack.WordLangProgHOL.move 1 [(13, 0)]) := by
  unfold input4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0)])).val
theorem output4695_def : output4695 = (Flapjack.WordLangProgHOL.move 1 [(13, 0)]) := by
  unfold output4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4695_skip : Flapjack.WordAlloc.isSkip output4695 = false := by
  rw [output4695_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4695 input4694)).val
theorem input4696_def : input4696 = (.seq input4695 input4694) := by
  unfold input4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4695 output4694)).val
theorem output4696_def : output4696 = (.seq output4695 output4694) := by
  unfold output4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4696_skip : Flapjack.WordAlloc.isSkip output4696 = false := by
  rw [output4696_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages830.Parallel
