import InitECandidate.Proofs.DeadStages713.Chunk056
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
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
  conv => lhs; cbv
  try rfl
theorem node14592_eq : Flapjack.WordAlloc.removeDeadStructural input14592 value5 value1 value2 = (output14592, value6896, value1) := by
  rw [input14592_def, output14592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11120_eq]
  try dsimp only
  rw [node14591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14593_eq : Flapjack.WordAlloc.removeDeadStructural input14593 value5558 value1 value2 = (output14593, value6896, value1) := by
  rw [input14593_def, output14593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11117_eq]
  try dsimp only
  rw [node14592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14594_eq : Flapjack.WordAlloc.removeDeadStructural input14594 value5558 value1 value2 = (output14594, value6896, value1) := by
  rw [input14594_def, output14594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11108_eq]
  try dsimp only
  rw [node14593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14595_eq : Flapjack.WordAlloc.removeDeadStructural input14595 value5557 value1 value2 = (output14595, value6896, value1) := by
  rw [input14595_def, output14595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11107_eq]
  try dsimp only
  rw [node14594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14596_eq : Flapjack.WordAlloc.removeDeadStructural input14596 value5 value1 value2 = (output14596, value6896, value1) := by
  rw [input14596_def, output14596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11106_eq]
  try dsimp only
  rw [node14595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14597_eq : Flapjack.WordAlloc.removeDeadStructural input14597 value5551 value1 value2 = (output14597, value6896, value1) := by
  rw [input14597_def, output14597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11103_eq]
  try dsimp only
  rw [node14596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14598_eq : Flapjack.WordAlloc.removeDeadStructural input14598 value5551 value1 value2 = (output14598, value6896, value1) := by
  rw [input14598_def, output14598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11094_eq]
  try dsimp only
  rw [node14597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14599_eq : Flapjack.WordAlloc.removeDeadStructural input14599 value5550 value1 value2 = (output14599, value6896, value1) := by
  rw [input14599_def, output14599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11093_eq]
  try dsimp only
  rw [node14598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14600_eq : Flapjack.WordAlloc.removeDeadStructural input14600 value5 value1 value2 = (output14600, value6896, value1) := by
  rw [input14600_def, output14600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11092_eq]
  try dsimp only
  rw [node14599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14601_eq : Flapjack.WordAlloc.removeDeadStructural input14601 value5544 value1 value2 = (output14601, value6896, value1) := by
  rw [input14601_def, output14601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11089_eq]
  try dsimp only
  rw [node14600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14602_eq : Flapjack.WordAlloc.removeDeadStructural input14602 value5544 value1 value2 = (output14602, value6896, value1) := by
  rw [input14602_def, output14602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11080_eq]
  try dsimp only
  rw [node14601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14603_eq : Flapjack.WordAlloc.removeDeadStructural input14603 value5543 value1 value2 = (output14603, value6896, value1) := by
  rw [input14603_def, output14603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11079_eq]
  try dsimp only
  rw [node14602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14604_eq : Flapjack.WordAlloc.removeDeadStructural input14604 value5 value1 value2 = (output14604, value6896, value1) := by
  rw [input14604_def, output14604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11078_eq]
  try dsimp only
  rw [node14603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14605_eq : Flapjack.WordAlloc.removeDeadStructural input14605 value5537 value1 value2 = (output14605, value6896, value1) := by
  rw [input14605_def, output14605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11075_eq]
  try dsimp only
  rw [node14604_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14606_eq : Flapjack.WordAlloc.removeDeadStructural input14606 value5537 value1 value2 = (output14606, value6896, value1) := by
  rw [input14606_def, output14606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11066_eq]
  try dsimp only
  rw [node14605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14607_eq : Flapjack.WordAlloc.removeDeadStructural input14607 value5536 value1 value2 = (output14607, value6896, value1) := by
  rw [input14607_def, output14607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11065_eq]
  try dsimp only
  rw [node14606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14608_eq : Flapjack.WordAlloc.removeDeadStructural input14608 value5 value1 value2 = (output14608, value6896, value1) := by
  rw [input14608_def, output14608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11064_eq]
  try dsimp only
  rw [node14607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14609_eq : Flapjack.WordAlloc.removeDeadStructural input14609 value5530 value1 value2 = (output14609, value6896, value1) := by
  rw [input14609_def, output14609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11061_eq]
  try dsimp only
  rw [node14608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14610_eq : Flapjack.WordAlloc.removeDeadStructural input14610 value5530 value1 value2 = (output14610, value6896, value1) := by
  rw [input14610_def, output14610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11052_eq]
  try dsimp only
  rw [node14609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14611_eq : Flapjack.WordAlloc.removeDeadStructural input14611 value5529 value1 value2 = (output14611, value6896, value1) := by
  rw [input14611_def, output14611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11051_eq]
  try dsimp only
  rw [node14610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14612_eq : Flapjack.WordAlloc.removeDeadStructural input14612 value5 value1 value2 = (output14612, value6896, value1) := by
  rw [input14612_def, output14612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11050_eq]
  try dsimp only
  rw [node14611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14613_eq : Flapjack.WordAlloc.removeDeadStructural input14613 value5523 value1 value2 = (output14613, value6896, value1) := by
  rw [input14613_def, output14613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11047_eq]
  try dsimp only
  rw [node14612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14614_eq : Flapjack.WordAlloc.removeDeadStructural input14614 value5523 value1 value2 = (output14614, value6896, value1) := by
  rw [input14614_def, output14614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11038_eq]
  try dsimp only
  rw [node14613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14615_eq : Flapjack.WordAlloc.removeDeadStructural input14615 value5522 value1 value2 = (output14615, value6896, value1) := by
  rw [input14615_def, output14615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11037_eq]
  try dsimp only
  rw [node14614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14616_eq : Flapjack.WordAlloc.removeDeadStructural input14616 value5 value1 value2 = (output14616, value6896, value1) := by
  rw [input14616_def, output14616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11036_eq]
  try dsimp only
  rw [node14615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14617_eq : Flapjack.WordAlloc.removeDeadStructural input14617 value5516 value1 value2 = (output14617, value6896, value1) := by
  rw [input14617_def, output14617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11033_eq]
  try dsimp only
  rw [node14616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14618_eq : Flapjack.WordAlloc.removeDeadStructural input14618 value5516 value1 value2 = (output14618, value6896, value1) := by
  rw [input14618_def, output14618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11024_eq]
  try dsimp only
  rw [node14617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14619_eq : Flapjack.WordAlloc.removeDeadStructural input14619 value5515 value1 value2 = (output14619, value6896, value1) := by
  rw [input14619_def, output14619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11023_eq]
  try dsimp only
  rw [node14618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14620_eq : Flapjack.WordAlloc.removeDeadStructural input14620 value5 value1 value2 = (output14620, value6896, value1) := by
  rw [input14620_def, output14620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11022_eq]
  try dsimp only
  rw [node14619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14621_eq : Flapjack.WordAlloc.removeDeadStructural input14621 value5509 value1 value2 = (output14621, value6896, value1) := by
  rw [input14621_def, output14621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11019_eq]
  try dsimp only
  rw [node14620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14622_eq : Flapjack.WordAlloc.removeDeadStructural input14622 value5509 value1 value2 = (output14622, value6896, value1) := by
  rw [input14622_def, output14622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11010_eq]
  try dsimp only
  rw [node14621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14623_eq : Flapjack.WordAlloc.removeDeadStructural input14623 value5508 value1 value2 = (output14623, value6896, value1) := by
  rw [input14623_def, output14623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11009_eq]
  try dsimp only
  rw [node14622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14624_eq : Flapjack.WordAlloc.removeDeadStructural input14624 value5 value1 value2 = (output14624, value6896, value1) := by
  rw [input14624_def, output14624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11008_eq]
  try dsimp only
  rw [node14623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14625_eq : Flapjack.WordAlloc.removeDeadStructural input14625 value5502 value1 value2 = (output14625, value6896, value1) := by
  rw [input14625_def, output14625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11005_eq]
  try dsimp only
  rw [node14624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14626_eq : Flapjack.WordAlloc.removeDeadStructural input14626 value5502 value1 value2 = (output14626, value6896, value1) := by
  rw [input14626_def, output14626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10996_eq]
  try dsimp only
  rw [node14625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14627_eq : Flapjack.WordAlloc.removeDeadStructural input14627 value5501 value1 value2 = (output14627, value6896, value1) := by
  rw [input14627_def, output14627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10995_eq]
  try dsimp only
  rw [node14626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14628_eq : Flapjack.WordAlloc.removeDeadStructural input14628 value5 value1 value2 = (output14628, value6896, value1) := by
  rw [input14628_def, output14628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10994_eq]
  try dsimp only
  rw [node14627_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14629_eq : Flapjack.WordAlloc.removeDeadStructural input14629 value5495 value1 value2 = (output14629, value6896, value1) := by
  rw [input14629_def, output14629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10991_eq]
  try dsimp only
  rw [node14628_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14630_eq : Flapjack.WordAlloc.removeDeadStructural input14630 value5495 value1 value2 = (output14630, value6896, value1) := by
  rw [input14630_def, output14630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10982_eq]
  try dsimp only
  rw [node14629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14631_eq : Flapjack.WordAlloc.removeDeadStructural input14631 value5494 value1 value2 = (output14631, value6896, value1) := by
  rw [input14631_def, output14631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10981_eq]
  try dsimp only
  rw [node14630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14632_eq : Flapjack.WordAlloc.removeDeadStructural input14632 value5 value1 value2 = (output14632, value6896, value1) := by
  rw [input14632_def, output14632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10980_eq]
  try dsimp only
  rw [node14631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14633_eq : Flapjack.WordAlloc.removeDeadStructural input14633 value5488 value1 value2 = (output14633, value6896, value1) := by
  rw [input14633_def, output14633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10977_eq]
  try dsimp only
  rw [node14632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14634_eq : Flapjack.WordAlloc.removeDeadStructural input14634 value5488 value1 value2 = (output14634, value6896, value1) := by
  rw [input14634_def, output14634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10968_eq]
  try dsimp only
  rw [node14633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14635_eq : Flapjack.WordAlloc.removeDeadStructural input14635 value5487 value1 value2 = (output14635, value6896, value1) := by
  rw [input14635_def, output14635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10967_eq]
  try dsimp only
  rw [node14634_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14636_eq : Flapjack.WordAlloc.removeDeadStructural input14636 value5 value1 value2 = (output14636, value6896, value1) := by
  rw [input14636_def, output14636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10966_eq]
  try dsimp only
  rw [node14635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14637_eq : Flapjack.WordAlloc.removeDeadStructural input14637 value5481 value1 value2 = (output14637, value6896, value1) := by
  rw [input14637_def, output14637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10963_eq]
  try dsimp only
  rw [node14636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14638_eq : Flapjack.WordAlloc.removeDeadStructural input14638 value5481 value1 value2 = (output14638, value6896, value1) := by
  rw [input14638_def, output14638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10954_eq]
  try dsimp only
  rw [node14637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14639_eq : Flapjack.WordAlloc.removeDeadStructural input14639 value5480 value1 value2 = (output14639, value6896, value1) := by
  rw [input14639_def, output14639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10953_eq]
  try dsimp only
  rw [node14638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14640_eq : Flapjack.WordAlloc.removeDeadStructural input14640 value5 value1 value2 = (output14640, value6896, value1) := by
  rw [input14640_def, output14640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10952_eq]
  try dsimp only
  rw [node14639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14641_eq : Flapjack.WordAlloc.removeDeadStructural input14641 value5474 value1 value2 = (output14641, value6896, value1) := by
  rw [input14641_def, output14641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10949_eq]
  try dsimp only
  rw [node14640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14642_eq : Flapjack.WordAlloc.removeDeadStructural input14642 value5474 value1 value2 = (output14642, value6896, value1) := by
  rw [input14642_def, output14642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10940_eq]
  try dsimp only
  rw [node14641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14643_eq : Flapjack.WordAlloc.removeDeadStructural input14643 value5473 value1 value2 = (output14643, value6896, value1) := by
  rw [input14643_def, output14643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10939_eq]
  try dsimp only
  rw [node14642_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14644_eq : Flapjack.WordAlloc.removeDeadStructural input14644 value5 value1 value2 = (output14644, value6896, value1) := by
  rw [input14644_def, output14644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10938_eq]
  try dsimp only
  rw [node14643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14645_eq : Flapjack.WordAlloc.removeDeadStructural input14645 value5467 value1 value2 = (output14645, value6896, value1) := by
  rw [input14645_def, output14645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10935_eq]
  try dsimp only
  rw [node14644_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14646_eq : Flapjack.WordAlloc.removeDeadStructural input14646 value5467 value1 value2 = (output14646, value6896, value1) := by
  rw [input14646_def, output14646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10926_eq]
  try dsimp only
  rw [node14645_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14647_eq : Flapjack.WordAlloc.removeDeadStructural input14647 value5466 value1 value2 = (output14647, value6896, value1) := by
  rw [input14647_def, output14647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10925_eq]
  try dsimp only
  rw [node14646_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14648_eq : Flapjack.WordAlloc.removeDeadStructural input14648 value5 value1 value2 = (output14648, value6896, value1) := by
  rw [input14648_def, output14648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10924_eq]
  try dsimp only
  rw [node14647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14649_eq : Flapjack.WordAlloc.removeDeadStructural input14649 value5460 value1 value2 = (output14649, value6896, value1) := by
  rw [input14649_def, output14649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10921_eq]
  try dsimp only
  rw [node14648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14650_eq : Flapjack.WordAlloc.removeDeadStructural input14650 value5460 value1 value2 = (output14650, value6896, value1) := by
  rw [input14650_def, output14650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10912_eq]
  try dsimp only
  rw [node14649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14651_eq : Flapjack.WordAlloc.removeDeadStructural input14651 value5459 value1 value2 = (output14651, value6896, value1) := by
  rw [input14651_def, output14651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10911_eq]
  try dsimp only
  rw [node14650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14652_eq : Flapjack.WordAlloc.removeDeadStructural input14652 value5 value1 value2 = (output14652, value6896, value1) := by
  rw [input14652_def, output14652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10910_eq]
  try dsimp only
  rw [node14651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14653_eq : Flapjack.WordAlloc.removeDeadStructural input14653 value5453 value1 value2 = (output14653, value6896, value1) := by
  rw [input14653_def, output14653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10907_eq]
  try dsimp only
  rw [node14652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14654_eq : Flapjack.WordAlloc.removeDeadStructural input14654 value5453 value1 value2 = (output14654, value6896, value1) := by
  rw [input14654_def, output14654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10898_eq]
  try dsimp only
  rw [node14653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14655_eq : Flapjack.WordAlloc.removeDeadStructural input14655 value5452 value1 value2 = (output14655, value6896, value1) := by
  rw [input14655_def, output14655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10897_eq]
  try dsimp only
  rw [node14654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14656_eq : Flapjack.WordAlloc.removeDeadStructural input14656 value5 value1 value2 = (output14656, value6896, value1) := by
  rw [input14656_def, output14656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10896_eq]
  try dsimp only
  rw [node14655_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14657_eq : Flapjack.WordAlloc.removeDeadStructural input14657 value5446 value1 value2 = (output14657, value6896, value1) := by
  rw [input14657_def, output14657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10893_eq]
  try dsimp only
  rw [node14656_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14658_eq : Flapjack.WordAlloc.removeDeadStructural input14658 value5446 value1 value2 = (output14658, value6896, value1) := by
  rw [input14658_def, output14658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10884_eq]
  try dsimp only
  rw [node14657_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14659_eq : Flapjack.WordAlloc.removeDeadStructural input14659 value5445 value1 value2 = (output14659, value6896, value1) := by
  rw [input14659_def, output14659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10883_eq]
  try dsimp only
  rw [node14658_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14660_eq : Flapjack.WordAlloc.removeDeadStructural input14660 value5 value1 value2 = (output14660, value6896, value1) := by
  rw [input14660_def, output14660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10882_eq]
  try dsimp only
  rw [node14659_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14661_eq : Flapjack.WordAlloc.removeDeadStructural input14661 value5439 value1 value2 = (output14661, value6896, value1) := by
  rw [input14661_def, output14661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10879_eq]
  try dsimp only
  rw [node14660_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14662_eq : Flapjack.WordAlloc.removeDeadStructural input14662 value5439 value1 value2 = (output14662, value6896, value1) := by
  rw [input14662_def, output14662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10870_eq]
  try dsimp only
  rw [node14661_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14663_eq : Flapjack.WordAlloc.removeDeadStructural input14663 value5438 value1 value2 = (output14663, value6896, value1) := by
  rw [input14663_def, output14663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10869_eq]
  try dsimp only
  rw [node14662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14664_eq : Flapjack.WordAlloc.removeDeadStructural input14664 value5 value1 value2 = (output14664, value6896, value1) := by
  rw [input14664_def, output14664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10868_eq]
  try dsimp only
  rw [node14663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14665_eq : Flapjack.WordAlloc.removeDeadStructural input14665 value5432 value1 value2 = (output14665, value6896, value1) := by
  rw [input14665_def, output14665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10865_eq]
  try dsimp only
  rw [node14664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14666_eq : Flapjack.WordAlloc.removeDeadStructural input14666 value5432 value1 value2 = (output14666, value6896, value1) := by
  rw [input14666_def, output14666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10856_eq]
  try dsimp only
  rw [node14665_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14667_eq : Flapjack.WordAlloc.removeDeadStructural input14667 value5431 value1 value2 = (output14667, value6896, value1) := by
  rw [input14667_def, output14667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10855_eq]
  try dsimp only
  rw [node14666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14668_eq : Flapjack.WordAlloc.removeDeadStructural input14668 value5 value1 value2 = (output14668, value6896, value1) := by
  rw [input14668_def, output14668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10854_eq]
  try dsimp only
  rw [node14667_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14669_eq : Flapjack.WordAlloc.removeDeadStructural input14669 value5425 value1 value2 = (output14669, value6896, value1) := by
  rw [input14669_def, output14669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10851_eq]
  try dsimp only
  rw [node14668_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14670_eq : Flapjack.WordAlloc.removeDeadStructural input14670 value5425 value1 value2 = (output14670, value6896, value1) := by
  rw [input14670_def, output14670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10842_eq]
  try dsimp only
  rw [node14669_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14671_eq : Flapjack.WordAlloc.removeDeadStructural input14671 value5424 value1 value2 = (output14671, value6896, value1) := by
  rw [input14671_def, output14671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10841_eq]
  try dsimp only
  rw [node14670_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14672_eq : Flapjack.WordAlloc.removeDeadStructural input14672 value5 value1 value2 = (output14672, value6896, value1) := by
  rw [input14672_def, output14672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10840_eq]
  try dsimp only
  rw [node14671_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14673_eq : Flapjack.WordAlloc.removeDeadStructural input14673 value5418 value1 value2 = (output14673, value6896, value1) := by
  rw [input14673_def, output14673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10837_eq]
  try dsimp only
  rw [node14672_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14674_eq : Flapjack.WordAlloc.removeDeadStructural input14674 value5418 value1 value2 = (output14674, value6896, value1) := by
  rw [input14674_def, output14674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10828_eq]
  try dsimp only
  rw [node14673_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14675_eq : Flapjack.WordAlloc.removeDeadStructural input14675 value5417 value1 value2 = (output14675, value6896, value1) := by
  rw [input14675_def, output14675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10827_eq]
  try dsimp only
  rw [node14674_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14676_eq : Flapjack.WordAlloc.removeDeadStructural input14676 value5 value1 value2 = (output14676, value6896, value1) := by
  rw [input14676_def, output14676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10826_eq]
  try dsimp only
  rw [node14675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14677_eq : Flapjack.WordAlloc.removeDeadStructural input14677 value5411 value1 value2 = (output14677, value6896, value1) := by
  rw [input14677_def, output14677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10823_eq]
  try dsimp only
  rw [node14676_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14678_eq : Flapjack.WordAlloc.removeDeadStructural input14678 value5411 value1 value2 = (output14678, value6896, value1) := by
  rw [input14678_def, output14678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10814_eq]
  try dsimp only
  rw [node14677_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14679_eq : Flapjack.WordAlloc.removeDeadStructural input14679 value5410 value1 value2 = (output14679, value6896, value1) := by
  rw [input14679_def, output14679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10813_eq]
  try dsimp only
  rw [node14678_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14680_eq : Flapjack.WordAlloc.removeDeadStructural input14680 value5 value1 value2 = (output14680, value6896, value1) := by
  rw [input14680_def, output14680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10812_eq]
  try dsimp only
  rw [node14679_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14681_eq : Flapjack.WordAlloc.removeDeadStructural input14681 value5404 value1 value2 = (output14681, value6896, value1) := by
  rw [input14681_def, output14681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10809_eq]
  try dsimp only
  rw [node14680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14682_eq : Flapjack.WordAlloc.removeDeadStructural input14682 value5404 value1 value2 = (output14682, value6896, value1) := by
  rw [input14682_def, output14682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10800_eq]
  try dsimp only
  rw [node14681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14683_eq : Flapjack.WordAlloc.removeDeadStructural input14683 value5403 value1 value2 = (output14683, value6896, value1) := by
  rw [input14683_def, output14683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10799_eq]
  try dsimp only
  rw [node14682_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14684_eq : Flapjack.WordAlloc.removeDeadStructural input14684 value5 value1 value2 = (output14684, value6896, value1) := by
  rw [input14684_def, output14684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10798_eq]
  try dsimp only
  rw [node14683_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14685_eq : Flapjack.WordAlloc.removeDeadStructural input14685 value5397 value1 value2 = (output14685, value6896, value1) := by
  rw [input14685_def, output14685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10795_eq]
  try dsimp only
  rw [node14684_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14686_eq : Flapjack.WordAlloc.removeDeadStructural input14686 value5397 value1 value2 = (output14686, value6896, value1) := by
  rw [input14686_def, output14686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10786_eq]
  try dsimp only
  rw [node14685_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14687_eq : Flapjack.WordAlloc.removeDeadStructural input14687 value5396 value1 value2 = (output14687, value6896, value1) := by
  rw [input14687_def, output14687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10785_eq]
  try dsimp only
  rw [node14686_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14688_eq : Flapjack.WordAlloc.removeDeadStructural input14688 value5 value1 value2 = (output14688, value6896, value1) := by
  rw [input14688_def, output14688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10784_eq]
  try dsimp only
  rw [node14687_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14689_eq : Flapjack.WordAlloc.removeDeadStructural input14689 value5390 value1 value2 = (output14689, value6896, value1) := by
  rw [input14689_def, output14689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10781_eq]
  try dsimp only
  rw [node14688_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14690_eq : Flapjack.WordAlloc.removeDeadStructural input14690 value5390 value1 value2 = (output14690, value6896, value1) := by
  rw [input14690_def, output14690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10772_eq]
  try dsimp only
  rw [node14689_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14691_eq : Flapjack.WordAlloc.removeDeadStructural input14691 value5389 value1 value2 = (output14691, value6896, value1) := by
  rw [input14691_def, output14691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10771_eq]
  try dsimp only
  rw [node14690_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14692_eq : Flapjack.WordAlloc.removeDeadStructural input14692 value5 value1 value2 = (output14692, value6896, value1) := by
  rw [input14692_def, output14692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10770_eq]
  try dsimp only
  rw [node14691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14693_eq : Flapjack.WordAlloc.removeDeadStructural input14693 value5383 value1 value2 = (output14693, value6896, value1) := by
  rw [input14693_def, output14693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10767_eq]
  try dsimp only
  rw [node14692_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14694_eq : Flapjack.WordAlloc.removeDeadStructural input14694 value5383 value1 value2 = (output14694, value6896, value1) := by
  rw [input14694_def, output14694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10758_eq]
  try dsimp only
  rw [node14693_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14695_eq : Flapjack.WordAlloc.removeDeadStructural input14695 value5382 value1 value2 = (output14695, value6896, value1) := by
  rw [input14695_def, output14695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10757_eq]
  try dsimp only
  rw [node14694_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14696_eq : Flapjack.WordAlloc.removeDeadStructural input14696 value5 value1 value2 = (output14696, value6896, value1) := by
  rw [input14696_def, output14696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10756_eq]
  try dsimp only
  rw [node14695_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14697_eq : Flapjack.WordAlloc.removeDeadStructural input14697 value5376 value1 value2 = (output14697, value6896, value1) := by
  rw [input14697_def, output14697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10753_eq]
  try dsimp only
  rw [node14696_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14698_eq : Flapjack.WordAlloc.removeDeadStructural input14698 value5376 value1 value2 = (output14698, value6896, value1) := by
  rw [input14698_def, output14698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10744_eq]
  try dsimp only
  rw [node14697_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14699_eq : Flapjack.WordAlloc.removeDeadStructural input14699 value5375 value1 value2 = (output14699, value6896, value1) := by
  rw [input14699_def, output14699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10743_eq]
  try dsimp only
  rw [node14698_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14700_eq : Flapjack.WordAlloc.removeDeadStructural input14700 value5 value1 value2 = (output14700, value6896, value1) := by
  rw [input14700_def, output14700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10742_eq]
  try dsimp only
  rw [node14699_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14701_eq : Flapjack.WordAlloc.removeDeadStructural input14701 value5369 value1 value2 = (output14701, value6896, value1) := by
  rw [input14701_def, output14701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10739_eq]
  try dsimp only
  rw [node14700_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14702_eq : Flapjack.WordAlloc.removeDeadStructural input14702 value5369 value1 value2 = (output14702, value6896, value1) := by
  rw [input14702_def, output14702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10730_eq]
  try dsimp only
  rw [node14701_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14703_eq : Flapjack.WordAlloc.removeDeadStructural input14703 value5368 value1 value2 = (output14703, value6896, value1) := by
  rw [input14703_def, output14703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10729_eq]
  try dsimp only
  rw [node14702_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14704_eq : Flapjack.WordAlloc.removeDeadStructural input14704 value5 value1 value2 = (output14704, value6896, value1) := by
  rw [input14704_def, output14704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10728_eq]
  try dsimp only
  rw [node14703_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14705_eq : Flapjack.WordAlloc.removeDeadStructural input14705 value5362 value1 value2 = (output14705, value6896, value1) := by
  rw [input14705_def, output14705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10725_eq]
  try dsimp only
  rw [node14704_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14706_eq : Flapjack.WordAlloc.removeDeadStructural input14706 value5362 value1 value2 = (output14706, value6896, value1) := by
  rw [input14706_def, output14706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10716_eq]
  try dsimp only
  rw [node14705_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14707_eq : Flapjack.WordAlloc.removeDeadStructural input14707 value5361 value1 value2 = (output14707, value6896, value1) := by
  rw [input14707_def, output14707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10715_eq]
  try dsimp only
  rw [node14706_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14708_eq : Flapjack.WordAlloc.removeDeadStructural input14708 value5 value1 value2 = (output14708, value6896, value1) := by
  rw [input14708_def, output14708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10714_eq]
  try dsimp only
  rw [node14707_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14709_eq : Flapjack.WordAlloc.removeDeadStructural input14709 value5355 value1 value2 = (output14709, value6896, value1) := by
  rw [input14709_def, output14709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10711_eq]
  try dsimp only
  rw [node14708_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14710_eq : Flapjack.WordAlloc.removeDeadStructural input14710 value5355 value1 value2 = (output14710, value6896, value1) := by
  rw [input14710_def, output14710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10702_eq]
  try dsimp only
  rw [node14709_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14711_eq : Flapjack.WordAlloc.removeDeadStructural input14711 value5354 value1 value2 = (output14711, value6896, value1) := by
  rw [input14711_def, output14711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10701_eq]
  try dsimp only
  rw [node14710_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14712_eq : Flapjack.WordAlloc.removeDeadStructural input14712 value5 value1 value2 = (output14712, value6896, value1) := by
  rw [input14712_def, output14712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10700_eq]
  try dsimp only
  rw [node14711_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14713_eq : Flapjack.WordAlloc.removeDeadStructural input14713 value5348 value1 value2 = (output14713, value6896, value1) := by
  rw [input14713_def, output14713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10697_eq]
  try dsimp only
  rw [node14712_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14714_eq : Flapjack.WordAlloc.removeDeadStructural input14714 value5348 value1 value2 = (output14714, value6896, value1) := by
  rw [input14714_def, output14714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10688_eq]
  try dsimp only
  rw [node14713_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14715_eq : Flapjack.WordAlloc.removeDeadStructural input14715 value5347 value1 value2 = (output14715, value6896, value1) := by
  rw [input14715_def, output14715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10687_eq]
  try dsimp only
  rw [node14714_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14716_eq : Flapjack.WordAlloc.removeDeadStructural input14716 value5 value1 value2 = (output14716, value6896, value1) := by
  rw [input14716_def, output14716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10686_eq]
  try dsimp only
  rw [node14715_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14717_eq : Flapjack.WordAlloc.removeDeadStructural input14717 value5341 value1 value2 = (output14717, value6896, value1) := by
  rw [input14717_def, output14717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10683_eq]
  try dsimp only
  rw [node14716_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14718_eq : Flapjack.WordAlloc.removeDeadStructural input14718 value5341 value1 value2 = (output14718, value6896, value1) := by
  rw [input14718_def, output14718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10674_eq]
  try dsimp only
  rw [node14717_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14719_eq : Flapjack.WordAlloc.removeDeadStructural input14719 value5340 value1 value2 = (output14719, value6896, value1) := by
  rw [input14719_def, output14719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10673_eq]
  try dsimp only
  rw [node14718_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14720_eq : Flapjack.WordAlloc.removeDeadStructural input14720 value5 value1 value2 = (output14720, value6896, value1) := by
  rw [input14720_def, output14720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10672_eq]
  try dsimp only
  rw [node14719_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14721_eq : Flapjack.WordAlloc.removeDeadStructural input14721 value5334 value1 value2 = (output14721, value6896, value1) := by
  rw [input14721_def, output14721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10669_eq]
  try dsimp only
  rw [node14720_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14722_eq : Flapjack.WordAlloc.removeDeadStructural input14722 value5334 value1 value2 = (output14722, value6896, value1) := by
  rw [input14722_def, output14722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10660_eq]
  try dsimp only
  rw [node14721_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14723_eq : Flapjack.WordAlloc.removeDeadStructural input14723 value5333 value1 value2 = (output14723, value6896, value1) := by
  rw [input14723_def, output14723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10659_eq]
  try dsimp only
  rw [node14722_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14724_eq : Flapjack.WordAlloc.removeDeadStructural input14724 value5 value1 value2 = (output14724, value6896, value1) := by
  rw [input14724_def, output14724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10658_eq]
  try dsimp only
  rw [node14723_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14725_eq : Flapjack.WordAlloc.removeDeadStructural input14725 value5327 value1 value2 = (output14725, value6896, value1) := by
  rw [input14725_def, output14725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10655_eq]
  try dsimp only
  rw [node14724_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14726_eq : Flapjack.WordAlloc.removeDeadStructural input14726 value5327 value1 value2 = (output14726, value6896, value1) := by
  rw [input14726_def, output14726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10646_eq]
  try dsimp only
  rw [node14725_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14727_eq : Flapjack.WordAlloc.removeDeadStructural input14727 value5326 value1 value2 = (output14727, value6896, value1) := by
  rw [input14727_def, output14727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10645_eq]
  try dsimp only
  rw [node14726_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14728_eq : Flapjack.WordAlloc.removeDeadStructural input14728 value5 value1 value2 = (output14728, value6896, value1) := by
  rw [input14728_def, output14728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10644_eq]
  try dsimp only
  rw [node14727_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14729_eq : Flapjack.WordAlloc.removeDeadStructural input14729 value5320 value1 value2 = (output14729, value6896, value1) := by
  rw [input14729_def, output14729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10641_eq]
  try dsimp only
  rw [node14728_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14730_eq : Flapjack.WordAlloc.removeDeadStructural input14730 value5320 value1 value2 = (output14730, value6896, value1) := by
  rw [input14730_def, output14730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10632_eq]
  try dsimp only
  rw [node14729_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14731_eq : Flapjack.WordAlloc.removeDeadStructural input14731 value5319 value1 value2 = (output14731, value6896, value1) := by
  rw [input14731_def, output14731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10631_eq]
  try dsimp only
  rw [node14730_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14732_eq : Flapjack.WordAlloc.removeDeadStructural input14732 value5 value1 value2 = (output14732, value6896, value1) := by
  rw [input14732_def, output14732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10630_eq]
  try dsimp only
  rw [node14731_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14733_eq : Flapjack.WordAlloc.removeDeadStructural input14733 value5313 value1 value2 = (output14733, value6896, value1) := by
  rw [input14733_def, output14733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10627_eq]
  try dsimp only
  rw [node14732_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14734_eq : Flapjack.WordAlloc.removeDeadStructural input14734 value5313 value1 value2 = (output14734, value6896, value1) := by
  rw [input14734_def, output14734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10618_eq]
  try dsimp only
  rw [node14733_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14735_eq : Flapjack.WordAlloc.removeDeadStructural input14735 value5312 value1 value2 = (output14735, value6896, value1) := by
  rw [input14735_def, output14735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10617_eq]
  try dsimp only
  rw [node14734_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14736_eq : Flapjack.WordAlloc.removeDeadStructural input14736 value5 value1 value2 = (output14736, value6896, value1) := by
  rw [input14736_def, output14736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10616_eq]
  try dsimp only
  rw [node14735_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14737_eq : Flapjack.WordAlloc.removeDeadStructural input14737 value5306 value1 value2 = (output14737, value6896, value1) := by
  rw [input14737_def, output14737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10613_eq]
  try dsimp only
  rw [node14736_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14738_eq : Flapjack.WordAlloc.removeDeadStructural input14738 value5306 value1 value2 = (output14738, value6896, value1) := by
  rw [input14738_def, output14738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10604_eq]
  try dsimp only
  rw [node14737_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14739_eq : Flapjack.WordAlloc.removeDeadStructural input14739 value5305 value1 value2 = (output14739, value6896, value1) := by
  rw [input14739_def, output14739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10603_eq]
  try dsimp only
  rw [node14738_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14740_eq : Flapjack.WordAlloc.removeDeadStructural input14740 value5 value1 value2 = (output14740, value6896, value1) := by
  rw [input14740_def, output14740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10602_eq]
  try dsimp only
  rw [node14739_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14741_eq : Flapjack.WordAlloc.removeDeadStructural input14741 value5299 value1 value2 = (output14741, value6896, value1) := by
  rw [input14741_def, output14741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10599_eq]
  try dsimp only
  rw [node14740_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14742_eq : Flapjack.WordAlloc.removeDeadStructural input14742 value5299 value1 value2 = (output14742, value6896, value1) := by
  rw [input14742_def, output14742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10590_eq]
  try dsimp only
  rw [node14741_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14743_eq : Flapjack.WordAlloc.removeDeadStructural input14743 value5298 value1 value2 = (output14743, value6896, value1) := by
  rw [input14743_def, output14743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10589_eq]
  try dsimp only
  rw [node14742_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14744_eq : Flapjack.WordAlloc.removeDeadStructural input14744 value5 value1 value2 = (output14744, value6896, value1) := by
  rw [input14744_def, output14744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10588_eq]
  try dsimp only
  rw [node14743_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14745_eq : Flapjack.WordAlloc.removeDeadStructural input14745 value5292 value1 value2 = (output14745, value6896, value1) := by
  rw [input14745_def, output14745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10585_eq]
  try dsimp only
  rw [node14744_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14746_eq : Flapjack.WordAlloc.removeDeadStructural input14746 value5292 value1 value2 = (output14746, value6896, value1) := by
  rw [input14746_def, output14746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10576_eq]
  try dsimp only
  rw [node14745_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14747_eq : Flapjack.WordAlloc.removeDeadStructural input14747 value5291 value1 value2 = (output14747, value6896, value1) := by
  rw [input14747_def, output14747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10575_eq]
  try dsimp only
  rw [node14746_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14748_eq : Flapjack.WordAlloc.removeDeadStructural input14748 value5 value1 value2 = (output14748, value6896, value1) := by
  rw [input14748_def, output14748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10574_eq]
  try dsimp only
  rw [node14747_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14749_eq : Flapjack.WordAlloc.removeDeadStructural input14749 value5285 value1 value2 = (output14749, value6896, value1) := by
  rw [input14749_def, output14749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10571_eq]
  try dsimp only
  rw [node14748_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14750_eq : Flapjack.WordAlloc.removeDeadStructural input14750 value5285 value1 value2 = (output14750, value6896, value1) := by
  rw [input14750_def, output14750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10562_eq]
  try dsimp only
  rw [node14749_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14751_eq : Flapjack.WordAlloc.removeDeadStructural input14751 value5284 value1 value2 = (output14751, value6896, value1) := by
  rw [input14751_def, output14751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10561_eq]
  try dsimp only
  rw [node14750_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14752_eq : Flapjack.WordAlloc.removeDeadStructural input14752 value5 value1 value2 = (output14752, value6896, value1) := by
  rw [input14752_def, output14752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10560_eq]
  try dsimp only
  rw [node14751_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14753_eq : Flapjack.WordAlloc.removeDeadStructural input14753 value5278 value1 value2 = (output14753, value6896, value1) := by
  rw [input14753_def, output14753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10557_eq]
  try dsimp only
  rw [node14752_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14754_eq : Flapjack.WordAlloc.removeDeadStructural input14754 value5278 value1 value2 = (output14754, value6896, value1) := by
  rw [input14754_def, output14754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10548_eq]
  try dsimp only
  rw [node14753_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14755_eq : Flapjack.WordAlloc.removeDeadStructural input14755 value5277 value1 value2 = (output14755, value6896, value1) := by
  rw [input14755_def, output14755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10547_eq]
  try dsimp only
  rw [node14754_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14756_eq : Flapjack.WordAlloc.removeDeadStructural input14756 value5 value1 value2 = (output14756, value6896, value1) := by
  rw [input14756_def, output14756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10546_eq]
  try dsimp only
  rw [node14755_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14757_eq : Flapjack.WordAlloc.removeDeadStructural input14757 value5271 value1 value2 = (output14757, value6896, value1) := by
  rw [input14757_def, output14757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10543_eq]
  try dsimp only
  rw [node14756_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14758_eq : Flapjack.WordAlloc.removeDeadStructural input14758 value5271 value1 value2 = (output14758, value6896, value1) := by
  rw [input14758_def, output14758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10534_eq]
  try dsimp only
  rw [node14757_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14759_eq : Flapjack.WordAlloc.removeDeadStructural input14759 value5270 value1 value2 = (output14759, value6896, value1) := by
  rw [input14759_def, output14759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10533_eq]
  try dsimp only
  rw [node14758_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14760_eq : Flapjack.WordAlloc.removeDeadStructural input14760 value5 value1 value2 = (output14760, value6896, value1) := by
  rw [input14760_def, output14760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10532_eq]
  try dsimp only
  rw [node14759_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14761_eq : Flapjack.WordAlloc.removeDeadStructural input14761 value5264 value1 value2 = (output14761, value6896, value1) := by
  rw [input14761_def, output14761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10529_eq]
  try dsimp only
  rw [node14760_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14762_eq : Flapjack.WordAlloc.removeDeadStructural input14762 value5264 value1 value2 = (output14762, value6896, value1) := by
  rw [input14762_def, output14762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10520_eq]
  try dsimp only
  rw [node14761_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14763_eq : Flapjack.WordAlloc.removeDeadStructural input14763 value5263 value1 value2 = (output14763, value6896, value1) := by
  rw [input14763_def, output14763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10519_eq]
  try dsimp only
  rw [node14762_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14764_eq : Flapjack.WordAlloc.removeDeadStructural input14764 value5 value1 value2 = (output14764, value6896, value1) := by
  rw [input14764_def, output14764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10518_eq]
  try dsimp only
  rw [node14763_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14765_eq : Flapjack.WordAlloc.removeDeadStructural input14765 value5257 value1 value2 = (output14765, value6896, value1) := by
  rw [input14765_def, output14765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10515_eq]
  try dsimp only
  rw [node14764_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14766_eq : Flapjack.WordAlloc.removeDeadStructural input14766 value5257 value1 value2 = (output14766, value6896, value1) := by
  rw [input14766_def, output14766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10506_eq]
  try dsimp only
  rw [node14765_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14767_eq : Flapjack.WordAlloc.removeDeadStructural input14767 value5256 value1 value2 = (output14767, value6896, value1) := by
  rw [input14767_def, output14767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10505_eq]
  try dsimp only
  rw [node14766_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14768_eq : Flapjack.WordAlloc.removeDeadStructural input14768 value5 value1 value2 = (output14768, value6896, value1) := by
  rw [input14768_def, output14768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10504_eq]
  try dsimp only
  rw [node14767_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14769_eq : Flapjack.WordAlloc.removeDeadStructural input14769 value5250 value1 value2 = (output14769, value6896, value1) := by
  rw [input14769_def, output14769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10501_eq]
  try dsimp only
  rw [node14768_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14770_eq : Flapjack.WordAlloc.removeDeadStructural input14770 value5250 value1 value2 = (output14770, value6896, value1) := by
  rw [input14770_def, output14770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10492_eq]
  try dsimp only
  rw [node14769_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14771_eq : Flapjack.WordAlloc.removeDeadStructural input14771 value5249 value1 value2 = (output14771, value6896, value1) := by
  rw [input14771_def, output14771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10491_eq]
  try dsimp only
  rw [node14770_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14772_eq : Flapjack.WordAlloc.removeDeadStructural input14772 value5 value1 value2 = (output14772, value6896, value1) := by
  rw [input14772_def, output14772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10490_eq]
  try dsimp only
  rw [node14771_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14773_eq : Flapjack.WordAlloc.removeDeadStructural input14773 value5243 value1 value2 = (output14773, value6896, value1) := by
  rw [input14773_def, output14773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10487_eq]
  try dsimp only
  rw [node14772_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14774_eq : Flapjack.WordAlloc.removeDeadStructural input14774 value5243 value1 value2 = (output14774, value6896, value1) := by
  rw [input14774_def, output14774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10478_eq]
  try dsimp only
  rw [node14773_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14775_eq : Flapjack.WordAlloc.removeDeadStructural input14775 value5242 value1 value2 = (output14775, value6896, value1) := by
  rw [input14775_def, output14775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10477_eq]
  try dsimp only
  rw [node14774_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14776_eq : Flapjack.WordAlloc.removeDeadStructural input14776 value5 value1 value2 = (output14776, value6896, value1) := by
  rw [input14776_def, output14776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10476_eq]
  try dsimp only
  rw [node14775_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14777_eq : Flapjack.WordAlloc.removeDeadStructural input14777 value5236 value1 value2 = (output14777, value6896, value1) := by
  rw [input14777_def, output14777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10473_eq]
  try dsimp only
  rw [node14776_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14778_eq : Flapjack.WordAlloc.removeDeadStructural input14778 value5236 value1 value2 = (output14778, value6896, value1) := by
  rw [input14778_def, output14778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10464_eq]
  try dsimp only
  rw [node14777_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14779_eq : Flapjack.WordAlloc.removeDeadStructural input14779 value5235 value1 value2 = (output14779, value6896, value1) := by
  rw [input14779_def, output14779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10463_eq]
  try dsimp only
  rw [node14778_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14780_eq : Flapjack.WordAlloc.removeDeadStructural input14780 value5 value1 value2 = (output14780, value6896, value1) := by
  rw [input14780_def, output14780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10462_eq]
  try dsimp only
  rw [node14779_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14781_eq : Flapjack.WordAlloc.removeDeadStructural input14781 value5229 value1 value2 = (output14781, value6896, value1) := by
  rw [input14781_def, output14781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10459_eq]
  try dsimp only
  rw [node14780_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14782_eq : Flapjack.WordAlloc.removeDeadStructural input14782 value5229 value1 value2 = (output14782, value6896, value1) := by
  rw [input14782_def, output14782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10450_eq]
  try dsimp only
  rw [node14781_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14783_eq : Flapjack.WordAlloc.removeDeadStructural input14783 value5228 value1 value2 = (output14783, value6896, value1) := by
  rw [input14783_def, output14783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10449_eq]
  try dsimp only
  rw [node14782_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14784_eq : Flapjack.WordAlloc.removeDeadStructural input14784 value5 value1 value2 = (output14784, value6896, value1) := by
  rw [input14784_def, output14784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10448_eq]
  try dsimp only
  rw [node14783_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14785_eq : Flapjack.WordAlloc.removeDeadStructural input14785 value5222 value1 value2 = (output14785, value6896, value1) := by
  rw [input14785_def, output14785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10445_eq]
  try dsimp only
  rw [node14784_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14786_eq : Flapjack.WordAlloc.removeDeadStructural input14786 value5222 value1 value2 = (output14786, value6896, value1) := by
  rw [input14786_def, output14786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10436_eq]
  try dsimp only
  rw [node14785_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14787_eq : Flapjack.WordAlloc.removeDeadStructural input14787 value5221 value1 value2 = (output14787, value6896, value1) := by
  rw [input14787_def, output14787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10435_eq]
  try dsimp only
  rw [node14786_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14788_eq : Flapjack.WordAlloc.removeDeadStructural input14788 value5 value1 value2 = (output14788, value6896, value1) := by
  rw [input14788_def, output14788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10434_eq]
  try dsimp only
  rw [node14787_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14789_eq : Flapjack.WordAlloc.removeDeadStructural input14789 value5215 value1 value2 = (output14789, value6896, value1) := by
  rw [input14789_def, output14789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10431_eq]
  try dsimp only
  rw [node14788_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14790_eq : Flapjack.WordAlloc.removeDeadStructural input14790 value5215 value1 value2 = (output14790, value6896, value1) := by
  rw [input14790_def, output14790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10422_eq]
  try dsimp only
  rw [node14789_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14791_eq : Flapjack.WordAlloc.removeDeadStructural input14791 value5214 value1 value2 = (output14791, value6896, value1) := by
  rw [input14791_def, output14791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10421_eq]
  try dsimp only
  rw [node14790_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14792_eq : Flapjack.WordAlloc.removeDeadStructural input14792 value5 value1 value2 = (output14792, value6896, value1) := by
  rw [input14792_def, output14792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10420_eq]
  try dsimp only
  rw [node14791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14793_eq : Flapjack.WordAlloc.removeDeadStructural input14793 value5208 value1 value2 = (output14793, value6896, value1) := by
  rw [input14793_def, output14793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10417_eq]
  try dsimp only
  rw [node14792_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14794_eq : Flapjack.WordAlloc.removeDeadStructural input14794 value5208 value1 value2 = (output14794, value6896, value1) := by
  rw [input14794_def, output14794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10408_eq]
  try dsimp only
  rw [node14793_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14795_eq : Flapjack.WordAlloc.removeDeadStructural input14795 value5207 value1 value2 = (output14795, value6896, value1) := by
  rw [input14795_def, output14795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10407_eq]
  try dsimp only
  rw [node14794_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14796_eq : Flapjack.WordAlloc.removeDeadStructural input14796 value5 value1 value2 = (output14796, value6896, value1) := by
  rw [input14796_def, output14796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10406_eq]
  try dsimp only
  rw [node14795_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14797_eq : Flapjack.WordAlloc.removeDeadStructural input14797 value5201 value1 value2 = (output14797, value6896, value1) := by
  rw [input14797_def, output14797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10403_eq]
  try dsimp only
  rw [node14796_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14798_eq : Flapjack.WordAlloc.removeDeadStructural input14798 value5201 value1 value2 = (output14798, value6896, value1) := by
  rw [input14798_def, output14798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10394_eq]
  try dsimp only
  rw [node14797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14799_eq : Flapjack.WordAlloc.removeDeadStructural input14799 value5200 value1 value2 = (output14799, value6896, value1) := by
  rw [input14799_def, output14799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10393_eq]
  try dsimp only
  rw [node14798_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14800_eq : Flapjack.WordAlloc.removeDeadStructural input14800 value5 value1 value2 = (output14800, value6896, value1) := by
  rw [input14800_def, output14800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10392_eq]
  try dsimp only
  rw [node14799_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14801_eq : Flapjack.WordAlloc.removeDeadStructural input14801 value5194 value1 value2 = (output14801, value6896, value1) := by
  rw [input14801_def, output14801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10389_eq]
  try dsimp only
  rw [node14800_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14802_eq : Flapjack.WordAlloc.removeDeadStructural input14802 value5194 value1 value2 = (output14802, value6896, value1) := by
  rw [input14802_def, output14802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10380_eq]
  try dsimp only
  rw [node14801_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14803_eq : Flapjack.WordAlloc.removeDeadStructural input14803 value5193 value1 value2 = (output14803, value6896, value1) := by
  rw [input14803_def, output14803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10379_eq]
  try dsimp only
  rw [node14802_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14804_eq : Flapjack.WordAlloc.removeDeadStructural input14804 value5 value1 value2 = (output14804, value6896, value1) := by
  rw [input14804_def, output14804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10378_eq]
  try dsimp only
  rw [node14803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14805_eq : Flapjack.WordAlloc.removeDeadStructural input14805 value5187 value1 value2 = (output14805, value6896, value1) := by
  rw [input14805_def, output14805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10375_eq]
  try dsimp only
  rw [node14804_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14806_eq : Flapjack.WordAlloc.removeDeadStructural input14806 value5187 value1 value2 = (output14806, value6896, value1) := by
  rw [input14806_def, output14806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10366_eq]
  try dsimp only
  rw [node14805_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14807_eq : Flapjack.WordAlloc.removeDeadStructural input14807 value5186 value1 value2 = (output14807, value6896, value1) := by
  rw [input14807_def, output14807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10365_eq]
  try dsimp only
  rw [node14806_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14808_eq : Flapjack.WordAlloc.removeDeadStructural input14808 value5 value1 value2 = (output14808, value6896, value1) := by
  rw [input14808_def, output14808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10364_eq]
  try dsimp only
  rw [node14807_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14809_eq : Flapjack.WordAlloc.removeDeadStructural input14809 value5180 value1 value2 = (output14809, value6896, value1) := by
  rw [input14809_def, output14809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10361_eq]
  try dsimp only
  rw [node14808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14810_eq : Flapjack.WordAlloc.removeDeadStructural input14810 value5180 value1 value2 = (output14810, value6896, value1) := by
  rw [input14810_def, output14810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10352_eq]
  try dsimp only
  rw [node14809_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14811_eq : Flapjack.WordAlloc.removeDeadStructural input14811 value5179 value1 value2 = (output14811, value6896, value1) := by
  rw [input14811_def, output14811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10351_eq]
  try dsimp only
  rw [node14810_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14812_eq : Flapjack.WordAlloc.removeDeadStructural input14812 value5 value1 value2 = (output14812, value6896, value1) := by
  rw [input14812_def, output14812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10350_eq]
  try dsimp only
  rw [node14811_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14813_eq : Flapjack.WordAlloc.removeDeadStructural input14813 value5173 value1 value2 = (output14813, value6896, value1) := by
  rw [input14813_def, output14813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10347_eq]
  try dsimp only
  rw [node14812_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14814_eq : Flapjack.WordAlloc.removeDeadStructural input14814 value5173 value1 value2 = (output14814, value6896, value1) := by
  rw [input14814_def, output14814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10338_eq]
  try dsimp only
  rw [node14813_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14815_eq : Flapjack.WordAlloc.removeDeadStructural input14815 value5172 value1 value2 = (output14815, value6896, value1) := by
  rw [input14815_def, output14815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10337_eq]
  try dsimp only
  rw [node14814_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14816_eq : Flapjack.WordAlloc.removeDeadStructural input14816 value5 value1 value2 = (output14816, value6896, value1) := by
  rw [input14816_def, output14816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10336_eq]
  try dsimp only
  rw [node14815_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14817_eq : Flapjack.WordAlloc.removeDeadStructural input14817 value5166 value1 value2 = (output14817, value6896, value1) := by
  rw [input14817_def, output14817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10333_eq]
  try dsimp only
  rw [node14816_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14818_eq : Flapjack.WordAlloc.removeDeadStructural input14818 value5166 value1 value2 = (output14818, value6896, value1) := by
  rw [input14818_def, output14818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10324_eq]
  try dsimp only
  rw [node14817_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14819_eq : Flapjack.WordAlloc.removeDeadStructural input14819 value5165 value1 value2 = (output14819, value6896, value1) := by
  rw [input14819_def, output14819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10323_eq]
  try dsimp only
  rw [node14818_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14820_eq : Flapjack.WordAlloc.removeDeadStructural input14820 value5 value1 value2 = (output14820, value6896, value1) := by
  rw [input14820_def, output14820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10322_eq]
  try dsimp only
  rw [node14819_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14821_eq : Flapjack.WordAlloc.removeDeadStructural input14821 value5159 value1 value2 = (output14821, value6896, value1) := by
  rw [input14821_def, output14821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10319_eq]
  try dsimp only
  rw [node14820_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14822_eq : Flapjack.WordAlloc.removeDeadStructural input14822 value5159 value1 value2 = (output14822, value6896, value1) := by
  rw [input14822_def, output14822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10310_eq]
  try dsimp only
  rw [node14821_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14823_eq : Flapjack.WordAlloc.removeDeadStructural input14823 value5158 value1 value2 = (output14823, value6896, value1) := by
  rw [input14823_def, output14823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10309_eq]
  try dsimp only
  rw [node14822_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14824_eq : Flapjack.WordAlloc.removeDeadStructural input14824 value5 value1 value2 = (output14824, value6896, value1) := by
  rw [input14824_def, output14824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10308_eq]
  try dsimp only
  rw [node14823_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14825_eq : Flapjack.WordAlloc.removeDeadStructural input14825 value5152 value1 value2 = (output14825, value6896, value1) := by
  rw [input14825_def, output14825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10305_eq]
  try dsimp only
  rw [node14824_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14826_eq : Flapjack.WordAlloc.removeDeadStructural input14826 value5152 value1 value2 = (output14826, value6896, value1) := by
  rw [input14826_def, output14826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10296_eq]
  try dsimp only
  rw [node14825_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14827_eq : Flapjack.WordAlloc.removeDeadStructural input14827 value5151 value1 value2 = (output14827, value6896, value1) := by
  rw [input14827_def, output14827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10295_eq]
  try dsimp only
  rw [node14826_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14828_eq : Flapjack.WordAlloc.removeDeadStructural input14828 value5 value1 value2 = (output14828, value6896, value1) := by
  rw [input14828_def, output14828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10294_eq]
  try dsimp only
  rw [node14827_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14829_eq : Flapjack.WordAlloc.removeDeadStructural input14829 value5145 value1 value2 = (output14829, value6896, value1) := by
  rw [input14829_def, output14829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10291_eq]
  try dsimp only
  rw [node14828_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14830_eq : Flapjack.WordAlloc.removeDeadStructural input14830 value5145 value1 value2 = (output14830, value6896, value1) := by
  rw [input14830_def, output14830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10282_eq]
  try dsimp only
  rw [node14829_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14831_eq : Flapjack.WordAlloc.removeDeadStructural input14831 value5144 value1 value2 = (output14831, value6896, value1) := by
  rw [input14831_def, output14831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10281_eq]
  try dsimp only
  rw [node14830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14832_eq : Flapjack.WordAlloc.removeDeadStructural input14832 value5 value1 value2 = (output14832, value6896, value1) := by
  rw [input14832_def, output14832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10280_eq]
  try dsimp only
  rw [node14831_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14833_eq : Flapjack.WordAlloc.removeDeadStructural input14833 value5138 value1 value2 = (output14833, value6896, value1) := by
  rw [input14833_def, output14833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10277_eq]
  try dsimp only
  rw [node14832_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14834_eq : Flapjack.WordAlloc.removeDeadStructural input14834 value5138 value1 value2 = (output14834, value6896, value1) := by
  rw [input14834_def, output14834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10268_eq]
  try dsimp only
  rw [node14833_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14835_eq : Flapjack.WordAlloc.removeDeadStructural input14835 value5137 value1 value2 = (output14835, value6896, value1) := by
  rw [input14835_def, output14835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10267_eq]
  try dsimp only
  rw [node14834_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14836_eq : Flapjack.WordAlloc.removeDeadStructural input14836 value5 value1 value2 = (output14836, value6896, value1) := by
  rw [input14836_def, output14836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10266_eq]
  try dsimp only
  rw [node14835_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14837_eq : Flapjack.WordAlloc.removeDeadStructural input14837 value5131 value1 value2 = (output14837, value6896, value1) := by
  rw [input14837_def, output14837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10263_eq]
  try dsimp only
  rw [node14836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14838_eq : Flapjack.WordAlloc.removeDeadStructural input14838 value5131 value1 value2 = (output14838, value6896, value1) := by
  rw [input14838_def, output14838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10254_eq]
  try dsimp only
  rw [node14837_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14839_eq : Flapjack.WordAlloc.removeDeadStructural input14839 value5130 value1 value2 = (output14839, value6896, value1) := by
  rw [input14839_def, output14839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10253_eq]
  try dsimp only
  rw [node14838_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14840_eq : Flapjack.WordAlloc.removeDeadStructural input14840 value5 value1 value2 = (output14840, value6896, value1) := by
  rw [input14840_def, output14840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10252_eq]
  try dsimp only
  rw [node14839_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14841_eq : Flapjack.WordAlloc.removeDeadStructural input14841 value5124 value1 value2 = (output14841, value6896, value1) := by
  rw [input14841_def, output14841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10249_eq]
  try dsimp only
  rw [node14840_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14842_eq : Flapjack.WordAlloc.removeDeadStructural input14842 value5124 value1 value2 = (output14842, value6896, value1) := by
  rw [input14842_def, output14842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10240_eq]
  try dsimp only
  rw [node14841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14843_eq : Flapjack.WordAlloc.removeDeadStructural input14843 value5123 value1 value2 = (output14843, value6896, value1) := by
  rw [input14843_def, output14843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10239_eq]
  try dsimp only
  rw [node14842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14844_eq : Flapjack.WordAlloc.removeDeadStructural input14844 value5 value1 value2 = (output14844, value6896, value1) := by
  rw [input14844_def, output14844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10238_eq]
  try dsimp only
  rw [node14843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14845_eq : Flapjack.WordAlloc.removeDeadStructural input14845 value5117 value1 value2 = (output14845, value6896, value1) := by
  rw [input14845_def, output14845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10235_eq]
  try dsimp only
  rw [node14844_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14846_eq : Flapjack.WordAlloc.removeDeadStructural input14846 value5117 value1 value2 = (output14846, value6896, value1) := by
  rw [input14846_def, output14846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10226_eq]
  try dsimp only
  rw [node14845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node14847_eq : Flapjack.WordAlloc.removeDeadStructural input14847 value5116 value1 value2 = (output14847, value6896, value1) := by
  rw [input14847_def, output14847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10225_eq]
  try dsimp only
  rw [node14846_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node14847_eq
end InitECandidate.Proofs.DeadStages713
