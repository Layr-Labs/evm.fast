import InitECandidate.Proofs.DeadStages646.Chunk011
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages646
@[irreducible, cbv_opaque] def input3072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3071 input798)).val
theorem input3072_def : input3072 = (.seq input3071 input798) := by
  unfold input3072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3071 output798)).val
theorem output3072_def : output3072 = (.seq output3071 output798) := by
  unfold output3072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3072_skip : Flapjack.WordAlloc.isSkip output3072 = false := by
  rw [output3072_def]
  conv => lhs; cbv
  try rfl
theorem node3072_eq : Flapjack.WordAlloc.removeDeadStructural input3072 value371 value1 value2 = (output3072, value1482, value1) := by
  rw [input3072_def, output3072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node798_eq]
  try dsimp only
  rw [node3071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3072 input797)).val
theorem input3073_def : input3073 = (.seq input3072 input797) := by
  unfold input3073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3072 output797)).val
theorem output3073_def : output3073 = (.seq output3072 output797) := by
  unfold output3073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3073_skip : Flapjack.WordAlloc.isSkip output3073 = false := by
  rw [output3073_def]
  conv => lhs; cbv
  try rfl
theorem node3073_eq : Flapjack.WordAlloc.removeDeadStructural input3073 value368 value1 value2 = (output3073, value1482, value1) := by
  rw [input3073_def, output3073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node797_eq]
  try dsimp only
  rw [node3072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3073 input792)).val
theorem input3074_def : input3074 = (.seq input3073 input792) := by
  unfold input3074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3073 output792)).val
theorem output3074_def : output3074 = (.seq output3073 output792) := by
  unfold output3074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3074_skip : Flapjack.WordAlloc.isSkip output3074 = false := by
  rw [output3074_def]
  conv => lhs; cbv
  try rfl
theorem node3074_eq : Flapjack.WordAlloc.removeDeadStructural input3074 value367 value1 value2 = (output3074, value1482, value1) := by
  rw [input3074_def, output3074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node792_eq]
  try dsimp only
  rw [node3073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3074 input791)).val
theorem input3075_def : input3075 = (.seq input3074 input791) := by
  unfold input3075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3074 output791)).val
theorem output3075_def : output3075 = (.seq output3074 output791) := by
  unfold output3075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3075_skip : Flapjack.WordAlloc.isSkip output3075 = false := by
  rw [output3075_def]
  conv => lhs; cbv
  try rfl
theorem node3075_eq : Flapjack.WordAlloc.removeDeadStructural input3075 value362 value1 value2 = (output3075, value1482, value1) := by
  rw [input3075_def, output3075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node791_eq]
  try dsimp only
  rw [node3074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3075 input782)).val
theorem input3076_def : input3076 = (.seq input3075 input782) := by
  unfold input3076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3075 output782)).val
theorem output3076_def : output3076 = (.seq output3075 output782) := by
  unfold output3076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3076_skip : Flapjack.WordAlloc.isSkip output3076 = false := by
  rw [output3076_def]
  conv => lhs; cbv
  try rfl
theorem node3076_eq : Flapjack.WordAlloc.removeDeadStructural input3076 value361 value1 value2 = (output3076, value1482, value1) := by
  rw [input3076_def, output3076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node782_eq]
  try dsimp only
  rw [node3075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3076 input781)).val
theorem input3077_def : input3077 = (.seq input3076 input781) := by
  unfold input3077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3076 output781)).val
theorem output3077_def : output3077 = (.seq output3076 output781) := by
  unfold output3077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3077_skip : Flapjack.WordAlloc.isSkip output3077 = false := by
  rw [output3077_def]
  conv => lhs; cbv
  try rfl
theorem node3077_eq : Flapjack.WordAlloc.removeDeadStructural input3077 value357 value1 value2 = (output3077, value1482, value1) := by
  rw [input3077_def, output3077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node781_eq]
  try dsimp only
  rw [node3076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3077 input774)).val
theorem input3078_def : input3078 = (.seq input3077 input774) := by
  unfold input3078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3077 output774)).val
theorem output3078_def : output3078 = (.seq output3077 output774) := by
  unfold output3078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3078_skip : Flapjack.WordAlloc.isSkip output3078 = false := by
  rw [output3078_def]
  conv => lhs; cbv
  try rfl
theorem node3078_eq : Flapjack.WordAlloc.removeDeadStructural input3078 value356 value1 value2 = (output3078, value1482, value1) := by
  rw [input3078_def, output3078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node774_eq]
  try dsimp only
  rw [node3077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3078 input773)).val
theorem input3079_def : input3079 = (.seq input3078 input773) := by
  unfold input3079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3078 output773)).val
theorem output3079_def : output3079 = (.seq output3078 output773) := by
  unfold output3079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3079_skip : Flapjack.WordAlloc.isSkip output3079 = false := by
  rw [output3079_def]
  conv => lhs; cbv
  try rfl
theorem node3079_eq : Flapjack.WordAlloc.removeDeadStructural input3079 value355 value1 value2 = (output3079, value1482, value1) := by
  rw [input3079_def, output3079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node773_eq]
  try dsimp only
  rw [node3078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3079 input772)).val
theorem input3080_def : input3080 = (.seq input3079 input772) := by
  unfold input3080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3079 output772)).val
theorem output3080_def : output3080 = (.seq output3079 output772) := by
  unfold output3080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3080_skip : Flapjack.WordAlloc.isSkip output3080 = false := by
  rw [output3080_def]
  conv => lhs; cbv
  try rfl
theorem node3080_eq : Flapjack.WordAlloc.removeDeadStructural input3080 value354 value1 value2 = (output3080, value1482, value1) := by
  rw [input3080_def, output3080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node772_eq]
  try dsimp only
  rw [node3079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3080 input771)).val
theorem input3081_def : input3081 = (.seq input3080 input771) := by
  unfold input3081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3080 output771)).val
theorem output3081_def : output3081 = (.seq output3080 output771) := by
  unfold output3081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3081_skip : Flapjack.WordAlloc.isSkip output3081 = false := by
  rw [output3081_def]
  conv => lhs; cbv
  try rfl
theorem node3081_eq : Flapjack.WordAlloc.removeDeadStructural input3081 value351 value1 value2 = (output3081, value1482, value1) := by
  rw [input3081_def, output3081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node771_eq]
  try dsimp only
  rw [node3080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3081 input766)).val
theorem input3082_def : input3082 = (.seq input3081 input766) := by
  unfold input3082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3081 output766)).val
theorem output3082_def : output3082 = (.seq output3081 output766) := by
  unfold output3082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3082_skip : Flapjack.WordAlloc.isSkip output3082 = false := by
  rw [output3082_def]
  conv => lhs; cbv
  try rfl
theorem node3082_eq : Flapjack.WordAlloc.removeDeadStructural input3082 value350 value1 value2 = (output3082, value1482, value1) := by
  rw [input3082_def, output3082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node766_eq]
  try dsimp only
  rw [node3081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3082 input765)).val
theorem input3083_def : input3083 = (.seq input3082 input765) := by
  unfold input3083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3082 output765)).val
theorem output3083_def : output3083 = (.seq output3082 output765) := by
  unfold output3083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3083_skip : Flapjack.WordAlloc.isSkip output3083 = false := by
  rw [output3083_def]
  conv => lhs; cbv
  try rfl
theorem node3083_eq : Flapjack.WordAlloc.removeDeadStructural input3083 value345 value1 value2 = (output3083, value1482, value1) := by
  rw [input3083_def, output3083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node765_eq]
  try dsimp only
  rw [node3082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3083 input756)).val
theorem input3084_def : input3084 = (.seq input3083 input756) := by
  unfold input3084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3083 output756)).val
theorem output3084_def : output3084 = (.seq output3083 output756) := by
  unfold output3084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3084_skip : Flapjack.WordAlloc.isSkip output3084 = false := by
  rw [output3084_def]
  conv => lhs; cbv
  try rfl
