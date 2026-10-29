import InitECandidate.Proofs.DeadStages713.Chunk064
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input16640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16639 input3062)).val
theorem input16640_def : input16640 = (.seq input16639 input3062) := by
  unfold input16640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16639 output3062)).val
theorem output16640_def : output16640 = (.seq output16639 output3062) := by
  unfold output16640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16640_skip : Flapjack.WordAlloc.isSkip output16640 = false := by
  rw [output16640_def]
  conv => lhs; cbv
  try rfl
theorem node16640_eq : Flapjack.WordAlloc.removeDeadStructural input16640 value5 value1 value2 = (output16640, value6896, value1) := by
  rw [input16640_def, output16640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3062_eq]
  try dsimp only
  rw [node16639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16640 input3059)).val
theorem input16641_def : input16641 = (.seq input16640 input3059) := by
  unfold input16641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16640 output3059)).val
theorem output16641_def : output16641 = (.seq output16640 output3059) := by
  unfold output16641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16641_skip : Flapjack.WordAlloc.isSkip output16641 = false := by
  rw [output16641_def]
  conv => lhs; cbv
  try rfl
theorem node16641_eq : Flapjack.WordAlloc.removeDeadStructural input16641 value1528 value1 value2 = (output16641, value6896, value1) := by
  rw [input16641_def, output16641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3059_eq]
  try dsimp only
  rw [node16640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16641 input3048)).val
theorem input16642_def : input16642 = (.seq input16641 input3048) := by
  unfold input16642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16641)).val
theorem output16642_def : output16642 = (output16641) := by
  unfold output16642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16642_skip : Flapjack.WordAlloc.isSkip output16642 = false := by
  rw [output16642_def]
  conv => lhs; cbv
  try rfl
theorem node16642_eq : Flapjack.WordAlloc.removeDeadStructural input16642 value1528 value1 value2 = (output16642, value6896, value1) := by
  rw [input16642_def, output16642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3048_eq]
  try dsimp only
  rw [node16641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16642 input3047)).val
theorem input16643_def : input16643 = (.seq input16642 input3047) := by
  unfold input16643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16642 output3047)).val
theorem output16643_def : output16643 = (.seq output16642 output3047) := by
  unfold output16643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16643_skip : Flapjack.WordAlloc.isSkip output16643 = false := by
  rw [output16643_def]
  conv => lhs; cbv
  try rfl
theorem node16643_eq : Flapjack.WordAlloc.removeDeadStructural input16643 value1527 value1 value2 = (output16643, value6896, value1) := by
  rw [input16643_def, output16643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3047_eq]
  try dsimp only
  rw [node16642_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16643 input3046)).val
theorem input16644_def : input16644 = (.seq input16643 input3046) := by
  unfold input16644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16643 output3046)).val
theorem output16644_def : output16644 = (.seq output16643 output3046) := by
  unfold output16644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16644_skip : Flapjack.WordAlloc.isSkip output16644 = false := by
  rw [output16644_def]
  conv => lhs; cbv
  try rfl
theorem node16644_eq : Flapjack.WordAlloc.removeDeadStructural input16644 value5 value1 value2 = (output16644, value6896, value1) := by
  rw [input16644_def, output16644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3046_eq]
  try dsimp only
  rw [node16643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16644 input3043)).val
theorem input16645_def : input16645 = (.seq input16644 input3043) := by
  unfold input16645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16644 output3043)).val
theorem output16645_def : output16645 = (.seq output16644 output3043) := by
  unfold output16645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16645_skip : Flapjack.WordAlloc.isSkip output16645 = false := by
  rw [output16645_def]
  conv => lhs; cbv
  try rfl
theorem node16645_eq : Flapjack.WordAlloc.removeDeadStructural input16645 value1520 value1 value2 = (output16645, value6896, value1) := by
  rw [input16645_def, output16645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3043_eq]
  try dsimp only
  rw [node16644_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16645 input3032)).val
theorem input16646_def : input16646 = (.seq input16645 input3032) := by
  unfold input16646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16645)).val
theorem output16646_def : output16646 = (output16645) := by
  unfold output16646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16646_skip : Flapjack.WordAlloc.isSkip output16646 = false := by
  rw [output16646_def]
  conv => lhs; cbv
  try rfl
theorem node16646_eq : Flapjack.WordAlloc.removeDeadStructural input16646 value1520 value1 value2 = (output16646, value6896, value1) := by
  rw [input16646_def, output16646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3032_eq]
  try dsimp only
  rw [node16645_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16646 input3031)).val
theorem input16647_def : input16647 = (.seq input16646 input3031) := by
  unfold input16647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16646 output3031)).val
theorem output16647_def : output16647 = (.seq output16646 output3031) := by
  unfold output16647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16647_skip : Flapjack.WordAlloc.isSkip output16647 = false := by
  rw [output16647_def]
  conv => lhs; cbv
  try rfl
theorem node16647_eq : Flapjack.WordAlloc.removeDeadStructural input16647 value1519 value1 value2 = (output16647, value6896, value1) := by
  rw [input16647_def, output16647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3031_eq]
  try dsimp only
  rw [node16646_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16647 input3030)).val
theorem input16648_def : input16648 = (.seq input16647 input3030) := by
  unfold input16648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16647 output3030)).val
theorem output16648_def : output16648 = (.seq output16647 output3030) := by
  unfold output16648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16648_skip : Flapjack.WordAlloc.isSkip output16648 = false := by
  rw [output16648_def]
  conv => lhs; cbv
  try rfl
theorem node16648_eq : Flapjack.WordAlloc.removeDeadStructural input16648 value5 value1 value2 = (output16648, value6896, value1) := by
  rw [input16648_def, output16648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3030_eq]
  try dsimp only
  rw [node16647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16648 input3027)).val
theorem input16649_def : input16649 = (.seq input16648 input3027) := by
  unfold input16649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16648 output3027)).val
theorem output16649_def : output16649 = (.seq output16648 output3027) := by
  unfold output16649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16649_skip : Flapjack.WordAlloc.isSkip output16649 = false := by
  rw [output16649_def]
  conv => lhs; cbv
  try rfl
theorem node16649_eq : Flapjack.WordAlloc.removeDeadStructural input16649 value1512 value1 value2 = (output16649, value6896, value1) := by
  rw [input16649_def, output16649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3027_eq]
  try dsimp only
  rw [node16648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16649 input3016)).val
theorem input16650_def : input16650 = (.seq input16649 input3016) := by
  unfold input16650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16649)).val
theorem output16650_def : output16650 = (output16649) := by
  unfold output16650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16650_skip : Flapjack.WordAlloc.isSkip output16650 = false := by
  rw [output16650_def]
  conv => lhs; cbv
  try rfl
theorem node16650_eq : Flapjack.WordAlloc.removeDeadStructural input16650 value1512 value1 value2 = (output16650, value6896, value1) := by
  rw [input16650_def, output16650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3016_eq]
  try dsimp only
  rw [node16649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16650 input3015)).val
theorem input16651_def : input16651 = (.seq input16650 input3015) := by
  unfold input16651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16650 output3015)).val
theorem output16651_def : output16651 = (.seq output16650 output3015) := by
  unfold output16651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16651_skip : Flapjack.WordAlloc.isSkip output16651 = false := by
  rw [output16651_def]
  conv => lhs; cbv
  try rfl
theorem node16651_eq : Flapjack.WordAlloc.removeDeadStructural input16651 value1511 value1 value2 = (output16651, value6896, value1) := by
  rw [input16651_def, output16651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3015_eq]
  try dsimp only
  rw [node16650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16651 input3014)).val
theorem input16652_def : input16652 = (.seq input16651 input3014) := by
  unfold input16652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16651 output3014)).val
theorem output16652_def : output16652 = (.seq output16651 output3014) := by
  unfold output16652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16652_skip : Flapjack.WordAlloc.isSkip output16652 = false := by
  rw [output16652_def]
  conv => lhs; cbv
  try rfl
theorem node16652_eq : Flapjack.WordAlloc.removeDeadStructural input16652 value5 value1 value2 = (output16652, value6896, value1) := by
  rw [input16652_def, output16652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3014_eq]
  try dsimp only
  rw [node16651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16652 input3011)).val
theorem input16653_def : input16653 = (.seq input16652 input3011) := by
  unfold input16653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16652 output3011)).val
theorem output16653_def : output16653 = (.seq output16652 output3011) := by
  unfold output16653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16653_skip : Flapjack.WordAlloc.isSkip output16653 = false := by
  rw [output16653_def]
  conv => lhs; cbv
  try rfl
theorem node16653_eq : Flapjack.WordAlloc.removeDeadStructural input16653 value1504 value1 value2 = (output16653, value6896, value1) := by
  rw [input16653_def, output16653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3011_eq]
  try dsimp only
  rw [node16652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16653 input3000)).val
theorem input16654_def : input16654 = (.seq input16653 input3000) := by
  unfold input16654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16653)).val
theorem output16654_def : output16654 = (output16653) := by
  unfold output16654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16654_skip : Flapjack.WordAlloc.isSkip output16654 = false := by
  rw [output16654_def]
  conv => lhs; cbv
  try rfl
theorem node16654_eq : Flapjack.WordAlloc.removeDeadStructural input16654 value1504 value1 value2 = (output16654, value6896, value1) := by
  rw [input16654_def, output16654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3000_eq]
  try dsimp only
  rw [node16653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16654 input2999)).val
theorem input16655_def : input16655 = (.seq input16654 input2999) := by
  unfold input16655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16654 output2999)).val
theorem output16655_def : output16655 = (.seq output16654 output2999) := by
  unfold output16655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16655_skip : Flapjack.WordAlloc.isSkip output16655 = false := by
  rw [output16655_def]
  conv => lhs; cbv
  try rfl
theorem node16655_eq : Flapjack.WordAlloc.removeDeadStructural input16655 value1503 value1 value2 = (output16655, value6896, value1) := by
  rw [input16655_def, output16655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2999_eq]
  try dsimp only
  rw [node16654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16655 input2998)).val
theorem input16656_def : input16656 = (.seq input16655 input2998) := by
  unfold input16656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16655 output2998)).val
theorem output16656_def : output16656 = (.seq output16655 output2998) := by
  unfold output16656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16656_skip : Flapjack.WordAlloc.isSkip output16656 = false := by
  rw [output16656_def]
  conv => lhs; cbv
  try rfl
theorem node16656_eq : Flapjack.WordAlloc.removeDeadStructural input16656 value5 value1 value2 = (output16656, value6896, value1) := by
  rw [input16656_def, output16656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2998_eq]
  try dsimp only
  rw [node16655_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16656 input2995)).val
theorem input16657_def : input16657 = (.seq input16656 input2995) := by
  unfold input16657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16656 output2995)).val
theorem output16657_def : output16657 = (.seq output16656 output2995) := by
  unfold output16657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16657_skip : Flapjack.WordAlloc.isSkip output16657 = false := by
  rw [output16657_def]
  conv => lhs; cbv
  try rfl
theorem node16657_eq : Flapjack.WordAlloc.removeDeadStructural input16657 value1496 value1 value2 = (output16657, value6896, value1) := by
  rw [input16657_def, output16657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2995_eq]
  try dsimp only
  rw [node16656_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16657 input2984)).val
theorem input16658_def : input16658 = (.seq input16657 input2984) := by
  unfold input16658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16657)).val
theorem output16658_def : output16658 = (output16657) := by
  unfold output16658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16658_skip : Flapjack.WordAlloc.isSkip output16658 = false := by
  rw [output16658_def]
  conv => lhs; cbv
  try rfl
theorem node16658_eq : Flapjack.WordAlloc.removeDeadStructural input16658 value1496 value1 value2 = (output16658, value6896, value1) := by
  rw [input16658_def, output16658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2984_eq]
  try dsimp only
  rw [node16657_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16658 input2983)).val
theorem input16659_def : input16659 = (.seq input16658 input2983) := by
  unfold input16659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16658 output2983)).val
theorem output16659_def : output16659 = (.seq output16658 output2983) := by
  unfold output16659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16659_skip : Flapjack.WordAlloc.isSkip output16659 = false := by
  rw [output16659_def]
  conv => lhs; cbv
  try rfl
theorem node16659_eq : Flapjack.WordAlloc.removeDeadStructural input16659 value1495 value1 value2 = (output16659, value6896, value1) := by
  rw [input16659_def, output16659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2983_eq]
  try dsimp only
  rw [node16658_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16659 input2982)).val
theorem input16660_def : input16660 = (.seq input16659 input2982) := by
  unfold input16660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16659 output2982)).val
theorem output16660_def : output16660 = (.seq output16659 output2982) := by
  unfold output16660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16660_skip : Flapjack.WordAlloc.isSkip output16660 = false := by
  rw [output16660_def]
  conv => lhs; cbv
  try rfl
theorem node16660_eq : Flapjack.WordAlloc.removeDeadStructural input16660 value5 value1 value2 = (output16660, value6896, value1) := by
  rw [input16660_def, output16660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2982_eq]
  try dsimp only
  rw [node16659_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16660 input2979)).val
theorem input16661_def : input16661 = (.seq input16660 input2979) := by
  unfold input16661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16660 output2979)).val
theorem output16661_def : output16661 = (.seq output16660 output2979) := by
  unfold output16661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16661_skip : Flapjack.WordAlloc.isSkip output16661 = false := by
  rw [output16661_def]
  conv => lhs; cbv
  try rfl
theorem node16661_eq : Flapjack.WordAlloc.removeDeadStructural input16661 value1488 value1 value2 = (output16661, value6896, value1) := by
  rw [input16661_def, output16661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2979_eq]
  try dsimp only
  rw [node16660_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16661 input2968)).val
theorem input16662_def : input16662 = (.seq input16661 input2968) := by
  unfold input16662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16661)).val
theorem output16662_def : output16662 = (output16661) := by
  unfold output16662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16662_skip : Flapjack.WordAlloc.isSkip output16662 = false := by
  rw [output16662_def]
  conv => lhs; cbv
  try rfl
theorem node16662_eq : Flapjack.WordAlloc.removeDeadStructural input16662 value1488 value1 value2 = (output16662, value6896, value1) := by
  rw [input16662_def, output16662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2968_eq]
  try dsimp only
  rw [node16661_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16662 input2967)).val
theorem input16663_def : input16663 = (.seq input16662 input2967) := by
  unfold input16663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16662 output2967)).val
theorem output16663_def : output16663 = (.seq output16662 output2967) := by
  unfold output16663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16663_skip : Flapjack.WordAlloc.isSkip output16663 = false := by
  rw [output16663_def]
  conv => lhs; cbv
  try rfl
theorem node16663_eq : Flapjack.WordAlloc.removeDeadStructural input16663 value1487 value1 value2 = (output16663, value6896, value1) := by
  rw [input16663_def, output16663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2967_eq]
  try dsimp only
  rw [node16662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16663 input2966)).val
theorem input16664_def : input16664 = (.seq input16663 input2966) := by
  unfold input16664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16663 output2966)).val
theorem output16664_def : output16664 = (.seq output16663 output2966) := by
  unfold output16664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16664_skip : Flapjack.WordAlloc.isSkip output16664 = false := by
  rw [output16664_def]
  conv => lhs; cbv
  try rfl
theorem node16664_eq : Flapjack.WordAlloc.removeDeadStructural input16664 value5 value1 value2 = (output16664, value6896, value1) := by
  rw [input16664_def, output16664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2966_eq]
  try dsimp only
  rw [node16663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16664 input2963)).val
theorem input16665_def : input16665 = (.seq input16664 input2963) := by
  unfold input16665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16664 output2963)).val
theorem output16665_def : output16665 = (.seq output16664 output2963) := by
  unfold output16665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16665_skip : Flapjack.WordAlloc.isSkip output16665 = false := by
  rw [output16665_def]
  conv => lhs; cbv
  try rfl
theorem node16665_eq : Flapjack.WordAlloc.removeDeadStructural input16665 value1480 value1 value2 = (output16665, value6896, value1) := by
  rw [input16665_def, output16665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2963_eq]
  try dsimp only
  rw [node16664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16665 input2952)).val
theorem input16666_def : input16666 = (.seq input16665 input2952) := by
  unfold input16666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16665)).val
theorem output16666_def : output16666 = (output16665) := by
  unfold output16666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16666_skip : Flapjack.WordAlloc.isSkip output16666 = false := by
  rw [output16666_def]
  conv => lhs; cbv
  try rfl
theorem node16666_eq : Flapjack.WordAlloc.removeDeadStructural input16666 value1480 value1 value2 = (output16666, value6896, value1) := by
  rw [input16666_def, output16666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2952_eq]
  try dsimp only
  rw [node16665_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16666 input2951)).val
theorem input16667_def : input16667 = (.seq input16666 input2951) := by
  unfold input16667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16666 output2951)).val
theorem output16667_def : output16667 = (.seq output16666 output2951) := by
  unfold output16667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16667_skip : Flapjack.WordAlloc.isSkip output16667 = false := by
  rw [output16667_def]
  conv => lhs; cbv
  try rfl
theorem node16667_eq : Flapjack.WordAlloc.removeDeadStructural input16667 value1479 value1 value2 = (output16667, value6896, value1) := by
  rw [input16667_def, output16667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2951_eq]
  try dsimp only
  rw [node16666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16667 input2950)).val
theorem input16668_def : input16668 = (.seq input16667 input2950) := by
  unfold input16668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16667 output2950)).val
theorem output16668_def : output16668 = (.seq output16667 output2950) := by
  unfold output16668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16668_skip : Flapjack.WordAlloc.isSkip output16668 = false := by
  rw [output16668_def]
  conv => lhs; cbv
  try rfl
theorem node16668_eq : Flapjack.WordAlloc.removeDeadStructural input16668 value5 value1 value2 = (output16668, value6896, value1) := by
  rw [input16668_def, output16668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2950_eq]
  try dsimp only
  rw [node16667_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16668 input2947)).val
theorem input16669_def : input16669 = (.seq input16668 input2947) := by
  unfold input16669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16668 output2947)).val
theorem output16669_def : output16669 = (.seq output16668 output2947) := by
  unfold output16669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16669_skip : Flapjack.WordAlloc.isSkip output16669 = false := by
  rw [output16669_def]
  conv => lhs; cbv
  try rfl
theorem node16669_eq : Flapjack.WordAlloc.removeDeadStructural input16669 value1472 value1 value2 = (output16669, value6896, value1) := by
  rw [input16669_def, output16669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2947_eq]
  try dsimp only
  rw [node16668_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16669 input2936)).val
theorem input16670_def : input16670 = (.seq input16669 input2936) := by
  unfold input16670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16669)).val
theorem output16670_def : output16670 = (output16669) := by
  unfold output16670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16670_skip : Flapjack.WordAlloc.isSkip output16670 = false := by
  rw [output16670_def]
  conv => lhs; cbv
  try rfl
theorem node16670_eq : Flapjack.WordAlloc.removeDeadStructural input16670 value1472 value1 value2 = (output16670, value6896, value1) := by
  rw [input16670_def, output16670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2936_eq]
  try dsimp only
  rw [node16669_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16670 input2935)).val
theorem input16671_def : input16671 = (.seq input16670 input2935) := by
  unfold input16671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16670 output2935)).val
theorem output16671_def : output16671 = (.seq output16670 output2935) := by
  unfold output16671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16671_skip : Flapjack.WordAlloc.isSkip output16671 = false := by
  rw [output16671_def]
  conv => lhs; cbv
  try rfl
theorem node16671_eq : Flapjack.WordAlloc.removeDeadStructural input16671 value1471 value1 value2 = (output16671, value6896, value1) := by
  rw [input16671_def, output16671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2935_eq]
  try dsimp only
  rw [node16670_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16671 input2934)).val
