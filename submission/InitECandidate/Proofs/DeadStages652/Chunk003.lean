import InitECandidate.Proofs.DeadStages652.Chunk002
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages652
@[irreducible, cbv_opaque] def input768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input767 input544)).val
theorem input768_def : input768 = (.seq input767 input544) := by
  unfold input768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output767 output544)).val
theorem output768_def : output768 = (.seq output767 output544) := by
  unfold output768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output768_skip : Flapjack.WordAlloc.isSkip output768 = false := by
  rw [output768_def]
  conv => lhs; cbv
  try rfl
theorem node768_eq : Flapjack.WordAlloc.removeDeadStructural input768 value322 value1 value2 = (output768, value418, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node544_eq]
  try dsimp only
  rw [node767_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input768 input543)).val
theorem input769_def : input769 = (.seq input768 input543) := by
  unfold input769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output768 output543)).val
theorem output769_def : output769 = (.seq output768 output543) := by
  unfold output769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output769_skip : Flapjack.WordAlloc.isSkip output769 = false := by
  rw [output769_def]
  conv => lhs; cbv
  try rfl
theorem node769_eq : Flapjack.WordAlloc.removeDeadStructural input769 value321 value1 value2 = (output769, value418, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node543_eq]
  try dsimp only
  rw [node768_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input769 input542)).val
theorem input770_def : input770 = (.seq input769 input542) := by
  unfold input770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output769 output542)).val
theorem output770_def : output770 = (.seq output769 output542) := by
  unfold output770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output770_skip : Flapjack.WordAlloc.isSkip output770 = false := by
  rw [output770_def]
  conv => lhs; cbv
  try rfl
theorem node770_eq : Flapjack.WordAlloc.removeDeadStructural input770 value320 value1 value2 = (output770, value418, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node542_eq]
  try dsimp only
  rw [node769_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input770 input541)).val
theorem input771_def : input771 = (.seq input770 input541) := by
  unfold input771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output770 output541)).val
theorem output771_def : output771 = (.seq output770 output541) := by
  unfold output771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output771_skip : Flapjack.WordAlloc.isSkip output771 = false := by
  rw [output771_def]
  conv => lhs; cbv
  try rfl
theorem node771_eq : Flapjack.WordAlloc.removeDeadStructural input771 value319 value1 value2 = (output771, value418, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node541_eq]
  try dsimp only
  rw [node770_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input771 input540)).val
theorem input772_def : input772 = (.seq input771 input540) := by
  unfold input772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output771 output540)).val
theorem output772_def : output772 = (.seq output771 output540) := by
  unfold output772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output772_skip : Flapjack.WordAlloc.isSkip output772 = false := by
  rw [output772_def]
  conv => lhs; cbv
  try rfl
theorem node772_eq : Flapjack.WordAlloc.removeDeadStructural input772 value318 value1 value2 = (output772, value418, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node540_eq]
  try dsimp only
  rw [node771_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input772 input539)).val
theorem input773_def : input773 = (.seq input772 input539) := by
  unfold input773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output772 output539)).val
theorem output773_def : output773 = (.seq output772 output539) := by
  unfold output773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output773_skip : Flapjack.WordAlloc.isSkip output773 = false := by
  rw [output773_def]
  conv => lhs; cbv
  try rfl
theorem node773_eq : Flapjack.WordAlloc.removeDeadStructural input773 value317 value1 value2 = (output773, value418, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node539_eq]
  try dsimp only
  rw [node772_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input773 input538)).val
theorem input774_def : input774 = (.seq input773 input538) := by
  unfold input774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output773 output538)).val
theorem output774_def : output774 = (.seq output773 output538) := by
  unfold output774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output774_skip : Flapjack.WordAlloc.isSkip output774 = false := by
  rw [output774_def]
  conv => lhs; cbv
  try rfl
theorem node774_eq : Flapjack.WordAlloc.removeDeadStructural input774 value316 value1 value2 = (output774, value418, value1) := by
  rw [input774_def, output774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node538_eq]
  try dsimp only
  rw [node773_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input774 input537)).val
theorem input775_def : input775 = (.seq input774 input537) := by
  unfold input775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output774 output537)).val
theorem output775_def : output775 = (.seq output774 output537) := by
  unfold output775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output775_skip : Flapjack.WordAlloc.isSkip output775 = false := by
  rw [output775_def]
  conv => lhs; cbv
  try rfl
theorem node775_eq : Flapjack.WordAlloc.removeDeadStructural input775 value315 value1 value2 = (output775, value418, value1) := by
  rw [input775_def, output775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node537_eq]
  try dsimp only
  rw [node774_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input775 input536)).val
theorem input776_def : input776 = (.seq input775 input536) := by
  unfold input776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output775 output536)).val
theorem output776_def : output776 = (.seq output775 output536) := by
  unfold output776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output776_skip : Flapjack.WordAlloc.isSkip output776 = false := by
  rw [output776_def]
  conv => lhs; cbv
  try rfl
theorem node776_eq : Flapjack.WordAlloc.removeDeadStructural input776 value312 value1 value2 = (output776, value418, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node536_eq]
  try dsimp only
  rw [node775_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input776 input531)).val
theorem input777_def : input777 = (.seq input776 input531) := by
  unfold input777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output776 output531)).val
theorem output777_def : output777 = (.seq output776 output531) := by
  unfold output777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output777_skip : Flapjack.WordAlloc.isSkip output777 = false := by
  rw [output777_def]
  conv => lhs; cbv
  try rfl
theorem node777_eq : Flapjack.WordAlloc.removeDeadStructural input777 value312 value1 value2 = (output777, value418, value1) := by
  rw [input777_def, output777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node531_eq]
  try dsimp only
  rw [node776_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input777 input530)).val
theorem input778_def : input778 = (.seq input777 input530) := by
  unfold input778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output777 output530)).val
theorem output778_def : output778 = (.seq output777 output530) := by
  unfold output778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output778_skip : Flapjack.WordAlloc.isSkip output778 = false := by
  rw [output778_def]
  conv => lhs; cbv
  try rfl
theorem node778_eq : Flapjack.WordAlloc.removeDeadStructural input778 value311 value1 value2 = (output778, value418, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node530_eq]
  try dsimp only
  rw [node777_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input778 input529)).val
theorem input779_def : input779 = (.seq input778 input529) := by
  unfold input779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output778 output529)).val
theorem output779_def : output779 = (.seq output778 output529) := by
  unfold output779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output779_skip : Flapjack.WordAlloc.isSkip output779 = false := by
  rw [output779_def]
  conv => lhs; cbv
  try rfl
theorem node779_eq : Flapjack.WordAlloc.removeDeadStructural input779 value310 value1 value2 = (output779, value418, value1) := by
  rw [input779_def, output779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node529_eq]
  try dsimp only
  rw [node778_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input779 input528)).val
theorem input780_def : input780 = (.seq input779 input528) := by
  unfold input780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output779 output528)).val
theorem output780_def : output780 = (.seq output779 output528) := by
  unfold output780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output780_skip : Flapjack.WordAlloc.isSkip output780 = false := by
  rw [output780_def]
  conv => lhs; cbv
  try rfl
theorem node780_eq : Flapjack.WordAlloc.removeDeadStructural input780 value309 value1 value2 = (output780, value418, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node528_eq]
  try dsimp only
  rw [node779_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input780 input527)).val
theorem input781_def : input781 = (.seq input780 input527) := by
  unfold input781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output780 output527)).val
theorem output781_def : output781 = (.seq output780 output527) := by
  unfold output781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output781_skip : Flapjack.WordAlloc.isSkip output781 = false := by
  rw [output781_def]
  conv => lhs; cbv
  try rfl
theorem node781_eq : Flapjack.WordAlloc.removeDeadStructural input781 value308 value1 value2 = (output781, value418, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node527_eq]
  try dsimp only
  rw [node780_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input781 input526)).val
theorem input782_def : input782 = (.seq input781 input526) := by
  unfold input782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output781 output526)).val
theorem output782_def : output782 = (.seq output781 output526) := by
  unfold output782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output782_skip : Flapjack.WordAlloc.isSkip output782 = false := by
  rw [output782_def]
  conv => lhs; cbv
  try rfl
theorem node782_eq : Flapjack.WordAlloc.removeDeadStructural input782 value307 value1 value2 = (output782, value418, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node526_eq]
  try dsimp only
  rw [node781_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input782 input525)).val
theorem input783_def : input783 = (.seq input782 input525) := by
  unfold input783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output782 output525)).val
theorem output783_def : output783 = (.seq output782 output525) := by
  unfold output783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output783_skip : Flapjack.WordAlloc.isSkip output783 = false := by
  rw [output783_def]
  conv => lhs; cbv
  try rfl
theorem node783_eq : Flapjack.WordAlloc.removeDeadStructural input783 value306 value1 value2 = (output783, value418, value1) := by
  rw [input783_def, output783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node525_eq]
  try dsimp only
  rw [node782_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input783 input524)).val
theorem input784_def : input784 = (.seq input783 input524) := by
  unfold input784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output783 output524)).val
theorem output784_def : output784 = (.seq output783 output524) := by
  unfold output784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output784_skip : Flapjack.WordAlloc.isSkip output784 = false := by
  rw [output784_def]
  conv => lhs; cbv
  try rfl
theorem node784_eq : Flapjack.WordAlloc.removeDeadStructural input784 value305 value1 value2 = (output784, value418, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node524_eq]
  try dsimp only
  rw [node783_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input784 input523)).val
theorem input785_def : input785 = (.seq input784 input523) := by
  unfold input785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output784 output523)).val
theorem output785_def : output785 = (.seq output784 output523) := by
  unfold output785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output785_skip : Flapjack.WordAlloc.isSkip output785 = false := by
  rw [output785_def]
  conv => lhs; cbv
  try rfl
theorem node785_eq : Flapjack.WordAlloc.removeDeadStructural input785 value304 value1 value2 = (output785, value418, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  try dsimp only
  rw [node784_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input785 input522)).val
theorem input786_def : input786 = (.seq input785 input522) := by
  unfold input786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output785 output522)).val
theorem output786_def : output786 = (.seq output785 output522) := by
  unfold output786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output786_skip : Flapjack.WordAlloc.isSkip output786 = false := by
  rw [output786_def]
  conv => lhs; cbv
  try rfl
theorem node786_eq : Flapjack.WordAlloc.removeDeadStructural input786 value301 value1 value2 = (output786, value418, value1) := by
  rw [input786_def, output786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node522_eq]
  try dsimp only
  rw [node785_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input786 input517)).val
theorem input787_def : input787 = (.seq input786 input517) := by
  unfold input787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output786 output517)).val
theorem output787_def : output787 = (.seq output786 output517) := by
  unfold output787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output787_skip : Flapjack.WordAlloc.isSkip output787 = false := by
  rw [output787_def]
  conv => lhs; cbv
  try rfl
theorem node787_eq : Flapjack.WordAlloc.removeDeadStructural input787 value301 value1 value2 = (output787, value418, value1) := by
  rw [input787_def, output787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node517_eq]
  try dsimp only
  rw [node786_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input787 input516)).val
theorem input788_def : input788 = (.seq input787 input516) := by
  unfold input788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output787 output516)).val
theorem output788_def : output788 = (.seq output787 output516) := by
  unfold output788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output788_skip : Flapjack.WordAlloc.isSkip output788 = false := by
  rw [output788_def]
  conv => lhs; cbv
  try rfl
theorem node788_eq : Flapjack.WordAlloc.removeDeadStructural input788 value300 value1 value2 = (output788, value418, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node516_eq]
  try dsimp only
  rw [node787_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input788 input515)).val
theorem input789_def : input789 = (.seq input788 input515) := by
  unfold input789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output788 output515)).val
theorem output789_def : output789 = (.seq output788 output515) := by
  unfold output789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output789_skip : Flapjack.WordAlloc.isSkip output789 = false := by
  rw [output789_def]
  conv => lhs; cbv
  try rfl
theorem node789_eq : Flapjack.WordAlloc.removeDeadStructural input789 value299 value1 value2 = (output789, value418, value1) := by
  rw [input789_def, output789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node515_eq]
  try dsimp only
  rw [node788_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input789 input514)).val
theorem input790_def : input790 = (.seq input789 input514) := by
  unfold input790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output789 output514)).val
theorem output790_def : output790 = (.seq output789 output514) := by
  unfold output790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output790_skip : Flapjack.WordAlloc.isSkip output790 = false := by
  rw [output790_def]
  conv => lhs; cbv
  try rfl
theorem node790_eq : Flapjack.WordAlloc.removeDeadStructural input790 value298 value1 value2 = (output790, value418, value1) := by
  rw [input790_def, output790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node514_eq]
  try dsimp only
  rw [node789_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input790 input513)).val
theorem input791_def : input791 = (.seq input790 input513) := by
  unfold input791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output790 output513)).val
theorem output791_def : output791 = (.seq output790 output513) := by
  unfold output791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output791_skip : Flapjack.WordAlloc.isSkip output791 = false := by
  rw [output791_def]
  conv => lhs; cbv
  try rfl
theorem node791_eq : Flapjack.WordAlloc.removeDeadStructural input791 value297 value1 value2 = (output791, value418, value1) := by
  rw [input791_def, output791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node513_eq]
  try dsimp only
  rw [node790_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input791 input512)).val
theorem input792_def : input792 = (.seq input791 input512) := by
  unfold input792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output791 output512)).val
theorem output792_def : output792 = (.seq output791 output512) := by
  unfold output792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output792_skip : Flapjack.WordAlloc.isSkip output792 = false := by
  rw [output792_def]
  conv => lhs; cbv
  try rfl
theorem node792_eq : Flapjack.WordAlloc.removeDeadStructural input792 value296 value1 value2 = (output792, value418, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node512_eq]
  try dsimp only
  rw [node791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input792 input511)).val
theorem input793_def : input793 = (.seq input792 input511) := by
  unfold input793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output792 output511)).val
theorem output793_def : output793 = (.seq output792 output511) := by
  unfold output793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output793_skip : Flapjack.WordAlloc.isSkip output793 = false := by
  rw [output793_def]
  conv => lhs; cbv
  try rfl
theorem node793_eq : Flapjack.WordAlloc.removeDeadStructural input793 value295 value1 value2 = (output793, value418, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node511_eq]
  try dsimp only
  rw [node792_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input793 input510)).val