theorem node3084_eq : Flapjack.WordAlloc.removeDeadStructural input3084 value344 value1 value2 = (output3084, value1482, value1) := by
  rw [input3084_def, output3084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node756_eq]
  try dsimp only
  rw [node3083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3084 input755)).val
theorem input3085_def : input3085 = (.seq input3084 input755) := by
  unfold input3085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3084 output755)).val
theorem output3085_def : output3085 = (.seq output3084 output755) := by
  unfold output3085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3085_skip : Flapjack.WordAlloc.isSkip output3085 = false := by
  rw [output3085_def]
  conv => lhs; cbv
  try rfl
theorem node3085_eq : Flapjack.WordAlloc.removeDeadStructural input3085 value340 value1 value2 = (output3085, value1482, value1) := by
  rw [input3085_def, output3085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node755_eq]
  try dsimp only
  rw [node3084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3085 input748)).val
theorem input3086_def : input3086 = (.seq input3085 input748) := by
  unfold input3086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3085 output748)).val
theorem output3086_def : output3086 = (.seq output3085 output748) := by
  unfold output3086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3086_skip : Flapjack.WordAlloc.isSkip output3086 = false := by
  rw [output3086_def]
  conv => lhs; cbv
  try rfl
theorem node3086_eq : Flapjack.WordAlloc.removeDeadStructural input3086 value339 value1 value2 = (output3086, value1482, value1) := by
  rw [input3086_def, output3086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node748_eq]
  try dsimp only
  rw [node3085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3086 input747)).val
theorem input3087_def : input3087 = (.seq input3086 input747) := by
  unfold input3087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3086 output747)).val
theorem output3087_def : output3087 = (.seq output3086 output747) := by
  unfold output3087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3087_skip : Flapjack.WordAlloc.isSkip output3087 = false := by
  rw [output3087_def]
  conv => lhs; cbv
  try rfl
theorem node3087_eq : Flapjack.WordAlloc.removeDeadStructural input3087 value336 value1 value2 = (output3087, value1482, value1) := by
  rw [input3087_def, output3087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node747_eq]
  try dsimp only
  rw [node3086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3087 input742)).val
theorem input3088_def : input3088 = (.seq input3087 input742) := by
  unfold input3088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3087 output742)).val
theorem output3088_def : output3088 = (.seq output3087 output742) := by
  unfold output3088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3088_skip : Flapjack.WordAlloc.isSkip output3088 = false := by
  rw [output3088_def]
  conv => lhs; cbv
  try rfl
theorem node3088_eq : Flapjack.WordAlloc.removeDeadStructural input3088 value333 value1 value2 = (output3088, value1482, value1) := by
  rw [input3088_def, output3088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node742_eq]
  try dsimp only
  rw [node3087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3088 input737)).val
theorem input3089_def : input3089 = (.seq input3088 input737) := by
  unfold input3089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3088 output737)).val
theorem output3089_def : output3089 = (.seq output3088 output737) := by
  unfold output3089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3089_skip : Flapjack.WordAlloc.isSkip output3089 = false := by
  rw [output3089_def]
  conv => lhs; cbv
  try rfl
theorem node3089_eq : Flapjack.WordAlloc.removeDeadStructural input3089 value329 value1 value2 = (output3089, value1482, value1) := by
  rw [input3089_def, output3089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node737_eq]
  try dsimp only
  rw [node3088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3089 input730)).val
theorem input3090_def : input3090 = (.seq input3089 input730) := by
  unfold input3090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3089)).val
theorem output3090_def : output3090 = (output3089) := by
  unfold output3090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3090_skip : Flapjack.WordAlloc.isSkip output3090 = false := by
  rw [output3090_def]
  conv => lhs; cbv
  try rfl
theorem node3090_eq : Flapjack.WordAlloc.removeDeadStructural input3090 value329 value1 value2 = (output3090, value1482, value1) := by
  rw [input3090_def, output3090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node730_eq]
  try dsimp only
  rw [node3089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3090 input729)).val
theorem input3091_def : input3091 = (.seq input3090 input729) := by
  unfold input3091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3090)).val
theorem output3091_def : output3091 = (output3090) := by
  unfold output3091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3091_skip : Flapjack.WordAlloc.isSkip output3091 = false := by
  rw [output3091_def]
  conv => lhs; cbv
  try rfl
theorem node3091_eq : Flapjack.WordAlloc.removeDeadStructural input3091 value329 value1 value2 = (output3091, value1482, value1) := by
  rw [input3091_def, output3091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node729_eq]
  try dsimp only
  rw [node3090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3091 input728)).val
theorem input3092_def : input3092 = (.seq input3091 input728) := by
  unfold input3092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3091 output728)).val
theorem output3092_def : output3092 = (.seq output3091 output728) := by
  unfold output3092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3092_skip : Flapjack.WordAlloc.isSkip output3092 = false := by
  rw [output3092_def]
  conv => lhs; cbv
  try rfl
theorem node3092_eq : Flapjack.WordAlloc.removeDeadStructural input3092 value328 value1 value2 = (output3092, value1482, value1) := by
  rw [input3092_def, output3092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node728_eq]
  try dsimp only
  rw [node3091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3092 input727)).val
theorem input3093_def : input3093 = (.seq input3092 input727) := by
  unfold input3093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3092 output727)).val
theorem output3093_def : output3093 = (.seq output3092 output727) := by
  unfold output3093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3093_skip : Flapjack.WordAlloc.isSkip output3093 = false := by
  rw [output3093_def]
  conv => lhs; cbv
  try rfl
theorem node3093_eq : Flapjack.WordAlloc.removeDeadStructural input3093 value327 value1 value2 = (output3093, value1482, value1) := by
  rw [input3093_def, output3093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node727_eq]
  try dsimp only
  rw [node3092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3093 input726)).val
theorem input3094_def : input3094 = (.seq input3093 input726) := by
  unfold input3094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3093 output726)).val
theorem output3094_def : output3094 = (.seq output3093 output726) := by
  unfold output3094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3094_skip : Flapjack.WordAlloc.isSkip output3094 = false := by
  rw [output3094_def]
  conv => lhs; cbv
  try rfl
theorem node3094_eq : Flapjack.WordAlloc.removeDeadStructural input3094 value324 value1 value2 = (output3094, value1482, value1) := by
  rw [input3094_def, output3094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node726_eq]
  try dsimp only
  rw [node3093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3094 input721)).val
theorem input3095_def : input3095 = (.seq input3094 input721) := by
  unfold input3095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3094 output721)).val
theorem output3095_def : output3095 = (.seq output3094 output721) := by
  unfold output3095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3095_skip : Flapjack.WordAlloc.isSkip output3095 = false := by
  rw [output3095_def]
  conv => lhs; cbv
  try rfl
theorem node3095_eq : Flapjack.WordAlloc.removeDeadStructural input3095 value323 value1 value2 = (output3095, value1482, value1) := by
  rw [input3095_def, output3095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node721_eq]
  try dsimp only
  rw [node3094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3095 input720)).val
theorem input3096_def : input3096 = (.seq input3095 input720) := by
  unfold input3096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3095 output720)).val
theorem output3096_def : output3096 = (.seq output3095 output720) := by
  unfold output3096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3096_skip : Flapjack.WordAlloc.isSkip output3096 = false := by
  rw [output3096_def]
  conv => lhs; cbv
  try rfl
theorem node3096_eq : Flapjack.WordAlloc.removeDeadStructural input3096 value320 value1 value2 = (output3096, value1482, value1) := by
  rw [input3096_def, output3096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node720_eq]
  try dsimp only
  rw [node3095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3096 input715)).val
theorem input3097_def : input3097 = (.seq input3096 input715) := by
  unfold input3097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3096 output715)).val
theorem output3097_def : output3097 = (.seq output3096 output715) := by
  unfold output3097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3097_skip : Flapjack.WordAlloc.isSkip output3097 = false := by
  rw [output3097_def]
  conv => lhs; cbv
  try rfl