theorem input16672_def : input16672 = (.seq input16671 input2934) := by
  unfold input16672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16671 output2934)).val
theorem output16672_def : output16672 = (.seq output16671 output2934) := by
  unfold output16672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16672_skip : Flapjack.WordAlloc.isSkip output16672 = false := by
  rw [output16672_def]
  conv => lhs; cbv
  try rfl
theorem node16672_eq : Flapjack.WordAlloc.removeDeadStructural input16672 value5 value1 value2 = (output16672, value6896, value1) := by
  rw [input16672_def, output16672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2934_eq]
  try dsimp only
  rw [node16671_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16672 input2931)).val
theorem input16673_def : input16673 = (.seq input16672 input2931) := by
  unfold input16673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16672 output2931)).val
theorem output16673_def : output16673 = (.seq output16672 output2931) := by
  unfold output16673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16673_skip : Flapjack.WordAlloc.isSkip output16673 = false := by
  rw [output16673_def]
  conv => lhs; cbv
  try rfl
theorem node16673_eq : Flapjack.WordAlloc.removeDeadStructural input16673 value1464 value1 value2 = (output16673, value6896, value1) := by
  rw [input16673_def, output16673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2931_eq]
  try dsimp only
  rw [node16672_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16673 input2920)).val
theorem input16674_def : input16674 = (.seq input16673 input2920) := by
  unfold input16674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16673)).val
theorem output16674_def : output16674 = (output16673) := by
  unfold output16674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16674_skip : Flapjack.WordAlloc.isSkip output16674 = false := by
  rw [output16674_def]
  conv => lhs; cbv
  try rfl
theorem node16674_eq : Flapjack.WordAlloc.removeDeadStructural input16674 value1464 value1 value2 = (output16674, value6896, value1) := by
  rw [input16674_def, output16674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2920_eq]
  try dsimp only
  rw [node16673_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16674 input2919)).val
theorem input16675_def : input16675 = (.seq input16674 input2919) := by
  unfold input16675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16674 output2919)).val
theorem output16675_def : output16675 = (.seq output16674 output2919) := by
  unfold output16675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16675_skip : Flapjack.WordAlloc.isSkip output16675 = false := by
  rw [output16675_def]
  conv => lhs; cbv
  try rfl
theorem node16675_eq : Flapjack.WordAlloc.removeDeadStructural input16675 value1463 value1 value2 = (output16675, value6896, value1) := by
  rw [input16675_def, output16675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2919_eq]
  try dsimp only
  rw [node16674_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16675 input2918)).val
theorem input16676_def : input16676 = (.seq input16675 input2918) := by
  unfold input16676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16675 output2918)).val
theorem output16676_def : output16676 = (.seq output16675 output2918) := by
  unfold output16676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16676_skip : Flapjack.WordAlloc.isSkip output16676 = false := by
  rw [output16676_def]
  conv => lhs; cbv
  try rfl
theorem node16676_eq : Flapjack.WordAlloc.removeDeadStructural input16676 value5 value1 value2 = (output16676, value6896, value1) := by
  rw [input16676_def, output16676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2918_eq]
  try dsimp only
  rw [node16675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16676 input2915)).val
theorem input16677_def : input16677 = (.seq input16676 input2915) := by
  unfold input16677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16676 output2915)).val
theorem output16677_def : output16677 = (.seq output16676 output2915) := by
  unfold output16677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16677_skip : Flapjack.WordAlloc.isSkip output16677 = false := by
  rw [output16677_def]
  conv => lhs; cbv
  try rfl
theorem node16677_eq : Flapjack.WordAlloc.removeDeadStructural input16677 value1456 value1 value2 = (output16677, value6896, value1) := by
  rw [input16677_def, output16677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2915_eq]
  try dsimp only
  rw [node16676_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16677 input2904)).val
theorem input16678_def : input16678 = (.seq input16677 input2904) := by
  unfold input16678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16677)).val
theorem output16678_def : output16678 = (output16677) := by
  unfold output16678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16678_skip : Flapjack.WordAlloc.isSkip output16678 = false := by
  rw [output16678_def]
  conv => lhs; cbv
  try rfl
theorem node16678_eq : Flapjack.WordAlloc.removeDeadStructural input16678 value1456 value1 value2 = (output16678, value6896, value1) := by
  rw [input16678_def, output16678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2904_eq]
  try dsimp only
  rw [node16677_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16678 input2903)).val
theorem input16679_def : input16679 = (.seq input16678 input2903) := by
  unfold input16679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16678 output2903)).val
theorem output16679_def : output16679 = (.seq output16678 output2903) := by
  unfold output16679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16679_skip : Flapjack.WordAlloc.isSkip output16679 = false := by
  rw [output16679_def]
  conv => lhs; cbv
  try rfl
theorem node16679_eq : Flapjack.WordAlloc.removeDeadStructural input16679 value1455 value1 value2 = (output16679, value6896, value1) := by
  rw [input16679_def, output16679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2903_eq]
  try dsimp only
  rw [node16678_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16679 input2902)).val
theorem input16680_def : input16680 = (.seq input16679 input2902) := by
  unfold input16680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16679 output2902)).val
theorem output16680_def : output16680 = (.seq output16679 output2902) := by
  unfold output16680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16680_skip : Flapjack.WordAlloc.isSkip output16680 = false := by
  rw [output16680_def]
  conv => lhs; cbv
  try rfl
theorem node16680_eq : Flapjack.WordAlloc.removeDeadStructural input16680 value5 value1 value2 = (output16680, value6896, value1) := by
  rw [input16680_def, output16680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2902_eq]
  try dsimp only
  rw [node16679_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16680 input2899)).val
theorem input16681_def : input16681 = (.seq input16680 input2899) := by
  unfold input16681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16680 output2899)).val
theorem output16681_def : output16681 = (.seq output16680 output2899) := by
  unfold output16681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16681_skip : Flapjack.WordAlloc.isSkip output16681 = false := by
  rw [output16681_def]
  conv => lhs; cbv
  try rfl
theorem node16681_eq : Flapjack.WordAlloc.removeDeadStructural input16681 value1448 value1 value2 = (output16681, value6896, value1) := by
  rw [input16681_def, output16681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2899_eq]
  try dsimp only
  rw [node16680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16681 input2888)).val
theorem input16682_def : input16682 = (.seq input16681 input2888) := by
  unfold input16682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16681)).val
theorem output16682_def : output16682 = (output16681) := by
  unfold output16682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16682_skip : Flapjack.WordAlloc.isSkip output16682 = false := by
  rw [output16682_def]
  conv => lhs; cbv
  try rfl
theorem node16682_eq : Flapjack.WordAlloc.removeDeadStructural input16682 value1448 value1 value2 = (output16682, value6896, value1) := by
  rw [input16682_def, output16682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2888_eq]
  try dsimp only
  rw [node16681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16682 input2887)).val
theorem input16683_def : input16683 = (.seq input16682 input2887) := by
  unfold input16683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16682 output2887)).val
theorem output16683_def : output16683 = (.seq output16682 output2887) := by
  unfold output16683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16683_skip : Flapjack.WordAlloc.isSkip output16683 = false := by
  rw [output16683_def]
  conv => lhs; cbv
  try rfl
theorem node16683_eq : Flapjack.WordAlloc.removeDeadStructural input16683 value1447 value1 value2 = (output16683, value6896, value1) := by
  rw [input16683_def, output16683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2887_eq]
  try dsimp only
  rw [node16682_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16683 input2886)).val
theorem input16684_def : input16684 = (.seq input16683 input2886) := by
  unfold input16684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16683 output2886)).val
theorem output16684_def : output16684 = (.seq output16683 output2886) := by
  unfold output16684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16684_skip : Flapjack.WordAlloc.isSkip output16684 = false := by
  rw [output16684_def]
  conv => lhs; cbv
  try rfl
theorem node16684_eq : Flapjack.WordAlloc.removeDeadStructural input16684 value5 value1 value2 = (output16684, value6896, value1) := by
  rw [input16684_def, output16684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2886_eq]
  try dsimp only
  rw [node16683_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16684 input2883)).val
theorem input16685_def : input16685 = (.seq input16684 input2883) := by
  unfold input16685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16684 output2883)).val
theorem output16685_def : output16685 = (.seq output16684 output2883) := by
  unfold output16685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16685_skip : Flapjack.WordAlloc.isSkip output16685 = false := by
  rw [output16685_def]
  conv => lhs; cbv
  try rfl
theorem node16685_eq : Flapjack.WordAlloc.removeDeadStructural input16685 value1440 value1 value2 = (output16685, value6896, value1) := by
  rw [input16685_def, output16685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2883_eq]
  try dsimp only
  rw [node16684_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16685 input2872)).val
theorem input16686_def : input16686 = (.seq input16685 input2872) := by
  unfold input16686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16685)).val
theorem output16686_def : output16686 = (output16685) := by
  unfold output16686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16686_skip : Flapjack.WordAlloc.isSkip output16686 = false := by
  rw [output16686_def]
  conv => lhs; cbv
  try rfl
theorem node16686_eq : Flapjack.WordAlloc.removeDeadStructural input16686 value1440 value1 value2 = (output16686, value6896, value1) := by
  rw [input16686_def, output16686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2872_eq]
  try dsimp only
  rw [node16685_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16686 input2871)).val
theorem input16687_def : input16687 = (.seq input16686 input2871) := by
  unfold input16687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16686 output2871)).val
theorem output16687_def : output16687 = (.seq output16686 output2871) := by
  unfold output16687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16687_skip : Flapjack.WordAlloc.isSkip output16687 = false := by
  rw [output16687_def]
  conv => lhs; cbv
  try rfl
theorem node16687_eq : Flapjack.WordAlloc.removeDeadStructural input16687 value1439 value1 value2 = (output16687, value6896, value1) := by
  rw [input16687_def, output16687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2871_eq]
  try dsimp only
  rw [node16686_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16687 input2870)).val
theorem input16688_def : input16688 = (.seq input16687 input2870) := by
  unfold input16688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16687 output2870)).val
theorem output16688_def : output16688 = (.seq output16687 output2870) := by
  unfold output16688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16688_skip : Flapjack.WordAlloc.isSkip output16688 = false := by
  rw [output16688_def]
  conv => lhs; cbv
  try rfl
theorem node16688_eq : Flapjack.WordAlloc.removeDeadStructural input16688 value5 value1 value2 = (output16688, value6896, value1) := by
  rw [input16688_def, output16688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2870_eq]
  try dsimp only
  rw [node16687_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16688 input2867)).val
theorem input16689_def : input16689 = (.seq input16688 input2867) := by
  unfold input16689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16688 output2867)).val
theorem output16689_def : output16689 = (.seq output16688 output2867) := by
  unfold output16689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16689_skip : Flapjack.WordAlloc.isSkip output16689 = false := by
  rw [output16689_def]
  conv => lhs; cbv
  try rfl
theorem node16689_eq : Flapjack.WordAlloc.removeDeadStructural input16689 value1432 value1 value2 = (output16689, value6896, value1) := by
  rw [input16689_def, output16689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2867_eq]
  try dsimp only
  rw [node16688_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16689 input2856)).val
theorem input16690_def : input16690 = (.seq input16689 input2856) := by
  unfold input16690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16689)).val
theorem output16690_def : output16690 = (output16689) := by
  unfold output16690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16690_skip : Flapjack.WordAlloc.isSkip output16690 = false := by
  rw [output16690_def]
  conv => lhs; cbv
  try rfl
theorem node16690_eq : Flapjack.WordAlloc.removeDeadStructural input16690 value1432 value1 value2 = (output16690, value6896, value1) := by
  rw [input16690_def, output16690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2856_eq]
  try dsimp only
  rw [node16689_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16690 input2855)).val
theorem input16691_def : input16691 = (.seq input16690 input2855) := by
  unfold input16691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16690 output2855)).val
theorem output16691_def : output16691 = (.seq output16690 output2855) := by
  unfold output16691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16691_skip : Flapjack.WordAlloc.isSkip output16691 = false := by
  rw [output16691_def]
  conv => lhs; cbv
  try rfl
theorem node16691_eq : Flapjack.WordAlloc.removeDeadStructural input16691 value1431 value1 value2 = (output16691, value6896, value1) := by
  rw [input16691_def, output16691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2855_eq]
  try dsimp only
  rw [node16690_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16691 input2854)).val
theorem input16692_def : input16692 = (.seq input16691 input2854) := by
  unfold input16692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16691 output2854)).val
theorem output16692_def : output16692 = (.seq output16691 output2854) := by
  unfold output16692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16692_skip : Flapjack.WordAlloc.isSkip output16692 = false := by
  rw [output16692_def]
  conv => lhs; cbv
  try rfl
theorem node16692_eq : Flapjack.WordAlloc.removeDeadStructural input16692 value5 value1 value2 = (output16692, value6896, value1) := by
  rw [input16692_def, output16692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2854_eq]
  try dsimp only
  rw [node16691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16692 input2851)).val
theorem input16693_def : input16693 = (.seq input16692 input2851) := by
  unfold input16693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16692 output2851)).val
theorem output16693_def : output16693 = (.seq output16692 output2851) := by
  unfold output16693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16693_skip : Flapjack.WordAlloc.isSkip output16693 = false := by
  rw [output16693_def]
  conv => lhs; cbv
  try rfl
theorem node16693_eq : Flapjack.WordAlloc.removeDeadStructural input16693 value1424 value1 value2 = (output16693, value6896, value1) := by
  rw [input16693_def, output16693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2851_eq]
  try dsimp only
  rw [node16692_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16693 input2840)).val
theorem input16694_def : input16694 = (.seq input16693 input2840) := by
  unfold input16694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16693)).val
theorem output16694_def : output16694 = (output16693) := by
  unfold output16694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16694_skip : Flapjack.WordAlloc.isSkip output16694 = false := by
  rw [output16694_def]
  conv => lhs; cbv
  try rfl
theorem node16694_eq : Flapjack.WordAlloc.removeDeadStructural input16694 value1424 value1 value2 = (output16694, value6896, value1) := by
  rw [input16694_def, output16694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2840_eq]
  try dsimp only
  rw [node16693_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16694 input2839)).val
theorem input16695_def : input16695 = (.seq input16694 input2839) := by
  unfold input16695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16694 output2839)).val
theorem output16695_def : output16695 = (.seq output16694 output2839) := by
  unfold output16695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16695_skip : Flapjack.WordAlloc.isSkip output16695 = false := by
  rw [output16695_def]
  conv => lhs; cbv
  try rfl
theorem node16695_eq : Flapjack.WordAlloc.removeDeadStructural input16695 value1423 value1 value2 = (output16695, value6896, value1) := by
  rw [input16695_def, output16695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2839_eq]
  try dsimp only
  rw [node16694_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16695 input2838)).val
theorem input16696_def : input16696 = (.seq input16695 input2838) := by
  unfold input16696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16695 output2838)).val
theorem output16696_def : output16696 = (.seq output16695 output2838) := by
  unfold output16696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16696_skip : Flapjack.WordAlloc.isSkip output16696 = false := by
  rw [output16696_def]
  conv => lhs; cbv
  try rfl
theorem node16696_eq : Flapjack.WordAlloc.removeDeadStructural input16696 value5 value1 value2 = (output16696, value6896, value1) := by
  rw [input16696_def, output16696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2838_eq]
  try dsimp only
  rw [node16695_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16696 input2835)).val
theorem input16697_def : input16697 = (.seq input16696 input2835) := by
  unfold input16697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16696 output2835)).val
theorem output16697_def : output16697 = (.seq output16696 output2835) := by
  unfold output16697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16697_skip : Flapjack.WordAlloc.isSkip output16697 = false := by
  rw [output16697_def]
  conv => lhs; cbv
  try rfl
theorem node16697_eq : Flapjack.WordAlloc.removeDeadStructural input16697 value1416 value1 value2 = (output16697, value6896, value1) := by
  rw [input16697_def, output16697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2835_eq]
  try dsimp only
  rw [node16696_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16697 input2824)).val
theorem input16698_def : input16698 = (.seq input16697 input2824) := by
  unfold input16698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16697)).val
theorem output16698_def : output16698 = (output16697) := by
  unfold output16698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16698_skip : Flapjack.WordAlloc.isSkip output16698 = false := by
  rw [output16698_def]
  conv => lhs; cbv
  try rfl
theorem node16698_eq : Flapjack.WordAlloc.removeDeadStructural input16698 value1416 value1 value2 = (output16698, value6896, value1) := by
  rw [input16698_def, output16698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2824_eq]
  try dsimp only
  rw [node16697_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16698 input2823)).val
theorem input16699_def : input16699 = (.seq input16698 input2823) := by
  unfold input16699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16698 output2823)).val
theorem output16699_def : output16699 = (.seq output16698 output2823) := by
  unfold output16699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16699_skip : Flapjack.WordAlloc.isSkip output16699 = false := by
  rw [output16699_def]
  conv => lhs; cbv
  try rfl
theorem node16699_eq : Flapjack.WordAlloc.removeDeadStructural input16699 value1415 value1 value2 = (output16699, value6896, value1) := by
  rw [input16699_def, output16699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2823_eq]
  try dsimp only
  rw [node16698_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16699 input2822)).val
theorem input16700_def : input16700 = (.seq input16699 input2822) := by
  unfold input16700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16699 output2822)).val
theorem output16700_def : output16700 = (.seq output16699 output2822) := by
  unfold output16700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16700_skip : Flapjack.WordAlloc.isSkip output16700 = false := by
  rw [output16700_def]
  conv => lhs; cbv
  try rfl
theorem node16700_eq : Flapjack.WordAlloc.removeDeadStructural input16700 value5 value1 value2 = (output16700, value6896, value1) := by
  rw [input16700_def, output16700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2822_eq]
  try dsimp only
  rw [node16699_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16700 input2819)).val
theorem input16701_def : input16701 = (.seq input16700 input2819) := by
  unfold input16701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16700 output2819)).val
theorem output16701_def : output16701 = (.seq output16700 output2819) := by
  unfold output16701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16701_skip : Flapjack.WordAlloc.isSkip output16701 = false := by
  rw [output16701_def]
  conv => lhs; cbv
  try rfl
theorem node16701_eq : Flapjack.WordAlloc.removeDeadStructural input16701 value1408 value1 value2 = (output16701, value6896, value1) := by
  rw [input16701_def, output16701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2819_eq]
  try dsimp only
  rw [node16700_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16701 input2808)).val
theorem input16702_def : input16702 = (.seq input16701 input2808) := by
  unfold input16702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16701)).val
theorem output16702_def : output16702 = (output16701) := by
  unfold output16702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16702_skip : Flapjack.WordAlloc.isSkip output16702 = false := by
  rw [output16702_def]
  conv => lhs; cbv
  try rfl
theorem node16702_eq : Flapjack.WordAlloc.removeDeadStructural input16702 value1408 value1 value2 = (output16702, value6896, value1) := by
  rw [input16702_def, output16702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2808_eq]
  try dsimp only
  rw [node16701_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16702 input2807)).val
theorem input16703_def : input16703 = (.seq input16702 input2807) := by
  unfold input16703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16702 output2807)).val
theorem output16703_def : output16703 = (.seq output16702 output2807) := by
  unfold output16703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16703_skip : Flapjack.WordAlloc.isSkip output16703 = false := by
  rw [output16703_def]
  conv => lhs; cbv
  try rfl
theorem node16703_eq : Flapjack.WordAlloc.removeDeadStructural input16703 value1407 value1 value2 = (output16703, value6896, value1) := by
  rw [input16703_def, output16703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2807_eq]
  try dsimp only
  rw [node16702_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16703 input2806)).val