theorem input794_def : input794 = (.seq input793 input510) := by
  unfold input794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output793 output510)).val
theorem output794_def : output794 = (.seq output793 output510) := by
  unfold output794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output794_skip : Flapjack.WordAlloc.isSkip output794 = false := by
  rw [output794_def]
  conv => lhs; cbv
  try rfl
theorem node794_eq : Flapjack.WordAlloc.removeDeadStructural input794 value294 value1 value2 = (output794, value418, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node510_eq]
  try dsimp only
  rw [node793_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input794 input509)).val
theorem input795_def : input795 = (.seq input794 input509) := by
  unfold input795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output794 output509)).val
theorem output795_def : output795 = (.seq output794 output509) := by
  unfold output795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output795_skip : Flapjack.WordAlloc.isSkip output795 = false := by
  rw [output795_def]
  conv => lhs; cbv
  try rfl
theorem node795_eq : Flapjack.WordAlloc.removeDeadStructural input795 value293 value1 value2 = (output795, value418, value1) := by
  rw [input795_def, output795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node509_eq]
  try dsimp only
  rw [node794_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input795 input508)).val
theorem input796_def : input796 = (.seq input795 input508) := by
  unfold input796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output795 output508)).val
theorem output796_def : output796 = (.seq output795 output508) := by
  unfold output796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output796_skip : Flapjack.WordAlloc.isSkip output796 = false := by
  rw [output796_def]
  conv => lhs; cbv
  try rfl
theorem node796_eq : Flapjack.WordAlloc.removeDeadStructural input796 value290 value1 value2 = (output796, value418, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node508_eq]
  try dsimp only
  rw [node795_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input796 input503)).val
theorem input797_def : input797 = (.seq input796 input503) := by
  unfold input797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output796 output503)).val
theorem output797_def : output797 = (.seq output796 output503) := by
  unfold output797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output797_skip : Flapjack.WordAlloc.isSkip output797 = false := by
  rw [output797_def]
  conv => lhs; cbv
  try rfl
theorem node797_eq : Flapjack.WordAlloc.removeDeadStructural input797 value290 value1 value2 = (output797, value418, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node503_eq]
  try dsimp only
  rw [node796_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input797 input502)).val
theorem input798_def : input798 = (.seq input797 input502) := by
  unfold input798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output797 output502)).val
theorem output798_def : output798 = (.seq output797 output502) := by
  unfold output798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output798_skip : Flapjack.WordAlloc.isSkip output798 = false := by
  rw [output798_def]
  conv => lhs; cbv
  try rfl
theorem node798_eq : Flapjack.WordAlloc.removeDeadStructural input798 value289 value1 value2 = (output798, value418, value1) := by
  rw [input798_def, output798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node502_eq]
  try dsimp only
  rw [node797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input798 input501)).val
theorem input799_def : input799 = (.seq input798 input501) := by
  unfold input799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output798 output501)).val
theorem output799_def : output799 = (.seq output798 output501) := by
  unfold output799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output799_skip : Flapjack.WordAlloc.isSkip output799 = false := by
  rw [output799_def]
  conv => lhs; cbv
  try rfl
theorem node799_eq : Flapjack.WordAlloc.removeDeadStructural input799 value288 value1 value2 = (output799, value418, value1) := by
  rw [input799_def, output799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node501_eq]
  try dsimp only
  rw [node798_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input799 input500)).val
theorem input800_def : input800 = (.seq input799 input500) := by
  unfold input800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output799 output500)).val
theorem output800_def : output800 = (.seq output799 output500) := by
  unfold output800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output800_skip : Flapjack.WordAlloc.isSkip output800 = false := by
  rw [output800_def]
  conv => lhs; cbv
  try rfl
theorem node800_eq : Flapjack.WordAlloc.removeDeadStructural input800 value204 value1 value2 = (output800, value418, value1) := by
  rw [input800_def, output800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node500_eq]
  try dsimp only
  rw [node799_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input800 input259)).val
theorem input801_def : input801 = (.seq input800 input259) := by
  unfold input801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output800 output259)).val
theorem output801_def : output801 = (.seq output800 output259) := by
  unfold output801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output801_skip : Flapjack.WordAlloc.isSkip output801 = false := by
  rw [output801_def]
  conv => lhs; cbv
  try rfl
theorem node801_eq : Flapjack.WordAlloc.removeDeadStructural input801 value204 value1 value2 = (output801, value418, value1) := by
  rw [input801_def, output801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node259_eq]
  try dsimp only
  rw [node800_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input801 input258)).val
theorem input802_def : input802 = (.seq input801 input258) := by
  unfold input802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output801 output258)).val
theorem output802_def : output802 = (.seq output801 output258) := by
  unfold output802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output802_skip : Flapjack.WordAlloc.isSkip output802 = false := by
  rw [output802_def]
  conv => lhs; cbv
  try rfl
theorem node802_eq : Flapjack.WordAlloc.removeDeadStructural input802 value203 value1 value2 = (output802, value418, value1) := by
  rw [input802_def, output802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node258_eq]
  try dsimp only
  rw [node801_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input802 input257)).val
theorem input803_def : input803 = (.seq input802 input257) := by
  unfold input803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output802 output257)).val
theorem output803_def : output803 = (.seq output802 output257) := by
  unfold output803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output803_skip : Flapjack.WordAlloc.isSkip output803 = false := by
  rw [output803_def]
  conv => lhs; cbv
  try rfl
theorem node803_eq : Flapjack.WordAlloc.removeDeadStructural input803 value202 value1 value2 = (output803, value418, value1) := by
  rw [input803_def, output803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node257_eq]
  try dsimp only
  rw [node802_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input803 input256)).val
theorem input804_def : input804 = (.seq input803 input256) := by
  unfold input804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output803 output256)).val
theorem output804_def : output804 = (.seq output803 output256) := by
  unfold output804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output804_skip : Flapjack.WordAlloc.isSkip output804 = false := by
  rw [output804_def]
  conv => lhs; cbv
  try rfl
theorem node804_eq : Flapjack.WordAlloc.removeDeadStructural input804 value201 value1 value2 = (output804, value418, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node256_eq]
  try dsimp only
  rw [node803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input804 input255)).val
theorem input805_def : input805 = (.seq input804 input255) := by
  unfold input805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output804 output255)).val
theorem output805_def : output805 = (.seq output804 output255) := by
  unfold output805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output805_skip : Flapjack.WordAlloc.isSkip output805 = false := by
  rw [output805_def]
  conv => lhs; cbv
  try rfl
theorem node805_eq : Flapjack.WordAlloc.removeDeadStructural input805 value200 value1 value2 = (output805, value418, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node255_eq]
  try dsimp only
  rw [node804_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input805 input254)).val
theorem input806_def : input806 = (.seq input805 input254) := by
  unfold input806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output805 output254)).val
theorem output806_def : output806 = (.seq output805 output254) := by
  unfold output806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output806_skip : Flapjack.WordAlloc.isSkip output806 = false := by
  rw [output806_def]
  conv => lhs; cbv
  try rfl
theorem node806_eq : Flapjack.WordAlloc.removeDeadStructural input806 value199 value1 value2 = (output806, value418, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node254_eq]
  try dsimp only
  rw [node805_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input806 input253)).val
theorem input807_def : input807 = (.seq input806 input253) := by
  unfold input807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output806 output253)).val
theorem output807_def : output807 = (.seq output806 output253) := by
  unfold output807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output807_skip : Flapjack.WordAlloc.isSkip output807 = false := by
  rw [output807_def]
  conv => lhs; cbv
  try rfl
theorem node807_eq : Flapjack.WordAlloc.removeDeadStructural input807 value198 value1 value2 = (output807, value418, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node253_eq]
  try dsimp only
  rw [node806_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input807 input252)).val
theorem input808_def : input808 = (.seq input807 input252) := by
  unfold input808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output807 output252)).val
theorem output808_def : output808 = (.seq output807 output252) := by
  unfold output808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output808_skip : Flapjack.WordAlloc.isSkip output808 = false := by
  rw [output808_def]
  conv => lhs; cbv
  try rfl
theorem node808_eq : Flapjack.WordAlloc.removeDeadStructural input808 value197 value1 value2 = (output808, value418, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node252_eq]
  try dsimp only
  rw [node807_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input808 input251)).val
theorem input809_def : input809 = (.seq input808 input251) := by
  unfold input809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output808 output251)).val
theorem output809_def : output809 = (.seq output808 output251) := by
  unfold output809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output809_skip : Flapjack.WordAlloc.isSkip output809 = false := by
  rw [output809_def]
  conv => lhs; cbv
  try rfl
theorem node809_eq : Flapjack.WordAlloc.removeDeadStructural input809 value196 value1 value2 = (output809, value418, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node251_eq]
  try dsimp only
  rw [node808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input809 input250)).val
theorem input810_def : input810 = (.seq input809 input250) := by
  unfold input810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output809 output250)).val
theorem output810_def : output810 = (.seq output809 output250) := by
  unfold output810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output810_skip : Flapjack.WordAlloc.isSkip output810 = false := by
  rw [output810_def]
  conv => lhs; cbv
  try rfl
theorem node810_eq : Flapjack.WordAlloc.removeDeadStructural input810 value193 value1 value2 = (output810, value418, value1) := by
  rw [input810_def, output810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node250_eq]
  try dsimp only
  rw [node809_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input810 input245)).val
theorem input811_def : input811 = (.seq input810 input245) := by
  unfold input811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output810 output245)).val
theorem output811_def : output811 = (.seq output810 output245) := by
  unfold output811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output811_skip : Flapjack.WordAlloc.isSkip output811 = false := by
  rw [output811_def]
  conv => lhs; cbv
  try rfl
theorem node811_eq : Flapjack.WordAlloc.removeDeadStructural input811 value193 value1 value2 = (output811, value418, value1) := by
  rw [input811_def, output811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node245_eq]
  try dsimp only
  rw [node810_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input811 input244)).val
theorem input812_def : input812 = (.seq input811 input244) := by
  unfold input812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output811 output244)).val
theorem output812_def : output812 = (.seq output811 output244) := by
  unfold output812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output812_skip : Flapjack.WordAlloc.isSkip output812 = false := by
  rw [output812_def]
  conv => lhs; cbv
  try rfl
theorem node812_eq : Flapjack.WordAlloc.removeDeadStructural input812 value192 value1 value2 = (output812, value418, value1) := by
  rw [input812_def, output812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node244_eq]
  try dsimp only
  rw [node811_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input812 input243)).val
theorem input813_def : input813 = (.seq input812 input243) := by
  unfold input813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output812 output243)).val
theorem output813_def : output813 = (.seq output812 output243) := by
  unfold output813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output813_skip : Flapjack.WordAlloc.isSkip output813 = false := by
  rw [output813_def]
  conv => lhs; cbv
  try rfl
theorem node813_eq : Flapjack.WordAlloc.removeDeadStructural input813 value191 value1 value2 = (output813, value418, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node243_eq]
  try dsimp only
  rw [node812_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input813 input242)).val
theorem input814_def : input814 = (.seq input813 input242) := by
  unfold input814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output813 output242)).val
theorem output814_def : output814 = (.seq output813 output242) := by
  unfold output814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output814_skip : Flapjack.WordAlloc.isSkip output814 = false := by
  rw [output814_def]
  conv => lhs; cbv
  try rfl
theorem node814_eq : Flapjack.WordAlloc.removeDeadStructural input814 value190 value1 value2 = (output814, value418, value1) := by
  rw [input814_def, output814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node242_eq]
  try dsimp only
  rw [node813_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input814 input241)).val
theorem input815_def : input815 = (.seq input814 input241) := by
  unfold input815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output814 output241)).val
theorem output815_def : output815 = (.seq output814 output241) := by
  unfold output815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output815_skip : Flapjack.WordAlloc.isSkip output815 = false := by
  rw [output815_def]
  conv => lhs; cbv
  try rfl
theorem node815_eq : Flapjack.WordAlloc.removeDeadStructural input815 value189 value1 value2 = (output815, value418, value1) := by
  rw [input815_def, output815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node241_eq]
  try dsimp only
  rw [node814_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input815 input240)).val
theorem input816_def : input816 = (.seq input815 input240) := by
  unfold input816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output815 output240)).val
theorem output816_def : output816 = (.seq output815 output240) := by
  unfold output816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output816_skip : Flapjack.WordAlloc.isSkip output816 = false := by
  rw [output816_def]
  conv => lhs; cbv
  try rfl
theorem node816_eq : Flapjack.WordAlloc.removeDeadStructural input816 value188 value1 value2 = (output816, value418, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node240_eq]
  try dsimp only
  rw [node815_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input816 input239)).val
theorem input817_def : input817 = (.seq input816 input239) := by
  unfold input817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output816 output239)).val
theorem output817_def : output817 = (.seq output816 output239) := by
  unfold output817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output817_skip : Flapjack.WordAlloc.isSkip output817 = false := by
  rw [output817_def]
  conv => lhs; cbv
  try rfl
theorem node817_eq : Flapjack.WordAlloc.removeDeadStructural input817 value187 value1 value2 = (output817, value418, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node239_eq]
  try dsimp only
  rw [node816_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input817 input238)).val
theorem input818_def : input818 = (.seq input817 input238) := by
  unfold input818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output817 output238)).val
theorem output818_def : output818 = (.seq output817 output238) := by
  unfold output818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output818_skip : Flapjack.WordAlloc.isSkip output818 = false := by
  rw [output818_def]
  conv => lhs; cbv
  try rfl
theorem node818_eq : Flapjack.WordAlloc.removeDeadStructural input818 value186 value1 value2 = (output818, value418, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node238_eq]
  try dsimp only
  rw [node817_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input818 input237)).val
theorem input819_def : input819 = (.seq input818 input237) := by
  unfold input819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output818 output237)).val
theorem output819_def : output819 = (.seq output818 output237) := by
  unfold output819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output819_skip : Flapjack.WordAlloc.isSkip output819 = false := by
  rw [output819_def]
  conv => lhs; cbv
  try rfl
theorem node819_eq : Flapjack.WordAlloc.removeDeadStructural input819 value185 value1 value2 = (output819, value418, value1) := by
  rw [input819_def, output819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node237_eq]
  try dsimp only
  rw [node818_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input819 input236)).val
theorem input820_def : input820 = (.seq input819 input236) := by
  unfold input820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output819 output236)).val