theorem node3097_eq : Flapjack.WordAlloc.removeDeadStructural input3097 value319 value1 value2 = (output3097, value1482, value1) := by
  rw [input3097_def, output3097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node715_eq]
  try dsimp only
  rw [node3096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3097 input714)).val
theorem input3098_def : input3098 = (.seq input3097 input714) := by
  unfold input3098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3097 output714)).val
theorem output3098_def : output3098 = (.seq output3097 output714) := by
  unfold output3098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3098_skip : Flapjack.WordAlloc.isSkip output3098 = false := by
  rw [output3098_def]
  conv => lhs; cbv
  try rfl
theorem node3098_eq : Flapjack.WordAlloc.removeDeadStructural input3098 value317 value1 value2 = (output3098, value1482, value1) := by
  rw [input3098_def, output3098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node714_eq]
  try dsimp only
  rw [node3097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3098 input711)).val
theorem input3099_def : input3099 = (.seq input3098 input711) := by
  unfold input3099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3098 output711)).val
theorem output3099_def : output3099 = (.seq output3098 output711) := by
  unfold output3099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3099_skip : Flapjack.WordAlloc.isSkip output3099 = false := by
  rw [output3099_def]
  conv => lhs; cbv
  try rfl
theorem node3099_eq : Flapjack.WordAlloc.removeDeadStructural input3099 value316 value1 value2 = (output3099, value1482, value1) := by
  rw [input3099_def, output3099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node711_eq]
  try dsimp only
  rw [node3098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3099 input710)).val
theorem input3100_def : input3100 = (.seq input3099 input710) := by
  unfold input3100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3099 output710)).val
theorem output3100_def : output3100 = (.seq output3099 output710) := by
  unfold output3100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3100_skip : Flapjack.WordAlloc.isSkip output3100 = false := by
  rw [output3100_def]
  conv => lhs; cbv
  try rfl
theorem node3100_eq : Flapjack.WordAlloc.removeDeadStructural input3100 value315 value1 value2 = (output3100, value1482, value1) := by
  rw [input3100_def, output3100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node710_eq]
  try dsimp only
  rw [node3099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3100 input709)).val
theorem input3101_def : input3101 = (.seq input3100 input709) := by
  unfold input3101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3100 output709)).val
theorem output3101_def : output3101 = (.seq output3100 output709) := by
  unfold output3101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3101_skip : Flapjack.WordAlloc.isSkip output3101 = false := by
  rw [output3101_def]
  conv => lhs; cbv
  try rfl
theorem node3101_eq : Flapjack.WordAlloc.removeDeadStructural input3101 value314 value1 value2 = (output3101, value1482, value1) := by
  rw [input3101_def, output3101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node709_eq]
  try dsimp only
  rw [node3100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3101 input708)).val
theorem input3102_def : input3102 = (.seq input3101 input708) := by
  unfold input3102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3101 output708)).val
theorem output3102_def : output3102 = (.seq output3101 output708) := by
  unfold output3102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3102_skip : Flapjack.WordAlloc.isSkip output3102 = false := by
  rw [output3102_def]
  conv => lhs; cbv
  try rfl
theorem node3102_eq : Flapjack.WordAlloc.removeDeadStructural input3102 value311 value1 value2 = (output3102, value1482, value1) := by
  rw [input3102_def, output3102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node708_eq]
  try dsimp only
  rw [node3101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3102 input703)).val
theorem input3103_def : input3103 = (.seq input3102 input703) := by
  unfold input3103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3102 output703)).val
theorem output3103_def : output3103 = (.seq output3102 output703) := by
  unfold output3103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3103_skip : Flapjack.WordAlloc.isSkip output3103 = false := by
  rw [output3103_def]
  conv => lhs; cbv
  try rfl
theorem node3103_eq : Flapjack.WordAlloc.removeDeadStructural input3103 value310 value1 value2 = (output3103, value1482, value1) := by
  rw [input3103_def, output3103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node703_eq]
  try dsimp only
  rw [node3102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3103 input702)).val
theorem input3104_def : input3104 = (.seq input3103 input702) := by
  unfold input3104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3103 output702)).val
theorem output3104_def : output3104 = (.seq output3103 output702) := by
  unfold output3104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3104_skip : Flapjack.WordAlloc.isSkip output3104 = false := by
  rw [output3104_def]
  conv => lhs; cbv
  try rfl
theorem node3104_eq : Flapjack.WordAlloc.removeDeadStructural input3104 value305 value1 value2 = (output3104, value1482, value1) := by
  rw [input3104_def, output3104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node702_eq]
  try dsimp only
  rw [node3103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3104 input693)).val
theorem input3105_def : input3105 = (.seq input3104 input693) := by
  unfold input3105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3104 output693)).val
theorem output3105_def : output3105 = (.seq output3104 output693) := by
  unfold output3105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3105_skip : Flapjack.WordAlloc.isSkip output3105 = false := by
  rw [output3105_def]
  conv => lhs; cbv
  try rfl
theorem node3105_eq : Flapjack.WordAlloc.removeDeadStructural input3105 value304 value1 value2 = (output3105, value1482, value1) := by
  rw [input3105_def, output3105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node693_eq]
  try dsimp only
  rw [node3104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3105 input692)).val
theorem input3106_def : input3106 = (.seq input3105 input692) := by
  unfold input3106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3105 output692)).val
theorem output3106_def : output3106 = (.seq output3105 output692) := by
  unfold output3106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3106_skip : Flapjack.WordAlloc.isSkip output3106 = false := by
  rw [output3106_def]
  conv => lhs; cbv
  try rfl
theorem node3106_eq : Flapjack.WordAlloc.removeDeadStructural input3106 value300 value1 value2 = (output3106, value1482, value1) := by
  rw [input3106_def, output3106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node692_eq]
  try dsimp only
  rw [node3105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3106 input685)).val
theorem input3107_def : input3107 = (.seq input3106 input685) := by
  unfold input3107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3106 output685)).val
theorem output3107_def : output3107 = (.seq output3106 output685) := by
  unfold output3107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3107_skip : Flapjack.WordAlloc.isSkip output3107 = false := by
  rw [output3107_def]
  conv => lhs; cbv
  try rfl
theorem node3107_eq : Flapjack.WordAlloc.removeDeadStructural input3107 value299 value1 value2 = (output3107, value1482, value1) := by
  rw [input3107_def, output3107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node685_eq]
  try dsimp only
  rw [node3106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3107 input684)).val
theorem input3108_def : input3108 = (.seq input3107 input684) := by
  unfold input3108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3107 output684)).val
theorem output3108_def : output3108 = (.seq output3107 output684) := by
  unfold output3108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3108_skip : Flapjack.WordAlloc.isSkip output3108 = false := by
  rw [output3108_def]
  conv => lhs; cbv
  try rfl
theorem node3108_eq : Flapjack.WordAlloc.removeDeadStructural input3108 value296 value1 value2 = (output3108, value1482, value1) := by
  rw [input3108_def, output3108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node684_eq]
  try dsimp only
  rw [node3107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3108 input679)).val
theorem input3109_def : input3109 = (.seq input3108 input679) := by
  unfold input3109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3108 output679)).val
theorem output3109_def : output3109 = (.seq output3108 output679) := by
  unfold output3109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3109_skip : Flapjack.WordAlloc.isSkip output3109 = false := by
  rw [output3109_def]
  conv => lhs; cbv
  try rfl
theorem node3109_eq : Flapjack.WordAlloc.removeDeadStructural input3109 value293 value1 value2 = (output3109, value1482, value1) := by
  rw [input3109_def, output3109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node679_eq]
  try dsimp only
  rw [node3108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3109 input674)).val
theorem input3110_def : input3110 = (.seq input3109 input674) := by
  unfold input3110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3109 output674)).val
theorem output3110_def : output3110 = (.seq output3109 output674) := by
  unfold output3110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3110_skip : Flapjack.WordAlloc.isSkip output3110 = false := by
  rw [output3110_def]
  conv => lhs; cbv
  try rfl