theorem input16704_def : input16704 = (.seq input16703 input2806) := by
  unfold input16704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16703 output2806)).val
theorem output16704_def : output16704 = (.seq output16703 output2806) := by
  unfold output16704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16704_skip : Flapjack.WordAlloc.isSkip output16704 = false := by
  rw [output16704_def]
  conv => lhs; cbv
  try rfl
theorem node16704_eq : Flapjack.WordAlloc.removeDeadStructural input16704 value5 value1 value2 = (output16704, value6896, value1) := by
  rw [input16704_def, output16704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2806_eq]
  try dsimp only
  rw [node16703_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16704 input2803)).val
theorem input16705_def : input16705 = (.seq input16704 input2803) := by
  unfold input16705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16704 output2803)).val
theorem output16705_def : output16705 = (.seq output16704 output2803) := by
  unfold output16705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16705_skip : Flapjack.WordAlloc.isSkip output16705 = false := by
  rw [output16705_def]
  conv => lhs; cbv
  try rfl
theorem node16705_eq : Flapjack.WordAlloc.removeDeadStructural input16705 value1400 value1 value2 = (output16705, value6896, value1) := by
  rw [input16705_def, output16705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2803_eq]
  try dsimp only
  rw [node16704_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16705 input2792)).val
theorem input16706_def : input16706 = (.seq input16705 input2792) := by
  unfold input16706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16705)).val
theorem output16706_def : output16706 = (output16705) := by
  unfold output16706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16706_skip : Flapjack.WordAlloc.isSkip output16706 = false := by
  rw [output16706_def]
  conv => lhs; cbv
  try rfl
theorem node16706_eq : Flapjack.WordAlloc.removeDeadStructural input16706 value1400 value1 value2 = (output16706, value6896, value1) := by
  rw [input16706_def, output16706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2792_eq]
  try dsimp only
  rw [node16705_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16706 input2791)).val
theorem input16707_def : input16707 = (.seq input16706 input2791) := by
  unfold input16707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16706 output2791)).val
theorem output16707_def : output16707 = (.seq output16706 output2791) := by
  unfold output16707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16707_skip : Flapjack.WordAlloc.isSkip output16707 = false := by
  rw [output16707_def]
  conv => lhs; cbv
  try rfl
theorem node16707_eq : Flapjack.WordAlloc.removeDeadStructural input16707 value1399 value1 value2 = (output16707, value6896, value1) := by
  rw [input16707_def, output16707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2791_eq]
  try dsimp only
  rw [node16706_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16707 input2790)).val
theorem input16708_def : input16708 = (.seq input16707 input2790) := by
  unfold input16708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16707 output2790)).val
theorem output16708_def : output16708 = (.seq output16707 output2790) := by
  unfold output16708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16708_skip : Flapjack.WordAlloc.isSkip output16708 = false := by
  rw [output16708_def]
  conv => lhs; cbv
  try rfl
theorem node16708_eq : Flapjack.WordAlloc.removeDeadStructural input16708 value5 value1 value2 = (output16708, value6896, value1) := by
  rw [input16708_def, output16708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2790_eq]
  try dsimp only
  rw [node16707_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16708 input2787)).val
theorem input16709_def : input16709 = (.seq input16708 input2787) := by
  unfold input16709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16708 output2787)).val
theorem output16709_def : output16709 = (.seq output16708 output2787) := by
  unfold output16709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16709_skip : Flapjack.WordAlloc.isSkip output16709 = false := by
  rw [output16709_def]
  conv => lhs; cbv
  try rfl
theorem node16709_eq : Flapjack.WordAlloc.removeDeadStructural input16709 value1392 value1 value2 = (output16709, value6896, value1) := by
  rw [input16709_def, output16709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2787_eq]
  try dsimp only
  rw [node16708_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16709 input2776)).val
theorem input16710_def : input16710 = (.seq input16709 input2776) := by
  unfold input16710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16709)).val
theorem output16710_def : output16710 = (output16709) := by
  unfold output16710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16710_skip : Flapjack.WordAlloc.isSkip output16710 = false := by
  rw [output16710_def]
  conv => lhs; cbv
  try rfl
theorem node16710_eq : Flapjack.WordAlloc.removeDeadStructural input16710 value1392 value1 value2 = (output16710, value6896, value1) := by
  rw [input16710_def, output16710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2776_eq]
  try dsimp only
  rw [node16709_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16710 input2775)).val
theorem input16711_def : input16711 = (.seq input16710 input2775) := by
  unfold input16711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16710 output2775)).val
theorem output16711_def : output16711 = (.seq output16710 output2775) := by
  unfold output16711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16711_skip : Flapjack.WordAlloc.isSkip output16711 = false := by
  rw [output16711_def]
  conv => lhs; cbv
  try rfl
theorem node16711_eq : Flapjack.WordAlloc.removeDeadStructural input16711 value1391 value1 value2 = (output16711, value6896, value1) := by
  rw [input16711_def, output16711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2775_eq]
  try dsimp only
  rw [node16710_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16711 input2774)).val
theorem input16712_def : input16712 = (.seq input16711 input2774) := by
  unfold input16712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16711 output2774)).val
theorem output16712_def : output16712 = (.seq output16711 output2774) := by
  unfold output16712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16712_skip : Flapjack.WordAlloc.isSkip output16712 = false := by
  rw [output16712_def]
  conv => lhs; cbv
  try rfl
theorem node16712_eq : Flapjack.WordAlloc.removeDeadStructural input16712 value5 value1 value2 = (output16712, value6896, value1) := by
  rw [input16712_def, output16712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2774_eq]
  try dsimp only
  rw [node16711_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16712 input2771)).val
theorem input16713_def : input16713 = (.seq input16712 input2771) := by
  unfold input16713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16712 output2771)).val
theorem output16713_def : output16713 = (.seq output16712 output2771) := by
  unfold output16713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16713_skip : Flapjack.WordAlloc.isSkip output16713 = false := by
  rw [output16713_def]
  conv => lhs; cbv
  try rfl
theorem node16713_eq : Flapjack.WordAlloc.removeDeadStructural input16713 value1384 value1 value2 = (output16713, value6896, value1) := by
  rw [input16713_def, output16713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2771_eq]
  try dsimp only
  rw [node16712_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16713 input2760)).val
theorem input16714_def : input16714 = (.seq input16713 input2760) := by
  unfold input16714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16713)).val
theorem output16714_def : output16714 = (output16713) := by
  unfold output16714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16714_skip : Flapjack.WordAlloc.isSkip output16714 = false := by
  rw [output16714_def]
  conv => lhs; cbv
  try rfl
theorem node16714_eq : Flapjack.WordAlloc.removeDeadStructural input16714 value1384 value1 value2 = (output16714, value6896, value1) := by
  rw [input16714_def, output16714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2760_eq]
  try dsimp only
  rw [node16713_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16714 input2759)).val
theorem input16715_def : input16715 = (.seq input16714 input2759) := by
  unfold input16715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16714 output2759)).val
theorem output16715_def : output16715 = (.seq output16714 output2759) := by
  unfold output16715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16715_skip : Flapjack.WordAlloc.isSkip output16715 = false := by
  rw [output16715_def]
  conv => lhs; cbv
  try rfl
theorem node16715_eq : Flapjack.WordAlloc.removeDeadStructural input16715 value1383 value1 value2 = (output16715, value6896, value1) := by
  rw [input16715_def, output16715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2759_eq]
  try dsimp only
  rw [node16714_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16715 input2758)).val
theorem input16716_def : input16716 = (.seq input16715 input2758) := by
  unfold input16716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16715 output2758)).val
theorem output16716_def : output16716 = (.seq output16715 output2758) := by
  unfold output16716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16716_skip : Flapjack.WordAlloc.isSkip output16716 = false := by
  rw [output16716_def]
  conv => lhs; cbv
  try rfl
theorem node16716_eq : Flapjack.WordAlloc.removeDeadStructural input16716 value5 value1 value2 = (output16716, value6896, value1) := by
  rw [input16716_def, output16716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2758_eq]
  try dsimp only
  rw [node16715_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16716 input2755)).val
theorem input16717_def : input16717 = (.seq input16716 input2755) := by
  unfold input16717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16716 output2755)).val
theorem output16717_def : output16717 = (.seq output16716 output2755) := by
  unfold output16717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16717_skip : Flapjack.WordAlloc.isSkip output16717 = false := by
  rw [output16717_def]
  conv => lhs; cbv
  try rfl
theorem node16717_eq : Flapjack.WordAlloc.removeDeadStructural input16717 value1376 value1 value2 = (output16717, value6896, value1) := by
  rw [input16717_def, output16717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2755_eq]
  try dsimp only
  rw [node16716_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16717 input2744)).val
theorem input16718_def : input16718 = (.seq input16717 input2744) := by
  unfold input16718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16717)).val
theorem output16718_def : output16718 = (output16717) := by
  unfold output16718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16718_skip : Flapjack.WordAlloc.isSkip output16718 = false := by
  rw [output16718_def]
  conv => lhs; cbv
  try rfl
theorem node16718_eq : Flapjack.WordAlloc.removeDeadStructural input16718 value1376 value1 value2 = (output16718, value6896, value1) := by
  rw [input16718_def, output16718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2744_eq]
  try dsimp only
  rw [node16717_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16718 input2743)).val
theorem input16719_def : input16719 = (.seq input16718 input2743) := by
  unfold input16719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16718 output2743)).val
theorem output16719_def : output16719 = (.seq output16718 output2743) := by
  unfold output16719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16719_skip : Flapjack.WordAlloc.isSkip output16719 = false := by
  rw [output16719_def]
  conv => lhs; cbv
  try rfl
theorem node16719_eq : Flapjack.WordAlloc.removeDeadStructural input16719 value1375 value1 value2 = (output16719, value6896, value1) := by
  rw [input16719_def, output16719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2743_eq]
  try dsimp only
  rw [node16718_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16719 input2742)).val
theorem input16720_def : input16720 = (.seq input16719 input2742) := by
  unfold input16720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16719 output2742)).val
theorem output16720_def : output16720 = (.seq output16719 output2742) := by
  unfold output16720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16720_skip : Flapjack.WordAlloc.isSkip output16720 = false := by
  rw [output16720_def]
  conv => lhs; cbv
  try rfl
theorem node16720_eq : Flapjack.WordAlloc.removeDeadStructural input16720 value5 value1 value2 = (output16720, value6896, value1) := by
  rw [input16720_def, output16720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2742_eq]
  try dsimp only
  rw [node16719_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16720 input2739)).val
theorem input16721_def : input16721 = (.seq input16720 input2739) := by
  unfold input16721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16720 output2739)).val
theorem output16721_def : output16721 = (.seq output16720 output2739) := by
  unfold output16721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16721_skip : Flapjack.WordAlloc.isSkip output16721 = false := by
  rw [output16721_def]
  conv => lhs; cbv
  try rfl
theorem node16721_eq : Flapjack.WordAlloc.removeDeadStructural input16721 value1368 value1 value2 = (output16721, value6896, value1) := by
  rw [input16721_def, output16721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2739_eq]
  try dsimp only
  rw [node16720_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16721 input2728)).val
theorem input16722_def : input16722 = (.seq input16721 input2728) := by
  unfold input16722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16721)).val
theorem output16722_def : output16722 = (output16721) := by
  unfold output16722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16722_skip : Flapjack.WordAlloc.isSkip output16722 = false := by
  rw [output16722_def]
  conv => lhs; cbv
  try rfl
theorem node16722_eq : Flapjack.WordAlloc.removeDeadStructural input16722 value1368 value1 value2 = (output16722, value6896, value1) := by
  rw [input16722_def, output16722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2728_eq]
  try dsimp only
  rw [node16721_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16722 input2727)).val
theorem input16723_def : input16723 = (.seq input16722 input2727) := by
  unfold input16723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16722 output2727)).val
theorem output16723_def : output16723 = (.seq output16722 output2727) := by
  unfold output16723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16723_skip : Flapjack.WordAlloc.isSkip output16723 = false := by
  rw [output16723_def]
  conv => lhs; cbv
  try rfl
theorem node16723_eq : Flapjack.WordAlloc.removeDeadStructural input16723 value1367 value1 value2 = (output16723, value6896, value1) := by
  rw [input16723_def, output16723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2727_eq]
  try dsimp only
  rw [node16722_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16723 input2726)).val
theorem input16724_def : input16724 = (.seq input16723 input2726) := by
  unfold input16724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16723 output2726)).val
theorem output16724_def : output16724 = (.seq output16723 output2726) := by
  unfold output16724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16724_skip : Flapjack.WordAlloc.isSkip output16724 = false := by
  rw [output16724_def]
  conv => lhs; cbv
  try rfl
theorem node16724_eq : Flapjack.WordAlloc.removeDeadStructural input16724 value5 value1 value2 = (output16724, value6896, value1) := by
  rw [input16724_def, output16724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2726_eq]
  try dsimp only
  rw [node16723_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16724 input2723)).val
theorem input16725_def : input16725 = (.seq input16724 input2723) := by
  unfold input16725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16724 output2723)).val
theorem output16725_def : output16725 = (.seq output16724 output2723) := by
  unfold output16725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16725_skip : Flapjack.WordAlloc.isSkip output16725 = false := by
  rw [output16725_def]
  conv => lhs; cbv
  try rfl
theorem node16725_eq : Flapjack.WordAlloc.removeDeadStructural input16725 value1360 value1 value2 = (output16725, value6896, value1) := by
  rw [input16725_def, output16725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2723_eq]
  try dsimp only
  rw [node16724_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16725 input2712)).val
theorem input16726_def : input16726 = (.seq input16725 input2712) := by
  unfold input16726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16725)).val
theorem output16726_def : output16726 = (output16725) := by
  unfold output16726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16726_skip : Flapjack.WordAlloc.isSkip output16726 = false := by
  rw [output16726_def]
  conv => lhs; cbv
  try rfl
theorem node16726_eq : Flapjack.WordAlloc.removeDeadStructural input16726 value1360 value1 value2 = (output16726, value6896, value1) := by
  rw [input16726_def, output16726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2712_eq]
  try dsimp only
  rw [node16725_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16726 input2711)).val
theorem input16727_def : input16727 = (.seq input16726 input2711) := by
  unfold input16727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16726 output2711)).val
theorem output16727_def : output16727 = (.seq output16726 output2711) := by
  unfold output16727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16727_skip : Flapjack.WordAlloc.isSkip output16727 = false := by
  rw [output16727_def]
  conv => lhs; cbv
  try rfl
theorem node16727_eq : Flapjack.WordAlloc.removeDeadStructural input16727 value1359 value1 value2 = (output16727, value6896, value1) := by
  rw [input16727_def, output16727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2711_eq]
  try dsimp only
  rw [node16726_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16727 input2710)).val
theorem input16728_def : input16728 = (.seq input16727 input2710) := by
  unfold input16728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16727 output2710)).val
theorem output16728_def : output16728 = (.seq output16727 output2710) := by
  unfold output16728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16728_skip : Flapjack.WordAlloc.isSkip output16728 = false := by
  rw [output16728_def]
  conv => lhs; cbv
  try rfl
theorem node16728_eq : Flapjack.WordAlloc.removeDeadStructural input16728 value5 value1 value2 = (output16728, value6896, value1) := by
  rw [input16728_def, output16728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2710_eq]
  try dsimp only
  rw [node16727_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16728 input2707)).val
theorem input16729_def : input16729 = (.seq input16728 input2707) := by
  unfold input16729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16728 output2707)).val
theorem output16729_def : output16729 = (.seq output16728 output2707) := by
  unfold output16729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16729_skip : Flapjack.WordAlloc.isSkip output16729 = false := by
  rw [output16729_def]
  conv => lhs; cbv
  try rfl
theorem node16729_eq : Flapjack.WordAlloc.removeDeadStructural input16729 value1352 value1 value2 = (output16729, value6896, value1) := by
  rw [input16729_def, output16729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2707_eq]
  try dsimp only
  rw [node16728_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16729 input2696)).val
theorem input16730_def : input16730 = (.seq input16729 input2696) := by
  unfold input16730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16729)).val
theorem output16730_def : output16730 = (output16729) := by
  unfold output16730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16730_skip : Flapjack.WordAlloc.isSkip output16730 = false := by
  rw [output16730_def]
  conv => lhs; cbv
  try rfl
theorem node16730_eq : Flapjack.WordAlloc.removeDeadStructural input16730 value1352 value1 value2 = (output16730, value6896, value1) := by
  rw [input16730_def, output16730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2696_eq]
  try dsimp only
  rw [node16729_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16730 input2695)).val
theorem input16731_def : input16731 = (.seq input16730 input2695) := by
  unfold input16731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16730 output2695)).val
theorem output16731_def : output16731 = (.seq output16730 output2695) := by
  unfold output16731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16731_skip : Flapjack.WordAlloc.isSkip output16731 = false := by
  rw [output16731_def]
  conv => lhs; cbv
  try rfl
theorem node16731_eq : Flapjack.WordAlloc.removeDeadStructural input16731 value1351 value1 value2 = (output16731, value6896, value1) := by
  rw [input16731_def, output16731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2695_eq]
  try dsimp only
  rw [node16730_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16731 input2694)).val
theorem input16732_def : input16732 = (.seq input16731 input2694) := by
  unfold input16732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16731 output2694)).val
theorem output16732_def : output16732 = (.seq output16731 output2694) := by
  unfold output16732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16732_skip : Flapjack.WordAlloc.isSkip output16732 = false := by
  rw [output16732_def]
  conv => lhs; cbv
  try rfl
theorem node16732_eq : Flapjack.WordAlloc.removeDeadStructural input16732 value5 value1 value2 = (output16732, value6896, value1) := by
  rw [input16732_def, output16732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2694_eq]
  try dsimp only
  rw [node16731_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16732 input2691)).val
theorem input16733_def : input16733 = (.seq input16732 input2691) := by
  unfold input16733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16732 output2691)).val
theorem output16733_def : output16733 = (.seq output16732 output2691) := by
  unfold output16733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16733_skip : Flapjack.WordAlloc.isSkip output16733 = false := by
  rw [output16733_def]
  conv => lhs; cbv
  try rfl
theorem node16733_eq : Flapjack.WordAlloc.removeDeadStructural input16733 value1344 value1 value2 = (output16733, value6896, value1) := by
  rw [input16733_def, output16733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2691_eq]
  try dsimp only
  rw [node16732_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16733 input2680)).val
theorem input16734_def : input16734 = (.seq input16733 input2680) := by
  unfold input16734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16733)).val
theorem output16734_def : output16734 = (output16733) := by
  unfold output16734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16734_skip : Flapjack.WordAlloc.isSkip output16734 = false := by
  rw [output16734_def]
  conv => lhs; cbv
  try rfl
theorem node16734_eq : Flapjack.WordAlloc.removeDeadStructural input16734 value1344 value1 value2 = (output16734, value6896, value1) := by
  rw [input16734_def, output16734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2680_eq]
  try dsimp only
  rw [node16733_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16734 input2679)).val
theorem input16735_def : input16735 = (.seq input16734 input2679) := by
  unfold input16735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16734 output2679)).val
theorem output16735_def : output16735 = (.seq output16734 output2679) := by
  unfold output16735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16735_skip : Flapjack.WordAlloc.isSkip output16735 = false := by
  rw [output16735_def]
  conv => lhs; cbv
  try rfl
theorem node16735_eq : Flapjack.WordAlloc.removeDeadStructural input16735 value1343 value1 value2 = (output16735, value6896, value1) := by
  rw [input16735_def, output16735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2679_eq]
  try dsimp only
  rw [node16734_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16735 input2678)).val