theorem output820_def : output820 = (.seq output819 output236) := by
  unfold output820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output820_skip : Flapjack.WordAlloc.isSkip output820 = false := by
  rw [output820_def]
  conv => lhs; cbv
  try rfl
theorem node820_eq : Flapjack.WordAlloc.removeDeadStructural input820 value182 value1 value2 = (output820, value418, value1) := by
  rw [input820_def, output820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node236_eq]
  try dsimp only
  rw [node819_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input820 input231)).val
theorem input821_def : input821 = (.seq input820 input231) := by
  unfold input821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output820 output231)).val
theorem output821_def : output821 = (.seq output820 output231) := by
  unfold output821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output821_skip : Flapjack.WordAlloc.isSkip output821 = false := by
  rw [output821_def]
  conv => lhs; cbv
  try rfl
theorem node821_eq : Flapjack.WordAlloc.removeDeadStructural input821 value182 value1 value2 = (output821, value418, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node231_eq]
  try dsimp only
  rw [node820_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input821 input230)).val
theorem input822_def : input822 = (.seq input821 input230) := by
  unfold input822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output821 output230)).val
theorem output822_def : output822 = (.seq output821 output230) := by
  unfold output822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output822_skip : Flapjack.WordAlloc.isSkip output822 = false := by
  rw [output822_def]
  conv => lhs; cbv
  try rfl
theorem node822_eq : Flapjack.WordAlloc.removeDeadStructural input822 value181 value1 value2 = (output822, value418, value1) := by
  rw [input822_def, output822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node230_eq]
  try dsimp only
  rw [node821_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input822 input229)).val
theorem input823_def : input823 = (.seq input822 input229) := by
  unfold input823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output822 output229)).val
theorem output823_def : output823 = (.seq output822 output229) := by
  unfold output823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output823_skip : Flapjack.WordAlloc.isSkip output823 = false := by
  rw [output823_def]
  conv => lhs; cbv
  try rfl
theorem node823_eq : Flapjack.WordAlloc.removeDeadStructural input823 value180 value1 value2 = (output823, value418, value1) := by
  rw [input823_def, output823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node229_eq]
  try dsimp only
  rw [node822_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input823 input228)).val
theorem input824_def : input824 = (.seq input823 input228) := by
  unfold input824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output823 output228)).val
theorem output824_def : output824 = (.seq output823 output228) := by
  unfold output824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output824_skip : Flapjack.WordAlloc.isSkip output824 = false := by
  rw [output824_def]
  conv => lhs; cbv
  try rfl
theorem node824_eq : Flapjack.WordAlloc.removeDeadStructural input824 value179 value1 value2 = (output824, value418, value1) := by
  rw [input824_def, output824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node228_eq]
  try dsimp only
  rw [node823_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input824 input227)).val
theorem input825_def : input825 = (.seq input824 input227) := by
  unfold input825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output824 output227)).val
theorem output825_def : output825 = (.seq output824 output227) := by
  unfold output825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output825_skip : Flapjack.WordAlloc.isSkip output825 = false := by
  rw [output825_def]
  conv => lhs; cbv
  try rfl
theorem node825_eq : Flapjack.WordAlloc.removeDeadStructural input825 value178 value1 value2 = (output825, value418, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node227_eq]
  try dsimp only
  rw [node824_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input825 input226)).val
theorem input826_def : input826 = (.seq input825 input226) := by
  unfold input826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output825 output226)).val
theorem output826_def : output826 = (.seq output825 output226) := by
  unfold output826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output826_skip : Flapjack.WordAlloc.isSkip output826 = false := by
  rw [output826_def]
  conv => lhs; cbv
  try rfl
theorem node826_eq : Flapjack.WordAlloc.removeDeadStructural input826 value175 value1 value2 = (output826, value418, value1) := by
  rw [input826_def, output826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node226_eq]
  try dsimp only
  rw [node825_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input826 input221)).val
theorem input827_def : input827 = (.seq input826 input221) := by
  unfold input827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output826 output221)).val
theorem output827_def : output827 = (.seq output826 output221) := by
  unfold output827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output827_skip : Flapjack.WordAlloc.isSkip output827 = false := by
  rw [output827_def]
  conv => lhs; cbv
  try rfl
theorem node827_eq : Flapjack.WordAlloc.removeDeadStructural input827 value175 value1 value2 = (output827, value418, value1) := by
  rw [input827_def, output827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node221_eq]
  try dsimp only
  rw [node826_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input827 input220)).val
theorem input828_def : input828 = (.seq input827 input220) := by
  unfold input828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output827 output220)).val
theorem output828_def : output828 = (.seq output827 output220) := by
  unfold output828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output828_skip : Flapjack.WordAlloc.isSkip output828 = false := by
  rw [output828_def]
  conv => lhs; cbv
  try rfl
theorem node828_eq : Flapjack.WordAlloc.removeDeadStructural input828 value174 value1 value2 = (output828, value418, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node220_eq]
  try dsimp only
  rw [node827_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input828 input219)).val
theorem input829_def : input829 = (.seq input828 input219) := by
  unfold input829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output828 output219)).val
theorem output829_def : output829 = (.seq output828 output219) := by
  unfold output829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output829_skip : Flapjack.WordAlloc.isSkip output829 = false := by
  rw [output829_def]
  conv => lhs; cbv
  try rfl
theorem node829_eq : Flapjack.WordAlloc.removeDeadStructural input829 value173 value1 value2 = (output829, value418, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node219_eq]
  try dsimp only
  rw [node828_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input829 input218)).val
theorem input830_def : input830 = (.seq input829 input218) := by
  unfold input830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output829 output218)).val
theorem output830_def : output830 = (.seq output829 output218) := by
  unfold output830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output830_skip : Flapjack.WordAlloc.isSkip output830 = false := by
  rw [output830_def]
  conv => lhs; cbv
  try rfl
theorem node830_eq : Flapjack.WordAlloc.removeDeadStructural input830 value172 value1 value2 = (output830, value418, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node218_eq]
  try dsimp only
  rw [node829_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input830 input217)).val
theorem input831_def : input831 = (.seq input830 input217) := by
  unfold input831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output830 output217)).val
theorem output831_def : output831 = (.seq output830 output217) := by
  unfold output831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output831_skip : Flapjack.WordAlloc.isSkip output831 = false := by
  rw [output831_def]
  conv => lhs; cbv
  try rfl
theorem node831_eq : Flapjack.WordAlloc.removeDeadStructural input831 value171 value1 value2 = (output831, value418, value1) := by
  rw [input831_def, output831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node217_eq]
  try dsimp only
  rw [node830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input831 input216)).val
theorem input832_def : input832 = (.seq input831 input216) := by
  unfold input832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output831 output216)).val
theorem output832_def : output832 = (.seq output831 output216) := by
  unfold output832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output832_skip : Flapjack.WordAlloc.isSkip output832 = false := by
  rw [output832_def]
  conv => lhs; cbv
  try rfl
theorem node832_eq : Flapjack.WordAlloc.removeDeadStructural input832 value170 value1 value2 = (output832, value418, value1) := by
  rw [input832_def, output832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node216_eq]
  try dsimp only
  rw [node831_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input832 input215)).val
theorem input833_def : input833 = (.seq input832 input215) := by
  unfold input833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output832 output215)).val
theorem output833_def : output833 = (.seq output832 output215) := by
  unfold output833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output833_skip : Flapjack.WordAlloc.isSkip output833 = false := by
  rw [output833_def]
  conv => lhs; cbv
  try rfl
theorem node833_eq : Flapjack.WordAlloc.removeDeadStructural input833 value169 value1 value2 = (output833, value418, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node215_eq]
  try dsimp only
  rw [node832_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input833 input214)).val
theorem input834_def : input834 = (.seq input833 input214) := by
  unfold input834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output833 output214)).val
theorem output834_def : output834 = (.seq output833 output214) := by
  unfold output834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output834_skip : Flapjack.WordAlloc.isSkip output834 = false := by
  rw [output834_def]
  conv => lhs; cbv
  try rfl
theorem node834_eq : Flapjack.WordAlloc.removeDeadStructural input834 value168 value1 value2 = (output834, value418, value1) := by
  rw [input834_def, output834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node214_eq]
  try dsimp only
  rw [node833_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input834 input213)).val
theorem input835_def : input835 = (.seq input834 input213) := by
  unfold input835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output834 output213)).val
theorem output835_def : output835 = (.seq output834 output213) := by
  unfold output835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output835_skip : Flapjack.WordAlloc.isSkip output835 = false := by
  rw [output835_def]
  conv => lhs; cbv
  try rfl
theorem node835_eq : Flapjack.WordAlloc.removeDeadStructural input835 value167 value1 value2 = (output835, value418, value1) := by
  rw [input835_def, output835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node213_eq]
  try dsimp only
  rw [node834_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input835 input212)).val
theorem input836_def : input836 = (.seq input835 input212) := by
  unfold input836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output835 output212)).val
theorem output836_def : output836 = (.seq output835 output212) := by
  unfold output836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output836_skip : Flapjack.WordAlloc.isSkip output836 = false := by
  rw [output836_def]
  conv => lhs; cbv
  try rfl
theorem node836_eq : Flapjack.WordAlloc.removeDeadStructural input836 value164 value1 value2 = (output836, value418, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node212_eq]
  try dsimp only
  rw [node835_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input836 input207)).val
theorem input837_def : input837 = (.seq input836 input207) := by
  unfold input837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output836 output207)).val
theorem output837_def : output837 = (.seq output836 output207) := by
  unfold output837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output837_skip : Flapjack.WordAlloc.isSkip output837 = false := by
  rw [output837_def]
  conv => lhs; cbv
  try rfl
theorem node837_eq : Flapjack.WordAlloc.removeDeadStructural input837 value164 value1 value2 = (output837, value418, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node207_eq]
  try dsimp only
  rw [node836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input837 input206)).val
theorem input838_def : input838 = (.seq input837 input206) := by
  unfold input838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output837 output206)).val
theorem output838_def : output838 = (.seq output837 output206) := by
  unfold output838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output838_skip : Flapjack.WordAlloc.isSkip output838 = false := by
  rw [output838_def]
  conv => lhs; cbv
  try rfl
theorem node838_eq : Flapjack.WordAlloc.removeDeadStructural input838 value163 value1 value2 = (output838, value418, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node206_eq]
  try dsimp only
  rw [node837_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input838 input205)).val
theorem input839_def : input839 = (.seq input838 input205) := by
  unfold input839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output838 output205)).val
theorem output839_def : output839 = (.seq output838 output205) := by
  unfold output839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output839_skip : Flapjack.WordAlloc.isSkip output839 = false := by
  rw [output839_def]
  conv => lhs; cbv
  try rfl
theorem node839_eq : Flapjack.WordAlloc.removeDeadStructural input839 value162 value1 value2 = (output839, value418, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node205_eq]
  try dsimp only
  rw [node838_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input839 input204)).val
theorem input840_def : input840 = (.seq input839 input204) := by
  unfold input840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output839 output204)).val
theorem output840_def : output840 = (.seq output839 output204) := by
  unfold output840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output840_skip : Flapjack.WordAlloc.isSkip output840 = false := by
  rw [output840_def]
  conv => lhs; cbv
  try rfl
theorem node840_eq : Flapjack.WordAlloc.removeDeadStructural input840 value161 value1 value2 = (output840, value418, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node204_eq]
  try dsimp only
  rw [node839_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input840 input203)).val
theorem input841_def : input841 = (.seq input840 input203) := by
  unfold input841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output840 output203)).val
theorem output841_def : output841 = (.seq output840 output203) := by
  unfold output841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output841_skip : Flapjack.WordAlloc.isSkip output841 = false := by
  rw [output841_def]
  conv => lhs; cbv
  try rfl
theorem node841_eq : Flapjack.WordAlloc.removeDeadStructural input841 value160 value1 value2 = (output841, value418, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node203_eq]
  try dsimp only
  rw [node840_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input841 input202)).val
theorem input842_def : input842 = (.seq input841 input202) := by
  unfold input842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output841 output202)).val
theorem output842_def : output842 = (.seq output841 output202) := by
  unfold output842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output842_skip : Flapjack.WordAlloc.isSkip output842 = false := by
  rw [output842_def]
  conv => lhs; cbv
  try rfl
theorem node842_eq : Flapjack.WordAlloc.removeDeadStructural input842 value159 value1 value2 = (output842, value418, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node202_eq]
  try dsimp only
  rw [node841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input842 input201)).val
theorem input843_def : input843 = (.seq input842 input201) := by
  unfold input843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output842 output201)).val
theorem output843_def : output843 = (.seq output842 output201) := by
  unfold output843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output843_skip : Flapjack.WordAlloc.isSkip output843 = false := by
  rw [output843_def]
  conv => lhs; cbv
  try rfl
theorem node843_eq : Flapjack.WordAlloc.removeDeadStructural input843 value158 value1 value2 = (output843, value418, value1) := by
  rw [input843_def, output843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node201_eq]
  try dsimp only
  rw [node842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input843 input200)).val
theorem input844_def : input844 = (.seq input843 input200) := by
  unfold input844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output843 output200)).val
theorem output844_def : output844 = (.seq output843 output200) := by
  unfold output844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output844_skip : Flapjack.WordAlloc.isSkip output844 = false := by
  rw [output844_def]
  conv => lhs; cbv
  try rfl
theorem node844_eq : Flapjack.WordAlloc.removeDeadStructural input844 value157 value1 value2 = (output844, value418, value1) := by
  rw [input844_def, output844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node200_eq]
  try dsimp only
  rw [node843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input844 input199)).val
theorem input845_def : input845 = (.seq input844 input199) := by
  unfold input845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output844 output199)).val
theorem output845_def : output845 = (.seq output844 output199) := by
  unfold output845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output845_skip : Flapjack.WordAlloc.isSkip output845 = false := by
  rw [output845_def]
  conv => lhs; cbv
  try rfl
theorem node845_eq : Flapjack.WordAlloc.removeDeadStructural input845 value156 value1 value2 = (output845, value418, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node199_eq]
  try dsimp only
  rw [node844_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input845 input198)).val
theorem input846_def : input846 = (.seq input845 input198) := by
  unfold input846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output845 output198)).val
theorem output846_def : output846 = (.seq output845 output198) := by
  unfold output846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output846_skip : Flapjack.WordAlloc.isSkip output846 = false := by
  rw [output846_def]
  conv => lhs; cbv
  try rfl