theorem node3110_eq : Flapjack.WordAlloc.removeDeadStructural input3110 value289 value1 value2 = (output3110, value1482, value1) := by
  rw [input3110_def, output3110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node674_eq]
  try dsimp only
  rw [node3109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3110 input667)).val
theorem input3111_def : input3111 = (.seq input3110 input667) := by
  unfold input3111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3110)).val
theorem output3111_def : output3111 = (output3110) := by
  unfold output3111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3111_skip : Flapjack.WordAlloc.isSkip output3111 = false := by
  rw [output3111_def]
  conv => lhs; cbv
  try rfl
theorem node3111_eq : Flapjack.WordAlloc.removeDeadStructural input3111 value289 value1 value2 = (output3111, value1482, value1) := by
  rw [input3111_def, output3111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node667_eq]
  try dsimp only
  rw [node3110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3111 input666)).val
theorem input3112_def : input3112 = (.seq input3111 input666) := by
  unfold input3112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3111)).val
theorem output3112_def : output3112 = (output3111) := by
  unfold output3112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3112_skip : Flapjack.WordAlloc.isSkip output3112 = false := by
  rw [output3112_def]
  conv => lhs; cbv
  try rfl
theorem node3112_eq : Flapjack.WordAlloc.removeDeadStructural input3112 value289 value1 value2 = (output3112, value1482, value1) := by
  rw [input3112_def, output3112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node666_eq]
  try dsimp only
  rw [node3111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3112 input665)).val
theorem input3113_def : input3113 = (.seq input3112 input665) := by
  unfold input3113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3112 output665)).val
theorem output3113_def : output3113 = (.seq output3112 output665) := by
  unfold output3113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3113_skip : Flapjack.WordAlloc.isSkip output3113 = false := by
  rw [output3113_def]
  conv => lhs; cbv
  try rfl
theorem node3113_eq : Flapjack.WordAlloc.removeDeadStructural input3113 value288 value1 value2 = (output3113, value1482, value1) := by
  rw [input3113_def, output3113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node665_eq]
  try dsimp only
  rw [node3112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3113 input664)).val
theorem input3114_def : input3114 = (.seq input3113 input664) := by
  unfold input3114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3113 output664)).val
theorem output3114_def : output3114 = (.seq output3113 output664) := by
  unfold output3114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3114_skip : Flapjack.WordAlloc.isSkip output3114 = false := by
  rw [output3114_def]
  conv => lhs; cbv
  try rfl
theorem node3114_eq : Flapjack.WordAlloc.removeDeadStructural input3114 value287 value1 value2 = (output3114, value1482, value1) := by
  rw [input3114_def, output3114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node664_eq]
  try dsimp only
  rw [node3113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3114 input663)).val
theorem input3115_def : input3115 = (.seq input3114 input663) := by
  unfold input3115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3114 output663)).val
theorem output3115_def : output3115 = (.seq output3114 output663) := by
  unfold output3115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3115_skip : Flapjack.WordAlloc.isSkip output3115 = false := by
  rw [output3115_def]
  conv => lhs; cbv
  try rfl
theorem node3115_eq : Flapjack.WordAlloc.removeDeadStructural input3115 value284 value1 value2 = (output3115, value1482, value1) := by
  rw [input3115_def, output3115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node663_eq]
  try dsimp only
  rw [node3114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3115 input658)).val
theorem input3116_def : input3116 = (.seq input3115 input658) := by
  unfold input3116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3115 output658)).val
theorem output3116_def : output3116 = (.seq output3115 output658) := by
  unfold output3116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3116_skip : Flapjack.WordAlloc.isSkip output3116 = false := by
  rw [output3116_def]
  conv => lhs; cbv
  try rfl
theorem node3116_eq : Flapjack.WordAlloc.removeDeadStructural input3116 value283 value1 value2 = (output3116, value1482, value1) := by
  rw [input3116_def, output3116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node658_eq]
  try dsimp only
  rw [node3115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3116 input657)).val
theorem input3117_def : input3117 = (.seq input3116 input657) := by
  unfold input3117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3116 output657)).val
theorem output3117_def : output3117 = (.seq output3116 output657) := by
  unfold output3117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3117_skip : Flapjack.WordAlloc.isSkip output3117 = false := by
  rw [output3117_def]
  conv => lhs; cbv
  try rfl
theorem node3117_eq : Flapjack.WordAlloc.removeDeadStructural input3117 value280 value1 value2 = (output3117, value1482, value1) := by
  rw [input3117_def, output3117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node657_eq]
  try dsimp only
  rw [node3116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3117 input652)).val
theorem input3118_def : input3118 = (.seq input3117 input652) := by
  unfold input3118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3117 output652)).val
theorem output3118_def : output3118 = (.seq output3117 output652) := by
  unfold output3118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3118_skip : Flapjack.WordAlloc.isSkip output3118 = false := by
  rw [output3118_def]
  conv => lhs; cbv
  try rfl
theorem node3118_eq : Flapjack.WordAlloc.removeDeadStructural input3118 value279 value1 value2 = (output3118, value1482, value1) := by
  rw [input3118_def, output3118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node652_eq]
  try dsimp only
  rw [node3117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3118 input651)).val
theorem input3119_def : input3119 = (.seq input3118 input651) := by
  unfold input3119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3118 output651)).val
theorem output3119_def : output3119 = (.seq output3118 output651) := by
  unfold output3119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3119_skip : Flapjack.WordAlloc.isSkip output3119 = false := by
  rw [output3119_def]
  conv => lhs; cbv
  try rfl
theorem node3119_eq : Flapjack.WordAlloc.removeDeadStructural input3119 value277 value1 value2 = (output3119, value1482, value1) := by
  rw [input3119_def, output3119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node651_eq]
  try dsimp only
  rw [node3118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3119 input648)).val
theorem input3120_def : input3120 = (.seq input3119 input648) := by
  unfold input3120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3119 output648)).val
theorem output3120_def : output3120 = (.seq output3119 output648) := by
  unfold output3120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3120_skip : Flapjack.WordAlloc.isSkip output3120 = false := by
  rw [output3120_def]
  conv => lhs; cbv
  try rfl
theorem node3120_eq : Flapjack.WordAlloc.removeDeadStructural input3120 value276 value1 value2 = (output3120, value1482, value1) := by
  rw [input3120_def, output3120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node648_eq]
  try dsimp only
  rw [node3119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3120 input647)).val
theorem input3121_def : input3121 = (.seq input3120 input647) := by
  unfold input3121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3120 output647)).val
theorem output3121_def : output3121 = (.seq output3120 output647) := by
  unfold output3121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3121_skip : Flapjack.WordAlloc.isSkip output3121 = false := by
  rw [output3121_def]
  conv => lhs; cbv
  try rfl
theorem node3121_eq : Flapjack.WordAlloc.removeDeadStructural input3121 value273 value1 value2 = (output3121, value1482, value1) := by
  rw [input3121_def, output3121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node647_eq]
  try dsimp only
  rw [node3120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3121 input642)).val
theorem input3122_def : input3122 = (.seq input3121 input642) := by
  unfold input3122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3121 output642)).val
theorem output3122_def : output3122 = (.seq output3121 output642) := by
  unfold output3122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3122_skip : Flapjack.WordAlloc.isSkip output3122 = false := by
  rw [output3122_def]
  conv => lhs; cbv
  try rfl
theorem node3122_eq : Flapjack.WordAlloc.removeDeadStructural input3122 value270 value1 value2 = (output3122, value1482, value1) := by
  rw [input3122_def, output3122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node642_eq]
  try dsimp only
  rw [node3121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3122 input637)).val
theorem input3123_def : input3123 = (.seq input3122 input637) := by
  unfold input3123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3122 output637)).val
theorem output3123_def : output3123 = (.seq output3122 output637) := by
  unfold output3123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3123_skip : Flapjack.WordAlloc.isSkip output3123 = false := by
  rw [output3123_def]
  conv => lhs; cbv
  try rfl