theorem input16736_def : input16736 = (.seq input16735 input2678) := by
  unfold input16736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16735 output2678)).val
theorem output16736_def : output16736 = (.seq output16735 output2678) := by
  unfold output16736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16736_skip : Flapjack.WordAlloc.isSkip output16736 = false := by
  rw [output16736_def]
  conv => lhs; cbv
  try rfl
theorem node16736_eq : Flapjack.WordAlloc.removeDeadStructural input16736 value5 value1 value2 = (output16736, value6896, value1) := by
  rw [input16736_def, output16736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2678_eq]
  try dsimp only
  rw [node16735_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16736 input2675)).val
theorem input16737_def : input16737 = (.seq input16736 input2675) := by
  unfold input16737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16736 output2675)).val
theorem output16737_def : output16737 = (.seq output16736 output2675) := by
  unfold output16737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16737_skip : Flapjack.WordAlloc.isSkip output16737 = false := by
  rw [output16737_def]
  conv => lhs; cbv
  try rfl
theorem node16737_eq : Flapjack.WordAlloc.removeDeadStructural input16737 value1336 value1 value2 = (output16737, value6896, value1) := by
  rw [input16737_def, output16737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2675_eq]
  try dsimp only
  rw [node16736_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16737 input2664)).val
theorem input16738_def : input16738 = (.seq input16737 input2664) := by
  unfold input16738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16737)).val
theorem output16738_def : output16738 = (output16737) := by
  unfold output16738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16738_skip : Flapjack.WordAlloc.isSkip output16738 = false := by
  rw [output16738_def]
  conv => lhs; cbv
  try rfl
theorem node16738_eq : Flapjack.WordAlloc.removeDeadStructural input16738 value1336 value1 value2 = (output16738, value6896, value1) := by
  rw [input16738_def, output16738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2664_eq]
  try dsimp only
  rw [node16737_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16738 input2663)).val
theorem input16739_def : input16739 = (.seq input16738 input2663) := by
  unfold input16739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16738 output2663)).val
theorem output16739_def : output16739 = (.seq output16738 output2663) := by
  unfold output16739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16739_skip : Flapjack.WordAlloc.isSkip output16739 = false := by
  rw [output16739_def]
  conv => lhs; cbv
  try rfl
theorem node16739_eq : Flapjack.WordAlloc.removeDeadStructural input16739 value1335 value1 value2 = (output16739, value6896, value1) := by
  rw [input16739_def, output16739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2663_eq]
  try dsimp only
  rw [node16738_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16739 input2662)).val
theorem input16740_def : input16740 = (.seq input16739 input2662) := by
  unfold input16740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16739 output2662)).val
theorem output16740_def : output16740 = (.seq output16739 output2662) := by
  unfold output16740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16740_skip : Flapjack.WordAlloc.isSkip output16740 = false := by
  rw [output16740_def]
  conv => lhs; cbv
  try rfl
theorem node16740_eq : Flapjack.WordAlloc.removeDeadStructural input16740 value5 value1 value2 = (output16740, value6896, value1) := by
  rw [input16740_def, output16740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2662_eq]
  try dsimp only
  rw [node16739_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16740 input2659)).val
theorem input16741_def : input16741 = (.seq input16740 input2659) := by
  unfold input16741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16740 output2659)).val
theorem output16741_def : output16741 = (.seq output16740 output2659) := by
  unfold output16741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16741_skip : Flapjack.WordAlloc.isSkip output16741 = false := by
  rw [output16741_def]
  conv => lhs; cbv
  try rfl
theorem node16741_eq : Flapjack.WordAlloc.removeDeadStructural input16741 value1328 value1 value2 = (output16741, value6896, value1) := by
  rw [input16741_def, output16741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2659_eq]
  try dsimp only
  rw [node16740_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16741 input2648)).val
theorem input16742_def : input16742 = (.seq input16741 input2648) := by
  unfold input16742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16741)).val
theorem output16742_def : output16742 = (output16741) := by
  unfold output16742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16742_skip : Flapjack.WordAlloc.isSkip output16742 = false := by
  rw [output16742_def]
  conv => lhs; cbv
  try rfl
theorem node16742_eq : Flapjack.WordAlloc.removeDeadStructural input16742 value1328 value1 value2 = (output16742, value6896, value1) := by
  rw [input16742_def, output16742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2648_eq]
  try dsimp only
  rw [node16741_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16742 input2647)).val
theorem input16743_def : input16743 = (.seq input16742 input2647) := by
  unfold input16743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16742 output2647)).val
theorem output16743_def : output16743 = (.seq output16742 output2647) := by
  unfold output16743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16743_skip : Flapjack.WordAlloc.isSkip output16743 = false := by
  rw [output16743_def]
  conv => lhs; cbv
  try rfl
theorem node16743_eq : Flapjack.WordAlloc.removeDeadStructural input16743 value1327 value1 value2 = (output16743, value6896, value1) := by
  rw [input16743_def, output16743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2647_eq]
  try dsimp only
  rw [node16742_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16743 input2646)).val
theorem input16744_def : input16744 = (.seq input16743 input2646) := by
  unfold input16744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16743 output2646)).val
theorem output16744_def : output16744 = (.seq output16743 output2646) := by
  unfold output16744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16744_skip : Flapjack.WordAlloc.isSkip output16744 = false := by
  rw [output16744_def]
  conv => lhs; cbv
  try rfl
theorem node16744_eq : Flapjack.WordAlloc.removeDeadStructural input16744 value5 value1 value2 = (output16744, value6896, value1) := by
  rw [input16744_def, output16744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2646_eq]
  try dsimp only
  rw [node16743_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16744 input2643)).val
theorem input16745_def : input16745 = (.seq input16744 input2643) := by
  unfold input16745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16744 output2643)).val
theorem output16745_def : output16745 = (.seq output16744 output2643) := by
  unfold output16745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16745_skip : Flapjack.WordAlloc.isSkip output16745 = false := by
  rw [output16745_def]
  conv => lhs; cbv
  try rfl
theorem node16745_eq : Flapjack.WordAlloc.removeDeadStructural input16745 value1320 value1 value2 = (output16745, value6896, value1) := by
  rw [input16745_def, output16745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2643_eq]
  try dsimp only
  rw [node16744_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16745 input2632)).val
theorem input16746_def : input16746 = (.seq input16745 input2632) := by
  unfold input16746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16745)).val
theorem output16746_def : output16746 = (output16745) := by
  unfold output16746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16746_skip : Flapjack.WordAlloc.isSkip output16746 = false := by
  rw [output16746_def]
  conv => lhs; cbv
  try rfl
theorem node16746_eq : Flapjack.WordAlloc.removeDeadStructural input16746 value1320 value1 value2 = (output16746, value6896, value1) := by
  rw [input16746_def, output16746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2632_eq]
  try dsimp only
  rw [node16745_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16746 input2631)).val
theorem input16747_def : input16747 = (.seq input16746 input2631) := by
  unfold input16747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16746 output2631)).val
theorem output16747_def : output16747 = (.seq output16746 output2631) := by
  unfold output16747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16747_skip : Flapjack.WordAlloc.isSkip output16747 = false := by
  rw [output16747_def]
  conv => lhs; cbv
  try rfl
theorem node16747_eq : Flapjack.WordAlloc.removeDeadStructural input16747 value1319 value1 value2 = (output16747, value6896, value1) := by
  rw [input16747_def, output16747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2631_eq]
  try dsimp only
  rw [node16746_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16747 input2630)).val
theorem input16748_def : input16748 = (.seq input16747 input2630) := by
  unfold input16748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16747 output2630)).val
theorem output16748_def : output16748 = (.seq output16747 output2630) := by
  unfold output16748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16748_skip : Flapjack.WordAlloc.isSkip output16748 = false := by
  rw [output16748_def]
  conv => lhs; cbv
  try rfl
theorem node16748_eq : Flapjack.WordAlloc.removeDeadStructural input16748 value5 value1 value2 = (output16748, value6896, value1) := by
  rw [input16748_def, output16748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2630_eq]
  try dsimp only
  rw [node16747_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16748 input2627)).val
theorem input16749_def : input16749 = (.seq input16748 input2627) := by
  unfold input16749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16748 output2627)).val
theorem output16749_def : output16749 = (.seq output16748 output2627) := by
  unfold output16749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16749_skip : Flapjack.WordAlloc.isSkip output16749 = false := by
  rw [output16749_def]
  conv => lhs; cbv
  try rfl
theorem node16749_eq : Flapjack.WordAlloc.removeDeadStructural input16749 value1312 value1 value2 = (output16749, value6896, value1) := by
  rw [input16749_def, output16749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2627_eq]
  try dsimp only
  rw [node16748_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16749 input2616)).val
theorem input16750_def : input16750 = (.seq input16749 input2616) := by
  unfold input16750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16749)).val
theorem output16750_def : output16750 = (output16749) := by
  unfold output16750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16750_skip : Flapjack.WordAlloc.isSkip output16750 = false := by
  rw [output16750_def]
  conv => lhs; cbv
  try rfl
theorem node16750_eq : Flapjack.WordAlloc.removeDeadStructural input16750 value1312 value1 value2 = (output16750, value6896, value1) := by
  rw [input16750_def, output16750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2616_eq]
  try dsimp only
  rw [node16749_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16750 input2615)).val
theorem input16751_def : input16751 = (.seq input16750 input2615) := by
  unfold input16751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16750 output2615)).val
theorem output16751_def : output16751 = (.seq output16750 output2615) := by
  unfold output16751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16751_skip : Flapjack.WordAlloc.isSkip output16751 = false := by
  rw [output16751_def]
  conv => lhs; cbv
  try rfl
theorem node16751_eq : Flapjack.WordAlloc.removeDeadStructural input16751 value1311 value1 value2 = (output16751, value6896, value1) := by
  rw [input16751_def, output16751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2615_eq]
  try dsimp only
  rw [node16750_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16751 input2614)).val
theorem input16752_def : input16752 = (.seq input16751 input2614) := by
  unfold input16752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16751 output2614)).val
theorem output16752_def : output16752 = (.seq output16751 output2614) := by
  unfold output16752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16752_skip : Flapjack.WordAlloc.isSkip output16752 = false := by
  rw [output16752_def]
  conv => lhs; cbv
  try rfl
theorem node16752_eq : Flapjack.WordAlloc.removeDeadStructural input16752 value5 value1 value2 = (output16752, value6896, value1) := by
  rw [input16752_def, output16752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2614_eq]
  try dsimp only
  rw [node16751_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16752 input2611)).val
theorem input16753_def : input16753 = (.seq input16752 input2611) := by
  unfold input16753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16752 output2611)).val
theorem output16753_def : output16753 = (.seq output16752 output2611) := by
  unfold output16753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16753_skip : Flapjack.WordAlloc.isSkip output16753 = false := by
  rw [output16753_def]
  conv => lhs; cbv
  try rfl
theorem node16753_eq : Flapjack.WordAlloc.removeDeadStructural input16753 value1304 value1 value2 = (output16753, value6896, value1) := by
  rw [input16753_def, output16753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2611_eq]
  try dsimp only
  rw [node16752_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16753 input2600)).val
theorem input16754_def : input16754 = (.seq input16753 input2600) := by
  unfold input16754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16753)).val
theorem output16754_def : output16754 = (output16753) := by
  unfold output16754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16754_skip : Flapjack.WordAlloc.isSkip output16754 = false := by
  rw [output16754_def]
  conv => lhs; cbv
  try rfl
theorem node16754_eq : Flapjack.WordAlloc.removeDeadStructural input16754 value1304 value1 value2 = (output16754, value6896, value1) := by
  rw [input16754_def, output16754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2600_eq]
  try dsimp only
  rw [node16753_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16754 input2599)).val
theorem input16755_def : input16755 = (.seq input16754 input2599) := by
  unfold input16755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16754 output2599)).val
theorem output16755_def : output16755 = (.seq output16754 output2599) := by
  unfold output16755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16755_skip : Flapjack.WordAlloc.isSkip output16755 = false := by
  rw [output16755_def]
  conv => lhs; cbv
  try rfl
theorem node16755_eq : Flapjack.WordAlloc.removeDeadStructural input16755 value1303 value1 value2 = (output16755, value6896, value1) := by
  rw [input16755_def, output16755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2599_eq]
  try dsimp only
  rw [node16754_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16755 input2598)).val
theorem input16756_def : input16756 = (.seq input16755 input2598) := by
  unfold input16756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16755 output2598)).val
theorem output16756_def : output16756 = (.seq output16755 output2598) := by
  unfold output16756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16756_skip : Flapjack.WordAlloc.isSkip output16756 = false := by
  rw [output16756_def]
  conv => lhs; cbv
  try rfl
theorem node16756_eq : Flapjack.WordAlloc.removeDeadStructural input16756 value5 value1 value2 = (output16756, value6896, value1) := by
  rw [input16756_def, output16756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2598_eq]
  try dsimp only
  rw [node16755_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16756 input2595)).val
theorem input16757_def : input16757 = (.seq input16756 input2595) := by
  unfold input16757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16756 output2595)).val
theorem output16757_def : output16757 = (.seq output16756 output2595) := by
  unfold output16757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16757_skip : Flapjack.WordAlloc.isSkip output16757 = false := by
  rw [output16757_def]
  conv => lhs; cbv
  try rfl
theorem node16757_eq : Flapjack.WordAlloc.removeDeadStructural input16757 value1296 value1 value2 = (output16757, value6896, value1) := by
  rw [input16757_def, output16757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2595_eq]
  try dsimp only
  rw [node16756_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16757 input2584)).val
theorem input16758_def : input16758 = (.seq input16757 input2584) := by
  unfold input16758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16757)).val
theorem output16758_def : output16758 = (output16757) := by
  unfold output16758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16758_skip : Flapjack.WordAlloc.isSkip output16758 = false := by
  rw [output16758_def]
  conv => lhs; cbv
  try rfl
theorem node16758_eq : Flapjack.WordAlloc.removeDeadStructural input16758 value1296 value1 value2 = (output16758, value6896, value1) := by
  rw [input16758_def, output16758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2584_eq]
  try dsimp only
  rw [node16757_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16758 input2583)).val
theorem input16759_def : input16759 = (.seq input16758 input2583) := by
  unfold input16759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16758 output2583)).val
theorem output16759_def : output16759 = (.seq output16758 output2583) := by
  unfold output16759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16759_skip : Flapjack.WordAlloc.isSkip output16759 = false := by
  rw [output16759_def]
  conv => lhs; cbv
  try rfl
theorem node16759_eq : Flapjack.WordAlloc.removeDeadStructural input16759 value1295 value1 value2 = (output16759, value6896, value1) := by
  rw [input16759_def, output16759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2583_eq]
  try dsimp only
  rw [node16758_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16759 input2582)).val
theorem input16760_def : input16760 = (.seq input16759 input2582) := by
  unfold input16760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16759 output2582)).val
theorem output16760_def : output16760 = (.seq output16759 output2582) := by
  unfold output16760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16760_skip : Flapjack.WordAlloc.isSkip output16760 = false := by
  rw [output16760_def]
  conv => lhs; cbv
  try rfl
theorem node16760_eq : Flapjack.WordAlloc.removeDeadStructural input16760 value5 value1 value2 = (output16760, value6896, value1) := by
  rw [input16760_def, output16760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2582_eq]
  try dsimp only
  rw [node16759_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16760 input2579)).val
theorem input16761_def : input16761 = (.seq input16760 input2579) := by
  unfold input16761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16760 output2579)).val
theorem output16761_def : output16761 = (.seq output16760 output2579) := by
  unfold output16761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16761_skip : Flapjack.WordAlloc.isSkip output16761 = false := by
  rw [output16761_def]
  conv => lhs; cbv
  try rfl
theorem node16761_eq : Flapjack.WordAlloc.removeDeadStructural input16761 value1288 value1 value2 = (output16761, value6896, value1) := by
  rw [input16761_def, output16761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2579_eq]
  try dsimp only
  rw [node16760_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16761 input2568)).val
theorem input16762_def : input16762 = (.seq input16761 input2568) := by
  unfold input16762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16761)).val
theorem output16762_def : output16762 = (output16761) := by
  unfold output16762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16762_skip : Flapjack.WordAlloc.isSkip output16762 = false := by
  rw [output16762_def]
  conv => lhs; cbv
  try rfl
theorem node16762_eq : Flapjack.WordAlloc.removeDeadStructural input16762 value1288 value1 value2 = (output16762, value6896, value1) := by
  rw [input16762_def, output16762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2568_eq]
  try dsimp only
  rw [node16761_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16762 input2567)).val
theorem input16763_def : input16763 = (.seq input16762 input2567) := by
  unfold input16763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16762 output2567)).val
theorem output16763_def : output16763 = (.seq output16762 output2567) := by
  unfold output16763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16763_skip : Flapjack.WordAlloc.isSkip output16763 = false := by
  rw [output16763_def]
  conv => lhs; cbv
  try rfl
theorem node16763_eq : Flapjack.WordAlloc.removeDeadStructural input16763 value1287 value1 value2 = (output16763, value6896, value1) := by
  rw [input16763_def, output16763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2567_eq]
  try dsimp only
  rw [node16762_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16763 input2566)).val
theorem input16764_def : input16764 = (.seq input16763 input2566) := by
  unfold input16764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16763 output2566)).val
theorem output16764_def : output16764 = (.seq output16763 output2566) := by
  unfold output16764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16764_skip : Flapjack.WordAlloc.isSkip output16764 = false := by
  rw [output16764_def]
  conv => lhs; cbv
  try rfl
theorem node16764_eq : Flapjack.WordAlloc.removeDeadStructural input16764 value5 value1 value2 = (output16764, value6896, value1) := by
  rw [input16764_def, output16764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2566_eq]
  try dsimp only
  rw [node16763_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16764 input2563)).val
theorem input16765_def : input16765 = (.seq input16764 input2563) := by
  unfold input16765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16764 output2563)).val
theorem output16765_def : output16765 = (.seq output16764 output2563) := by
  unfold output16765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16765_skip : Flapjack.WordAlloc.isSkip output16765 = false := by
  rw [output16765_def]
  conv => lhs; cbv
  try rfl
theorem node16765_eq : Flapjack.WordAlloc.removeDeadStructural input16765 value1280 value1 value2 = (output16765, value6896, value1) := by
  rw [input16765_def, output16765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2563_eq]
  try dsimp only
  rw [node16764_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16765 input2552)).val
theorem input16766_def : input16766 = (.seq input16765 input2552) := by
  unfold input16766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16765)).val
theorem output16766_def : output16766 = (output16765) := by
  unfold output16766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16766_skip : Flapjack.WordAlloc.isSkip output16766 = false := by
  rw [output16766_def]
  conv => lhs; cbv
  try rfl
theorem node16766_eq : Flapjack.WordAlloc.removeDeadStructural input16766 value1280 value1 value2 = (output16766, value6896, value1) := by
  rw [input16766_def, output16766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2552_eq]
  try dsimp only
  rw [node16765_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16766 input2551)).val
theorem input16767_def : input16767 = (.seq input16766 input2551) := by
  unfold input16767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16766 output2551)).val
theorem output16767_def : output16767 = (.seq output16766 output2551) := by
  unfold output16767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16767_skip : Flapjack.WordAlloc.isSkip output16767 = false := by
  rw [output16767_def]
  conv => lhs; cbv
  try rfl
theorem node16767_eq : Flapjack.WordAlloc.removeDeadStructural input16767 value1279 value1 value2 = (output16767, value6896, value1) := by
  rw [input16767_def, output16767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2551_eq]
  try dsimp only
  rw [node16766_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16767 input2550)).val