theorem node846_eq : Flapjack.WordAlloc.removeDeadStructural input846 value153 value1 value2 = (output846, value418, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node198_eq]
  try dsimp only
  rw [node845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input846 input193)).val
theorem input847_def : input847 = (.seq input846 input193) := by
  unfold input847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output846 output193)).val
theorem output847_def : output847 = (.seq output846 output193) := by
  unfold output847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output847_skip : Flapjack.WordAlloc.isSkip output847 = false := by
  rw [output847_def]
  conv => lhs; cbv
  try rfl
theorem node847_eq : Flapjack.WordAlloc.removeDeadStructural input847 value153 value1 value2 = (output847, value418, value1) := by
  rw [input847_def, output847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node193_eq]
  try dsimp only
  rw [node846_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input847 input192)).val
theorem input848_def : input848 = (.seq input847 input192) := by
  unfold input848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output847 output192)).val
theorem output848_def : output848 = (.seq output847 output192) := by
  unfold output848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output848_skip : Flapjack.WordAlloc.isSkip output848 = false := by
  rw [output848_def]
  conv => lhs; cbv
  try rfl
theorem node848_eq : Flapjack.WordAlloc.removeDeadStructural input848 value152 value1 value2 = (output848, value418, value1) := by
  rw [input848_def, output848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node192_eq]
  try dsimp only
  rw [node847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input848 input191)).val
theorem input849_def : input849 = (.seq input848 input191) := by
  unfold input849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output848 output191)).val
theorem output849_def : output849 = (.seq output848 output191) := by
  unfold output849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output849_skip : Flapjack.WordAlloc.isSkip output849 = false := by
  rw [output849_def]
  conv => lhs; cbv
  try rfl
theorem node849_eq : Flapjack.WordAlloc.removeDeadStructural input849 value151 value1 value2 = (output849, value418, value1) := by
  rw [input849_def, output849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node191_eq]
  try dsimp only
  rw [node848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input849 input190)).val
theorem input850_def : input850 = (.seq input849 input190) := by
  unfold input850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output849 output190)).val
theorem output850_def : output850 = (.seq output849 output190) := by
  unfold output850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output850_skip : Flapjack.WordAlloc.isSkip output850 = false := by
  rw [output850_def]
  conv => lhs; cbv
  try rfl
theorem node850_eq : Flapjack.WordAlloc.removeDeadStructural input850 value150 value1 value2 = (output850, value418, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node190_eq]
  try dsimp only
  rw [node849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input850 input189)).val
theorem input851_def : input851 = (.seq input850 input189) := by
  unfold input851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output850 output189)).val
theorem output851_def : output851 = (.seq output850 output189) := by
  unfold output851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output851_skip : Flapjack.WordAlloc.isSkip output851 = false := by
  rw [output851_def]
  conv => lhs; cbv
  try rfl
theorem node851_eq : Flapjack.WordAlloc.removeDeadStructural input851 value149 value1 value2 = (output851, value418, value1) := by
  rw [input851_def, output851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node189_eq]
  try dsimp only
  rw [node850_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input851 input188)).val
theorem input852_def : input852 = (.seq input851 input188) := by
  unfold input852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output851 output188)).val
theorem output852_def : output852 = (.seq output851 output188) := by
  unfold output852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output852_skip : Flapjack.WordAlloc.isSkip output852 = false := by
  rw [output852_def]
  conv => lhs; cbv
  try rfl
theorem node852_eq : Flapjack.WordAlloc.removeDeadStructural input852 value146 value1 value2 = (output852, value418, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node188_eq]
  try dsimp only
  rw [node851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input852 input183)).val
theorem input853_def : input853 = (.seq input852 input183) := by
  unfold input853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output852 output183)).val
theorem output853_def : output853 = (.seq output852 output183) := by
  unfold output853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output853_skip : Flapjack.WordAlloc.isSkip output853 = false := by
  rw [output853_def]
  conv => lhs; cbv
  try rfl
theorem node853_eq : Flapjack.WordAlloc.removeDeadStructural input853 value146 value1 value2 = (output853, value418, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node183_eq]
  try dsimp only
  rw [node852_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input853 input182)).val
theorem input854_def : input854 = (.seq input853 input182) := by
  unfold input854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output853 output182)).val
theorem output854_def : output854 = (.seq output853 output182) := by
  unfold output854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output854_skip : Flapjack.WordAlloc.isSkip output854 = false := by
  rw [output854_def]
  conv => lhs; cbv
  try rfl
theorem node854_eq : Flapjack.WordAlloc.removeDeadStructural input854 value145 value1 value2 = (output854, value418, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node182_eq]
  try dsimp only
  rw [node853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input854 input181)).val
theorem input855_def : input855 = (.seq input854 input181) := by
  unfold input855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output854 output181)).val
theorem output855_def : output855 = (.seq output854 output181) := by
  unfold output855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output855_skip : Flapjack.WordAlloc.isSkip output855 = false := by
  rw [output855_def]
  conv => lhs; cbv
  try rfl
theorem node855_eq : Flapjack.WordAlloc.removeDeadStructural input855 value144 value1 value2 = (output855, value418, value1) := by
  rw [input855_def, output855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node181_eq]
  try dsimp only
  rw [node854_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input855 input180)).val
theorem input856_def : input856 = (.seq input855 input180) := by
  unfold input856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output855 output180)).val
theorem output856_def : output856 = (.seq output855 output180) := by
  unfold output856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output856_skip : Flapjack.WordAlloc.isSkip output856 = false := by
  rw [output856_def]
  conv => lhs; cbv
  try rfl
theorem node856_eq : Flapjack.WordAlloc.removeDeadStructural input856 value143 value1 value2 = (output856, value418, value1) := by
  rw [input856_def, output856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node180_eq]
  try dsimp only
  rw [node855_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input856 input179)).val
theorem input857_def : input857 = (.seq input856 input179) := by
  unfold input857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output856 output179)).val
theorem output857_def : output857 = (.seq output856 output179) := by
  unfold output857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output857_skip : Flapjack.WordAlloc.isSkip output857 = false := by
  rw [output857_def]
  conv => lhs; cbv
  try rfl
theorem node857_eq : Flapjack.WordAlloc.removeDeadStructural input857 value142 value1 value2 = (output857, value418, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node179_eq]
  try dsimp only
  rw [node856_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input857 input178)).val
theorem input858_def : input858 = (.seq input857 input178) := by
  unfold input858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output857 output178)).val
theorem output858_def : output858 = (.seq output857 output178) := by
  unfold output858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output858_skip : Flapjack.WordAlloc.isSkip output858 = false := by
  rw [output858_def]
  conv => lhs; cbv
  try rfl
theorem node858_eq : Flapjack.WordAlloc.removeDeadStructural input858 value141 value1 value2 = (output858, value418, value1) := by
  rw [input858_def, output858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node178_eq]
  try dsimp only
  rw [node857_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input858 input177)).val
theorem input859_def : input859 = (.seq input858 input177) := by
  unfold input859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output858 output177)).val
theorem output859_def : output859 = (.seq output858 output177) := by
  unfold output859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output859_skip : Flapjack.WordAlloc.isSkip output859 = false := by
  rw [output859_def]
  conv => lhs; cbv
  try rfl
theorem node859_eq : Flapjack.WordAlloc.removeDeadStructural input859 value140 value1 value2 = (output859, value418, value1) := by
  rw [input859_def, output859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node177_eq]
  try dsimp only
  rw [node858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input859 input176)).val
theorem input860_def : input860 = (.seq input859 input176) := by
  unfold input860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output859 output176)).val
theorem output860_def : output860 = (.seq output859 output176) := by
  unfold output860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output860_skip : Flapjack.WordAlloc.isSkip output860 = false := by
  rw [output860_def]
  conv => lhs; cbv
  try rfl
theorem node860_eq : Flapjack.WordAlloc.removeDeadStructural input860 value139 value1 value2 = (output860, value418, value1) := by
  rw [input860_def, output860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node176_eq]
  try dsimp only
  rw [node859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input860 input175)).val
theorem input861_def : input861 = (.seq input860 input175) := by
  unfold input861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output860 output175)).val
theorem output861_def : output861 = (.seq output860 output175) := by
  unfold output861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output861_skip : Flapjack.WordAlloc.isSkip output861 = false := by
  rw [output861_def]
  conv => lhs; cbv
  try rfl
theorem node861_eq : Flapjack.WordAlloc.removeDeadStructural input861 value138 value1 value2 = (output861, value418, value1) := by
  rw [input861_def, output861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node175_eq]
  try dsimp only
  rw [node860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input861 input174)).val
theorem input862_def : input862 = (.seq input861 input174) := by
  unfold input862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output861 output174)).val
theorem output862_def : output862 = (.seq output861 output174) := by
  unfold output862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output862_skip : Flapjack.WordAlloc.isSkip output862 = false := by
  rw [output862_def]
  conv => lhs; cbv
  try rfl
theorem node862_eq : Flapjack.WordAlloc.removeDeadStructural input862 value135 value1 value2 = (output862, value418, value1) := by
  rw [input862_def, output862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node174_eq]
  try dsimp only
  rw [node861_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input862 input169)).val
theorem input863_def : input863 = (.seq input862 input169) := by
  unfold input863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output862 output169)).val
theorem output863_def : output863 = (.seq output862 output169) := by
  unfold output863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output863_skip : Flapjack.WordAlloc.isSkip output863 = false := by
  rw [output863_def]
  conv => lhs; cbv
  try rfl
theorem node863_eq : Flapjack.WordAlloc.removeDeadStructural input863 value135 value1 value2 = (output863, value418, value1) := by
  rw [input863_def, output863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node169_eq]
  try dsimp only
  rw [node862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input863 input168)).val
theorem input864_def : input864 = (.seq input863 input168) := by
  unfold input864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output863 output168)).val
theorem output864_def : output864 = (.seq output863 output168) := by
  unfold output864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output864_skip : Flapjack.WordAlloc.isSkip output864 = false := by
  rw [output864_def]
  conv => lhs; cbv
  try rfl
theorem node864_eq : Flapjack.WordAlloc.removeDeadStructural input864 value134 value1 value2 = (output864, value418, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node168_eq]
  try dsimp only
  rw [node863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input864 input167)).val
theorem input865_def : input865 = (.seq input864 input167) := by
  unfold input865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output864 output167)).val
theorem output865_def : output865 = (.seq output864 output167) := by
  unfold output865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output865_skip : Flapjack.WordAlloc.isSkip output865 = false := by
  rw [output865_def]
  conv => lhs; cbv
  try rfl
theorem node865_eq : Flapjack.WordAlloc.removeDeadStructural input865 value133 value1 value2 = (output865, value418, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node167_eq]
  try dsimp only
  rw [node864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input865 input166)).val
theorem input866_def : input866 = (.seq input865 input166) := by
  unfold input866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output865 output166)).val
theorem output866_def : output866 = (.seq output865 output166) := by
  unfold output866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output866_skip : Flapjack.WordAlloc.isSkip output866 = false := by
  rw [output866_def]
  conv => lhs; cbv
  try rfl
theorem node866_eq : Flapjack.WordAlloc.removeDeadStructural input866 value132 value1 value2 = (output866, value418, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node166_eq]
  try dsimp only
  rw [node865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input866 input165)).val
theorem input867_def : input867 = (.seq input866 input165) := by
  unfold input867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output866 output165)).val
theorem output867_def : output867 = (.seq output866 output165) := by
  unfold output867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output867_skip : Flapjack.WordAlloc.isSkip output867 = false := by
  rw [output867_def]
  conv => lhs; cbv
  try rfl
theorem node867_eq : Flapjack.WordAlloc.removeDeadStructural input867 value131 value1 value2 = (output867, value418, value1) := by
  rw [input867_def, output867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node165_eq]
  try dsimp only
  rw [node866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input867 input164)).val
theorem input868_def : input868 = (.seq input867 input164) := by
  unfold input868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output867 output164)).val
theorem output868_def : output868 = (.seq output867 output164) := by
  unfold output868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output868_skip : Flapjack.WordAlloc.isSkip output868 = false := by
  rw [output868_def]
  conv => lhs; cbv
  try rfl
theorem node868_eq : Flapjack.WordAlloc.removeDeadStructural input868 value130 value1 value2 = (output868, value418, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node164_eq]
  try dsimp only
  rw [node867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input868 input163)).val
theorem input869_def : input869 = (.seq input868 input163) := by
  unfold input869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output868 output163)).val
theorem output869_def : output869 = (.seq output868 output163) := by
  unfold output869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output869_skip : Flapjack.WordAlloc.isSkip output869 = false := by
  rw [output869_def]
  conv => lhs; cbv
  try rfl
theorem node869_eq : Flapjack.WordAlloc.removeDeadStructural input869 value129 value1 value2 = (output869, value418, value1) := by
  rw [input869_def, output869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node163_eq]
  try dsimp only
  rw [node868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input869 input162)).val
theorem input870_def : input870 = (.seq input869 input162) := by
  unfold input870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output869 output162)).val
theorem output870_def : output870 = (.seq output869 output162) := by
  unfold output870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output870_skip : Flapjack.WordAlloc.isSkip output870 = false := by
  rw [output870_def]
  conv => lhs; cbv
  try rfl
theorem node870_eq : Flapjack.WordAlloc.removeDeadStructural input870 value128 value1 value2 = (output870, value418, value1) := by
  rw [input870_def, output870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node162_eq]
  try dsimp only
  rw [node869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input870 input161)).val
theorem input871_def : input871 = (.seq input870 input161) := by
  unfold input871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output870 output161)).val
theorem output871_def : output871 = (.seq output870 output161) := by
  unfold output871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output871_skip : Flapjack.WordAlloc.isSkip output871 = false := by
  rw [output871_def]
  conv => lhs; cbv
  try rfl
theorem node871_eq : Flapjack.WordAlloc.removeDeadStructural input871 value127 value1 value2 = (output871, value418, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node161_eq]
  try dsimp only
  rw [node870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input871 input160)).val
theorem input872_def : input872 = (.seq input871 input160) := by
  unfold input872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output871 output160)).val
theorem output872_def : output872 = (.seq output871 output160) := by
  unfold output872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output872_skip : Flapjack.WordAlloc.isSkip output872 = false := by
  rw [output872_def]
  conv => lhs; cbv
  try rfl