theorem node3123_eq : Flapjack.WordAlloc.removeDeadStructural input3123 value266 value1 value2 = (output3123, value1482, value1) := by
  rw [input3123_def, output3123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node637_eq]
  try dsimp only
  rw [node3122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3123 input630)).val
theorem input3124_def : input3124 = (.seq input3123 input630) := by
  unfold input3124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3123 output630)).val
theorem output3124_def : output3124 = (.seq output3123 output630) := by
  unfold output3124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3124_skip : Flapjack.WordAlloc.isSkip output3124 = false := by
  rw [output3124_def]
  conv => lhs; cbv
  try rfl
theorem node3124_eq : Flapjack.WordAlloc.removeDeadStructural input3124 value265 value1 value2 = (output3124, value1482, value1) := by
  rw [input3124_def, output3124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node630_eq]
  try dsimp only
  rw [node3123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3124 input629)).val
theorem input3125_def : input3125 = (.seq input3124 input629) := by
  unfold input3125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3124 output629)).val
theorem output3125_def : output3125 = (.seq output3124 output629) := by
  unfold output3125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3125_skip : Flapjack.WordAlloc.isSkip output3125 = false := by
  rw [output3125_def]
  conv => lhs; cbv
  try rfl
theorem node3125_eq : Flapjack.WordAlloc.removeDeadStructural input3125 value264 value1 value2 = (output3125, value1482, value1) := by
  rw [input3125_def, output3125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node629_eq]
  try dsimp only
  rw [node3124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3125 input628)).val
theorem input3126_def : input3126 = (.seq input3125 input628) := by
  unfold input3126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3125 output628)).val
theorem output3126_def : output3126 = (.seq output3125 output628) := by
  unfold output3126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3126_skip : Flapjack.WordAlloc.isSkip output3126 = false := by
  rw [output3126_def]
  conv => lhs; cbv
  try rfl
theorem node3126_eq : Flapjack.WordAlloc.removeDeadStructural input3126 value263 value1 value2 = (output3126, value1482, value1) := by
  rw [input3126_def, output3126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node628_eq]
  try dsimp only
  rw [node3125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3126 input627)).val
theorem input3127_def : input3127 = (.seq input3126 input627) := by
  unfold input3127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3126 output627)).val
theorem output3127_def : output3127 = (.seq output3126 output627) := by
  unfold output3127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3127_skip : Flapjack.WordAlloc.isSkip output3127 = false := by
  rw [output3127_def]
  conv => lhs; cbv
  try rfl
theorem node3127_eq : Flapjack.WordAlloc.removeDeadStructural input3127 value250 value1 value2 = (output3127, value1482, value1) := by
  rw [input3127_def, output3127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node627_eq]
  try dsimp only
  rw [node3126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3127 input602)).val
theorem input3128_def : input3128 = (.seq input3127 input602) := by
  unfold input3128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3127 output602)).val
theorem output3128_def : output3128 = (.seq output3127 output602) := by
  unfold output3128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3128_skip : Flapjack.WordAlloc.isSkip output3128 = false := by
  rw [output3128_def]
  conv => lhs; cbv
  try rfl
theorem node3128_eq : Flapjack.WordAlloc.removeDeadStructural input3128 value237 value1 value2 = (output3128, value1482, value1) := by
  rw [input3128_def, output3128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node602_eq]
  try dsimp only
  rw [node3127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3128 input577)).val
theorem input3129_def : input3129 = (.seq input3128 input577) := by
  unfold input3129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3128 output577)).val
theorem output3129_def : output3129 = (.seq output3128 output577) := by
  unfold output3129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3129_skip : Flapjack.WordAlloc.isSkip output3129 = false := by
  rw [output3129_def]
  conv => lhs; cbv
  try rfl
theorem node3129_eq : Flapjack.WordAlloc.removeDeadStructural input3129 value226 value1 value2 = (output3129, value1482, value1) := by
  rw [input3129_def, output3129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node577_eq]
  try dsimp only
  rw [node3128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3129 input556)).val
theorem input3130_def : input3130 = (.seq input3129 input556) := by
  unfold input3130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3129 output556)).val
theorem output3130_def : output3130 = (.seq output3129 output556) := by
  unfold output3130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3130_skip : Flapjack.WordAlloc.isSkip output3130 = false := by
  rw [output3130_def]
  conv => lhs; cbv
  try rfl
theorem node3130_eq : Flapjack.WordAlloc.removeDeadStructural input3130 value209 value1 value2 = (output3130, value1482, value1) := by
  rw [input3130_def, output3130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node556_eq]
  try dsimp only
  rw [node3129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3130 input523)).val
theorem input3131_def : input3131 = (.seq input3130 input523) := by
  unfold input3131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3130 output523)).val
theorem output3131_def : output3131 = (.seq output3130 output523) := by
  unfold output3131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3131_skip : Flapjack.WordAlloc.isSkip output3131 = false := by
  rw [output3131_def]
  conv => lhs; cbv
  try rfl
theorem node3131_eq : Flapjack.WordAlloc.removeDeadStructural input3131 value194 value1 value2 = (output3131, value1482, value1) := by
  rw [input3131_def, output3131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  try dsimp only
  rw [node3130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3131 input494)).val
theorem input3132_def : input3132 = (.seq input3131 input494) := by
  unfold input3132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3131 output494)).val
theorem output3132_def : output3132 = (.seq output3131 output494) := by
  unfold output3132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3132_skip : Flapjack.WordAlloc.isSkip output3132 = false := by
  rw [output3132_def]
  conv => lhs; cbv
  try rfl
theorem node3132_eq : Flapjack.WordAlloc.removeDeadStructural input3132 value179 value1 value2 = (output3132, value1482, value1) := by
  rw [input3132_def, output3132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node494_eq]
  try dsimp only
  rw [node3131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3132 input465)).val
theorem input3133_def : input3133 = (.seq input3132 input465) := by
  unfold input3133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3132 output465)).val
theorem output3133_def : output3133 = (.seq output3132 output465) := by
  unfold output3133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3133_skip : Flapjack.WordAlloc.isSkip output3133 = false := by
  rw [output3133_def]
  conv => lhs; cbv
  try rfl
theorem node3133_eq : Flapjack.WordAlloc.removeDeadStructural input3133 value162 value1 value2 = (output3133, value1482, value1) := by
  rw [input3133_def, output3133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node465_eq]
  try dsimp only
  rw [node3132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3133 input432)).val
theorem input3134_def : input3134 = (.seq input3133 input432) := by
  unfold input3134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3133 output432)).val
theorem output3134_def : output3134 = (.seq output3133 output432) := by
  unfold output3134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3134_skip : Flapjack.WordAlloc.isSkip output3134 = false := by
  rw [output3134_def]
  conv => lhs; cbv
  try rfl
theorem node3134_eq : Flapjack.WordAlloc.removeDeadStructural input3134 value145 value1 value2 = (output3134, value1482, value1) := by
  rw [input3134_def, output3134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node432_eq]
  try dsimp only
  rw [node3133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3134 input399)).val
theorem input3135_def : input3135 = (.seq input3134 input399) := by
  unfold input3135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3134 output399)).val
theorem output3135_def : output3135 = (.seq output3134 output399) := by
  unfold output3135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3135_skip : Flapjack.WordAlloc.isSkip output3135 = false := by
  rw [output3135_def]
  conv => lhs; cbv
  try rfl
theorem node3135_eq : Flapjack.WordAlloc.removeDeadStructural input3135 value142 value1 value2 = (output3135, value1482, value1) := by
  rw [input3135_def, output3135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node399_eq]
  try dsimp only
  rw [node3134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3135 input394)).val
theorem input3136_def : input3136 = (.seq input3135 input394) := by
  unfold input3136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3135 output394)).val
theorem output3136_def : output3136 = (.seq output3135 output394) := by
  unfold output3136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3136_skip : Flapjack.WordAlloc.isSkip output3136 = false := by
  rw [output3136_def]
  conv => lhs; cbv
  try rfl
theorem node3136_eq : Flapjack.WordAlloc.removeDeadStructural input3136 value140 value1 value2 = (output3136, value1482, value1) := by
  rw [input3136_def, output3136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node394_eq]
  try dsimp only
  rw [node3135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3136 input391)).val