theorem input16768_def : input16768 = (.seq input16767 input2550) := by
  unfold input16768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16767 output2550)).val
theorem output16768_def : output16768 = (.seq output16767 output2550) := by
  unfold output16768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16768_skip : Flapjack.WordAlloc.isSkip output16768 = false := by
  rw [output16768_def]
  conv => lhs; cbv
  try rfl
theorem node16768_eq : Flapjack.WordAlloc.removeDeadStructural input16768 value5 value1 value2 = (output16768, value6896, value1) := by
  rw [input16768_def, output16768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2550_eq]
  try dsimp only
  rw [node16767_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16768 input2547)).val
theorem input16769_def : input16769 = (.seq input16768 input2547) := by
  unfold input16769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16768 output2547)).val
theorem output16769_def : output16769 = (.seq output16768 output2547) := by
  unfold output16769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16769_skip : Flapjack.WordAlloc.isSkip output16769 = false := by
  rw [output16769_def]
  conv => lhs; cbv
  try rfl
theorem node16769_eq : Flapjack.WordAlloc.removeDeadStructural input16769 value1272 value1 value2 = (output16769, value6896, value1) := by
  rw [input16769_def, output16769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2547_eq]
  try dsimp only
  rw [node16768_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16769 input2536)).val
theorem input16770_def : input16770 = (.seq input16769 input2536) := by
  unfold input16770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16769)).val
theorem output16770_def : output16770 = (output16769) := by
  unfold output16770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16770_skip : Flapjack.WordAlloc.isSkip output16770 = false := by
  rw [output16770_def]
  conv => lhs; cbv
  try rfl
theorem node16770_eq : Flapjack.WordAlloc.removeDeadStructural input16770 value1272 value1 value2 = (output16770, value6896, value1) := by
  rw [input16770_def, output16770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2536_eq]
  try dsimp only
  rw [node16769_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16770 input2535)).val
theorem input16771_def : input16771 = (.seq input16770 input2535) := by
  unfold input16771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16770 output2535)).val
theorem output16771_def : output16771 = (.seq output16770 output2535) := by
  unfold output16771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16771_skip : Flapjack.WordAlloc.isSkip output16771 = false := by
  rw [output16771_def]
  conv => lhs; cbv
  try rfl
theorem node16771_eq : Flapjack.WordAlloc.removeDeadStructural input16771 value1271 value1 value2 = (output16771, value6896, value1) := by
  rw [input16771_def, output16771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2535_eq]
  try dsimp only
  rw [node16770_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16771 input2534)).val
theorem input16772_def : input16772 = (.seq input16771 input2534) := by
  unfold input16772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16771 output2534)).val
theorem output16772_def : output16772 = (.seq output16771 output2534) := by
  unfold output16772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16772_skip : Flapjack.WordAlloc.isSkip output16772 = false := by
  rw [output16772_def]
  conv => lhs; cbv
  try rfl
theorem node16772_eq : Flapjack.WordAlloc.removeDeadStructural input16772 value5 value1 value2 = (output16772, value6896, value1) := by
  rw [input16772_def, output16772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2534_eq]
  try dsimp only
  rw [node16771_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16772 input2531)).val
theorem input16773_def : input16773 = (.seq input16772 input2531) := by
  unfold input16773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16772 output2531)).val
theorem output16773_def : output16773 = (.seq output16772 output2531) := by
  unfold output16773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16773_skip : Flapjack.WordAlloc.isSkip output16773 = false := by
  rw [output16773_def]
  conv => lhs; cbv
  try rfl
theorem node16773_eq : Flapjack.WordAlloc.removeDeadStructural input16773 value1264 value1 value2 = (output16773, value6896, value1) := by
  rw [input16773_def, output16773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2531_eq]
  try dsimp only
  rw [node16772_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16773 input2520)).val
theorem input16774_def : input16774 = (.seq input16773 input2520) := by
  unfold input16774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16773)).val
theorem output16774_def : output16774 = (output16773) := by
  unfold output16774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16774_skip : Flapjack.WordAlloc.isSkip output16774 = false := by
  rw [output16774_def]
  conv => lhs; cbv
  try rfl
theorem node16774_eq : Flapjack.WordAlloc.removeDeadStructural input16774 value1264 value1 value2 = (output16774, value6896, value1) := by
  rw [input16774_def, output16774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2520_eq]
  try dsimp only
  rw [node16773_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16774 input2519)).val
theorem input16775_def : input16775 = (.seq input16774 input2519) := by
  unfold input16775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16774 output2519)).val
theorem output16775_def : output16775 = (.seq output16774 output2519) := by
  unfold output16775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16775_skip : Flapjack.WordAlloc.isSkip output16775 = false := by
  rw [output16775_def]
  conv => lhs; cbv
  try rfl
theorem node16775_eq : Flapjack.WordAlloc.removeDeadStructural input16775 value1263 value1 value2 = (output16775, value6896, value1) := by
  rw [input16775_def, output16775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2519_eq]
  try dsimp only
  rw [node16774_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16775 input2518)).val
theorem input16776_def : input16776 = (.seq input16775 input2518) := by
  unfold input16776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16775 output2518)).val
theorem output16776_def : output16776 = (.seq output16775 output2518) := by
  unfold output16776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16776_skip : Flapjack.WordAlloc.isSkip output16776 = false := by
  rw [output16776_def]
  conv => lhs; cbv
  try rfl
theorem node16776_eq : Flapjack.WordAlloc.removeDeadStructural input16776 value5 value1 value2 = (output16776, value6896, value1) := by
  rw [input16776_def, output16776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2518_eq]
  try dsimp only
  rw [node16775_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16776 input2515)).val
theorem input16777_def : input16777 = (.seq input16776 input2515) := by
  unfold input16777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16776 output2515)).val
theorem output16777_def : output16777 = (.seq output16776 output2515) := by
  unfold output16777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16777_skip : Flapjack.WordAlloc.isSkip output16777 = false := by
  rw [output16777_def]
  conv => lhs; cbv
  try rfl
theorem node16777_eq : Flapjack.WordAlloc.removeDeadStructural input16777 value1256 value1 value2 = (output16777, value6896, value1) := by
  rw [input16777_def, output16777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2515_eq]
  try dsimp only
  rw [node16776_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16777 input2504)).val
theorem input16778_def : input16778 = (.seq input16777 input2504) := by
  unfold input16778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16777)).val
theorem output16778_def : output16778 = (output16777) := by
  unfold output16778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16778_skip : Flapjack.WordAlloc.isSkip output16778 = false := by
  rw [output16778_def]
  conv => lhs; cbv
  try rfl
theorem node16778_eq : Flapjack.WordAlloc.removeDeadStructural input16778 value1256 value1 value2 = (output16778, value6896, value1) := by
  rw [input16778_def, output16778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2504_eq]
  try dsimp only
  rw [node16777_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16778 input2503)).val
theorem input16779_def : input16779 = (.seq input16778 input2503) := by
  unfold input16779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16778 output2503)).val
theorem output16779_def : output16779 = (.seq output16778 output2503) := by
  unfold output16779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16779_skip : Flapjack.WordAlloc.isSkip output16779 = false := by
  rw [output16779_def]
  conv => lhs; cbv
  try rfl
theorem node16779_eq : Flapjack.WordAlloc.removeDeadStructural input16779 value1255 value1 value2 = (output16779, value6896, value1) := by
  rw [input16779_def, output16779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2503_eq]
  try dsimp only
  rw [node16778_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16779 input2502)).val
theorem input16780_def : input16780 = (.seq input16779 input2502) := by
  unfold input16780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16779 output2502)).val
theorem output16780_def : output16780 = (.seq output16779 output2502) := by
  unfold output16780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16780_skip : Flapjack.WordAlloc.isSkip output16780 = false := by
  rw [output16780_def]
  conv => lhs; cbv
  try rfl
theorem node16780_eq : Flapjack.WordAlloc.removeDeadStructural input16780 value5 value1 value2 = (output16780, value6896, value1) := by
  rw [input16780_def, output16780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2502_eq]
  try dsimp only
  rw [node16779_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16780 input2499)).val
theorem input16781_def : input16781 = (.seq input16780 input2499) := by
  unfold input16781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16780 output2499)).val
theorem output16781_def : output16781 = (.seq output16780 output2499) := by
  unfold output16781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16781_skip : Flapjack.WordAlloc.isSkip output16781 = false := by
  rw [output16781_def]
  conv => lhs; cbv
  try rfl
theorem node16781_eq : Flapjack.WordAlloc.removeDeadStructural input16781 value1248 value1 value2 = (output16781, value6896, value1) := by
  rw [input16781_def, output16781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2499_eq]
  try dsimp only
  rw [node16780_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16781 input2488)).val
theorem input16782_def : input16782 = (.seq input16781 input2488) := by
  unfold input16782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16781)).val
theorem output16782_def : output16782 = (output16781) := by
  unfold output16782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16782_skip : Flapjack.WordAlloc.isSkip output16782 = false := by
  rw [output16782_def]
  conv => lhs; cbv
  try rfl
theorem node16782_eq : Flapjack.WordAlloc.removeDeadStructural input16782 value1248 value1 value2 = (output16782, value6896, value1) := by
  rw [input16782_def, output16782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2488_eq]
  try dsimp only
  rw [node16781_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16782 input2487)).val
theorem input16783_def : input16783 = (.seq input16782 input2487) := by
  unfold input16783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16782 output2487)).val
theorem output16783_def : output16783 = (.seq output16782 output2487) := by
  unfold output16783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16783_skip : Flapjack.WordAlloc.isSkip output16783 = false := by
  rw [output16783_def]
  conv => lhs; cbv
  try rfl
theorem node16783_eq : Flapjack.WordAlloc.removeDeadStructural input16783 value1247 value1 value2 = (output16783, value6896, value1) := by
  rw [input16783_def, output16783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2487_eq]
  try dsimp only
  rw [node16782_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16783 input2486)).val
theorem input16784_def : input16784 = (.seq input16783 input2486) := by
  unfold input16784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16783 output2486)).val
theorem output16784_def : output16784 = (.seq output16783 output2486) := by
  unfold output16784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16784_skip : Flapjack.WordAlloc.isSkip output16784 = false := by
  rw [output16784_def]
  conv => lhs; cbv
  try rfl
theorem node16784_eq : Flapjack.WordAlloc.removeDeadStructural input16784 value5 value1 value2 = (output16784, value6896, value1) := by
  rw [input16784_def, output16784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2486_eq]
  try dsimp only
  rw [node16783_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16784 input2483)).val
theorem input16785_def : input16785 = (.seq input16784 input2483) := by
  unfold input16785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16784 output2483)).val
theorem output16785_def : output16785 = (.seq output16784 output2483) := by
  unfold output16785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16785_skip : Flapjack.WordAlloc.isSkip output16785 = false := by
  rw [output16785_def]
  conv => lhs; cbv
  try rfl
theorem node16785_eq : Flapjack.WordAlloc.removeDeadStructural input16785 value1240 value1 value2 = (output16785, value6896, value1) := by
  rw [input16785_def, output16785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2483_eq]
  try dsimp only
  rw [node16784_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16785 input2472)).val
theorem input16786_def : input16786 = (.seq input16785 input2472) := by
  unfold input16786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16785)).val
theorem output16786_def : output16786 = (output16785) := by
  unfold output16786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16786_skip : Flapjack.WordAlloc.isSkip output16786 = false := by
  rw [output16786_def]
  conv => lhs; cbv
  try rfl
theorem node16786_eq : Flapjack.WordAlloc.removeDeadStructural input16786 value1240 value1 value2 = (output16786, value6896, value1) := by
  rw [input16786_def, output16786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2472_eq]
  try dsimp only
  rw [node16785_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16786 input2471)).val
theorem input16787_def : input16787 = (.seq input16786 input2471) := by
  unfold input16787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16786 output2471)).val
theorem output16787_def : output16787 = (.seq output16786 output2471) := by
  unfold output16787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16787_skip : Flapjack.WordAlloc.isSkip output16787 = false := by
  rw [output16787_def]
  conv => lhs; cbv
  try rfl
theorem node16787_eq : Flapjack.WordAlloc.removeDeadStructural input16787 value1239 value1 value2 = (output16787, value6896, value1) := by
  rw [input16787_def, output16787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2471_eq]
  try dsimp only
  rw [node16786_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16787 input2470)).val
theorem input16788_def : input16788 = (.seq input16787 input2470) := by
  unfold input16788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16787 output2470)).val
theorem output16788_def : output16788 = (.seq output16787 output2470) := by
  unfold output16788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16788_skip : Flapjack.WordAlloc.isSkip output16788 = false := by
  rw [output16788_def]
  conv => lhs; cbv
  try rfl
theorem node16788_eq : Flapjack.WordAlloc.removeDeadStructural input16788 value5 value1 value2 = (output16788, value6896, value1) := by
  rw [input16788_def, output16788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2470_eq]
  try dsimp only
  rw [node16787_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16788 input2467)).val
theorem input16789_def : input16789 = (.seq input16788 input2467) := by
  unfold input16789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16788 output2467)).val
theorem output16789_def : output16789 = (.seq output16788 output2467) := by
  unfold output16789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16789_skip : Flapjack.WordAlloc.isSkip output16789 = false := by
  rw [output16789_def]
  conv => lhs; cbv
  try rfl
theorem node16789_eq : Flapjack.WordAlloc.removeDeadStructural input16789 value1232 value1 value2 = (output16789, value6896, value1) := by
  rw [input16789_def, output16789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2467_eq]
  try dsimp only
  rw [node16788_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16789 input2456)).val
theorem input16790_def : input16790 = (.seq input16789 input2456) := by
  unfold input16790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16789)).val
theorem output16790_def : output16790 = (output16789) := by
  unfold output16790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16790_skip : Flapjack.WordAlloc.isSkip output16790 = false := by
  rw [output16790_def]
  conv => lhs; cbv
  try rfl
theorem node16790_eq : Flapjack.WordAlloc.removeDeadStructural input16790 value1232 value1 value2 = (output16790, value6896, value1) := by
  rw [input16790_def, output16790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2456_eq]
  try dsimp only
  rw [node16789_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16790 input2455)).val
theorem input16791_def : input16791 = (.seq input16790 input2455) := by
  unfold input16791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16790 output2455)).val
theorem output16791_def : output16791 = (.seq output16790 output2455) := by
  unfold output16791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16791_skip : Flapjack.WordAlloc.isSkip output16791 = false := by
  rw [output16791_def]
  conv => lhs; cbv
  try rfl
theorem node16791_eq : Flapjack.WordAlloc.removeDeadStructural input16791 value1231 value1 value2 = (output16791, value6896, value1) := by
  rw [input16791_def, output16791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2455_eq]
  try dsimp only
  rw [node16790_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16791 input2454)).val
theorem input16792_def : input16792 = (.seq input16791 input2454) := by
  unfold input16792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16791 output2454)).val
theorem output16792_def : output16792 = (.seq output16791 output2454) := by
  unfold output16792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16792_skip : Flapjack.WordAlloc.isSkip output16792 = false := by
  rw [output16792_def]
  conv => lhs; cbv
  try rfl
theorem node16792_eq : Flapjack.WordAlloc.removeDeadStructural input16792 value5 value1 value2 = (output16792, value6896, value1) := by
  rw [input16792_def, output16792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2454_eq]
  try dsimp only
  rw [node16791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16792 input2451)).val
theorem input16793_def : input16793 = (.seq input16792 input2451) := by
  unfold input16793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16792 output2451)).val
theorem output16793_def : output16793 = (.seq output16792 output2451) := by
  unfold output16793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16793_skip : Flapjack.WordAlloc.isSkip output16793 = false := by
  rw [output16793_def]
  conv => lhs; cbv
  try rfl
theorem node16793_eq : Flapjack.WordAlloc.removeDeadStructural input16793 value1224 value1 value2 = (output16793, value6896, value1) := by
  rw [input16793_def, output16793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2451_eq]
  try dsimp only
  rw [node16792_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16793 input2440)).val
theorem input16794_def : input16794 = (.seq input16793 input2440) := by
  unfold input16794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16793)).val
theorem output16794_def : output16794 = (output16793) := by
  unfold output16794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16794_skip : Flapjack.WordAlloc.isSkip output16794 = false := by
  rw [output16794_def]
  conv => lhs; cbv
  try rfl
theorem node16794_eq : Flapjack.WordAlloc.removeDeadStructural input16794 value1224 value1 value2 = (output16794, value6896, value1) := by
  rw [input16794_def, output16794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2440_eq]
  try dsimp only
  rw [node16793_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16794 input2439)).val
theorem input16795_def : input16795 = (.seq input16794 input2439) := by
  unfold input16795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16794 output2439)).val
theorem output16795_def : output16795 = (.seq output16794 output2439) := by
  unfold output16795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16795_skip : Flapjack.WordAlloc.isSkip output16795 = false := by
  rw [output16795_def]
  conv => lhs; cbv
  try rfl
theorem node16795_eq : Flapjack.WordAlloc.removeDeadStructural input16795 value1223 value1 value2 = (output16795, value6896, value1) := by
  rw [input16795_def, output16795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2439_eq]
  try dsimp only
  rw [node16794_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16795 input2438)).val
theorem input16796_def : input16796 = (.seq input16795 input2438) := by
  unfold input16796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16795 output2438)).val
theorem output16796_def : output16796 = (.seq output16795 output2438) := by
  unfold output16796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16796_skip : Flapjack.WordAlloc.isSkip output16796 = false := by
  rw [output16796_def]
  conv => lhs; cbv
  try rfl
theorem node16796_eq : Flapjack.WordAlloc.removeDeadStructural input16796 value5 value1 value2 = (output16796, value6896, value1) := by
  rw [input16796_def, output16796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2438_eq]
  try dsimp only
  rw [node16795_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16796 input2435)).val
theorem input16797_def : input16797 = (.seq input16796 input2435) := by
  unfold input16797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16796 output2435)).val
theorem output16797_def : output16797 = (.seq output16796 output2435) := by
  unfold output16797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16797_skip : Flapjack.WordAlloc.isSkip output16797 = false := by
  rw [output16797_def]
  conv => lhs; cbv
  try rfl
theorem node16797_eq : Flapjack.WordAlloc.removeDeadStructural input16797 value1216 value1 value2 = (output16797, value6896, value1) := by
  rw [input16797_def, output16797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2435_eq]
  try dsimp only
  rw [node16796_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16797 input2424)).val
theorem input16798_def : input16798 = (.seq input16797 input2424) := by
  unfold input16798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16797)).val
theorem output16798_def : output16798 = (output16797) := by
  unfold output16798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16798_skip : Flapjack.WordAlloc.isSkip output16798 = false := by
  rw [output16798_def]
  conv => lhs; cbv
  try rfl
theorem node16798_eq : Flapjack.WordAlloc.removeDeadStructural input16798 value1216 value1 value2 = (output16798, value6896, value1) := by
  rw [input16798_def, output16798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2424_eq]
  try dsimp only
  rw [node16797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16798 input2423)).val
theorem input16799_def : input16799 = (.seq input16798 input2423) := by
  unfold input16799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16798 output2423)).val
theorem output16799_def : output16799 = (.seq output16798 output2423) := by
  unfold output16799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16799_skip : Flapjack.WordAlloc.isSkip output16799 = false := by
  rw [output16799_def]
  conv => lhs; cbv
  try rfl
theorem node16799_eq : Flapjack.WordAlloc.removeDeadStructural input16799 value1215 value1 value2 = (output16799, value6896, value1) := by
  rw [input16799_def, output16799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2423_eq]
  try dsimp only
  rw [node16798_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16799 input2422)).val