theorem node872_eq : Flapjack.WordAlloc.removeDeadStructural input872 value124 value1 value2 = (output872, value418, value1) := by
  rw [input872_def, output872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node160_eq]
  try dsimp only
  rw [node871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input872 input155)).val
theorem input873_def : input873 = (.seq input872 input155) := by
  unfold input873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output872 output155)).val
theorem output873_def : output873 = (.seq output872 output155) := by
  unfold output873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output873_skip : Flapjack.WordAlloc.isSkip output873 = false := by
  rw [output873_def]
  conv => lhs; cbv
  try rfl
theorem node873_eq : Flapjack.WordAlloc.removeDeadStructural input873 value124 value1 value2 = (output873, value418, value1) := by
  rw [input873_def, output873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node155_eq]
  try dsimp only
  rw [node872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input873 input154)).val
theorem input874_def : input874 = (.seq input873 input154) := by
  unfold input874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output873 output154)).val
theorem output874_def : output874 = (.seq output873 output154) := by
  unfold output874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output874_skip : Flapjack.WordAlloc.isSkip output874 = false := by
  rw [output874_def]
  conv => lhs; cbv
  try rfl
theorem node874_eq : Flapjack.WordAlloc.removeDeadStructural input874 value123 value1 value2 = (output874, value418, value1) := by
  rw [input874_def, output874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node154_eq]
  try dsimp only
  rw [node873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input874 input153)).val
theorem input875_def : input875 = (.seq input874 input153) := by
  unfold input875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output874 output153)).val
theorem output875_def : output875 = (.seq output874 output153) := by
  unfold output875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output875_skip : Flapjack.WordAlloc.isSkip output875 = false := by
  rw [output875_def]
  conv => lhs; cbv
  try rfl
theorem node875_eq : Flapjack.WordAlloc.removeDeadStructural input875 value122 value1 value2 = (output875, value418, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node153_eq]
  try dsimp only
  rw [node874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input875 input152)).val
theorem input876_def : input876 = (.seq input875 input152) := by
  unfold input876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output875 output152)).val
theorem output876_def : output876 = (.seq output875 output152) := by
  unfold output876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output876_skip : Flapjack.WordAlloc.isSkip output876 = false := by
  rw [output876_def]
  conv => lhs; cbv
  try rfl
theorem node876_eq : Flapjack.WordAlloc.removeDeadStructural input876 value121 value1 value2 = (output876, value418, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node152_eq]
  try dsimp only
  rw [node875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input876 input151)).val
theorem input877_def : input877 = (.seq input876 input151) := by
  unfold input877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output876 output151)).val
theorem output877_def : output877 = (.seq output876 output151) := by
  unfold output877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output877_skip : Flapjack.WordAlloc.isSkip output877 = false := by
  rw [output877_def]
  conv => lhs; cbv
  try rfl
theorem node877_eq : Flapjack.WordAlloc.removeDeadStructural input877 value120 value1 value2 = (output877, value418, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node151_eq]
  try dsimp only
  rw [node876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input877 input150)).val
theorem input878_def : input878 = (.seq input877 input150) := by
  unfold input878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output877 output150)).val
theorem output878_def : output878 = (.seq output877 output150) := by
  unfold output878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output878_skip : Flapjack.WordAlloc.isSkip output878 = false := by
  rw [output878_def]
  conv => lhs; cbv
  try rfl
theorem node878_eq : Flapjack.WordAlloc.removeDeadStructural input878 value119 value1 value2 = (output878, value418, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node150_eq]
  try dsimp only
  rw [node877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input878 input149)).val
theorem input879_def : input879 = (.seq input878 input149) := by
  unfold input879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output878 output149)).val
theorem output879_def : output879 = (.seq output878 output149) := by
  unfold output879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output879_skip : Flapjack.WordAlloc.isSkip output879 = false := by
  rw [output879_def]
  conv => lhs; cbv
  try rfl
theorem node879_eq : Flapjack.WordAlloc.removeDeadStructural input879 value118 value1 value2 = (output879, value418, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node149_eq]
  try dsimp only
  rw [node878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input879 input148)).val
theorem input880_def : input880 = (.seq input879 input148) := by
  unfold input880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output879 output148)).val
theorem output880_def : output880 = (.seq output879 output148) := by
  unfold output880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output880_skip : Flapjack.WordAlloc.isSkip output880 = false := by
  rw [output880_def]
  conv => lhs; cbv
  try rfl
theorem node880_eq : Flapjack.WordAlloc.removeDeadStructural input880 value117 value1 value2 = (output880, value418, value1) := by
  rw [input880_def, output880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node148_eq]
  try dsimp only
  rw [node879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input880 input147)).val
theorem input881_def : input881 = (.seq input880 input147) := by
  unfold input881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output880 output147)).val
theorem output881_def : output881 = (.seq output880 output147) := by
  unfold output881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output881_skip : Flapjack.WordAlloc.isSkip output881 = false := by
  rw [output881_def]
  conv => lhs; cbv
  try rfl
theorem node881_eq : Flapjack.WordAlloc.removeDeadStructural input881 value116 value1 value2 = (output881, value418, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node147_eq]
  try dsimp only
  rw [node880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input881 input146)).val
theorem input882_def : input882 = (.seq input881 input146) := by
  unfold input882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output881 output146)).val
theorem output882_def : output882 = (.seq output881 output146) := by
  unfold output882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output882_skip : Flapjack.WordAlloc.isSkip output882 = false := by
  rw [output882_def]
  conv => lhs; cbv
  try rfl
theorem node882_eq : Flapjack.WordAlloc.removeDeadStructural input882 value113 value1 value2 = (output882, value418, value1) := by
  rw [input882_def, output882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node146_eq]
  try dsimp only
  rw [node881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input882 input141)).val
theorem input883_def : input883 = (.seq input882 input141) := by
  unfold input883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output882 output141)).val
theorem output883_def : output883 = (.seq output882 output141) := by
  unfold output883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output883_skip : Flapjack.WordAlloc.isSkip output883 = false := by
  rw [output883_def]
  conv => lhs; cbv
  try rfl
theorem node883_eq : Flapjack.WordAlloc.removeDeadStructural input883 value113 value1 value2 = (output883, value418, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node141_eq]
  try dsimp only
  rw [node882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input883 input140)).val
theorem input884_def : input884 = (.seq input883 input140) := by
  unfold input884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output883 output140)).val
theorem output884_def : output884 = (.seq output883 output140) := by
  unfold output884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output884_skip : Flapjack.WordAlloc.isSkip output884 = false := by
  rw [output884_def]
  conv => lhs; cbv
  try rfl
theorem node884_eq : Flapjack.WordAlloc.removeDeadStructural input884 value112 value1 value2 = (output884, value418, value1) := by
  rw [input884_def, output884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node140_eq]
  try dsimp only
  rw [node883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input884 input139)).val
theorem input885_def : input885 = (.seq input884 input139) := by
  unfold input885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output884 output139)).val
theorem output885_def : output885 = (.seq output884 output139) := by
  unfold output885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output885_skip : Flapjack.WordAlloc.isSkip output885 = false := by
  rw [output885_def]
  conv => lhs; cbv
  try rfl
theorem node885_eq : Flapjack.WordAlloc.removeDeadStructural input885 value111 value1 value2 = (output885, value418, value1) := by
  rw [input885_def, output885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node139_eq]
  try dsimp only
  rw [node884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input885 input138)).val
theorem input886_def : input886 = (.seq input885 input138) := by
  unfold input886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output885 output138)).val
theorem output886_def : output886 = (.seq output885 output138) := by
  unfold output886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output886_skip : Flapjack.WordAlloc.isSkip output886 = false := by
  rw [output886_def]
  conv => lhs; cbv
  try rfl
theorem node886_eq : Flapjack.WordAlloc.removeDeadStructural input886 value110 value1 value2 = (output886, value418, value1) := by
  rw [input886_def, output886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node138_eq]
  try dsimp only
  rw [node885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input886 input137)).val
theorem input887_def : input887 = (.seq input886 input137) := by
  unfold input887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output886 output137)).val
theorem output887_def : output887 = (.seq output886 output137) := by
  unfold output887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output887_skip : Flapjack.WordAlloc.isSkip output887 = false := by
  rw [output887_def]
  conv => lhs; cbv
  try rfl
theorem node887_eq : Flapjack.WordAlloc.removeDeadStructural input887 value109 value1 value2 = (output887, value418, value1) := by
  rw [input887_def, output887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node137_eq]
  try dsimp only
  rw [node886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input887 input136)).val
theorem input888_def : input888 = (.seq input887 input136) := by
  unfold input888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output887 output136)).val
theorem output888_def : output888 = (.seq output887 output136) := by
  unfold output888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output888_skip : Flapjack.WordAlloc.isSkip output888 = false := by
  rw [output888_def]
  conv => lhs; cbv
  try rfl
theorem node888_eq : Flapjack.WordAlloc.removeDeadStructural input888 value108 value1 value2 = (output888, value418, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node136_eq]
  try dsimp only
  rw [node887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input888 input135)).val
theorem input889_def : input889 = (.seq input888 input135) := by
  unfold input889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output888 output135)).val
theorem output889_def : output889 = (.seq output888 output135) := by
  unfold output889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output889_skip : Flapjack.WordAlloc.isSkip output889 = false := by
  rw [output889_def]
  conv => lhs; cbv
  try rfl
theorem node889_eq : Flapjack.WordAlloc.removeDeadStructural input889 value107 value1 value2 = (output889, value418, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node135_eq]
  try dsimp only
  rw [node888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input889 input134)).val
theorem input890_def : input890 = (.seq input889 input134) := by
  unfold input890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output889 output134)).val
theorem output890_def : output890 = (.seq output889 output134) := by
  unfold output890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output890_skip : Flapjack.WordAlloc.isSkip output890 = false := by
  rw [output890_def]
  conv => lhs; cbv
  try rfl
theorem node890_eq : Flapjack.WordAlloc.removeDeadStructural input890 value106 value1 value2 = (output890, value418, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node134_eq]
  try dsimp only
  rw [node889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input890 input133)).val
theorem input891_def : input891 = (.seq input890 input133) := by
  unfold input891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output890 output133)).val
theorem output891_def : output891 = (.seq output890 output133) := by
  unfold output891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output891_skip : Flapjack.WordAlloc.isSkip output891 = false := by
  rw [output891_def]
  conv => lhs; cbv
  try rfl
theorem node891_eq : Flapjack.WordAlloc.removeDeadStructural input891 value105 value1 value2 = (output891, value418, value1) := by
  rw [input891_def, output891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node133_eq]
  try dsimp only
  rw [node890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input891 input132)).val
theorem input892_def : input892 = (.seq input891 input132) := by
  unfold input892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output891 output132)).val
theorem output892_def : output892 = (.seq output891 output132) := by
  unfold output892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output892_skip : Flapjack.WordAlloc.isSkip output892 = false := by
  rw [output892_def]
  conv => lhs; cbv
  try rfl
theorem node892_eq : Flapjack.WordAlloc.removeDeadStructural input892 value102 value1 value2 = (output892, value418, value1) := by
  rw [input892_def, output892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node132_eq]
  try dsimp only
  rw [node891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input892 input127)).val
theorem input893_def : input893 = (.seq input892 input127) := by
  unfold input893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output892 output127)).val
theorem output893_def : output893 = (.seq output892 output127) := by
  unfold output893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output893_skip : Flapjack.WordAlloc.isSkip output893 = false := by
  rw [output893_def]
  conv => lhs; cbv
  try rfl
theorem node893_eq : Flapjack.WordAlloc.removeDeadStructural input893 value102 value1 value2 = (output893, value418, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node127_eq]
  try dsimp only
  rw [node892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input893 input126)).val
theorem input894_def : input894 = (.seq input893 input126) := by
  unfold input894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output893 output126)).val
theorem output894_def : output894 = (.seq output893 output126) := by
  unfold output894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output894_skip : Flapjack.WordAlloc.isSkip output894 = false := by
  rw [output894_def]
  conv => lhs; cbv
  try rfl
theorem node894_eq : Flapjack.WordAlloc.removeDeadStructural input894 value101 value1 value2 = (output894, value418, value1) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node126_eq]
  try dsimp only
  rw [node893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input894 input125)).val
theorem input895_def : input895 = (.seq input894 input125) := by
  unfold input895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output894 output125)).val
theorem output895_def : output895 = (.seq output894 output125) := by
  unfold output895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output895_skip : Flapjack.WordAlloc.isSkip output895 = false := by
  rw [output895_def]
  conv => lhs; cbv
  try rfl
theorem node895_eq : Flapjack.WordAlloc.removeDeadStructural input895 value100 value1 value2 = (output895, value418, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node125_eq]
  try dsimp only
  rw [node894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input895 input124)).val
theorem input896_def : input896 = (.seq input895 input124) := by
  unfold input896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output895 output124)).val
theorem output896_def : output896 = (.seq output895 output124) := by
  unfold output896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output896_skip : Flapjack.WordAlloc.isSkip output896 = false := by
  rw [output896_def]
  conv => lhs; cbv
  try rfl
theorem node896_eq : Flapjack.WordAlloc.removeDeadStructural input896 value99 value1 value2 = (output896, value418, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node124_eq]
  try dsimp only
  rw [node895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input896 input123)).val
theorem input897_def : input897 = (.seq input896 input123) := by
  unfold input897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output896 output123)).val
theorem output897_def : output897 = (.seq output896 output123) := by
  unfold output897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output897_skip : Flapjack.WordAlloc.isSkip output897 = false := by
  rw [output897_def]
  conv => lhs; cbv
  try rfl
theorem node897_eq : Flapjack.WordAlloc.removeDeadStructural input897 value98 value1 value2 = (output897, value418, value1) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node123_eq]
  try dsimp only
  rw [node896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input897 input122)).val
theorem input898_def : input898 = (.seq input897 input122) := by
  unfold input898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output897 output122)).val
theorem output898_def : output898 = (.seq output897 output122) := by
  unfold output898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output898_skip : Flapjack.WordAlloc.isSkip output898 = false := by
  rw [output898_def]
  conv => lhs; cbv
  try rfl
theorem node898_eq : Flapjack.WordAlloc.removeDeadStructural input898 value97 value1 value2 = (output898, value418, value1) := by
  rw [input898_def, output898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node122_eq]
  try dsimp only
  rw [node897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input898 input121)).val
theorem input899_def : input899 = (.seq input898 input121) := by
  unfold input899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output898 output121)).val