theorem input3137_def : input3137 = (.seq input3136 input391) := by
  unfold input3137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3136 output391)).val
theorem output3137_def : output3137 = (.seq output3136 output391) := by
  unfold output3137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3137_skip : Flapjack.WordAlloc.isSkip output3137 = false := by
  rw [output3137_def]
  conv => lhs; cbv
  try rfl
theorem node3137_eq : Flapjack.WordAlloc.removeDeadStructural input3137 value137 value1 value2 = (output3137, value1482, value1) := by
  rw [input3137_def, output3137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node391_eq]
  try dsimp only
  rw [node3136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3137 input386)).val
theorem input3138_def : input3138 = (.seq input3137 input386) := by
  unfold input3138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3137 output386)).val
theorem output3138_def : output3138 = (.seq output3137 output386) := by
  unfold output3138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3138_skip : Flapjack.WordAlloc.isSkip output3138 = false := by
  rw [output3138_def]
  conv => lhs; cbv
  try rfl
theorem node3138_eq : Flapjack.WordAlloc.removeDeadStructural input3138 value134 value1 value2 = (output3138, value1482, value1) := by
  rw [input3138_def, output3138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node386_eq]
  try dsimp only
  rw [node3137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3138 input381)).val
theorem input3139_def : input3139 = (.seq input3138 input381) := by
  unfold input3139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3138 output381)).val
theorem output3139_def : output3139 = (.seq output3138 output381) := by
  unfold output3139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3139_skip : Flapjack.WordAlloc.isSkip output3139 = false := by
  rw [output3139_def]
  conv => lhs; cbv
  try rfl
theorem node3139_eq : Flapjack.WordAlloc.removeDeadStructural input3139 value132 value1 value2 = (output3139, value1482, value1) := by
  rw [input3139_def, output3139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node381_eq]
  try dsimp only
  rw [node3138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3139 input378)).val
theorem input3140_def : input3140 = (.seq input3139 input378) := by
  unfold input3140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3139 output378)).val
theorem output3140_def : output3140 = (.seq output3139 output378) := by
  unfold output3140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3140_skip : Flapjack.WordAlloc.isSkip output3140 = false := by
  rw [output3140_def]
  conv => lhs; cbv
  try rfl
theorem node3140_eq : Flapjack.WordAlloc.removeDeadStructural input3140 value129 value1 value2 = (output3140, value1482, value1) := by
  rw [input3140_def, output3140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node378_eq]
  try dsimp only
  rw [node3139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3140 input373)).val
theorem input3141_def : input3141 = (.seq input3140 input373) := by
  unfold input3141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3140 output373)).val
theorem output3141_def : output3141 = (.seq output3140 output373) := by
  unfold output3141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3141_skip : Flapjack.WordAlloc.isSkip output3141 = false := by
  rw [output3141_def]
  conv => lhs; cbv
  try rfl
theorem node3141_eq : Flapjack.WordAlloc.removeDeadStructural input3141 value126 value1 value2 = (output3141, value1482, value1) := by
  rw [input3141_def, output3141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node373_eq]
  try dsimp only
  rw [node3140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3141 input368)).val
theorem input3142_def : input3142 = (.seq input3141 input368) := by
  unfold input3142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3141 output368)).val
theorem output3142_def : output3142 = (.seq output3141 output368) := by
  unfold output3142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3142_skip : Flapjack.WordAlloc.isSkip output3142 = false := by
  rw [output3142_def]
  conv => lhs; cbv
  try rfl
theorem node3142_eq : Flapjack.WordAlloc.removeDeadStructural input3142 value124 value1 value2 = (output3142, value1482, value1) := by
  rw [input3142_def, output3142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node368_eq]
  try dsimp only
  rw [node3141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3142 input365)).val
theorem input3143_def : input3143 = (.seq input3142 input365) := by
  unfold input3143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3142 output365)).val
theorem output3143_def : output3143 = (.seq output3142 output365) := by
  unfold output3143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3143_skip : Flapjack.WordAlloc.isSkip output3143 = false := by
  rw [output3143_def]
  conv => lhs; cbv
  try rfl
theorem node3143_eq : Flapjack.WordAlloc.removeDeadStructural input3143 value121 value1 value2 = (output3143, value1482, value1) := by
  rw [input3143_def, output3143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node365_eq]
  try dsimp only
  rw [node3142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3143 input360)).val
theorem input3144_def : input3144 = (.seq input3143 input360) := by
  unfold input3144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3143 output360)).val
theorem output3144_def : output3144 = (.seq output3143 output360) := by
  unfold output3144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3144_skip : Flapjack.WordAlloc.isSkip output3144 = false := by
  rw [output3144_def]
  conv => lhs; cbv
  try rfl
theorem node3144_eq : Flapjack.WordAlloc.removeDeadStructural input3144 value118 value1 value2 = (output3144, value1482, value1) := by
  rw [input3144_def, output3144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node360_eq]
  try dsimp only
  rw [node3143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3144 input355)).val
theorem input3145_def : input3145 = (.seq input3144 input355) := by
  unfold input3145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3144 output355)).val
theorem output3145_def : output3145 = (.seq output3144 output355) := by
  unfold output3145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3145_skip : Flapjack.WordAlloc.isSkip output3145 = false := by
  rw [output3145_def]
  conv => lhs; cbv
  try rfl
theorem node3145_eq : Flapjack.WordAlloc.removeDeadStructural input3145 value116 value1 value2 = (output3145, value1482, value1) := by
  rw [input3145_def, output3145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node355_eq]
  try dsimp only
  rw [node3144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3145 input352)).val
theorem input3146_def : input3146 = (.seq input3145 input352) := by
  unfold input3146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3145 output352)).val
theorem output3146_def : output3146 = (.seq output3145 output352) := by
  unfold output3146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3146_skip : Flapjack.WordAlloc.isSkip output3146 = false := by
  rw [output3146_def]
  conv => lhs; cbv
  try rfl
theorem node3146_eq : Flapjack.WordAlloc.removeDeadStructural input3146 value113 value1 value2 = (output3146, value1482, value1) := by
  rw [input3146_def, output3146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node352_eq]
  try dsimp only
  rw [node3145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3146 input347)).val
theorem input3147_def : input3147 = (.seq input3146 input347) := by
  unfold input3147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3146 output347)).val
theorem output3147_def : output3147 = (.seq output3146 output347) := by
  unfold output3147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3147_skip : Flapjack.WordAlloc.isSkip output3147 = false := by
  rw [output3147_def]
  conv => lhs; cbv
  try rfl
theorem node3147_eq : Flapjack.WordAlloc.removeDeadStructural input3147 value110 value1 value2 = (output3147, value1482, value1) := by
  rw [input3147_def, output3147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node347_eq]
  try dsimp only
  rw [node3146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3147 input342)).val
theorem input3148_def : input3148 = (.seq input3147 input342) := by
  unfold input3148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3147 output342)).val
theorem output3148_def : output3148 = (.seq output3147 output342) := by
  unfold output3148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3148_skip : Flapjack.WordAlloc.isSkip output3148 = false := by
  rw [output3148_def]
  conv => lhs; cbv
  try rfl
theorem node3148_eq : Flapjack.WordAlloc.removeDeadStructural input3148 value108 value1 value2 = (output3148, value1482, value1) := by
  rw [input3148_def, output3148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node342_eq]
  try dsimp only
  rw [node3147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3148 input339)).val
theorem input3149_def : input3149 = (.seq input3148 input339) := by
  unfold input3149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3148 output339)).val
theorem output3149_def : output3149 = (.seq output3148 output339) := by
  unfold output3149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3149_skip : Flapjack.WordAlloc.isSkip output3149 = false := by
  rw [output3149_def]
  conv => lhs; cbv
  try rfl