theorem input16800_def : input16800 = (.seq input16799 input2422) := by
  unfold input16800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16799 output2422)).val
theorem output16800_def : output16800 = (.seq output16799 output2422) := by
  unfold output16800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16800_skip : Flapjack.WordAlloc.isSkip output16800 = false := by
  rw [output16800_def]
  conv => lhs; cbv
  try rfl
theorem node16800_eq : Flapjack.WordAlloc.removeDeadStructural input16800 value5 value1 value2 = (output16800, value6896, value1) := by
  rw [input16800_def, output16800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2422_eq]
  try dsimp only
  rw [node16799_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16800 input2419)).val
theorem input16801_def : input16801 = (.seq input16800 input2419) := by
  unfold input16801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16800 output2419)).val
theorem output16801_def : output16801 = (.seq output16800 output2419) := by
  unfold output16801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16801_skip : Flapjack.WordAlloc.isSkip output16801 = false := by
  rw [output16801_def]
  conv => lhs; cbv
  try rfl
theorem node16801_eq : Flapjack.WordAlloc.removeDeadStructural input16801 value1208 value1 value2 = (output16801, value6896, value1) := by
  rw [input16801_def, output16801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2419_eq]
  try dsimp only
  rw [node16800_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16801 input2408)).val
theorem input16802_def : input16802 = (.seq input16801 input2408) := by
  unfold input16802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16801)).val
theorem output16802_def : output16802 = (output16801) := by
  unfold output16802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16802_skip : Flapjack.WordAlloc.isSkip output16802 = false := by
  rw [output16802_def]
  conv => lhs; cbv
  try rfl
theorem node16802_eq : Flapjack.WordAlloc.removeDeadStructural input16802 value1208 value1 value2 = (output16802, value6896, value1) := by
  rw [input16802_def, output16802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2408_eq]
  try dsimp only
  rw [node16801_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16802 input2407)).val
theorem input16803_def : input16803 = (.seq input16802 input2407) := by
  unfold input16803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16802 output2407)).val
theorem output16803_def : output16803 = (.seq output16802 output2407) := by
  unfold output16803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16803_skip : Flapjack.WordAlloc.isSkip output16803 = false := by
  rw [output16803_def]
  conv => lhs; cbv
  try rfl
theorem node16803_eq : Flapjack.WordAlloc.removeDeadStructural input16803 value1207 value1 value2 = (output16803, value6896, value1) := by
  rw [input16803_def, output16803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2407_eq]
  try dsimp only
  rw [node16802_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16803 input2406)).val
theorem input16804_def : input16804 = (.seq input16803 input2406) := by
  unfold input16804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16803 output2406)).val
theorem output16804_def : output16804 = (.seq output16803 output2406) := by
  unfold output16804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16804_skip : Flapjack.WordAlloc.isSkip output16804 = false := by
  rw [output16804_def]
  conv => lhs; cbv
  try rfl
theorem node16804_eq : Flapjack.WordAlloc.removeDeadStructural input16804 value5 value1 value2 = (output16804, value6896, value1) := by
  rw [input16804_def, output16804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2406_eq]
  try dsimp only
  rw [node16803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16804 input2403)).val
theorem input16805_def : input16805 = (.seq input16804 input2403) := by
  unfold input16805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16804 output2403)).val
theorem output16805_def : output16805 = (.seq output16804 output2403) := by
  unfold output16805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16805_skip : Flapjack.WordAlloc.isSkip output16805 = false := by
  rw [output16805_def]
  conv => lhs; cbv
  try rfl
theorem node16805_eq : Flapjack.WordAlloc.removeDeadStructural input16805 value1200 value1 value2 = (output16805, value6896, value1) := by
  rw [input16805_def, output16805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2403_eq]
  try dsimp only
  rw [node16804_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16805 input2392)).val
theorem input16806_def : input16806 = (.seq input16805 input2392) := by
  unfold input16806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16805)).val
theorem output16806_def : output16806 = (output16805) := by
  unfold output16806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16806_skip : Flapjack.WordAlloc.isSkip output16806 = false := by
  rw [output16806_def]
  conv => lhs; cbv
  try rfl
theorem node16806_eq : Flapjack.WordAlloc.removeDeadStructural input16806 value1200 value1 value2 = (output16806, value6896, value1) := by
  rw [input16806_def, output16806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2392_eq]
  try dsimp only
  rw [node16805_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16806 input2391)).val
theorem input16807_def : input16807 = (.seq input16806 input2391) := by
  unfold input16807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16806 output2391)).val
theorem output16807_def : output16807 = (.seq output16806 output2391) := by
  unfold output16807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16807_skip : Flapjack.WordAlloc.isSkip output16807 = false := by
  rw [output16807_def]
  conv => lhs; cbv
  try rfl
theorem node16807_eq : Flapjack.WordAlloc.removeDeadStructural input16807 value1199 value1 value2 = (output16807, value6896, value1) := by
  rw [input16807_def, output16807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2391_eq]
  try dsimp only
  rw [node16806_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16807 input2390)).val
theorem input16808_def : input16808 = (.seq input16807 input2390) := by
  unfold input16808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16807 output2390)).val
theorem output16808_def : output16808 = (.seq output16807 output2390) := by
  unfold output16808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16808_skip : Flapjack.WordAlloc.isSkip output16808 = false := by
  rw [output16808_def]
  conv => lhs; cbv
  try rfl
theorem node16808_eq : Flapjack.WordAlloc.removeDeadStructural input16808 value5 value1 value2 = (output16808, value6896, value1) := by
  rw [input16808_def, output16808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2390_eq]
  try dsimp only
  rw [node16807_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16808 input2387)).val
theorem input16809_def : input16809 = (.seq input16808 input2387) := by
  unfold input16809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16808 output2387)).val
theorem output16809_def : output16809 = (.seq output16808 output2387) := by
  unfold output16809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16809_skip : Flapjack.WordAlloc.isSkip output16809 = false := by
  rw [output16809_def]
  conv => lhs; cbv
  try rfl
theorem node16809_eq : Flapjack.WordAlloc.removeDeadStructural input16809 value1192 value1 value2 = (output16809, value6896, value1) := by
  rw [input16809_def, output16809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2387_eq]
  try dsimp only
  rw [node16808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16809 input2376)).val
theorem input16810_def : input16810 = (.seq input16809 input2376) := by
  unfold input16810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16809)).val
theorem output16810_def : output16810 = (output16809) := by
  unfold output16810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16810_skip : Flapjack.WordAlloc.isSkip output16810 = false := by
  rw [output16810_def]
  conv => lhs; cbv
  try rfl
theorem node16810_eq : Flapjack.WordAlloc.removeDeadStructural input16810 value1192 value1 value2 = (output16810, value6896, value1) := by
  rw [input16810_def, output16810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2376_eq]
  try dsimp only
  rw [node16809_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16810 input2375)).val
theorem input16811_def : input16811 = (.seq input16810 input2375) := by
  unfold input16811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16810 output2375)).val
theorem output16811_def : output16811 = (.seq output16810 output2375) := by
  unfold output16811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16811_skip : Flapjack.WordAlloc.isSkip output16811 = false := by
  rw [output16811_def]
  conv => lhs; cbv
  try rfl
theorem node16811_eq : Flapjack.WordAlloc.removeDeadStructural input16811 value1191 value1 value2 = (output16811, value6896, value1) := by
  rw [input16811_def, output16811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2375_eq]
  try dsimp only
  rw [node16810_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16811 input2374)).val
theorem input16812_def : input16812 = (.seq input16811 input2374) := by
  unfold input16812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16811 output2374)).val
theorem output16812_def : output16812 = (.seq output16811 output2374) := by
  unfold output16812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16812_skip : Flapjack.WordAlloc.isSkip output16812 = false := by
  rw [output16812_def]
  conv => lhs; cbv
  try rfl
theorem node16812_eq : Flapjack.WordAlloc.removeDeadStructural input16812 value5 value1 value2 = (output16812, value6896, value1) := by
  rw [input16812_def, output16812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2374_eq]
  try dsimp only
  rw [node16811_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16812 input2371)).val
theorem input16813_def : input16813 = (.seq input16812 input2371) := by
  unfold input16813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16812 output2371)).val
theorem output16813_def : output16813 = (.seq output16812 output2371) := by
  unfold output16813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16813_skip : Flapjack.WordAlloc.isSkip output16813 = false := by
  rw [output16813_def]
  conv => lhs; cbv
  try rfl
theorem node16813_eq : Flapjack.WordAlloc.removeDeadStructural input16813 value1184 value1 value2 = (output16813, value6896, value1) := by
  rw [input16813_def, output16813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2371_eq]
  try dsimp only
  rw [node16812_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16813 input2360)).val
theorem input16814_def : input16814 = (.seq input16813 input2360) := by
  unfold input16814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16813)).val
theorem output16814_def : output16814 = (output16813) := by
  unfold output16814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16814_skip : Flapjack.WordAlloc.isSkip output16814 = false := by
  rw [output16814_def]
  conv => lhs; cbv
  try rfl
theorem node16814_eq : Flapjack.WordAlloc.removeDeadStructural input16814 value1184 value1 value2 = (output16814, value6896, value1) := by
  rw [input16814_def, output16814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2360_eq]
  try dsimp only
  rw [node16813_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16814 input2359)).val
theorem input16815_def : input16815 = (.seq input16814 input2359) := by
  unfold input16815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16814 output2359)).val
theorem output16815_def : output16815 = (.seq output16814 output2359) := by
  unfold output16815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16815_skip : Flapjack.WordAlloc.isSkip output16815 = false := by
  rw [output16815_def]
  conv => lhs; cbv
  try rfl
theorem node16815_eq : Flapjack.WordAlloc.removeDeadStructural input16815 value1183 value1 value2 = (output16815, value6896, value1) := by
  rw [input16815_def, output16815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2359_eq]
  try dsimp only
  rw [node16814_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16815 input2358)).val
theorem input16816_def : input16816 = (.seq input16815 input2358) := by
  unfold input16816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16815 output2358)).val
theorem output16816_def : output16816 = (.seq output16815 output2358) := by
  unfold output16816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16816_skip : Flapjack.WordAlloc.isSkip output16816 = false := by
  rw [output16816_def]
  conv => lhs; cbv
  try rfl
theorem node16816_eq : Flapjack.WordAlloc.removeDeadStructural input16816 value5 value1 value2 = (output16816, value6896, value1) := by
  rw [input16816_def, output16816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2358_eq]
  try dsimp only
  rw [node16815_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16816 input2355)).val
theorem input16817_def : input16817 = (.seq input16816 input2355) := by
  unfold input16817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16816 output2355)).val
theorem output16817_def : output16817 = (.seq output16816 output2355) := by
  unfold output16817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16817_skip : Flapjack.WordAlloc.isSkip output16817 = false := by
  rw [output16817_def]
  conv => lhs; cbv
  try rfl
theorem node16817_eq : Flapjack.WordAlloc.removeDeadStructural input16817 value1176 value1 value2 = (output16817, value6896, value1) := by
  rw [input16817_def, output16817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2355_eq]
  try dsimp only
  rw [node16816_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16817 input2344)).val
theorem input16818_def : input16818 = (.seq input16817 input2344) := by
  unfold input16818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16817)).val
theorem output16818_def : output16818 = (output16817) := by
  unfold output16818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16818_skip : Flapjack.WordAlloc.isSkip output16818 = false := by
  rw [output16818_def]
  conv => lhs; cbv
  try rfl
theorem node16818_eq : Flapjack.WordAlloc.removeDeadStructural input16818 value1176 value1 value2 = (output16818, value6896, value1) := by
  rw [input16818_def, output16818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2344_eq]
  try dsimp only
  rw [node16817_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16818 input2343)).val
theorem input16819_def : input16819 = (.seq input16818 input2343) := by
  unfold input16819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16818 output2343)).val
theorem output16819_def : output16819 = (.seq output16818 output2343) := by
  unfold output16819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16819_skip : Flapjack.WordAlloc.isSkip output16819 = false := by
  rw [output16819_def]
  conv => lhs; cbv
  try rfl
theorem node16819_eq : Flapjack.WordAlloc.removeDeadStructural input16819 value1175 value1 value2 = (output16819, value6896, value1) := by
  rw [input16819_def, output16819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2343_eq]
  try dsimp only
  rw [node16818_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16819 input2342)).val
theorem input16820_def : input16820 = (.seq input16819 input2342) := by
  unfold input16820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16819 output2342)).val
theorem output16820_def : output16820 = (.seq output16819 output2342) := by
  unfold output16820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16820_skip : Flapjack.WordAlloc.isSkip output16820 = false := by
  rw [output16820_def]
  conv => lhs; cbv
  try rfl
theorem node16820_eq : Flapjack.WordAlloc.removeDeadStructural input16820 value5 value1 value2 = (output16820, value6896, value1) := by
  rw [input16820_def, output16820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2342_eq]
  try dsimp only
  rw [node16819_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16820 input2339)).val
theorem input16821_def : input16821 = (.seq input16820 input2339) := by
  unfold input16821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16820 output2339)).val
theorem output16821_def : output16821 = (.seq output16820 output2339) := by
  unfold output16821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16821_skip : Flapjack.WordAlloc.isSkip output16821 = false := by
  rw [output16821_def]
  conv => lhs; cbv
  try rfl
theorem node16821_eq : Flapjack.WordAlloc.removeDeadStructural input16821 value1168 value1 value2 = (output16821, value6896, value1) := by
  rw [input16821_def, output16821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2339_eq]
  try dsimp only
  rw [node16820_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16821 input2328)).val
theorem input16822_def : input16822 = (.seq input16821 input2328) := by
  unfold input16822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16821)).val
theorem output16822_def : output16822 = (output16821) := by
  unfold output16822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16822_skip : Flapjack.WordAlloc.isSkip output16822 = false := by
  rw [output16822_def]
  conv => lhs; cbv
  try rfl
theorem node16822_eq : Flapjack.WordAlloc.removeDeadStructural input16822 value1168 value1 value2 = (output16822, value6896, value1) := by
  rw [input16822_def, output16822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2328_eq]
  try dsimp only
  rw [node16821_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16822 input2327)).val
theorem input16823_def : input16823 = (.seq input16822 input2327) := by
  unfold input16823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16822 output2327)).val
theorem output16823_def : output16823 = (.seq output16822 output2327) := by
  unfold output16823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16823_skip : Flapjack.WordAlloc.isSkip output16823 = false := by
  rw [output16823_def]
  conv => lhs; cbv
  try rfl
theorem node16823_eq : Flapjack.WordAlloc.removeDeadStructural input16823 value1167 value1 value2 = (output16823, value6896, value1) := by
  rw [input16823_def, output16823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2327_eq]
  try dsimp only
  rw [node16822_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16823 input2326)).val
theorem input16824_def : input16824 = (.seq input16823 input2326) := by
  unfold input16824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16823 output2326)).val
theorem output16824_def : output16824 = (.seq output16823 output2326) := by
  unfold output16824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16824_skip : Flapjack.WordAlloc.isSkip output16824 = false := by
  rw [output16824_def]
  conv => lhs; cbv
  try rfl
theorem node16824_eq : Flapjack.WordAlloc.removeDeadStructural input16824 value5 value1 value2 = (output16824, value6896, value1) := by
  rw [input16824_def, output16824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2326_eq]
  try dsimp only
  rw [node16823_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16824 input2323)).val
theorem input16825_def : input16825 = (.seq input16824 input2323) := by
  unfold input16825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16824 output2323)).val
theorem output16825_def : output16825 = (.seq output16824 output2323) := by
  unfold output16825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16825_skip : Flapjack.WordAlloc.isSkip output16825 = false := by
  rw [output16825_def]
  conv => lhs; cbv
  try rfl
theorem node16825_eq : Flapjack.WordAlloc.removeDeadStructural input16825 value1160 value1 value2 = (output16825, value6896, value1) := by
  rw [input16825_def, output16825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2323_eq]
  try dsimp only
  rw [node16824_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16825 input2312)).val
theorem input16826_def : input16826 = (.seq input16825 input2312) := by
  unfold input16826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16825)).val
theorem output16826_def : output16826 = (output16825) := by
  unfold output16826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16826_skip : Flapjack.WordAlloc.isSkip output16826 = false := by
  rw [output16826_def]
  conv => lhs; cbv
  try rfl
theorem node16826_eq : Flapjack.WordAlloc.removeDeadStructural input16826 value1160 value1 value2 = (output16826, value6896, value1) := by
  rw [input16826_def, output16826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2312_eq]
  try dsimp only
  rw [node16825_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16826 input2311)).val
theorem input16827_def : input16827 = (.seq input16826 input2311) := by
  unfold input16827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16826 output2311)).val
theorem output16827_def : output16827 = (.seq output16826 output2311) := by
  unfold output16827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16827_skip : Flapjack.WordAlloc.isSkip output16827 = false := by
  rw [output16827_def]
  conv => lhs; cbv
  try rfl
theorem node16827_eq : Flapjack.WordAlloc.removeDeadStructural input16827 value1159 value1 value2 = (output16827, value6896, value1) := by
  rw [input16827_def, output16827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2311_eq]
  try dsimp only
  rw [node16826_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16827 input2310)).val
theorem input16828_def : input16828 = (.seq input16827 input2310) := by
  unfold input16828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16827 output2310)).val
theorem output16828_def : output16828 = (.seq output16827 output2310) := by
  unfold output16828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16828_skip : Flapjack.WordAlloc.isSkip output16828 = false := by
  rw [output16828_def]
  conv => lhs; cbv
  try rfl
theorem node16828_eq : Flapjack.WordAlloc.removeDeadStructural input16828 value5 value1 value2 = (output16828, value6896, value1) := by
  rw [input16828_def, output16828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2310_eq]
  try dsimp only
  rw [node16827_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16828 input2307)).val
theorem input16829_def : input16829 = (.seq input16828 input2307) := by
  unfold input16829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16828 output2307)).val
theorem output16829_def : output16829 = (.seq output16828 output2307) := by
  unfold output16829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16829_skip : Flapjack.WordAlloc.isSkip output16829 = false := by
  rw [output16829_def]
  conv => lhs; cbv
  try rfl
theorem node16829_eq : Flapjack.WordAlloc.removeDeadStructural input16829 value1152 value1 value2 = (output16829, value6896, value1) := by
  rw [input16829_def, output16829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2307_eq]
  try dsimp only
  rw [node16828_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16829 input2296)).val
theorem input16830_def : input16830 = (.seq input16829 input2296) := by
  unfold input16830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16829)).val
theorem output16830_def : output16830 = (output16829) := by
  unfold output16830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16830_skip : Flapjack.WordAlloc.isSkip output16830 = false := by
  rw [output16830_def]
  conv => lhs; cbv
  try rfl
theorem node16830_eq : Flapjack.WordAlloc.removeDeadStructural input16830 value1152 value1 value2 = (output16830, value6896, value1) := by
  rw [input16830_def, output16830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2296_eq]
  try dsimp only
  rw [node16829_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16830 input2295)).val
theorem input16831_def : input16831 = (.seq input16830 input2295) := by
  unfold input16831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16830 output2295)).val
theorem output16831_def : output16831 = (.seq output16830 output2295) := by
  unfold output16831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16831_skip : Flapjack.WordAlloc.isSkip output16831 = false := by
  rw [output16831_def]
  conv => lhs; cbv
  try rfl
theorem node16831_eq : Flapjack.WordAlloc.removeDeadStructural input16831 value1151 value1 value2 = (output16831, value6896, value1) := by
  rw [input16831_def, output16831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2295_eq]
  try dsimp only
  rw [node16830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16831 input2294)).val