theorem output899_def : output899 = (.seq output898 output121) := by
  unfold output899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output899_skip : Flapjack.WordAlloc.isSkip output899 = false := by
  rw [output899_def]
  conv => lhs; cbv
  try rfl
theorem node899_eq : Flapjack.WordAlloc.removeDeadStructural input899 value96 value1 value2 = (output899, value418, value1) := by
  rw [input899_def, output899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node121_eq]
  try dsimp only
  rw [node898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input899 input120)).val
theorem input900_def : input900 = (.seq input899 input120) := by
  unfold input900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output899 output120)).val
theorem output900_def : output900 = (.seq output899 output120) := by
  unfold output900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output900_skip : Flapjack.WordAlloc.isSkip output900 = false := by
  rw [output900_def]
  conv => lhs; cbv
  try rfl
theorem node900_eq : Flapjack.WordAlloc.removeDeadStructural input900 value95 value1 value2 = (output900, value418, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node120_eq]
  try dsimp only
  rw [node899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input900 input119)).val
theorem input901_def : input901 = (.seq input900 input119) := by
  unfold input901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output900 output119)).val
theorem output901_def : output901 = (.seq output900 output119) := by
  unfold output901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output901_skip : Flapjack.WordAlloc.isSkip output901 = false := by
  rw [output901_def]
  conv => lhs; cbv
  try rfl
theorem node901_eq : Flapjack.WordAlloc.removeDeadStructural input901 value94 value1 value2 = (output901, value418, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node119_eq]
  try dsimp only
  rw [node900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input901 input118)).val
theorem input902_def : input902 = (.seq input901 input118) := by
  unfold input902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output901 output118)).val
theorem output902_def : output902 = (.seq output901 output118) := by
  unfold output902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output902_skip : Flapjack.WordAlloc.isSkip output902 = false := by
  rw [output902_def]
  conv => lhs; cbv
  try rfl
theorem node902_eq : Flapjack.WordAlloc.removeDeadStructural input902 value91 value1 value2 = (output902, value418, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node118_eq]
  try dsimp only
  rw [node901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input902 input113)).val
theorem input903_def : input903 = (.seq input902 input113) := by
  unfold input903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output902 output113)).val
theorem output903_def : output903 = (.seq output902 output113) := by
  unfold output903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output903_skip : Flapjack.WordAlloc.isSkip output903 = false := by
  rw [output903_def]
  conv => lhs; cbv
  try rfl
theorem node903_eq : Flapjack.WordAlloc.removeDeadStructural input903 value91 value1 value2 = (output903, value418, value1) := by
  rw [input903_def, output903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node113_eq]
  try dsimp only
  rw [node902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input903 input112)).val
theorem input904_def : input904 = (.seq input903 input112) := by
  unfold input904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output903 output112)).val
theorem output904_def : output904 = (.seq output903 output112) := by
  unfold output904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output904_skip : Flapjack.WordAlloc.isSkip output904 = false := by
  rw [output904_def]
  conv => lhs; cbv
  try rfl
theorem node904_eq : Flapjack.WordAlloc.removeDeadStructural input904 value90 value1 value2 = (output904, value418, value1) := by
  rw [input904_def, output904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node112_eq]
  try dsimp only
  rw [node903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input904 input111)).val
theorem input905_def : input905 = (.seq input904 input111) := by
  unfold input905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output904 output111)).val
theorem output905_def : output905 = (.seq output904 output111) := by
  unfold output905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output905_skip : Flapjack.WordAlloc.isSkip output905 = false := by
  rw [output905_def]
  conv => lhs; cbv
  try rfl
theorem node905_eq : Flapjack.WordAlloc.removeDeadStructural input905 value89 value1 value2 = (output905, value418, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node111_eq]
  try dsimp only
  rw [node904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input905 input110)).val
theorem input906_def : input906 = (.seq input905 input110) := by
  unfold input906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output905 output110)).val
theorem output906_def : output906 = (.seq output905 output110) := by
  unfold output906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output906_skip : Flapjack.WordAlloc.isSkip output906 = false := by
  rw [output906_def]
  conv => lhs; cbv
  try rfl
theorem node906_eq : Flapjack.WordAlloc.removeDeadStructural input906 value88 value1 value2 = (output906, value418, value1) := by
  rw [input906_def, output906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node110_eq]
  try dsimp only
  rw [node905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input906 input109)).val
theorem input907_def : input907 = (.seq input906 input109) := by
  unfold input907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output906 output109)).val
theorem output907_def : output907 = (.seq output906 output109) := by
  unfold output907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output907_skip : Flapjack.WordAlloc.isSkip output907 = false := by
  rw [output907_def]
  conv => lhs; cbv
  try rfl
theorem node907_eq : Flapjack.WordAlloc.removeDeadStructural input907 value87 value1 value2 = (output907, value418, value1) := by
  rw [input907_def, output907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node109_eq]
  try dsimp only
  rw [node906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input907 input108)).val
theorem input908_def : input908 = (.seq input907 input108) := by
  unfold input908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output907 output108)).val
theorem output908_def : output908 = (.seq output907 output108) := by
  unfold output908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output908_skip : Flapjack.WordAlloc.isSkip output908 = false := by
  rw [output908_def]
  conv => lhs; cbv
  try rfl
theorem node908_eq : Flapjack.WordAlloc.removeDeadStructural input908 value86 value1 value2 = (output908, value418, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node108_eq]
  try dsimp only
  rw [node907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input908 input107)).val
theorem input909_def : input909 = (.seq input908 input107) := by
  unfold input909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output908 output107)).val
theorem output909_def : output909 = (.seq output908 output107) := by
  unfold output909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output909_skip : Flapjack.WordAlloc.isSkip output909 = false := by
  rw [output909_def]
  conv => lhs; cbv
  try rfl
theorem node909_eq : Flapjack.WordAlloc.removeDeadStructural input909 value85 value1 value2 = (output909, value418, value1) := by
  rw [input909_def, output909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node107_eq]
  try dsimp only
  rw [node908_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input909 input106)).val
theorem input910_def : input910 = (.seq input909 input106) := by
  unfold input910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output909 output106)).val
theorem output910_def : output910 = (.seq output909 output106) := by
  unfold output910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output910_skip : Flapjack.WordAlloc.isSkip output910 = false := by
  rw [output910_def]
  conv => lhs; cbv
  try rfl
theorem node910_eq : Flapjack.WordAlloc.removeDeadStructural input910 value84 value1 value2 = (output910, value418, value1) := by
  rw [input910_def, output910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  try dsimp only
  rw [node909_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input910 input105)).val
theorem input911_def : input911 = (.seq input910 input105) := by
  unfold input911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output910 output105)).val
theorem output911_def : output911 = (.seq output910 output105) := by
  unfold output911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output911_skip : Flapjack.WordAlloc.isSkip output911 = false := by
  rw [output911_def]
  conv => lhs; cbv
  try rfl
theorem node911_eq : Flapjack.WordAlloc.removeDeadStructural input911 value83 value1 value2 = (output911, value418, value1) := by
  rw [input911_def, output911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node105_eq]
  try dsimp only
  rw [node910_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input911 input104)).val
theorem input912_def : input912 = (.seq input911 input104) := by
  unfold input912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output911 output104)).val
theorem output912_def : output912 = (.seq output911 output104) := by
  unfold output912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output912_skip : Flapjack.WordAlloc.isSkip output912 = false := by
  rw [output912_def]
  conv => lhs; cbv
  try rfl
theorem node912_eq : Flapjack.WordAlloc.removeDeadStructural input912 value80 value1 value2 = (output912, value418, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node104_eq]
  try dsimp only
  rw [node911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input912 input99)).val
theorem input913_def : input913 = (.seq input912 input99) := by
  unfold input913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output912 output99)).val
theorem output913_def : output913 = (.seq output912 output99) := by
  unfold output913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output913_skip : Flapjack.WordAlloc.isSkip output913 = false := by
  rw [output913_def]
  conv => lhs; cbv
  try rfl
theorem node913_eq : Flapjack.WordAlloc.removeDeadStructural input913 value80 value1 value2 = (output913, value418, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node99_eq]
  try dsimp only
  rw [node912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input913 input98)).val
theorem input914_def : input914 = (.seq input913 input98) := by
  unfold input914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output913 output98)).val
theorem output914_def : output914 = (.seq output913 output98) := by
  unfold output914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output914_skip : Flapjack.WordAlloc.isSkip output914 = false := by
  rw [output914_def]
  conv => lhs; cbv
  try rfl
theorem node914_eq : Flapjack.WordAlloc.removeDeadStructural input914 value79 value1 value2 = (output914, value418, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node98_eq]
  try dsimp only
  rw [node913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input914 input97)).val
theorem input915_def : input915 = (.seq input914 input97) := by
  unfold input915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output914 output97)).val
theorem output915_def : output915 = (.seq output914 output97) := by
  unfold output915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output915_skip : Flapjack.WordAlloc.isSkip output915 = false := by
  rw [output915_def]
  conv => lhs; cbv
  try rfl
theorem node915_eq : Flapjack.WordAlloc.removeDeadStructural input915 value78 value1 value2 = (output915, value418, value1) := by
  rw [input915_def, output915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node97_eq]
  try dsimp only
  rw [node914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input915 input96)).val
theorem input916_def : input916 = (.seq input915 input96) := by
  unfold input916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output915 output96)).val
theorem output916_def : output916 = (.seq output915 output96) := by
  unfold output916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output916_skip : Flapjack.WordAlloc.isSkip output916 = false := by
  rw [output916_def]
  conv => lhs; cbv
  try rfl
theorem node916_eq : Flapjack.WordAlloc.removeDeadStructural input916 value77 value1 value2 = (output916, value418, value1) := by
  rw [input916_def, output916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node96_eq]
  try dsimp only
  rw [node915_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input916 input95)).val
theorem input917_def : input917 = (.seq input916 input95) := by
  unfold input917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output916 output95)).val
theorem output917_def : output917 = (.seq output916 output95) := by
  unfold output917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output917_skip : Flapjack.WordAlloc.isSkip output917 = false := by
  rw [output917_def]
  conv => lhs; cbv
  try rfl
theorem node917_eq : Flapjack.WordAlloc.removeDeadStructural input917 value76 value1 value2 = (output917, value418, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node95_eq]
  try dsimp only
  rw [node916_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input917 input94)).val
theorem input918_def : input918 = (.seq input917 input94) := by
  unfold input918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output917 output94)).val
theorem output918_def : output918 = (.seq output917 output94) := by
  unfold output918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output918_skip : Flapjack.WordAlloc.isSkip output918 = false := by
  rw [output918_def]
  conv => lhs; cbv
  try rfl
theorem node918_eq : Flapjack.WordAlloc.removeDeadStructural input918 value75 value1 value2 = (output918, value418, value1) := by
  rw [input918_def, output918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node94_eq]
  try dsimp only
  rw [node917_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input918 input93)).val
theorem input919_def : input919 = (.seq input918 input93) := by
  unfold input919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output918 output93)).val
theorem output919_def : output919 = (.seq output918 output93) := by
  unfold output919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output919_skip : Flapjack.WordAlloc.isSkip output919 = false := by
  rw [output919_def]
  conv => lhs; cbv
  try rfl
theorem node919_eq : Flapjack.WordAlloc.removeDeadStructural input919 value74 value1 value2 = (output919, value418, value1) := by
  rw [input919_def, output919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node93_eq]
  try dsimp only
  rw [node918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input919 input92)).val
theorem input920_def : input920 = (.seq input919 input92) := by
  unfold input920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output919 output92)).val
theorem output920_def : output920 = (.seq output919 output92) := by
  unfold output920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output920_skip : Flapjack.WordAlloc.isSkip output920 = false := by
  rw [output920_def]
  conv => lhs; cbv
  try rfl
theorem node920_eq : Flapjack.WordAlloc.removeDeadStructural input920 value73 value1 value2 = (output920, value418, value1) := by
  rw [input920_def, output920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node92_eq]
  try dsimp only
  rw [node919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input920 input91)).val
theorem input921_def : input921 = (.seq input920 input91) := by
  unfold input921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output920 output91)).val
theorem output921_def : output921 = (.seq output920 output91) := by
  unfold output921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output921_skip : Flapjack.WordAlloc.isSkip output921 = false := by
  rw [output921_def]
  conv => lhs; cbv
  try rfl
theorem node921_eq : Flapjack.WordAlloc.removeDeadStructural input921 value72 value1 value2 = (output921, value418, value1) := by
  rw [input921_def, output921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node91_eq]
  try dsimp only
  rw [node920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input921 input90)).val
theorem input922_def : input922 = (.seq input921 input90) := by
  unfold input922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output921 output90)).val
theorem output922_def : output922 = (.seq output921 output90) := by
  unfold output922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output922_skip : Flapjack.WordAlloc.isSkip output922 = false := by
  rw [output922_def]
  conv => lhs; cbv
  try rfl
theorem node922_eq : Flapjack.WordAlloc.removeDeadStructural input922 value69 value1 value2 = (output922, value418, value1) := by
  rw [input922_def, output922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node90_eq]
  try dsimp only
  rw [node921_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input922 input85)).val
theorem input923_def : input923 = (.seq input922 input85) := by
  unfold input923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output922 output85)).val
theorem output923_def : output923 = (.seq output922 output85) := by
  unfold output923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output923_skip : Flapjack.WordAlloc.isSkip output923 = false := by
  rw [output923_def]
  conv => lhs; cbv
  try rfl
theorem node923_eq : Flapjack.WordAlloc.removeDeadStructural input923 value69 value1 value2 = (output923, value418, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node85_eq]
  try dsimp only
  rw [node922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input923 input84)).val
theorem input924_def : input924 = (.seq input923 input84) := by
  unfold input924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output923 output84)).val
theorem output924_def : output924 = (.seq output923 output84) := by
  unfold output924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output924_skip : Flapjack.WordAlloc.isSkip output924 = false := by
  rw [output924_def]
  conv => lhs; cbv
  try rfl
theorem node924_eq : Flapjack.WordAlloc.removeDeadStructural input924 value68 value1 value2 = (output924, value418, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node84_eq]
  try dsimp only
  rw [node923_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input924 input83)).val
theorem input925_def : input925 = (.seq input924 input83) := by
  unfold input925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output924 output83)).val
theorem output925_def : output925 = (.seq output924 output83) := by
  unfold output925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output925_skip : Flapjack.WordAlloc.isSkip output925 = false := by
  rw [output925_def]
  conv => lhs; cbv
  try rfl