theorem node3149_eq : Flapjack.WordAlloc.removeDeadStructural input3149 value105 value1 value2 = (output3149, value1482, value1) := by
  rw [input3149_def, output3149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node339_eq]
  try dsimp only
  rw [node3148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3149 input334)).val
theorem input3150_def : input3150 = (.seq input3149 input334) := by
  unfold input3150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3149 output334)).val
theorem output3150_def : output3150 = (.seq output3149 output334) := by
  unfold output3150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3150_skip : Flapjack.WordAlloc.isSkip output3150 = false := by
  rw [output3150_def]
  conv => lhs; cbv
  try rfl
theorem node3150_eq : Flapjack.WordAlloc.removeDeadStructural input3150 value102 value1 value2 = (output3150, value1482, value1) := by
  rw [input3150_def, output3150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node334_eq]
  try dsimp only
  rw [node3149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3150 input329)).val
theorem input3151_def : input3151 = (.seq input3150 input329) := by
  unfold input3151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3150 output329)).val
theorem output3151_def : output3151 = (.seq output3150 output329) := by
  unfold output3151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3151_skip : Flapjack.WordAlloc.isSkip output3151 = false := by
  rw [output3151_def]
  conv => lhs; cbv
  try rfl
theorem node3151_eq : Flapjack.WordAlloc.removeDeadStructural input3151 value100 value1 value2 = (output3151, value1482, value1) := by
  rw [input3151_def, output3151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node329_eq]
  try dsimp only
  rw [node3150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3151 input326)).val
theorem input3152_def : input3152 = (.seq input3151 input326) := by
  unfold input3152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3151 output326)).val
theorem output3152_def : output3152 = (.seq output3151 output326) := by
  unfold output3152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3152_skip : Flapjack.WordAlloc.isSkip output3152 = false := by
  rw [output3152_def]
  conv => lhs; cbv
  try rfl
theorem node3152_eq : Flapjack.WordAlloc.removeDeadStructural input3152 value97 value1 value2 = (output3152, value1482, value1) := by
  rw [input3152_def, output3152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node326_eq]
  try dsimp only
  rw [node3151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3152 input321)).val
theorem input3153_def : input3153 = (.seq input3152 input321) := by
  unfold input3153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3152 output321)).val
theorem output3153_def : output3153 = (.seq output3152 output321) := by
  unfold output3153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3153_skip : Flapjack.WordAlloc.isSkip output3153 = false := by
  rw [output3153_def]
  conv => lhs; cbv
  try rfl
theorem node3153_eq : Flapjack.WordAlloc.removeDeadStructural input3153 value94 value1 value2 = (output3153, value1482, value1) := by
  rw [input3153_def, output3153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node321_eq]
  try dsimp only
  rw [node3152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3153 input316)).val
theorem input3154_def : input3154 = (.seq input3153 input316) := by
  unfold input3154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3153 output316)).val
theorem output3154_def : output3154 = (.seq output3153 output316) := by
  unfold output3154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3154_skip : Flapjack.WordAlloc.isSkip output3154 = false := by
  rw [output3154_def]
  conv => lhs; cbv
  try rfl
theorem node3154_eq : Flapjack.WordAlloc.removeDeadStructural input3154 value92 value1 value2 = (output3154, value1482, value1) := by
  rw [input3154_def, output3154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node316_eq]
  try dsimp only
  rw [node3153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3154 input313)).val
theorem input3155_def : input3155 = (.seq input3154 input313) := by
  unfold input3155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3154 output313)).val
theorem output3155_def : output3155 = (.seq output3154 output313) := by
  unfold output3155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3155_skip : Flapjack.WordAlloc.isSkip output3155 = false := by
  rw [output3155_def]
  conv => lhs; cbv
  try rfl
theorem node3155_eq : Flapjack.WordAlloc.removeDeadStructural input3155 value89 value1 value2 = (output3155, value1482, value1) := by
  rw [input3155_def, output3155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node313_eq]
  try dsimp only
  rw [node3154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3155 input308)).val
theorem input3156_def : input3156 = (.seq input3155 input308) := by
  unfold input3156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3155 output308)).val
theorem output3156_def : output3156 = (.seq output3155 output308) := by
  unfold output3156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3156_skip : Flapjack.WordAlloc.isSkip output3156 = false := by
  rw [output3156_def]
  conv => lhs; cbv
  try rfl
theorem node3156_eq : Flapjack.WordAlloc.removeDeadStructural input3156 value86 value1 value2 = (output3156, value1482, value1) := by
  rw [input3156_def, output3156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node308_eq]
  try dsimp only
  rw [node3155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3156 input303)).val
theorem input3157_def : input3157 = (.seq input3156 input303) := by
  unfold input3157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3156 output303)).val
theorem output3157_def : output3157 = (.seq output3156 output303) := by
  unfold output3157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3157_skip : Flapjack.WordAlloc.isSkip output3157 = false := by
  rw [output3157_def]
  conv => lhs; cbv
  try rfl
theorem node3157_eq : Flapjack.WordAlloc.removeDeadStructural input3157 value84 value1 value2 = (output3157, value1482, value1) := by
  rw [input3157_def, output3157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node303_eq]
  try dsimp only
  rw [node3156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3157 input300)).val
theorem input3158_def : input3158 = (.seq input3157 input300) := by
  unfold input3158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3157 output300)).val
theorem output3158_def : output3158 = (.seq output3157 output300) := by
  unfold output3158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3158_skip : Flapjack.WordAlloc.isSkip output3158 = false := by
  rw [output3158_def]
  conv => lhs; cbv
  try rfl
theorem node3158_eq : Flapjack.WordAlloc.removeDeadStructural input3158 value80 value1 value2 = (output3158, value1482, value1) := by
  rw [input3158_def, output3158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node300_eq]
  try dsimp only
  rw [node3157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3158 input293)).val
theorem input3159_def : input3159 = (.seq input3158 input293) := by
  unfold input3159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3158 output293)).val
theorem output3159_def : output3159 = (.seq output3158 output293) := by
  unfold output3159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3159_skip : Flapjack.WordAlloc.isSkip output3159 = false := by
  rw [output3159_def]
  conv => lhs; cbv
  try rfl
theorem node3159_eq : Flapjack.WordAlloc.removeDeadStructural input3159 value76 value1 value2 = (output3159, value1482, value1) := by
  rw [input3159_def, output3159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node293_eq]
  try dsimp only
  rw [node3158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3159 input286)).val
theorem input3160_def : input3160 = (.seq input3159 input286) := by
  unfold input3160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3159 output286)).val
theorem output3160_def : output3160 = (.seq output3159 output286) := by
  unfold output3160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3160_skip : Flapjack.WordAlloc.isSkip output3160 = false := by
  rw [output3160_def]
  conv => lhs; cbv
  try rfl
theorem node3160_eq : Flapjack.WordAlloc.removeDeadStructural input3160 value72 value1 value2 = (output3160, value1482, value1) := by
  rw [input3160_def, output3160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node286_eq]
  try dsimp only
  rw [node3159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3160 input279)).val
theorem input3161_def : input3161 = (.seq input3160 input279) := by
  unfold input3161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3160 output279)).val
theorem output3161_def : output3161 = (.seq output3160 output279) := by
  unfold output3161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3161_skip : Flapjack.WordAlloc.isSkip output3161 = false := by
  rw [output3161_def]
  conv => lhs; cbv
  try rfl
theorem node3161_eq : Flapjack.WordAlloc.removeDeadStructural input3161 value68 value1 value2 = (output3161, value1482, value1) := by
  rw [input3161_def, output3161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node279_eq]
  try dsimp only
  rw [node3160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3161 input272)).val
theorem input3162_def : input3162 = (.seq input3161 input272) := by
  unfold input3162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3161 output272)).val
theorem output3162_def : output3162 = (.seq output3161 output272) := by
  unfold output3162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3162_skip : Flapjack.WordAlloc.isSkip output3162 = false := by
  rw [output3162_def]
  conv => lhs; cbv
  try rfl