theorem input16832_def : input16832 = (.seq input16831 input2294) := by
  unfold input16832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16831 output2294)).val
theorem output16832_def : output16832 = (.seq output16831 output2294) := by
  unfold output16832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16832_skip : Flapjack.WordAlloc.isSkip output16832 = false := by
  rw [output16832_def]
  conv => lhs; cbv
  try rfl
theorem node16832_eq : Flapjack.WordAlloc.removeDeadStructural input16832 value5 value1 value2 = (output16832, value6896, value1) := by
  rw [input16832_def, output16832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2294_eq]
  try dsimp only
  rw [node16831_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16832 input2291)).val
theorem input16833_def : input16833 = (.seq input16832 input2291) := by
  unfold input16833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16832 output2291)).val
theorem output16833_def : output16833 = (.seq output16832 output2291) := by
  unfold output16833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16833_skip : Flapjack.WordAlloc.isSkip output16833 = false := by
  rw [output16833_def]
  conv => lhs; cbv
  try rfl
theorem node16833_eq : Flapjack.WordAlloc.removeDeadStructural input16833 value1144 value1 value2 = (output16833, value6896, value1) := by
  rw [input16833_def, output16833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2291_eq]
  try dsimp only
  rw [node16832_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16833 input2280)).val
theorem input16834_def : input16834 = (.seq input16833 input2280) := by
  unfold input16834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16833)).val
theorem output16834_def : output16834 = (output16833) := by
  unfold output16834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16834_skip : Flapjack.WordAlloc.isSkip output16834 = false := by
  rw [output16834_def]
  conv => lhs; cbv
  try rfl
theorem node16834_eq : Flapjack.WordAlloc.removeDeadStructural input16834 value1144 value1 value2 = (output16834, value6896, value1) := by
  rw [input16834_def, output16834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2280_eq]
  try dsimp only
  rw [node16833_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16834 input2279)).val
theorem input16835_def : input16835 = (.seq input16834 input2279) := by
  unfold input16835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16834 output2279)).val
theorem output16835_def : output16835 = (.seq output16834 output2279) := by
  unfold output16835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16835_skip : Flapjack.WordAlloc.isSkip output16835 = false := by
  rw [output16835_def]
  conv => lhs; cbv
  try rfl
theorem node16835_eq : Flapjack.WordAlloc.removeDeadStructural input16835 value1143 value1 value2 = (output16835, value6896, value1) := by
  rw [input16835_def, output16835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2279_eq]
  try dsimp only
  rw [node16834_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16835 input2278)).val
theorem input16836_def : input16836 = (.seq input16835 input2278) := by
  unfold input16836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16835 output2278)).val
theorem output16836_def : output16836 = (.seq output16835 output2278) := by
  unfold output16836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16836_skip : Flapjack.WordAlloc.isSkip output16836 = false := by
  rw [output16836_def]
  conv => lhs; cbv
  try rfl
theorem node16836_eq : Flapjack.WordAlloc.removeDeadStructural input16836 value5 value1 value2 = (output16836, value6896, value1) := by
  rw [input16836_def, output16836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2278_eq]
  try dsimp only
  rw [node16835_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16836 input2275)).val
theorem input16837_def : input16837 = (.seq input16836 input2275) := by
  unfold input16837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16836 output2275)).val
theorem output16837_def : output16837 = (.seq output16836 output2275) := by
  unfold output16837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16837_skip : Flapjack.WordAlloc.isSkip output16837 = false := by
  rw [output16837_def]
  conv => lhs; cbv
  try rfl
theorem node16837_eq : Flapjack.WordAlloc.removeDeadStructural input16837 value1136 value1 value2 = (output16837, value6896, value1) := by
  rw [input16837_def, output16837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2275_eq]
  try dsimp only
  rw [node16836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16837 input2264)).val
theorem input16838_def : input16838 = (.seq input16837 input2264) := by
  unfold input16838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16837)).val
theorem output16838_def : output16838 = (output16837) := by
  unfold output16838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16838_skip : Flapjack.WordAlloc.isSkip output16838 = false := by
  rw [output16838_def]
  conv => lhs; cbv
  try rfl
theorem node16838_eq : Flapjack.WordAlloc.removeDeadStructural input16838 value1136 value1 value2 = (output16838, value6896, value1) := by
  rw [input16838_def, output16838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2264_eq]
  try dsimp only
  rw [node16837_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16838 input2263)).val
theorem input16839_def : input16839 = (.seq input16838 input2263) := by
  unfold input16839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16838 output2263)).val
theorem output16839_def : output16839 = (.seq output16838 output2263) := by
  unfold output16839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16839_skip : Flapjack.WordAlloc.isSkip output16839 = false := by
  rw [output16839_def]
  conv => lhs; cbv
  try rfl
theorem node16839_eq : Flapjack.WordAlloc.removeDeadStructural input16839 value1135 value1 value2 = (output16839, value6896, value1) := by
  rw [input16839_def, output16839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2263_eq]
  try dsimp only
  rw [node16838_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16839 input2262)).val
theorem input16840_def : input16840 = (.seq input16839 input2262) := by
  unfold input16840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16839 output2262)).val
theorem output16840_def : output16840 = (.seq output16839 output2262) := by
  unfold output16840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16840_skip : Flapjack.WordAlloc.isSkip output16840 = false := by
  rw [output16840_def]
  conv => lhs; cbv
  try rfl
theorem node16840_eq : Flapjack.WordAlloc.removeDeadStructural input16840 value5 value1 value2 = (output16840, value6896, value1) := by
  rw [input16840_def, output16840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2262_eq]
  try dsimp only
  rw [node16839_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16840 input2259)).val
theorem input16841_def : input16841 = (.seq input16840 input2259) := by
  unfold input16841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16840 output2259)).val
theorem output16841_def : output16841 = (.seq output16840 output2259) := by
  unfold output16841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16841_skip : Flapjack.WordAlloc.isSkip output16841 = false := by
  rw [output16841_def]
  conv => lhs; cbv
  try rfl
theorem node16841_eq : Flapjack.WordAlloc.removeDeadStructural input16841 value1128 value1 value2 = (output16841, value6896, value1) := by
  rw [input16841_def, output16841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2259_eq]
  try dsimp only
  rw [node16840_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16841 input2248)).val
theorem input16842_def : input16842 = (.seq input16841 input2248) := by
  unfold input16842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16841)).val
theorem output16842_def : output16842 = (output16841) := by
  unfold output16842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16842_skip : Flapjack.WordAlloc.isSkip output16842 = false := by
  rw [output16842_def]
  conv => lhs; cbv
  try rfl
theorem node16842_eq : Flapjack.WordAlloc.removeDeadStructural input16842 value1128 value1 value2 = (output16842, value6896, value1) := by
  rw [input16842_def, output16842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2248_eq]
  try dsimp only
  rw [node16841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16842 input2247)).val
theorem input16843_def : input16843 = (.seq input16842 input2247) := by
  unfold input16843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16842 output2247)).val
theorem output16843_def : output16843 = (.seq output16842 output2247) := by
  unfold output16843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16843_skip : Flapjack.WordAlloc.isSkip output16843 = false := by
  rw [output16843_def]
  conv => lhs; cbv
  try rfl
theorem node16843_eq : Flapjack.WordAlloc.removeDeadStructural input16843 value1127 value1 value2 = (output16843, value6896, value1) := by
  rw [input16843_def, output16843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2247_eq]
  try dsimp only
  rw [node16842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16843 input2246)).val
theorem input16844_def : input16844 = (.seq input16843 input2246) := by
  unfold input16844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16843 output2246)).val
theorem output16844_def : output16844 = (.seq output16843 output2246) := by
  unfold output16844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16844_skip : Flapjack.WordAlloc.isSkip output16844 = false := by
  rw [output16844_def]
  conv => lhs; cbv
  try rfl
theorem node16844_eq : Flapjack.WordAlloc.removeDeadStructural input16844 value5 value1 value2 = (output16844, value6896, value1) := by
  rw [input16844_def, output16844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2246_eq]
  try dsimp only
  rw [node16843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16844 input2243)).val
theorem input16845_def : input16845 = (.seq input16844 input2243) := by
  unfold input16845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16844 output2243)).val
theorem output16845_def : output16845 = (.seq output16844 output2243) := by
  unfold output16845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16845_skip : Flapjack.WordAlloc.isSkip output16845 = false := by
  rw [output16845_def]
  conv => lhs; cbv
  try rfl
theorem node16845_eq : Flapjack.WordAlloc.removeDeadStructural input16845 value1120 value1 value2 = (output16845, value6896, value1) := by
  rw [input16845_def, output16845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2243_eq]
  try dsimp only
  rw [node16844_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16845 input2232)).val
theorem input16846_def : input16846 = (.seq input16845 input2232) := by
  unfold input16846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16845)).val
theorem output16846_def : output16846 = (output16845) := by
  unfold output16846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16846_skip : Flapjack.WordAlloc.isSkip output16846 = false := by
  rw [output16846_def]
  conv => lhs; cbv
  try rfl
theorem node16846_eq : Flapjack.WordAlloc.removeDeadStructural input16846 value1120 value1 value2 = (output16846, value6896, value1) := by
  rw [input16846_def, output16846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2232_eq]
  try dsimp only
  rw [node16845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16846 input2231)).val
theorem input16847_def : input16847 = (.seq input16846 input2231) := by
  unfold input16847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16846 output2231)).val
theorem output16847_def : output16847 = (.seq output16846 output2231) := by
  unfold output16847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16847_skip : Flapjack.WordAlloc.isSkip output16847 = false := by
  rw [output16847_def]
  conv => lhs; cbv
  try rfl
theorem node16847_eq : Flapjack.WordAlloc.removeDeadStructural input16847 value1119 value1 value2 = (output16847, value6896, value1) := by
  rw [input16847_def, output16847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2231_eq]
  try dsimp only
  rw [node16846_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16847 input2230)).val
theorem input16848_def : input16848 = (.seq input16847 input2230) := by
  unfold input16848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16847 output2230)).val
theorem output16848_def : output16848 = (.seq output16847 output2230) := by
  unfold output16848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16848_skip : Flapjack.WordAlloc.isSkip output16848 = false := by
  rw [output16848_def]
  conv => lhs; cbv
  try rfl
theorem node16848_eq : Flapjack.WordAlloc.removeDeadStructural input16848 value5 value1 value2 = (output16848, value6896, value1) := by
  rw [input16848_def, output16848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2230_eq]
  try dsimp only
  rw [node16847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16848 input2227)).val
theorem input16849_def : input16849 = (.seq input16848 input2227) := by
  unfold input16849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16848 output2227)).val
theorem output16849_def : output16849 = (.seq output16848 output2227) := by
  unfold output16849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16849_skip : Flapjack.WordAlloc.isSkip output16849 = false := by
  rw [output16849_def]
  conv => lhs; cbv
  try rfl
theorem node16849_eq : Flapjack.WordAlloc.removeDeadStructural input16849 value1112 value1 value2 = (output16849, value6896, value1) := by
  rw [input16849_def, output16849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2227_eq]
  try dsimp only
  rw [node16848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16849 input2216)).val
theorem input16850_def : input16850 = (.seq input16849 input2216) := by
  unfold input16850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16849)).val
theorem output16850_def : output16850 = (output16849) := by
  unfold output16850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16850_skip : Flapjack.WordAlloc.isSkip output16850 = false := by
  rw [output16850_def]
  conv => lhs; cbv
  try rfl
theorem node16850_eq : Flapjack.WordAlloc.removeDeadStructural input16850 value1112 value1 value2 = (output16850, value6896, value1) := by
  rw [input16850_def, output16850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2216_eq]
  try dsimp only
  rw [node16849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16850 input2215)).val
theorem input16851_def : input16851 = (.seq input16850 input2215) := by
  unfold input16851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16850 output2215)).val
theorem output16851_def : output16851 = (.seq output16850 output2215) := by
  unfold output16851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16851_skip : Flapjack.WordAlloc.isSkip output16851 = false := by
  rw [output16851_def]
  conv => lhs; cbv
  try rfl
theorem node16851_eq : Flapjack.WordAlloc.removeDeadStructural input16851 value1111 value1 value2 = (output16851, value6896, value1) := by
  rw [input16851_def, output16851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2215_eq]
  try dsimp only
  rw [node16850_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16851 input2214)).val
theorem input16852_def : input16852 = (.seq input16851 input2214) := by
  unfold input16852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16851 output2214)).val
theorem output16852_def : output16852 = (.seq output16851 output2214) := by
  unfold output16852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16852_skip : Flapjack.WordAlloc.isSkip output16852 = false := by
  rw [output16852_def]
  conv => lhs; cbv
  try rfl
theorem node16852_eq : Flapjack.WordAlloc.removeDeadStructural input16852 value5 value1 value2 = (output16852, value6896, value1) := by
  rw [input16852_def, output16852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2214_eq]
  try dsimp only
  rw [node16851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16852 input2211)).val
theorem input16853_def : input16853 = (.seq input16852 input2211) := by
  unfold input16853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16852 output2211)).val
theorem output16853_def : output16853 = (.seq output16852 output2211) := by
  unfold output16853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16853_skip : Flapjack.WordAlloc.isSkip output16853 = false := by
  rw [output16853_def]
  conv => lhs; cbv
  try rfl
theorem node16853_eq : Flapjack.WordAlloc.removeDeadStructural input16853 value1104 value1 value2 = (output16853, value6896, value1) := by
  rw [input16853_def, output16853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2211_eq]
  try dsimp only
  rw [node16852_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16853 input2200)).val
theorem input16854_def : input16854 = (.seq input16853 input2200) := by
  unfold input16854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16853)).val
theorem output16854_def : output16854 = (output16853) := by
  unfold output16854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16854_skip : Flapjack.WordAlloc.isSkip output16854 = false := by
  rw [output16854_def]
  conv => lhs; cbv
  try rfl
theorem node16854_eq : Flapjack.WordAlloc.removeDeadStructural input16854 value1104 value1 value2 = (output16854, value6896, value1) := by
  rw [input16854_def, output16854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2200_eq]
  try dsimp only
  rw [node16853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16854 input2199)).val
theorem input16855_def : input16855 = (.seq input16854 input2199) := by
  unfold input16855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16854 output2199)).val
theorem output16855_def : output16855 = (.seq output16854 output2199) := by
  unfold output16855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16855_skip : Flapjack.WordAlloc.isSkip output16855 = false := by
  rw [output16855_def]
  conv => lhs; cbv
  try rfl
theorem node16855_eq : Flapjack.WordAlloc.removeDeadStructural input16855 value1103 value1 value2 = (output16855, value6896, value1) := by
  rw [input16855_def, output16855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2199_eq]
  try dsimp only
  rw [node16854_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16855 input2198)).val
theorem input16856_def : input16856 = (.seq input16855 input2198) := by
  unfold input16856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16855 output2198)).val
theorem output16856_def : output16856 = (.seq output16855 output2198) := by
  unfold output16856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16856_skip : Flapjack.WordAlloc.isSkip output16856 = false := by
  rw [output16856_def]
  conv => lhs; cbv
  try rfl
theorem node16856_eq : Flapjack.WordAlloc.removeDeadStructural input16856 value5 value1 value2 = (output16856, value6896, value1) := by
  rw [input16856_def, output16856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2198_eq]
  try dsimp only
  rw [node16855_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16856 input2195)).val
theorem input16857_def : input16857 = (.seq input16856 input2195) := by
  unfold input16857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16856 output2195)).val
theorem output16857_def : output16857 = (.seq output16856 output2195) := by
  unfold output16857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16857_skip : Flapjack.WordAlloc.isSkip output16857 = false := by
  rw [output16857_def]
  conv => lhs; cbv
  try rfl
theorem node16857_eq : Flapjack.WordAlloc.removeDeadStructural input16857 value1096 value1 value2 = (output16857, value6896, value1) := by
  rw [input16857_def, output16857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2195_eq]
  try dsimp only
  rw [node16856_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16857 input2184)).val
theorem input16858_def : input16858 = (.seq input16857 input2184) := by
  unfold input16858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16857)).val
theorem output16858_def : output16858 = (output16857) := by
  unfold output16858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16858_skip : Flapjack.WordAlloc.isSkip output16858 = false := by
  rw [output16858_def]
  conv => lhs; cbv
  try rfl
theorem node16858_eq : Flapjack.WordAlloc.removeDeadStructural input16858 value1096 value1 value2 = (output16858, value6896, value1) := by
  rw [input16858_def, output16858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2184_eq]
  try dsimp only
  rw [node16857_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16858 input2183)).val
theorem input16859_def : input16859 = (.seq input16858 input2183) := by
  unfold input16859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16858 output2183)).val
theorem output16859_def : output16859 = (.seq output16858 output2183) := by
  unfold output16859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16859_skip : Flapjack.WordAlloc.isSkip output16859 = false := by
  rw [output16859_def]
  conv => lhs; cbv
  try rfl
theorem node16859_eq : Flapjack.WordAlloc.removeDeadStructural input16859 value1095 value1 value2 = (output16859, value6896, value1) := by
  rw [input16859_def, output16859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2183_eq]
  try dsimp only
  rw [node16858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16859 input2182)).val
theorem input16860_def : input16860 = (.seq input16859 input2182) := by
  unfold input16860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16859 output2182)).val
theorem output16860_def : output16860 = (.seq output16859 output2182) := by
  unfold output16860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16860_skip : Flapjack.WordAlloc.isSkip output16860 = false := by
  rw [output16860_def]
  conv => lhs; cbv
  try rfl
theorem node16860_eq : Flapjack.WordAlloc.removeDeadStructural input16860 value5 value1 value2 = (output16860, value6896, value1) := by
  rw [input16860_def, output16860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2182_eq]
  try dsimp only
  rw [node16859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16860 input2179)).val
theorem input16861_def : input16861 = (.seq input16860 input2179) := by
  unfold input16861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16860 output2179)).val
theorem output16861_def : output16861 = (.seq output16860 output2179) := by
  unfold output16861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16861_skip : Flapjack.WordAlloc.isSkip output16861 = false := by
  rw [output16861_def]
  conv => lhs; cbv
  try rfl
theorem node16861_eq : Flapjack.WordAlloc.removeDeadStructural input16861 value1088 value1 value2 = (output16861, value6896, value1) := by
  rw [input16861_def, output16861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2179_eq]
  try dsimp only
  rw [node16860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16861 input2168)).val
theorem input16862_def : input16862 = (.seq input16861 input2168) := by
  unfold input16862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16861)).val
theorem output16862_def : output16862 = (output16861) := by
  unfold output16862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16862_skip : Flapjack.WordAlloc.isSkip output16862 = false := by
  rw [output16862_def]
  conv => lhs; cbv
  try rfl
theorem node16862_eq : Flapjack.WordAlloc.removeDeadStructural input16862 value1088 value1 value2 = (output16862, value6896, value1) := by
  rw [input16862_def, output16862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2168_eq]
  try dsimp only
  rw [node16861_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16862 input2167)).val
theorem input16863_def : input16863 = (.seq input16862 input2167) := by
  unfold input16863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16862 output2167)).val
theorem output16863_def : output16863 = (.seq output16862 output2167) := by
  unfold output16863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16863_skip : Flapjack.WordAlloc.isSkip output16863 = false := by
  rw [output16863_def]
  conv => lhs; cbv
  try rfl
theorem node16863_eq : Flapjack.WordAlloc.removeDeadStructural input16863 value1087 value1 value2 = (output16863, value6896, value1) := by
  rw [input16863_def, output16863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2167_eq]
  try dsimp only
  rw [node16862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16863 input2166)).val