theorem node925_eq : Flapjack.WordAlloc.removeDeadStructural input925 value67 value1 value2 = (output925, value418, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node83_eq]
  try dsimp only
  rw [node924_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input925 input82)).val
theorem input926_def : input926 = (.seq input925 input82) := by
  unfold input926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output925 output82)).val
theorem output926_def : output926 = (.seq output925 output82) := by
  unfold output926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output926_skip : Flapjack.WordAlloc.isSkip output926 = false := by
  rw [output926_def]
  conv => lhs; cbv
  try rfl
theorem node926_eq : Flapjack.WordAlloc.removeDeadStructural input926 value66 value1 value2 = (output926, value418, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node82_eq]
  try dsimp only
  rw [node925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input926 input81)).val
theorem input927_def : input927 = (.seq input926 input81) := by
  unfold input927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output926 output81)).val
theorem output927_def : output927 = (.seq output926 output81) := by
  unfold output927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output927_skip : Flapjack.WordAlloc.isSkip output927 = false := by
  rw [output927_def]
  conv => lhs; cbv
  try rfl
theorem node927_eq : Flapjack.WordAlloc.removeDeadStructural input927 value65 value1 value2 = (output927, value418, value1) := by
  rw [input927_def, output927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node81_eq]
  try dsimp only
  rw [node926_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input927 input80)).val
theorem input928_def : input928 = (.seq input927 input80) := by
  unfold input928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output927 output80)).val
theorem output928_def : output928 = (.seq output927 output80) := by
  unfold output928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output928_skip : Flapjack.WordAlloc.isSkip output928 = false := by
  rw [output928_def]
  conv => lhs; cbv
  try rfl
theorem node928_eq : Flapjack.WordAlloc.removeDeadStructural input928 value64 value1 value2 = (output928, value418, value1) := by
  rw [input928_def, output928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node80_eq]
  try dsimp only
  rw [node927_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input928 input79)).val
theorem input929_def : input929 = (.seq input928 input79) := by
  unfold input929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output928 output79)).val
theorem output929_def : output929 = (.seq output928 output79) := by
  unfold output929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output929_skip : Flapjack.WordAlloc.isSkip output929 = false := by
  rw [output929_def]
  conv => lhs; cbv
  try rfl
theorem node929_eq : Flapjack.WordAlloc.removeDeadStructural input929 value63 value1 value2 = (output929, value418, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node79_eq]
  try dsimp only
  rw [node928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input929 input78)).val
theorem input930_def : input930 = (.seq input929 input78) := by
  unfold input930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output929 output78)).val
theorem output930_def : output930 = (.seq output929 output78) := by
  unfold output930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output930_skip : Flapjack.WordAlloc.isSkip output930 = false := by
  rw [output930_def]
  conv => lhs; cbv
  try rfl
theorem node930_eq : Flapjack.WordAlloc.removeDeadStructural input930 value62 value1 value2 = (output930, value418, value1) := by
  rw [input930_def, output930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node78_eq]
  try dsimp only
  rw [node929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input930 input77)).val
theorem input931_def : input931 = (.seq input930 input77) := by
  unfold input931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output930 output77)).val
theorem output931_def : output931 = (.seq output930 output77) := by
  unfold output931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output931_skip : Flapjack.WordAlloc.isSkip output931 = false := by
  rw [output931_def]
  conv => lhs; cbv
  try rfl
theorem node931_eq : Flapjack.WordAlloc.removeDeadStructural input931 value61 value1 value2 = (output931, value418, value1) := by
  rw [input931_def, output931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node77_eq]
  try dsimp only
  rw [node930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input931 input76)).val
theorem input932_def : input932 = (.seq input931 input76) := by
  unfold input932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output931 output76)).val
theorem output932_def : output932 = (.seq output931 output76) := by
  unfold output932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output932_skip : Flapjack.WordAlloc.isSkip output932 = false := by
  rw [output932_def]
  conv => lhs; cbv
  try rfl
theorem node932_eq : Flapjack.WordAlloc.removeDeadStructural input932 value58 value1 value2 = (output932, value418, value1) := by
  rw [input932_def, output932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node76_eq]
  try dsimp only
  rw [node931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input932 input71)).val
theorem input933_def : input933 = (.seq input932 input71) := by
  unfold input933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output932 output71)).val
theorem output933_def : output933 = (.seq output932 output71) := by
  unfold output933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output933_skip : Flapjack.WordAlloc.isSkip output933 = false := by
  rw [output933_def]
  conv => lhs; cbv
  try rfl
theorem node933_eq : Flapjack.WordAlloc.removeDeadStructural input933 value58 value1 value2 = (output933, value418, value1) := by
  rw [input933_def, output933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node71_eq]
  try dsimp only
  rw [node932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input933 input70)).val
theorem input934_def : input934 = (.seq input933 input70) := by
  unfold input934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output933 output70)).val
theorem output934_def : output934 = (.seq output933 output70) := by
  unfold output934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output934_skip : Flapjack.WordAlloc.isSkip output934 = false := by
  rw [output934_def]
  conv => lhs; cbv
  try rfl
theorem node934_eq : Flapjack.WordAlloc.removeDeadStructural input934 value57 value1 value2 = (output934, value418, value1) := by
  rw [input934_def, output934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node70_eq]
  try dsimp only
  rw [node933_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input934 input69)).val
theorem input935_def : input935 = (.seq input934 input69) := by
  unfold input935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output934 output69)).val
theorem output935_def : output935 = (.seq output934 output69) := by
  unfold output935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output935_skip : Flapjack.WordAlloc.isSkip output935 = false := by
  rw [output935_def]
  conv => lhs; cbv
  try rfl
theorem node935_eq : Flapjack.WordAlloc.removeDeadStructural input935 value56 value1 value2 = (output935, value418, value1) := by
  rw [input935_def, output935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node69_eq]
  try dsimp only
  rw [node934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input935 input68)).val
theorem input936_def : input936 = (.seq input935 input68) := by
  unfold input936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output935 output68)).val
theorem output936_def : output936 = (.seq output935 output68) := by
  unfold output936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output936_skip : Flapjack.WordAlloc.isSkip output936 = false := by
  rw [output936_def]
  conv => lhs; cbv
  try rfl
theorem node936_eq : Flapjack.WordAlloc.removeDeadStructural input936 value55 value1 value2 = (output936, value418, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node68_eq]
  try dsimp only
  rw [node935_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input936 input67)).val
theorem input937_def : input937 = (.seq input936 input67) := by
  unfold input937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output936 output67)).val
theorem output937_def : output937 = (.seq output936 output67) := by
  unfold output937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output937_skip : Flapjack.WordAlloc.isSkip output937 = false := by
  rw [output937_def]
  conv => lhs; cbv
  try rfl
theorem node937_eq : Flapjack.WordAlloc.removeDeadStructural input937 value54 value1 value2 = (output937, value418, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node67_eq]
  try dsimp only
  rw [node936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input937 input66)).val
theorem input938_def : input938 = (.seq input937 input66) := by
  unfold input938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output937 output66)).val
theorem output938_def : output938 = (.seq output937 output66) := by
  unfold output938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output938_skip : Flapjack.WordAlloc.isSkip output938 = false := by
  rw [output938_def]
  conv => lhs; cbv
  try rfl
theorem node938_eq : Flapjack.WordAlloc.removeDeadStructural input938 value53 value1 value2 = (output938, value418, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node66_eq]
  try dsimp only
  rw [node937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input938 input65)).val
theorem input939_def : input939 = (.seq input938 input65) := by
  unfold input939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output938 output65)).val
theorem output939_def : output939 = (.seq output938 output65) := by
  unfold output939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output939_skip : Flapjack.WordAlloc.isSkip output939 = false := by
  rw [output939_def]
  conv => lhs; cbv
  try rfl
theorem node939_eq : Flapjack.WordAlloc.removeDeadStructural input939 value52 value1 value2 = (output939, value418, value1) := by
  rw [input939_def, output939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node65_eq]
  try dsimp only
  rw [node938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input939 input64)).val
theorem input940_def : input940 = (.seq input939 input64) := by
  unfold input940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output939 output64)).val
theorem output940_def : output940 = (.seq output939 output64) := by
  unfold output940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output940_skip : Flapjack.WordAlloc.isSkip output940 = false := by
  rw [output940_def]
  conv => lhs; cbv
  try rfl
theorem node940_eq : Flapjack.WordAlloc.removeDeadStructural input940 value50 value1 value2 = (output940, value418, value1) := by
  rw [input940_def, output940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node64_eq]
  try dsimp only
  rw [node939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input940 input61)).val
theorem input941_def : input941 = (.seq input940 input61) := by
  unfold input941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output940 output61)).val
theorem output941_def : output941 = (.seq output940 output61) := by
  unfold output941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output941_skip : Flapjack.WordAlloc.isSkip output941 = false := by
  rw [output941_def]
  conv => lhs; cbv
  try rfl
theorem node941_eq : Flapjack.WordAlloc.removeDeadStructural input941 value49 value1 value2 = (output941, value418, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node61_eq]
  try dsimp only
  rw [node940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input941 input60)).val
theorem input942_def : input942 = (.seq input941 input60) := by
  unfold input942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output941 output60)).val
theorem output942_def : output942 = (.seq output941 output60) := by
  unfold output942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output942_skip : Flapjack.WordAlloc.isSkip output942 = false := by
  rw [output942_def]
  conv => lhs; cbv
  try rfl
theorem node942_eq : Flapjack.WordAlloc.removeDeadStructural input942 value47 value1 value2 = (output942, value418, value1) := by
  rw [input942_def, output942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node60_eq]
  try dsimp only
  rw [node941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input942 input57)).val
theorem input943_def : input943 = (.seq input942 input57) := by
  unfold input943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output942 output57)).val
theorem output943_def : output943 = (.seq output942 output57) := by
  unfold output943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output943_skip : Flapjack.WordAlloc.isSkip output943 = false := by
  rw [output943_def]
  conv => lhs; cbv
  try rfl
theorem node943_eq : Flapjack.WordAlloc.removeDeadStructural input943 value46 value1 value2 = (output943, value418, value1) := by
  rw [input943_def, output943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node57_eq]
  try dsimp only
  rw [node942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input943 input56)).val
theorem input944_def : input944 = (.seq input943 input56) := by
  unfold input944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output943 output56)).val
theorem output944_def : output944 = (.seq output943 output56) := by
  unfold output944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output944_skip : Flapjack.WordAlloc.isSkip output944 = false := by
  rw [output944_def]
  conv => lhs; cbv
  try rfl
theorem node944_eq : Flapjack.WordAlloc.removeDeadStructural input944 value44 value1 value2 = (output944, value418, value1) := by
  rw [input944_def, output944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node56_eq]
  try dsimp only
  rw [node943_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input944 input53)).val
theorem input945_def : input945 = (.seq input944 input53) := by
  unfold input945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output944 output53)).val
theorem output945_def : output945 = (.seq output944 output53) := by
  unfold output945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output945_skip : Flapjack.WordAlloc.isSkip output945 = false := by
  rw [output945_def]
  conv => lhs; cbv
  try rfl
theorem node945_eq : Flapjack.WordAlloc.removeDeadStructural input945 value43 value1 value2 = (output945, value418, value1) := by
  rw [input945_def, output945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node53_eq]
  try dsimp only
  rw [node944_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input945 input52)).val
theorem input946_def : input946 = (.seq input945 input52) := by
  unfold input946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output945 output52)).val
theorem output946_def : output946 = (.seq output945 output52) := by
  unfold output946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output946_skip : Flapjack.WordAlloc.isSkip output946 = false := by
  rw [output946_def]
  conv => lhs; cbv
  try rfl
theorem node946_eq : Flapjack.WordAlloc.removeDeadStructural input946 value41 value1 value2 = (output946, value418, value1) := by
  rw [input946_def, output946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node52_eq]
  try dsimp only
  rw [node945_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input946 input49)).val
theorem input947_def : input947 = (.seq input946 input49) := by
  unfold input947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output946 output49)).val
theorem output947_def : output947 = (.seq output946 output49) := by
  unfold output947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output947_skip : Flapjack.WordAlloc.isSkip output947 = false := by
  rw [output947_def]
  conv => lhs; cbv
  try rfl
theorem node947_eq : Flapjack.WordAlloc.removeDeadStructural input947 value39 value1 value2 = (output947, value418, value1) := by
  rw [input947_def, output947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node49_eq]
  try dsimp only
  rw [node946_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input947 input46)).val
theorem input948_def : input948 = (.seq input947 input46) := by
  unfold input948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output947 output46)).val
theorem output948_def : output948 = (.seq output947 output46) := by
  unfold output948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output948_skip : Flapjack.WordAlloc.isSkip output948 = false := by
  rw [output948_def]
  conv => lhs; cbv
  try rfl
theorem node948_eq : Flapjack.WordAlloc.removeDeadStructural input948 value38 value1 value2 = (output948, value418, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node46_eq]
  try dsimp only
  rw [node947_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input948 input45)).val
theorem input949_def : input949 = (.seq input948 input45) := by
  unfold input949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output948 output45)).val
theorem output949_def : output949 = (.seq output948 output45) := by
  unfold output949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output949_skip : Flapjack.WordAlloc.isSkip output949 = false := by
  rw [output949_def]
  conv => lhs; cbv
  try rfl
theorem node949_eq : Flapjack.WordAlloc.removeDeadStructural input949 value37 value1 value2 = (output949, value418, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node45_eq]
  try dsimp only
  rw [node948_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input949 input44)).val
theorem input950_def : input950 = (.seq input949 input44) := by
  unfold input950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output949 output44)).val
theorem output950_def : output950 = (.seq output949 output44) := by
  unfold output950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output950_skip : Flapjack.WordAlloc.isSkip output950 = false := by
  rw [output950_def]
  conv => lhs; cbv
  try rfl
theorem node950_eq : Flapjack.WordAlloc.removeDeadStructural input950 value36 value1 value2 = (output950, value418, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node44_eq]
  try dsimp only
  rw [node949_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input950 input43)).val
theorem input951_def : input951 = (.seq input950 input43) := by
  unfold input951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output950 output43)).val
theorem output951_def : output951 = (.seq output950 output43) := by
  unfold output951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output951_skip : Flapjack.WordAlloc.isSkip output951 = false := by
  rw [output951_def]
  conv => lhs; cbv
  try rfl