theorem node3162_eq : Flapjack.WordAlloc.removeDeadStructural input3162 value68 value1 value2 = (output3162, value1482, value1) := by
  rw [input3162_def, output3162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node272_eq]
  try dsimp only
  rw [node3161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3162 input271)).val
theorem input3163_def : input3163 = (.seq input3162 input271) := by
  unfold input3163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3162 output271)).val
theorem output3163_def : output3163 = (.seq output3162 output271) := by
  unfold output3163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3163_skip : Flapjack.WordAlloc.isSkip output3163 = false := by
  rw [output3163_def]
  conv => lhs; cbv
  try rfl
theorem node3163_eq : Flapjack.WordAlloc.removeDeadStructural input3163 value43 value1 value2 = (output3163, value1482, value1) := by
  rw [input3163_def, output3163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node271_eq]
  try dsimp only
  rw [node3162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3163 input155)).val
theorem input3164_def : input3164 = (.seq input3163 input155) := by
  unfold input3164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3163 output155)).val
theorem output3164_def : output3164 = (.seq output3163 output155) := by
  unfold output3164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3164_skip : Flapjack.WordAlloc.isSkip output3164 = false := by
  rw [output3164_def]
  conv => lhs; cbv
  try rfl
theorem node3164_eq : Flapjack.WordAlloc.removeDeadStructural input3164 value43 value1 value2 = (output3164, value1482, value1) := by
  rw [input3164_def, output3164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node155_eq]
  try dsimp only
  rw [node3163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3164 input154)).val
theorem input3165_def : input3165 = (.seq input3164 input154) := by
  unfold input3165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3164 output154)).val
theorem output3165_def : output3165 = (.seq output3164 output154) := by
  unfold output3165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3165_skip : Flapjack.WordAlloc.isSkip output3165 = false := by
  rw [output3165_def]
  conv => lhs; cbv
  try rfl
theorem node3165_eq : Flapjack.WordAlloc.removeDeadStructural input3165 value43 value1 value2 = (output3165, value1482, value1) := by
  rw [input3165_def, output3165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node154_eq]
  try dsimp only
  rw [node3164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3165 input153)).val
theorem input3166_def : input3166 = (.seq input3165 input153) := by
  unfold input3166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3165 output153)).val
theorem output3166_def : output3166 = (.seq output3165 output153) := by
  unfold output3166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3166_skip : Flapjack.WordAlloc.isSkip output3166 = false := by
  rw [output3166_def]
  conv => lhs; cbv
  try rfl
theorem node3166_eq : Flapjack.WordAlloc.removeDeadStructural input3166 value8 value1 value2 = (output3166, value1482, value1) := by
  rw [input3166_def, output3166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node153_eq]
  try dsimp only
  rw [node3165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3166 input7)).val
theorem input3167_def : input3167 = (.seq input3166 input7) := by
  unfold input3167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3166 output7)).val
theorem output3167_def : output3167 = (.seq output3166 output7) := by
  unfold output3167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3167_skip : Flapjack.WordAlloc.isSkip output3167 = false := by
  rw [output3167_def]
  conv => lhs; cbv
  try rfl
theorem node3167_eq : Flapjack.WordAlloc.removeDeadStructural input3167 value8 value1 value2 = (output3167, value1482, value1) := by
  rw [input3167_def, output3167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node3166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3167 input6)).val
theorem input3168_def : input3168 = (.seq input3167 input6) := by
  unfold input3168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3167 output6)).val
theorem output3168_def : output3168 = (.seq output3167 output6) := by
  unfold output3168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3168_skip : Flapjack.WordAlloc.isSkip output3168 = false := by
  rw [output3168_def]
  conv => lhs; cbv
  try rfl
theorem node3168_eq : Flapjack.WordAlloc.removeDeadStructural input3168 value7 value1 value2 = (output3168, value1482, value1) := by
  rw [input3168_def, output3168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node3167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3168 input5)).val
theorem input3169_def : input3169 = (.seq input3168 input5) := by
  unfold input3169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3168 output5)).val
theorem output3169_def : output3169 = (.seq output3168 output5) := by
  unfold output3169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3169_skip : Flapjack.WordAlloc.isSkip output3169 = false := by
  rw [output3169_def]
  conv => lhs; cbv
  try rfl
theorem node3169_eq : Flapjack.WordAlloc.removeDeadStructural input3169 value6 value1 value2 = (output3169, value1482, value1) := by
  rw [input3169_def, output3169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5_eq]
  try dsimp only
  rw [node3168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3169 input4)).val
theorem input3170_def : input3170 = (.seq input3169 input4) := by
  unfold input3170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3169 output4)).val
theorem output3170_def : output3170 = (.seq output3169 output4) := by
  unfold output3170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3170_skip : Flapjack.WordAlloc.isSkip output3170 = false := by
  rw [output3170_def]
  conv => lhs; cbv
  try rfl
theorem node3170_eq : Flapjack.WordAlloc.removeDeadStructural input3170 value5 value1 value2 = (output3170, value1482, value1) := by
  rw [input3170_def, output3170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4_eq]
  try dsimp only
  rw [node3169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3170 input3)).val
theorem input3171_def : input3171 = (.seq input3170 input3) := by
  unfold input3171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3170 output3)).val
theorem output3171_def : output3171 = (.seq output3170 output3) := by
  unfold output3171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3171_skip : Flapjack.WordAlloc.isSkip output3171 = false := by
  rw [output3171_def]
  conv => lhs; cbv
  try rfl
theorem node3171_eq : Flapjack.WordAlloc.removeDeadStructural input3171 value4 value1 value2 = (output3171, value1482, value1) := by
  rw [input3171_def, output3171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node3170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3171 input2)).val
theorem input3172_def : input3172 = (.seq input3171 input2) := by
  unfold input3172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3171 output2)).val
theorem output3172_def : output3172 = (.seq output3171 output2) := by
  unfold output3172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3172_skip : Flapjack.WordAlloc.isSkip output3172 = false := by
  rw [output3172_def]
  conv => lhs; cbv
  try rfl
theorem node3172_eq : Flapjack.WordAlloc.removeDeadStructural input3172 value0 value1 value2 = (output3172, value1482, value1) := by
  rw [input3172_def, output3172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node3171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1483 : Flapjack.NumSet :=
Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input3173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1
  [(161, 0), (165, 2), (169, 4), (173, 6), (177, 8), (181, 10), (185, 12), (189, 14), (193, 16)])).val
theorem input3173_def : input3173 = (Flapjack.WordLangProgHOL.move 1
  [(161, 0), (165, 2), (169, 4), (173, 6), (177, 8), (181, 10), (185, 12), (189, 14), (193, 16)]) := by
  unfold input3173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1
  [(161, 0), (165, 2), (169, 4), (173, 6), (177, 8), (181, 10), (185, 12), (189, 14), (193, 16)])).val
theorem output3173_def : output3173 = (Flapjack.WordLangProgHOL.move 1
  [(161, 0), (165, 2), (169, 4), (173, 6), (177, 8), (181, 10), (185, 12), (189, 14), (193, 16)]) := by
  unfold output3173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3173_skip : Flapjack.WordAlloc.isSkip output3173 = false := by
  rw [output3173_def]
  conv => lhs; cbv
  try rfl
theorem node3173_eq : Flapjack.WordAlloc.removeDeadStructural input3173 value1482 value1 value2 = (output3173, value1483, value1) := by
  rw [input3173_def, output3173_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3173 input3172)).val
theorem input3174_def : input3174 = (.seq input3173 input3172) := by
  unfold input3174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3173 output3172)).val
theorem output3174_def : output3174 = (.seq output3173 output3172) := by
  unfold output3174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3174_skip : Flapjack.WordAlloc.isSkip output3174 = false := by
  rw [output3174_def]
  conv => lhs; cbv
  try rfl
theorem node3174_eq : Flapjack.WordAlloc.removeDeadStructural input3174 value0 value1 value2 = (output3174, value1483, value1) := by
  rw [input3174_def, output3174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3172_eq]
  try dsimp only
  rw [node3173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node3174_eq
end InitECandidate.Proofs.DeadStages646