theorem input16864_def : input16864 = (.seq input16863 input2166) := by
  unfold input16864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16863 output2166)).val
theorem output16864_def : output16864 = (.seq output16863 output2166) := by
  unfold output16864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16864_skip : Flapjack.WordAlloc.isSkip output16864 = false := by
  rw [output16864_def]
  conv => lhs; cbv
  try rfl
theorem node16864_eq : Flapjack.WordAlloc.removeDeadStructural input16864 value5 value1 value2 = (output16864, value6896, value1) := by
  rw [input16864_def, output16864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2166_eq]
  try dsimp only
  rw [node16863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16864 input2163)).val
theorem input16865_def : input16865 = (.seq input16864 input2163) := by
  unfold input16865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16864 output2163)).val
theorem output16865_def : output16865 = (.seq output16864 output2163) := by
  unfold output16865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16865_skip : Flapjack.WordAlloc.isSkip output16865 = false := by
  rw [output16865_def]
  conv => lhs; cbv
  try rfl
theorem node16865_eq : Flapjack.WordAlloc.removeDeadStructural input16865 value1080 value1 value2 = (output16865, value6896, value1) := by
  rw [input16865_def, output16865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2163_eq]
  try dsimp only
  rw [node16864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16865 input2152)).val
theorem input16866_def : input16866 = (.seq input16865 input2152) := by
  unfold input16866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16865)).val
theorem output16866_def : output16866 = (output16865) := by
  unfold output16866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16866_skip : Flapjack.WordAlloc.isSkip output16866 = false := by
  rw [output16866_def]
  conv => lhs; cbv
  try rfl
theorem node16866_eq : Flapjack.WordAlloc.removeDeadStructural input16866 value1080 value1 value2 = (output16866, value6896, value1) := by
  rw [input16866_def, output16866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2152_eq]
  try dsimp only
  rw [node16865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16866 input2151)).val
theorem input16867_def : input16867 = (.seq input16866 input2151) := by
  unfold input16867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16866 output2151)).val
theorem output16867_def : output16867 = (.seq output16866 output2151) := by
  unfold output16867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16867_skip : Flapjack.WordAlloc.isSkip output16867 = false := by
  rw [output16867_def]
  conv => lhs; cbv
  try rfl
theorem node16867_eq : Flapjack.WordAlloc.removeDeadStructural input16867 value1079 value1 value2 = (output16867, value6896, value1) := by
  rw [input16867_def, output16867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2151_eq]
  try dsimp only
  rw [node16866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16867 input2150)).val
theorem input16868_def : input16868 = (.seq input16867 input2150) := by
  unfold input16868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16867 output2150)).val
theorem output16868_def : output16868 = (.seq output16867 output2150) := by
  unfold output16868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16868_skip : Flapjack.WordAlloc.isSkip output16868 = false := by
  rw [output16868_def]
  conv => lhs; cbv
  try rfl
theorem node16868_eq : Flapjack.WordAlloc.removeDeadStructural input16868 value5 value1 value2 = (output16868, value6896, value1) := by
  rw [input16868_def, output16868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2150_eq]
  try dsimp only
  rw [node16867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16868 input2147)).val
theorem input16869_def : input16869 = (.seq input16868 input2147) := by
  unfold input16869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16868 output2147)).val
theorem output16869_def : output16869 = (.seq output16868 output2147) := by
  unfold output16869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16869_skip : Flapjack.WordAlloc.isSkip output16869 = false := by
  rw [output16869_def]
  conv => lhs; cbv
  try rfl
theorem node16869_eq : Flapjack.WordAlloc.removeDeadStructural input16869 value1072 value1 value2 = (output16869, value6896, value1) := by
  rw [input16869_def, output16869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2147_eq]
  try dsimp only
  rw [node16868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16869 input2136)).val
theorem input16870_def : input16870 = (.seq input16869 input2136) := by
  unfold input16870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16869)).val
theorem output16870_def : output16870 = (output16869) := by
  unfold output16870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16870_skip : Flapjack.WordAlloc.isSkip output16870 = false := by
  rw [output16870_def]
  conv => lhs; cbv
  try rfl
theorem node16870_eq : Flapjack.WordAlloc.removeDeadStructural input16870 value1072 value1 value2 = (output16870, value6896, value1) := by
  rw [input16870_def, output16870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2136_eq]
  try dsimp only
  rw [node16869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16870 input2135)).val
theorem input16871_def : input16871 = (.seq input16870 input2135) := by
  unfold input16871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16870 output2135)).val
theorem output16871_def : output16871 = (.seq output16870 output2135) := by
  unfold output16871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16871_skip : Flapjack.WordAlloc.isSkip output16871 = false := by
  rw [output16871_def]
  conv => lhs; cbv
  try rfl
theorem node16871_eq : Flapjack.WordAlloc.removeDeadStructural input16871 value1071 value1 value2 = (output16871, value6896, value1) := by
  rw [input16871_def, output16871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2135_eq]
  try dsimp only
  rw [node16870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16871 input2134)).val
theorem input16872_def : input16872 = (.seq input16871 input2134) := by
  unfold input16872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16871 output2134)).val
theorem output16872_def : output16872 = (.seq output16871 output2134) := by
  unfold output16872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16872_skip : Flapjack.WordAlloc.isSkip output16872 = false := by
  rw [output16872_def]
  conv => lhs; cbv
  try rfl
theorem node16872_eq : Flapjack.WordAlloc.removeDeadStructural input16872 value5 value1 value2 = (output16872, value6896, value1) := by
  rw [input16872_def, output16872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2134_eq]
  try dsimp only
  rw [node16871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16872 input2131)).val
theorem input16873_def : input16873 = (.seq input16872 input2131) := by
  unfold input16873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16872 output2131)).val
theorem output16873_def : output16873 = (.seq output16872 output2131) := by
  unfold output16873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16873_skip : Flapjack.WordAlloc.isSkip output16873 = false := by
  rw [output16873_def]
  conv => lhs; cbv
  try rfl
theorem node16873_eq : Flapjack.WordAlloc.removeDeadStructural input16873 value1064 value1 value2 = (output16873, value6896, value1) := by
  rw [input16873_def, output16873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2131_eq]
  try dsimp only
  rw [node16872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16873 input2120)).val
theorem input16874_def : input16874 = (.seq input16873 input2120) := by
  unfold input16874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16873)).val
theorem output16874_def : output16874 = (output16873) := by
  unfold output16874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16874_skip : Flapjack.WordAlloc.isSkip output16874 = false := by
  rw [output16874_def]
  conv => lhs; cbv
  try rfl
theorem node16874_eq : Flapjack.WordAlloc.removeDeadStructural input16874 value1064 value1 value2 = (output16874, value6896, value1) := by
  rw [input16874_def, output16874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2120_eq]
  try dsimp only
  rw [node16873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16874 input2119)).val
theorem input16875_def : input16875 = (.seq input16874 input2119) := by
  unfold input16875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16874 output2119)).val
theorem output16875_def : output16875 = (.seq output16874 output2119) := by
  unfold output16875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16875_skip : Flapjack.WordAlloc.isSkip output16875 = false := by
  rw [output16875_def]
  conv => lhs; cbv
  try rfl
theorem node16875_eq : Flapjack.WordAlloc.removeDeadStructural input16875 value1063 value1 value2 = (output16875, value6896, value1) := by
  rw [input16875_def, output16875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2119_eq]
  try dsimp only
  rw [node16874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16875 input2118)).val
theorem input16876_def : input16876 = (.seq input16875 input2118) := by
  unfold input16876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16875 output2118)).val
theorem output16876_def : output16876 = (.seq output16875 output2118) := by
  unfold output16876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16876_skip : Flapjack.WordAlloc.isSkip output16876 = false := by
  rw [output16876_def]
  conv => lhs; cbv
  try rfl
theorem node16876_eq : Flapjack.WordAlloc.removeDeadStructural input16876 value5 value1 value2 = (output16876, value6896, value1) := by
  rw [input16876_def, output16876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2118_eq]
  try dsimp only
  rw [node16875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16876 input2115)).val
theorem input16877_def : input16877 = (.seq input16876 input2115) := by
  unfold input16877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16876 output2115)).val
theorem output16877_def : output16877 = (.seq output16876 output2115) := by
  unfold output16877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16877_skip : Flapjack.WordAlloc.isSkip output16877 = false := by
  rw [output16877_def]
  conv => lhs; cbv
  try rfl
theorem node16877_eq : Flapjack.WordAlloc.removeDeadStructural input16877 value1056 value1 value2 = (output16877, value6896, value1) := by
  rw [input16877_def, output16877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2115_eq]
  try dsimp only
  rw [node16876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16877 input2104)).val
theorem input16878_def : input16878 = (.seq input16877 input2104) := by
  unfold input16878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16877)).val
theorem output16878_def : output16878 = (output16877) := by
  unfold output16878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16878_skip : Flapjack.WordAlloc.isSkip output16878 = false := by
  rw [output16878_def]
  conv => lhs; cbv
  try rfl
theorem node16878_eq : Flapjack.WordAlloc.removeDeadStructural input16878 value1056 value1 value2 = (output16878, value6896, value1) := by
  rw [input16878_def, output16878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2104_eq]
  try dsimp only
  rw [node16877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16878 input2103)).val
theorem input16879_def : input16879 = (.seq input16878 input2103) := by
  unfold input16879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16878 output2103)).val
theorem output16879_def : output16879 = (.seq output16878 output2103) := by
  unfold output16879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16879_skip : Flapjack.WordAlloc.isSkip output16879 = false := by
  rw [output16879_def]
  conv => lhs; cbv
  try rfl
theorem node16879_eq : Flapjack.WordAlloc.removeDeadStructural input16879 value1055 value1 value2 = (output16879, value6896, value1) := by
  rw [input16879_def, output16879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2103_eq]
  try dsimp only
  rw [node16878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16879 input2102)).val
theorem input16880_def : input16880 = (.seq input16879 input2102) := by
  unfold input16880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16879 output2102)).val
theorem output16880_def : output16880 = (.seq output16879 output2102) := by
  unfold output16880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16880_skip : Flapjack.WordAlloc.isSkip output16880 = false := by
  rw [output16880_def]
  conv => lhs; cbv
  try rfl
theorem node16880_eq : Flapjack.WordAlloc.removeDeadStructural input16880 value5 value1 value2 = (output16880, value6896, value1) := by
  rw [input16880_def, output16880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2102_eq]
  try dsimp only
  rw [node16879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16880 input2099)).val
theorem input16881_def : input16881 = (.seq input16880 input2099) := by
  unfold input16881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16880 output2099)).val
theorem output16881_def : output16881 = (.seq output16880 output2099) := by
  unfold output16881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16881_skip : Flapjack.WordAlloc.isSkip output16881 = false := by
  rw [output16881_def]
  conv => lhs; cbv
  try rfl
theorem node16881_eq : Flapjack.WordAlloc.removeDeadStructural input16881 value1048 value1 value2 = (output16881, value6896, value1) := by
  rw [input16881_def, output16881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2099_eq]
  try dsimp only
  rw [node16880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16881 input2088)).val
theorem input16882_def : input16882 = (.seq input16881 input2088) := by
  unfold input16882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16881)).val
theorem output16882_def : output16882 = (output16881) := by
  unfold output16882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16882_skip : Flapjack.WordAlloc.isSkip output16882 = false := by
  rw [output16882_def]
  conv => lhs; cbv
  try rfl
theorem node16882_eq : Flapjack.WordAlloc.removeDeadStructural input16882 value1048 value1 value2 = (output16882, value6896, value1) := by
  rw [input16882_def, output16882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2088_eq]
  try dsimp only
  rw [node16881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16882 input2087)).val
theorem input16883_def : input16883 = (.seq input16882 input2087) := by
  unfold input16883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16882 output2087)).val
theorem output16883_def : output16883 = (.seq output16882 output2087) := by
  unfold output16883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16883_skip : Flapjack.WordAlloc.isSkip output16883 = false := by
  rw [output16883_def]
  conv => lhs; cbv
  try rfl
theorem node16883_eq : Flapjack.WordAlloc.removeDeadStructural input16883 value1047 value1 value2 = (output16883, value6896, value1) := by
  rw [input16883_def, output16883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2087_eq]
  try dsimp only
  rw [node16882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16883 input2086)).val
theorem input16884_def : input16884 = (.seq input16883 input2086) := by
  unfold input16884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16883 output2086)).val
theorem output16884_def : output16884 = (.seq output16883 output2086) := by
  unfold output16884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16884_skip : Flapjack.WordAlloc.isSkip output16884 = false := by
  rw [output16884_def]
  conv => lhs; cbv
  try rfl
theorem node16884_eq : Flapjack.WordAlloc.removeDeadStructural input16884 value5 value1 value2 = (output16884, value6896, value1) := by
  rw [input16884_def, output16884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2086_eq]
  try dsimp only
  rw [node16883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16884 input2083)).val
theorem input16885_def : input16885 = (.seq input16884 input2083) := by
  unfold input16885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16884 output2083)).val
theorem output16885_def : output16885 = (.seq output16884 output2083) := by
  unfold output16885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16885_skip : Flapjack.WordAlloc.isSkip output16885 = false := by
  rw [output16885_def]
  conv => lhs; cbv
  try rfl
theorem node16885_eq : Flapjack.WordAlloc.removeDeadStructural input16885 value1040 value1 value2 = (output16885, value6896, value1) := by
  rw [input16885_def, output16885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2083_eq]
  try dsimp only
  rw [node16884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16885 input2072)).val
theorem input16886_def : input16886 = (.seq input16885 input2072) := by
  unfold input16886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16885)).val
theorem output16886_def : output16886 = (output16885) := by
  unfold output16886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16886_skip : Flapjack.WordAlloc.isSkip output16886 = false := by
  rw [output16886_def]
  conv => lhs; cbv
  try rfl
theorem node16886_eq : Flapjack.WordAlloc.removeDeadStructural input16886 value1040 value1 value2 = (output16886, value6896, value1) := by
  rw [input16886_def, output16886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2072_eq]
  try dsimp only
  rw [node16885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16886 input2071)).val
theorem input16887_def : input16887 = (.seq input16886 input2071) := by
  unfold input16887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16886 output2071)).val
theorem output16887_def : output16887 = (.seq output16886 output2071) := by
  unfold output16887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16887_skip : Flapjack.WordAlloc.isSkip output16887 = false := by
  rw [output16887_def]
  conv => lhs; cbv
  try rfl
theorem node16887_eq : Flapjack.WordAlloc.removeDeadStructural input16887 value1039 value1 value2 = (output16887, value6896, value1) := by
  rw [input16887_def, output16887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2071_eq]
  try dsimp only
  rw [node16886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16887 input2070)).val
theorem input16888_def : input16888 = (.seq input16887 input2070) := by
  unfold input16888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16887 output2070)).val
theorem output16888_def : output16888 = (.seq output16887 output2070) := by
  unfold output16888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16888_skip : Flapjack.WordAlloc.isSkip output16888 = false := by
  rw [output16888_def]
  conv => lhs; cbv
  try rfl
theorem node16888_eq : Flapjack.WordAlloc.removeDeadStructural input16888 value5 value1 value2 = (output16888, value6896, value1) := by
  rw [input16888_def, output16888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2070_eq]
  try dsimp only
  rw [node16887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16888 input2067)).val
theorem input16889_def : input16889 = (.seq input16888 input2067) := by
  unfold input16889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16888 output2067)).val
theorem output16889_def : output16889 = (.seq output16888 output2067) := by
  unfold output16889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16889_skip : Flapjack.WordAlloc.isSkip output16889 = false := by
  rw [output16889_def]
  conv => lhs; cbv
  try rfl
theorem node16889_eq : Flapjack.WordAlloc.removeDeadStructural input16889 value1032 value1 value2 = (output16889, value6896, value1) := by
  rw [input16889_def, output16889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2067_eq]
  try dsimp only
  rw [node16888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16889 input2056)).val
theorem input16890_def : input16890 = (.seq input16889 input2056) := by
  unfold input16890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16889)).val
theorem output16890_def : output16890 = (output16889) := by
  unfold output16890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16890_skip : Flapjack.WordAlloc.isSkip output16890 = false := by
  rw [output16890_def]
  conv => lhs; cbv
  try rfl
theorem node16890_eq : Flapjack.WordAlloc.removeDeadStructural input16890 value1032 value1 value2 = (output16890, value6896, value1) := by
  rw [input16890_def, output16890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2056_eq]
  try dsimp only
  rw [node16889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16890 input2055)).val
theorem input16891_def : input16891 = (.seq input16890 input2055) := by
  unfold input16891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16890 output2055)).val
theorem output16891_def : output16891 = (.seq output16890 output2055) := by
  unfold output16891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16891_skip : Flapjack.WordAlloc.isSkip output16891 = false := by
  rw [output16891_def]
  conv => lhs; cbv
  try rfl
theorem node16891_eq : Flapjack.WordAlloc.removeDeadStructural input16891 value1031 value1 value2 = (output16891, value6896, value1) := by
  rw [input16891_def, output16891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2055_eq]
  try dsimp only
  rw [node16890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16891 input2054)).val
theorem input16892_def : input16892 = (.seq input16891 input2054) := by
  unfold input16892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16891 output2054)).val
theorem output16892_def : output16892 = (.seq output16891 output2054) := by
  unfold output16892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16892_skip : Flapjack.WordAlloc.isSkip output16892 = false := by
  rw [output16892_def]
  conv => lhs; cbv
  try rfl
theorem node16892_eq : Flapjack.WordAlloc.removeDeadStructural input16892 value5 value1 value2 = (output16892, value6896, value1) := by
  rw [input16892_def, output16892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2054_eq]
  try dsimp only
  rw [node16891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16892 input2051)).val
theorem input16893_def : input16893 = (.seq input16892 input2051) := by
  unfold input16893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16892 output2051)).val
theorem output16893_def : output16893 = (.seq output16892 output2051) := by
  unfold output16893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16893_skip : Flapjack.WordAlloc.isSkip output16893 = false := by
  rw [output16893_def]
  conv => lhs; cbv
  try rfl
theorem node16893_eq : Flapjack.WordAlloc.removeDeadStructural input16893 value1024 value1 value2 = (output16893, value6896, value1) := by
  rw [input16893_def, output16893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2051_eq]
  try dsimp only
  rw [node16892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16893 input2040)).val
theorem input16894_def : input16894 = (.seq input16893 input2040) := by
  unfold input16894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16893)).val
theorem output16894_def : output16894 = (output16893) := by
  unfold output16894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16894_skip : Flapjack.WordAlloc.isSkip output16894 = false := by
  rw [output16894_def]
  conv => lhs; cbv
  try rfl
theorem node16894_eq : Flapjack.WordAlloc.removeDeadStructural input16894 value1024 value1 value2 = (output16894, value6896, value1) := by
  rw [input16894_def, output16894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2040_eq]
  try dsimp only
  rw [node16893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16894 input2039)).val
theorem input16895_def : input16895 = (.seq input16894 input2039) := by
  unfold input16895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16894 output2039)).val
theorem output16895_def : output16895 = (.seq output16894 output2039) := by
  unfold output16895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16895_skip : Flapjack.WordAlloc.isSkip output16895 = false := by
  rw [output16895_def]
  conv => lhs; cbv
  try rfl
theorem node16895_eq : Flapjack.WordAlloc.removeDeadStructural input16895 value1023 value1 value2 = (output16895, value6896, value1) := by
  rw [input16895_def, output16895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2039_eq]
  try dsimp only
  rw [node16894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node16895_eq
end InitECandidate.Proofs.DeadStages713