theorem node951_eq : Flapjack.WordAlloc.removeDeadStructural input951 value35 value1 value2 = (output951, value418, value1) := by
  rw [input951_def, output951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node43_eq]
  try dsimp only
  rw [node950_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input951 input42)).val
theorem input952_def : input952 = (.seq input951 input42) := by
  unfold input952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output951 output42)).val
theorem output952_def : output952 = (.seq output951 output42) := by
  unfold output952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output952_skip : Flapjack.WordAlloc.isSkip output952 = false := by
  rw [output952_def]
  conv => lhs; cbv
  try rfl
theorem node952_eq : Flapjack.WordAlloc.removeDeadStructural input952 value34 value1 value2 = (output952, value418, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node42_eq]
  try dsimp only
  rw [node951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input952 input41)).val
theorem input953_def : input953 = (.seq input952 input41) := by
  unfold input953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output952 output41)).val
theorem output953_def : output953 = (.seq output952 output41) := by
  unfold output953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output953_skip : Flapjack.WordAlloc.isSkip output953 = false := by
  rw [output953_def]
  conv => lhs; cbv
  try rfl
theorem node953_eq : Flapjack.WordAlloc.removeDeadStructural input953 value32 value1 value2 = (output953, value418, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node41_eq]
  try dsimp only
  rw [node952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input953 input38)).val
theorem input954_def : input954 = (.seq input953 input38) := by
  unfold input954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output953 output38)).val
theorem output954_def : output954 = (.seq output953 output38) := by
  unfold output954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output954_skip : Flapjack.WordAlloc.isSkip output954 = false := by
  rw [output954_def]
  conv => lhs; cbv
  try rfl
theorem node954_eq : Flapjack.WordAlloc.removeDeadStructural input954 value31 value1 value2 = (output954, value418, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node38_eq]
  try dsimp only
  rw [node953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input954 input37)).val
theorem input955_def : input955 = (.seq input954 input37) := by
  unfold input955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output954 output37)).val
theorem output955_def : output955 = (.seq output954 output37) := by
  unfold output955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output955_skip : Flapjack.WordAlloc.isSkip output955 = false := by
  rw [output955_def]
  conv => lhs; cbv
  try rfl
theorem node955_eq : Flapjack.WordAlloc.removeDeadStructural input955 value29 value1 value2 = (output955, value418, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node37_eq]
  try dsimp only
  rw [node954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input955 input34)).val
theorem input956_def : input956 = (.seq input955 input34) := by
  unfold input956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output955 output34)).val
theorem output956_def : output956 = (.seq output955 output34) := by
  unfold output956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output956_skip : Flapjack.WordAlloc.isSkip output956 = false := by
  rw [output956_def]
  conv => lhs; cbv
  try rfl
theorem node956_eq : Flapjack.WordAlloc.removeDeadStructural input956 value28 value1 value2 = (output956, value418, value1) := by
  rw [input956_def, output956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node34_eq]
  try dsimp only
  rw [node955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input956 input33)).val
theorem input957_def : input957 = (.seq input956 input33) := by
  unfold input957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output956 output33)).val
theorem output957_def : output957 = (.seq output956 output33) := by
  unfold output957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output957_skip : Flapjack.WordAlloc.isSkip output957 = false := by
  rw [output957_def]
  conv => lhs; cbv
  try rfl
theorem node957_eq : Flapjack.WordAlloc.removeDeadStructural input957 value26 value1 value2 = (output957, value418, value1) := by
  rw [input957_def, output957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node33_eq]
  try dsimp only
  rw [node956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input957 input30)).val
theorem input958_def : input958 = (.seq input957 input30) := by
  unfold input958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output957 output30)).val
theorem output958_def : output958 = (.seq output957 output30) := by
  unfold output958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output958_skip : Flapjack.WordAlloc.isSkip output958 = false := by
  rw [output958_def]
  conv => lhs; cbv
  try rfl
theorem node958_eq : Flapjack.WordAlloc.removeDeadStructural input958 value25 value1 value2 = (output958, value418, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node30_eq]
  try dsimp only
  rw [node957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input958 input29)).val
theorem input959_def : input959 = (.seq input958 input29) := by
  unfold input959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output958 output29)).val
theorem output959_def : output959 = (.seq output958 output29) := by
  unfold output959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output959_skip : Flapjack.WordAlloc.isSkip output959 = false := by
  rw [output959_def]
  conv => lhs; cbv
  try rfl
theorem node959_eq : Flapjack.WordAlloc.removeDeadStructural input959 value23 value1 value2 = (output959, value418, value1) := by
  rw [input959_def, output959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node29_eq]
  try dsimp only
  rw [node958_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input959 input26)).val
theorem input960_def : input960 = (.seq input959 input26) := by
  unfold input960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output959 output26)).val
theorem output960_def : output960 = (.seq output959 output26) := by
  unfold output960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output960_skip : Flapjack.WordAlloc.isSkip output960 = false := by
  rw [output960_def]
  conv => lhs; cbv
  try rfl
theorem node960_eq : Flapjack.WordAlloc.removeDeadStructural input960 value21 value1 value2 = (output960, value418, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  try dsimp only
  rw [node959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input960 input23)).val
theorem input961_def : input961 = (.seq input960 input23) := by
  unfold input961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output960 output23)).val
theorem output961_def : output961 = (.seq output960 output23) := by
  unfold output961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output961_skip : Flapjack.WordAlloc.isSkip output961 = false := by
  rw [output961_def]
  conv => lhs; cbv
  try rfl
theorem node961_eq : Flapjack.WordAlloc.removeDeadStructural input961 value20 value1 value2 = (output961, value418, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node23_eq]
  try dsimp only
  rw [node960_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input961 input22)).val
theorem input962_def : input962 = (.seq input961 input22) := by
  unfold input962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output961 output22)).val
theorem output962_def : output962 = (.seq output961 output22) := by
  unfold output962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output962_skip : Flapjack.WordAlloc.isSkip output962 = false := by
  rw [output962_def]
  conv => lhs; cbv
  try rfl
theorem node962_eq : Flapjack.WordAlloc.removeDeadStructural input962 value19 value1 value2 = (output962, value418, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node22_eq]
  try dsimp only
  rw [node961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input962 input21)).val
theorem input963_def : input963 = (.seq input962 input21) := by
  unfold input963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output962 output21)).val
theorem output963_def : output963 = (.seq output962 output21) := by
  unfold output963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output963_skip : Flapjack.WordAlloc.isSkip output963 = false := by
  rw [output963_def]
  conv => lhs; cbv
  try rfl
theorem node963_eq : Flapjack.WordAlloc.removeDeadStructural input963 value18 value1 value2 = (output963, value418, value1) := by
  rw [input963_def, output963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node21_eq]
  try dsimp only
  rw [node962_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input963 input20)).val
theorem input964_def : input964 = (.seq input963 input20) := by
  unfold input964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output963 output20)).val
theorem output964_def : output964 = (.seq output963 output20) := by
  unfold output964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output964_skip : Flapjack.WordAlloc.isSkip output964 = false := by
  rw [output964_def]
  conv => lhs; cbv
  try rfl
theorem node964_eq : Flapjack.WordAlloc.removeDeadStructural input964 value17 value1 value2 = (output964, value418, value1) := by
  rw [input964_def, output964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node20_eq]
  try dsimp only
  rw [node963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input964 input19)).val
theorem input965_def : input965 = (.seq input964 input19) := by
  unfold input965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output964 output19)).val
theorem output965_def : output965 = (.seq output964 output19) := by
  unfold output965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output965_skip : Flapjack.WordAlloc.isSkip output965 = false := by
  rw [output965_def]
  conv => lhs; cbv
  try rfl
theorem node965_eq : Flapjack.WordAlloc.removeDeadStructural input965 value16 value1 value2 = (output965, value418, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node19_eq]
  try dsimp only
  rw [node964_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input965 input18)).val
theorem input966_def : input966 = (.seq input965 input18) := by
  unfold input966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output965 output18)).val
theorem output966_def : output966 = (.seq output965 output18) := by
  unfold output966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output966_skip : Flapjack.WordAlloc.isSkip output966 = false := by
  rw [output966_def]
  conv => lhs; cbv
  try rfl
theorem node966_eq : Flapjack.WordAlloc.removeDeadStructural input966 value14 value1 value2 = (output966, value418, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node18_eq]
  try dsimp only
  rw [node965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input966 input15)).val
theorem input967_def : input967 = (.seq input966 input15) := by
  unfold input967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output966 output15)).val
theorem output967_def : output967 = (.seq output966 output15) := by
  unfold output967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output967_skip : Flapjack.WordAlloc.isSkip output967 = false := by
  rw [output967_def]
  conv => lhs; cbv
  try rfl
theorem node967_eq : Flapjack.WordAlloc.removeDeadStructural input967 value13 value1 value2 = (output967, value418, value1) := by
  rw [input967_def, output967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node15_eq]
  try dsimp only
  rw [node966_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input967 input14)).val
theorem input968_def : input968 = (.seq input967 input14) := by
  unfold input968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output967 output14)).val
theorem output968_def : output968 = (.seq output967 output14) := by
  unfold output968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output968_skip : Flapjack.WordAlloc.isSkip output968 = false := by
  rw [output968_def]
  conv => lhs; cbv
  try rfl
theorem node968_eq : Flapjack.WordAlloc.removeDeadStructural input968 value11 value1 value2 = (output968, value418, value1) := by
  rw [input968_def, output968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node14_eq]
  try dsimp only
  rw [node967_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input968 input11)).val
theorem input969_def : input969 = (.seq input968 input11) := by
  unfold input969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output968 output11)).val
theorem output969_def : output969 = (.seq output968 output11) := by
  unfold output969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output969_skip : Flapjack.WordAlloc.isSkip output969 = false := by
  rw [output969_def]
  conv => lhs; cbv
  try rfl
theorem node969_eq : Flapjack.WordAlloc.removeDeadStructural input969 value10 value1 value2 = (output969, value418, value1) := by
  rw [input969_def, output969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11_eq]
  try dsimp only
  rw [node968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input969 input10)).val
theorem input970_def : input970 = (.seq input969 input10) := by
  unfold input970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output969 output10)).val
theorem output970_def : output970 = (.seq output969 output10) := by
  unfold output970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output970_skip : Flapjack.WordAlloc.isSkip output970 = false := by
  rw [output970_def]
  conv => lhs; cbv
  try rfl
theorem node970_eq : Flapjack.WordAlloc.removeDeadStructural input970 value8 value1 value2 = (output970, value418, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  try dsimp only
  rw [node969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input970 input7)).val
theorem input971_def : input971 = (.seq input970 input7) := by
  unfold input971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output970 output7)).val
theorem output971_def : output971 = (.seq output970 output7) := by
  unfold output971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output971_skip : Flapjack.WordAlloc.isSkip output971 = false := by
  rw [output971_def]
  conv => lhs; cbv
  try rfl
theorem node971_eq : Flapjack.WordAlloc.removeDeadStructural input971 value7 value1 value2 = (output971, value418, value1) := by
  rw [input971_def, output971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input971 input6)).val
theorem input972_def : input972 = (.seq input971 input6) := by
  unfold input972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output971 output6)).val
theorem output972_def : output972 = (.seq output971 output6) := by
  unfold output972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output972_skip : Flapjack.WordAlloc.isSkip output972 = false := by
  rw [output972_def]
  conv => lhs; cbv
  try rfl
theorem node972_eq : Flapjack.WordAlloc.removeDeadStructural input972 value5 value1 value2 = (output972, value418, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node971_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input972 input3)).val
theorem input973_def : input973 = (.seq input972 input3) := by
  unfold input973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output972 output3)).val
theorem output973_def : output973 = (.seq output972 output3) := by
  unfold output973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output973_skip : Flapjack.WordAlloc.isSkip output973 = false := by
  rw [output973_def]
  conv => lhs; cbv
  try rfl
theorem node973_eq : Flapjack.WordAlloc.removeDeadStructural input973 value4 value1 value2 = (output973, value418, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input973 input2)).val
theorem input974_def : input974 = (.seq input973 input2) := by
  unfold input974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output973 output2)).val
theorem output974_def : output974 = (.seq output973 output2) := by
  unfold output974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output974_skip : Flapjack.WordAlloc.isSkip output974 = false := by
  rw [output974_def]
  conv => lhs; cbv
  try rfl
theorem node974_eq : Flapjack.WordAlloc.removeDeadStructural input974 value0 value1 value2 = (output974, value418, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node973_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value419 : Flapjack.NumSet :=
Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1
  [(169, 0), (173, 2), (177, 4), (181, 6), (185, 8), (189, 10), (193, 12), (197, 14), (201, 16), (205, 18)])).val
theorem input975_def : input975 = (Flapjack.WordLangProgHOL.move 1
  [(169, 0), (173, 2), (177, 4), (181, 6), (185, 8), (189, 10), (193, 12), (197, 14), (201, 16), (205, 18)]) := by
  unfold input975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1
  [(169, 0), (173, 2), (177, 4), (181, 6), (185, 8), (189, 10), (193, 12), (197, 14), (201, 16), (205, 18)])).val
theorem output975_def : output975 = (Flapjack.WordLangProgHOL.move 1
  [(169, 0), (173, 2), (177, 4), (181, 6), (185, 8), (189, 10), (193, 12), (197, 14), (201, 16), (205, 18)]) := by
  unfold output975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output975_skip : Flapjack.WordAlloc.isSkip output975 = false := by
  rw [output975_def]
  conv => lhs; cbv
  try rfl
theorem node975_eq : Flapjack.WordAlloc.removeDeadStructural input975 value418 value1 value2 = (output975, value419, value1) := by
  rw [input975_def, output975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input975 input974)).val
theorem input976_def : input976 = (.seq input975 input974) := by
  unfold input976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output975 output974)).val
theorem output976_def : output976 = (.seq output975 output974) := by
  unfold output976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output976_skip : Flapjack.WordAlloc.isSkip output976 = false := by
  rw [output976_def]
  conv => lhs; cbv
  try rfl
theorem node976_eq : Flapjack.WordAlloc.removeDeadStructural input976 value0 value1 value2 = (output976, value419, value1) := by
  rw [input976_def, output976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node974_eq]
  try dsimp only
  rw [node975_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node976_eq
end InitECandidate.Proofs.DeadStages652
